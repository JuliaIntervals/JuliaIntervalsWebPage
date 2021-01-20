# This file was generated, do not modify it. # hide
function forward_sum(N)
    S_N = @interval(0.0)
    interval_one = @interval(1.)

    for i in 1:N
        S_N += interval_one / (i^2)
    end

    T_N = interval_one / @interval(N, N+1)
    S = S_N + T_N

    sqrt(6*S)
end

N = 10^6
@time S = forward_sum(N)
@show S, diam(S)