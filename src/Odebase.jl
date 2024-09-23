module Odebase
export odebaseSystems
export get_odebase_system
export generic_polynomial_system
export valued_polynomial_system
# TODO remove using Oscar from odebase files
using Oscar;
const dir = Base.pkgdir(Odebase)
const chems=readdir(joinpath(dir,"src/odes/"),join=true)
const odebaseSystems=[splitext(basename(chem))[1] for chem in chems]

struct OdebaseNode
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

function generic_polynomial_system(sys::OdebaseNode;constraint=true)
    randCoeff=rand_nonzero(length(gens(sys.paramsRing)));
    # QQpolRing,tup=polynomial_ring(QQ,["$x" for x in gens(sys.polRing)]);
    phi=hom(sys.polRing,sys.polRing,c->evaluate(c,randCoeff),gens(sys.polRing));
    if constraint
        return phi.(union(sys.ODEs,sys.constraints))
    else
        return phi.(sys.ODEs)
    end
end

function valued_polynomial_system(sys::OdebaseNode;constraint=true)
    # QQpolRing,tup=polynomial_ring(QQ,["$x" for x in gens(sys.polRing)]);
    phi=hom(sys.polRing,sys.polRing,c->evaluate(c,sys.paramValues),gens(sys.polRing));
    if constraint
        return phi.(union(sys.ODEs,sys.constraints))
    else
        return phi.(sys.ODEs)
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
    system=OdebaseNode(ID,desc,length(Oscar.gens(newpolRing)),length(gens(newparamsRing)),speciesNames,paramNames,irr,rev,def,rat,pol,mass_bool,newparamsRing,newpolRing,chemSystem,constraints,paramValues,matrix(QQ,stoichMatrix),matrix(QQ,reconStoichMatrix),matrix(QQ,kineticMatrix));
    else
    system=OdebaseNode(ID,desc,length(Oscar.gens(polRing)),length(gens(paramsRing)),speciesNames,paramNames,irr,rev,def,rat,pol,mass_bool,paramsRing,polRing,chemSystem,constraints,paramValues,matrix(QQ,stoichMatrix),matrix(QQ,reconStoichMatrix),matrix(QQ,kineticMatrix));
    end
    
    return system
end

end # module 
