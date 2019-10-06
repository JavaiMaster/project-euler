T=parse(Int64, readline(stdin))
for h in 1:T
    N=parse(Int64, readline(stdin))
    max_prod=-1
    for a in N÷2:-1:3
        for b in N÷2:-1:a
            c=N-(a+b)
            if a^2 + b^2 == c^2
                if a*b*c > max_prod
                    max_prod = a*b*c
                end
            end
        end
    end
    println(max_prod)
end