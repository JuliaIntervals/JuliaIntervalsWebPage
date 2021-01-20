# This file was generated, do not modify it. # hide
orders = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
anim = @animate for n in orders
    tm = TaylorModel1(n, interval(x0), a)
    ftm = f(tm)
    plot(range(inf(a), stop=sup(a), length=1000), f, lw=2, xaxis="x", yaxis="f(x)", label="f(x)")
    plot!(ftm, title="$(n)th order")
end
gif(anim, joinpath(@OUTPUT, "taylor1_gif.gif"), fps = 2) # hide
nothing # hide