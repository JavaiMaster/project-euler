T=parse(Int64, readline(stdin))
for h in 1:T
    n,k=[parse(Int64, x) for x in split(readline())]
    num=readline(stdin)
    arr=[parse(Int, ss) for ss in split(num, "")]
    start=1
    numer = 1
    denom = 1
    max_prod=prod(arr[start:k])
    for i in k+1:n
        int_prod = prod(arr[start+1:i])
        if int_prod > max_prod
            max_prod = int_prod
        end
        start += 1
    end
    println(max_prod)
end