module OscarODEbase
export ODEbaseModels
export ODEbaseModel
export get_odebase_model
export get_polynomials_random_specialization
export get_polynomials_fixed_specialization
export get_ID
export get_description
export get_ODEs
export get_constraints
export get_constraints_generic_specialization
export get_constraints_random_specialization
export get_polynomial_ring
export get_parameter_ring
export get_deficiency
export get_stoichiometric_matrix
export get_reconfigured_stoichiometric_matrix
export get_kinetic_matrix
# TODO remove using Oscar from odebase files
using Oscar;
const dir = Base.pkgdir(OscarODEbase)
const chems=readdir(joinpath(dir,"src/odes/"),join=true)
const ODEbaseModels=[splitext(basename(chem))[1] for chem in chems]

"""
A struct representing an ODEbase model.

For information on the fields, see https://arxiv.org/abs/2201.08980.
"""
struct ODEbaseModel
    ID::String
    description::String
    numSpecies::Int
    numParams::Int
    speciesNames::Vector{String}
    paramNames::Vector{String}
    numIrr::Int
    numRev::Int
    deficiency::Int
    rational::Bool
    polynomial::Bool
    massAction::Bool
    paramsRing
    polRing
    ODEs::Vector
    constraints::Vector
    paramValues::Vector
    stoichMatrix::QQMatrix
    reconStoichMatrix::QQMatrix
    kineticMatrix::QQMatrix
end

function Base.show(io::IO, model::ODEbaseModel)
    id=model.ID
    desc=model.description
    species=string(model.numSpecies)
    params=string(model.numParams)
    println(io, "Model $id, with $species species and $params parameters.")
    print(io, "$desc")
end

"""
    get_ID(model::ODEbaseModel)

Returns the ODEbase ID of the given model.
"""
get_ID(model::ODEbaseModel)=model.ID

"""
    get_description(model::ODEbaseModel)

Returns the ODEbase description of the given model.
"""
get_description(model::ODEbaseModel)=model.description

"""
    get_ODEs(model::ODEbaseModel)

Returns steady state polynomials for the ODEs of the given model.
"""
get_ODEs(model::ODEbaseModel)=model.ODEs

"""
    get_constraints(model::ODEbaseModel)

Returns the constraints of the given model. These are the conserved quantities of the system.
"""
get_constraints(model::ODEbaseModel)=model.constraints

"""
    get_polynomial_ring(model::ODEbaseModel)

Returns the polynomial ring over which the steady state polynomials of the given model are defined.
"""
get_polynomial_ring(model::ODEbaseModel)=model.polRing

"""
    get_parameter_ring(model::ODEbaseModel)

Returns the parameter ring over which the coefficients of the steady state polynomials of the given model are defined.
"""
get_parameter_ring(model::ODEbaseModel)=model.paramsRing

"""
    get_fixed_parameter_values(model::ODEbaseModel)

Returns the fixed parameter values of the given model as specified in ODEbase.
"""
get_fixed_parameter_values(model::ODEbaseModel)=model.paramValues

"""
    get_deficiency(model::ODEbaseModel)

Returns the deficiency of the given model.
"""
get_deficiency(model::ODEbaseModel)=model.deficiency

"""
    get_stoichiometric_matrix(model::ODEbaseModel)

Returns the stoichiometric matrix of the given model.
"""
get_stoichiometric_matrix(model::ODEbaseModel)=model.stoichMatrix

"""
    get_reconfigured_stoichiometric_matrix(model::ODEbaseModel)

Returns the reconfigured stoichiometric matrix of the given model.
"""
get_reconfigured_stoichmetric_matrix(model::ODEbaseModel)=model.reconStoichMatrix

"""
    get_kinetic_matrix(model::ODEbaseModel)

Returns the kinetic matrix of the given model.
"""
get_kinetic_matrix(model::ODEbaseModel)=model.kineticMatrix

# we do not want to remove any coefficients entirely
function rand_nonzero(len::Int)
    ints=Int[]
    for x in 1:len
        num=rand(Int8)
        while num==0
            num=rand(Int8)
        end
        push!(ints,num)
    end
    return ints
end

"""
    get_constraints_generic_specialization(model::ODEbaseModel)

Returns a tuple containing the constraints of the given model specialized to a random choice of parameter values, along with the specialization homomorphism.
"""
function get_constraints_generic_specialization(model::ODEbaseModel)
    constraints = get_constraints(model)
    polynomialRing = get_polynomial_ring(model)
    parameterRing = get_parameter_ring(model)
    parameterField = fraction_field(parameterRing)
    R,x = polynomial_ring(parameterField, symbols(polynomialRing))
    phi=hom(polynomialRing,R,c->parameterField(c),x);
    return phi.(constraints), phi
end

