using LightGraphs.Traversals

const travtestdir = dirname(@__FILE__)

travtests = [
    "bfs.jl"
    "bipartition.jl"
    "dfs.jl"
    "diffusion.jl"
    "greedy_color.jl"
    "maxadjvisit.jl"
    "randomwalks.jl"
]

@testset "LightGraphs.Traversals" begin
    for t in travtests
        println("traversals: testing $t")
        tp = joinpath(travtestdir, "$t")
        include(tp)
    end
end
