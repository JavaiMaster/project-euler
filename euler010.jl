flag=collect(1:1000000)
flag[1]=0
limit=1000
for i in 2:limit
    if(flag[i] != 0)
        for j in i*i:i:limit*limit
            flag[j]=0
        end
    end
end
for i in 2:1000000
    flag[i]+=flag[i-1]
end
T=parse(Int64, readline(stdin))
for i in 1:T
    N=parse(Int64, readline(stdin))
    println(flag[N])
end