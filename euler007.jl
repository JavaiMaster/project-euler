flag = ones(Int64, 324*324)
flag[1]=0
num_primes = zeros(Int64, 324)

limit=324
for i in 2:limit
    if(flag[i] == 1)
        for j in i*i:i:limit*limit
            flag[j]=0
        end
    end
end
for i in limit:limit:limit*limit
    num_primes[i÷324]=sum(flag[1:i])
end
T=parse(Int64, readline(stdin))
for i in 1:T
    global k=parse(Int64, readline(stdin))
    global ind=0
    for j in eachindex(num_primes)
        if num_primes[j] >= k
            ind=j-1
            break
        end
    end
    global pri_ind = 0
    local count=0
    local total = (ind == 0 ? k : k - num_primes[ind == 0 ? 1 : ind])
    for h in 1:324
        if flag[(ind)*limit + h] == 1
            count+=1
        end
        if count == total
            pri_ind=(ind)*limit + h
            break
        end
    end
    println(pri_ind)
end
