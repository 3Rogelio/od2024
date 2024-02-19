function obj(x,c)
    return (1/2)*(c-5x)
end
function g1(x)
    return (1/2)*(2400-3x)
end
function g2(x)
    return 600
end
function g3(y)
    return 800
end
function g4(x)
    return 0
end
x1 = collect(0:5:800)
x2 = collect(0:5:800)
x3 = collect(0:5:720)
x4 = collect(0:5:480)
x5 = collect(0:5:600)
x6 = collect(0:5:265)
x7 = collect(265:5:600)
x8 = collect(0:40:440)
y = collect(0:5:1800)
u = 50*ones(size(x4,1))
v = 20*ones(size(x4,1))
using Plots
plot(x7,g1.(x7),xlabel = "x", ylabel = "y", label = "puntos disponibles", fillrange = 0, color = "blue", fillalpha = 0.1)
plot!(x6,g3.(x6), label = "", fillrange = 0, color = "blue", fillalpha = 0.1)
plot!(x2,g1.(x2),label="3x+2y=2400")
plot!(x1,g3.(x1),label="y=800")
plot!(g2.(y),y,label="x=600")
plot!(x1,g4.(x1),label="y=0")
plot!(g4.(y),y,label = "x=0")
plot!(x4,obj.(x4,2400),label="c=2400", color="red")
quiver!(x8,obj.(x8,2400),quiver=(u,v),color="red")
plot!(x3,obj.(x3,3600),label="c=3600", color="black")
quiver!(x8,obj.(x8,3600),quiver=(u,v),color="black")