"""
    get_constraints_random_specialization(model::ODEbaseModel)

Returns a tuple containing the constraints of the given model specialized to a random QQ choice of parameter values, along with the specialization homomorphism.
"""
function get_constraints_random_specialization(model::ODEbaseModel)
    constraints = get_constraints(model)
    polynomialRing = get_polynomial_ring(model)
    parameterRing = get_parameter_ring(model)
    R,x = polynomial_ring(QQ, symbols(polynomialRing))
    # Specialize the parameters to random values
    phi = hom(polynomialRing, R, c -> rand_nonzero(1)[1]//rand_nonzero(1)[1], x)
    return phi.(constraints), phi
end

"""
    get_constraints_rref_pivots(model::ODEbaseModel)

Returns a vector of the indices of the columns of the constraint matrix that arise as pivots when computing the RREF. The optional argument `useGenericSpecialization` specifies whether to use the generic specialization of the parameters, or to set them to random rationals.

These are the indices of the steady state polynomials that we can replace with constraint equations.
"""
function get_constraints_rref_pivots(model::ODEbaseModel, useGenericSpecialization::Boolean=false)
    # Construct the coefficient matrix of the constraints
    if useGenericSpecialization
        constraints = first(get_constraints_generic_specialization(model))
    else
        constraints = first(get_constraints_random_specialization(model))
    end
    if isempty(constraints)
        return Int[]
    end
    constraintsVariables = sort(unique(Iterators.flatten(collect.(monomials.(constraints))));rev=true)
    @req all(m -> total_degree(m) <= 1, constraintsVariables) "non-affine constraints"
    constraintsMatrix = matrix(coefficient_ring(first(constraints)), [[coeff(constraint,x) for x in constraintsVariables] for constraint in constraints])

    # compute the reduced row echelon form of the constraints matrix
    # and only keep the ODEs of the pivot columns
    rrefConstraintsMatrix = rref(constraintsMatrix)[2]
    constraintsPivots = [findfirst(!iszero,rrefConstraintsMatrix[i,:]) for i in 1:nrows(rrefConstraintsMatrix)]
    return constraintsPivots
end
# reduce=true will set constraint=false

"""
    get_polynomials_random_specialization(model::ODEbaseModel)

Returns a tuple where the first entry is a vector of the steady state polynomials of the given model with the parameters specialized to random values, and the second entry the specialization homomorphism.
"""
function get_polynomials_random_specialization(model::ODEbaseModel; constraint=false, reduce=false)
    randCoeff=rand_nonzero(length(gens(get_parameter_ring(model))));
    QQpolRing,tup=polynomial_ring(QQ,symbols(get_polynomial_ring(model)));
    phi=hom(model.polRing,QQpolRing,c->evaluate(c,randCoeff),tup);

    specializedODEs = phi.(get_ODEs(model))
    if reduce
        constraintsPivots = get_constraints_rref_pivots(model)
        specializedODEs = [ode for (i,ode) in enumerate(specializedODEs) if !(i in constraintsPivots)]
    end
    if constraint
        specializedConstraints = phi.(get_constraints(model))
        return union(specializedODEs,specializedConstraints), phi
    else
        return specializedODEs, phi
    end
end

"""
    get_polynomials_fixed_specialization(model::ODEbaseModel;constraint=false,reduce=false)

Returns a tuple where the first entry is a vector of the steady state polynomials of the given model with the parameters specialized to the fixed values specified in ODEbase, and the second entry the specialization homomorphism.
"""
function get_polynomials_fixed_specialization(model::ODEbaseModel;constraint=false,reduce=false)
    QQpolRing,tup=polynomial_ring(QQ,symbols(polynomial_ring(model)));
    phi=hom(model.polRing,QQpolRing,c->evaluate(c,get_fixed_parameter_values(model)),tup);
    specializedODEs = phi.(gens(get_ODEs(model)))

    if reduce
        constraintsPivots = get_constraints_rref_pivots(model)
        specializedODEs = [ode for (i,ode) in enumerate(specializedODEs) if !(i in constraintsPivots)]
    end
    if constraint
        specializedConstraints = phi.(get_constraints(model))
        return union(specializedODEs,specializedConstraints), phi
    else
        return specializedODEs, phi
    end
end

"""
    get_odebase_model(reqID::String; rename=false)

Given a model ID `reqID`, returns the corresponding `ODEbaseModel` object with this ID.  For a list of valid inputs, see the global list stored in `ODEbaseModels`.

If `rename` is set to `true`, then the variable and parameter definitions in the model file are renamed to avoid conflicts with existing variables in the global scope. This is useful when loading multiple models in the same session.

# Examples
```julia
julia> get_odebase_model("BIOMD0000001031")
Model BIOMD0000001031, with 3 species and 5 parameters.
Al-Tuwairqi2020 - Dynamics of cancer virotherapy - Phase I treatment
````
"""
function get_odebase_model(reqID::String; rename=false)
    if !(reqID in ODEbaseModels)
        error("Specified ID is not supported")
        return
    end
    index=findfirst(x->x==reqID,ODEbaseModels)
    file=chems[index]
    include(file);
    if rename
        newparams=Oscar.gens(paramsRing)
        newpols=Oscar.gens(polRing)
        newparamsRing, newparams = polynomial_ring(base_ring(paramsRing), paramsValues)
        newpolRing, newpols = polynomial_ring(base_ring(polRing), speciesValues)
        system=ODEbaseModel(ID,desc,length(Oscar.gens(newpolRing)),length(gens(newparamsRing)),speciesNames,paramNames,irr,rev,def,rat,pol,mass_bool,newparamsRing,newpolRing,chemSystem,constraints,paramValues,matrix(QQ,stoichMatrix),matrix(QQ,reconStoichMatrix),matrix(QQ,kineticMatrix));
    else
        system=ODEbaseModel(ID,desc,length(Oscar.gens(polRing)),length(gens(paramsRing)),speciesNames,paramNames,irr,rev,def,rat,pol,mass_bool,paramsRing,polRing,chemSystem,constraints,paramValues,matrix(QQ,stoichMatrix),matrix(QQ,reconStoichMatrix),matrix(QQ,kineticMatrix));
    end

    return system
end

end # module
