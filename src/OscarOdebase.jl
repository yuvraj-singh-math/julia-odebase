module OscarOdebase
export odebaseSystems
export OdebaseModel
export get_odebase_system
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
const dir = Base.pkgdir(OscarOdebase)
const chems=readdir(joinpath(dir,"src/odes/"),join=true)
const odebaseSystems=[splitext(basename(chem))[1] for chem in chems]

struct OdebaseModel
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

function Base.show(io::IO, model::OdebaseModel)
    id=model.ID
    desc=model.description
    species=string(model.numSpecies)
    params=string(model.numParams)
    println(io, "Model $id, with $species species and $params parameters.")
    print(io, "$desc")
end

get_ID(model::OdebaseModel)=model.ID
get_description(model::OdebaseModel)=model.description
get_ODEs(model::OdebaseModel)=model.ODEs
get_constraints(model::OdebaseModel)=model.constraints
get_polRing(model::OdebaseModel)=model.polRing
get_paramsRing(model::OdebaseModel)=model.paramsRing
get_deficiency(model::OdebaseModel)=model.deficiency
get_stoichMatrix(model::OdebaseModel)=model.stoichMatrix
get_reconStoichMatrix(model::OdebaseModel)=model.reconStoichMatrix
get_kineticMatrix(model::OdebaseModel)=model.kineticMatrix

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

function generic_polynomial_system(model::OdebaseModel;constraint=true)
    randCoeff=rand_nonzero(length(gens(model.paramsRing)));
    # QQpolRing,tup=polynomial_ring(QQ,["$x" for x in gens(model.polRing)]);
    phi=hom(model.polRing,model.polRing,c->evaluate(c,randCoeff),gens(model.polRing));
    if constraint
        return phi.(union(model.ODEs,model.constraints))
    else
        return phi.(model.ODEs)
    end
end

function valued_polynomial_system(model::OdebaseModel;constraint=true)
    # QQpolRing,tup=polynomial_ring(QQ,["$x" for x in gens(model.polRing)]);
    phi=hom(model.polRing,model.polRing,c->evaluate(c,model.paramValues),gens(model.polRing));
    if constraint
        return phi.(union(model.ODEs,model.constraints))
    else
        return phi.(model.ODEs)
    end
end

function get_odebase_system(reqID::String; rename=false)
    if !(reqID in odebaseSystems)
        error("Specified ID is not supported")
        return
    end
    index=findfirst(x->x==reqID,odebaseSystems)
    file=chems[index]
    include(file);
    if rename
        newparams=Oscar.gens(paramsRing)
        newpols=Oscar.gens(polRing)
        newparamsRing, newparams = polynomial_ring(base_ring(paramsRing), paramsValues)
        newpolRing, newpols = polynomial_ring(base_ring(polRing), speciesValues)
    system=OdebaseModel(ID,desc,length(Oscar.gens(newpolRing)),length(gens(newparamsRing)),speciesNames,paramNames,irr,rev,def,rat,pol,mass_bool,newparamsRing,newpolRing,chemSystem,constraints,paramValues,matrix(QQ,stoichMatrix),matrix(QQ,reconStoichMatrix),matrix(QQ,kineticMatrix));
    else
    system=OdebaseModel(ID,desc,length(Oscar.gens(polRing)),length(gens(paramsRing)),speciesNames,paramNames,irr,rev,def,rat,pol,mass_bool,paramsRing,polRing,chemSystem,constraints,paramValues,matrix(QQ,stoichMatrix),matrix(QQ,reconStoichMatrix),matrix(QQ,kineticMatrix));
    end

    return system
end

end # module
