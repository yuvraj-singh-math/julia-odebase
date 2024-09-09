module Odebase
export odebaseSystems
using Oscar;
const dir = Base.pkgdir(odebase)
chems=readdir(joinpath(dir,"src/odes/"),join=true)
# these filters are mostly hacky workarounds
#chems=filter(filename->occursin(".jl",filename)&&(!occursin("odebase.jl",filename))&&(!occursin("rejects.jl",filename))&&(!occursin("matrix",filename))&&!occursin("#",filename),chems)

struct OdebaseNode
    ID::String
    rational::Bool
    massAction::Bool
    #? redundant
    species::Int
    deficit::Int
    numSpecies::Int
    # TODO types for the following
    # \dot{x}_i is set to 0
    param_polynomial_system::Vector
    # should replace this with a function soon
    generic_polynomial_system::Vector
    constraints::Vector
    paramsRing
    # for now, rational (remove when not in script)
    polRing::QQMPolyRing
end

# The initial values for rejects are defined by those systems that have a parameter to the power of another parameter (eg k1^k2)
# We do not save these as .jl file to begin with as of right now

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

for file in chems
    include(file);
    randCoeff=rand_nonzero(length(gens(paramsRing)));
    QQpolRing,tup=polynomial_ring(QQ,["$x" for x in gens(polRing)]);
    phi=hom(polRing,QQpolRing,c->evaluate(c,randCoeff),gens(QQpolRing));
    # we redefine polRing to be of rational type after the map
    push!(odebaseSystems, OdebaseNode(name,true,true,1,1,length(gens(polRing)),chemSystem,[phi(x) for x in chemSystem],[],paramsRing,QQpolRing));
end
end # module 
