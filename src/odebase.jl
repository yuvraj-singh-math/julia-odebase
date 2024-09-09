module odebase
export odebaseSystems
#export rejects
using Oscar;
const dir = Base.pkgdir(odebase)
chems=readdir(joinpath(dir,"src/odes/"),join=true)
# these filters are mostly hacky workarounds
chems=filter(filename->occursin(".jl",filename)&&(!occursin("odebase.jl",filename))&&(!occursin("rejects.jl",filename))&&(!occursin("matrix",filename))&&!occursin("#",filename),chems)

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
rejects=Dict(vcat([id=>"Fails to load in Julia" for id in ["BIOMD0000000060","BIOMD0000000637"]],["BIOMD0000000205"=>"Contains monomial equation"])...)
odebaseSystems=OdebaseNode[]

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

#unfiltered_systems=[OdebaseNode(sys.ID,true,true,1,1,sys.numSpecies,sys.param_polynomial_system,filter(l->!iszero(l),unique(sys.generic_polynomial_system)),[],sys.paramsRing,sys.polRing) for sys in odebaseSystems];

#for sys in odebaseSystems
    # Note that for f=2*x1, even though this is monomial, and has no toric solutions, is_monomial returns false
 #    so we look at the length of the list of monomials, check if its 1
    #if sum([length(collect(monomials(f)))==1 for f in sys.generic_polynomial_system])>0
        #rejects[sys.ID]="Contains monomial equation";
        #filter!(s->s!=sys,unfiltered_systems);
    #end

    #if length(unique(collect(Iterators.flatten([collect(monomials(f)) for f in sys.generic_polynomial_system]))))<length(sys.generic_polynomial_system)
        #rejects[sys.ID]="Macaulay matrix has more rows than columns";
        #filter!(s->s!=sys,unfiltered_systems);
    #end
#end

# quick approximation for complexity. better would be to compute the upper bound on no. of fully supported minors
## uncomment the two lines below to filter out any systems with number of species>=upperBound
#upperbound=89
#unfiltered_systems=filter(s->s.numSpecies<upperbound,unfiltered_systems);
#unfiltered_systems=sort(unfiltered_systems,by= x->x.numSpecies);
#const odebaseSystems=copy(unfiltered_systems);
end # module 
