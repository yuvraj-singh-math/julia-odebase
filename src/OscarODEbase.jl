module OscarODEbase
export ODEbaseModels
export ODEbaseModel
export get_odebase_model
export generic_polynomial_system
export valued_polynomial_system
export get_ID
export get_description
export get_ODEs
export get_constraints
export get_polRing
export get_paramsRing
export get_deficiency
export get_stoichMatrix
export get_reconStoichMatrix
export get_kineticMatrix
# TODO remove using Oscar from odebase files
using Oscar;
using Base;
const dir = Base.pkgdir(OscarODEbase)
const chems=readdir(joinpath(dir,"src/odes/"),join=true)
const ODEbaseModels=[splitext(basename(chem))[1] for chem in chems]

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

get_ID(model::ODEbaseModel)=model.ID
get_description(model::ODEbaseModel)=model.description
"""
Returns the polynomial ideal generated by the ODEs.
!!! warning
    The (generators of) the ideal have variables that are *not* in scope by default, and need to be loaded manually. e.g.
    ``` julia-repl
    julia> model=get_odebase_system("BIOMD0000000854");
    julia> R=model.polRing;
    julia> (x1,x2,x3,x4)=gens(R)
    ```
"""
get_ODEs(model::ODEbaseModel)=ideal(model.polRing,model.ODEs)
get_constraints(model::ODEbaseModel)=model.constraints
get_polRing(model::ODEbaseModel)=model.polRing
get_paramsRing(model::ODEbaseModel)=model.paramsRing
get_deficiency(model::ODEbaseModel)=model.deficiency
get_stoichMatrix(model::ODEbaseModel)=model.stoichMatrix
get_reconStoichMatrix(model::ODEbaseModel)=model.reconStoichMatrix
get_kineticMatrix(model::ODEbaseModel)=model.kineticMatrix

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

function generic_polynomial_system(model::ODEbaseModel;constraint=true)
    randCoeff=rand_nonzero(length(gens(model.paramsRing)));
    QQpolRing,tup=polynomial_ring(QQ,["$x" for x in gens(model.polRing)]);
    phi=hom(model.polRing,QQpolRing,c->evaluate(c,randCoeff),tup);
    if constraint
        return phi.(union(model.ODEs,model.constraints)), QQpolRing
    else
        return phi.(model.ODEs), QQpolRing
    end
end

function valued_polynomial_system(model::ODEbaseModel;constraint=true)
    QQpolRing,tup=polynomial_ring(QQ,["$x" for x in gens(model.polRing)]);
    phi=hom(model.polRing,QQpolRing,c->evaluate(c,model.paramValues),tup);
    if constraint
        return phi.(union(model.ODEs,model.constraints)), QQpolRing
    else
        return phi.(model.ODEs), QQpolRing
    end
end

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