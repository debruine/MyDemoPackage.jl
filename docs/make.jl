using MyDemoPackage
using Documenter

DocMeta.setdocmeta!(MyDemoPackage, :DocTestSetup, :(using MyDemoPackage); recursive=true)

makedocs(;
    modules=[MyDemoPackage],
    authors="debruine <debruine@gmail.com> and contributors",
    repo="https://github.com/debruine/MyDemoPackage.jl/blob/{commit}{path}#{line}",
    sitename="MyDemoPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://debruine.github.io/MyDemoPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/debruine/MyDemoPackage.jl",
    devbranch="main",
)
