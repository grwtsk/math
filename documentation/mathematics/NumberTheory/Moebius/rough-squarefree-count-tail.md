# A count tail for actual squarefree rough integers

By grwtsk contributors. Written finite mathematics; no new Lean declarations.
Compilation, fresh kernel replay and transitive axiom auditing: **NOT_RUN**.

Source: the authorized conversation
https://chatgpt.com/g/g-p-6a9ce8907e348191a3f884d45ab4ad48-noeaaeue/c/6ae172dd-a538-83e8-8008-ebad9b4c2295,
assistant `34038892-88ce-4309-a558-77c6a12ef17e`, rendered-final SHA256
`132bd4401124b3c44dc492137a3677b6f1ed46cdf5a69beb0986baab7220c35c`.
This note extracts only its elementary count-tail argument. It does not import
or certify the subsequent prime-density replacements.

Let N>=M>=1, y>=1 and integer K>=1. Put
H=sum_(y<p<=N, p prime) 1/p and R_K(H)=sum_(r>=K) H^r/r!.
The number of squarefree v<=M with every prime divisor greater than y and
omega(v)>K is at most M R_K(H).

Proof. Remove the unique largest prime p from each such v and write v=up.
Then u is squarefree with r=omega(u)>=K distinct prime divisors in (y,N].
For fixed u there are at most floor(M/u)<=M/u choices of p; retaining only
actual largest-prime choices can only decrease that count. For each r, the
sum of 1/u over distinct unordered r-element prime sets is at most H^r/r!:
expanding H^r counts every distinct set r! times, with additional repeated
prime tuples nonnegative. Sum over r>=K. All actual product cutoffs were
removed in an upper bound; no probabilistic model is used.

For K+1>H, comparison of successive terms gives
R_K(H)<= (H^K/K!)/(1-H/(K+1)).
If T>1, H<=2 log T and K=ceil(20 log T), then K>=10H. Since
K!>=(K/e)^K, R_K(H)<=2(e/10)^K<=2 T^(-20).
The last step uses e/10<e^(-1).

## Transfer to the stated proper source family

Fix d, complete cofactor pairs (i,k) with positive reciprocal mass
sum 1/(ik)<=M0, and a finite source with coefficient absolute value at most
2 a(d)^2 G0/N per pair of residual integers. Suppose the actual residual
ranges are subsets of R<=N/(2di), S<=N/(dk), with squarefree residuals
supported on primes greater than y. Additional ordering, coprimality,
hyperbolic row, strict gap and endpoint restrictions are retained subsets.
For fixed i,k, the pairs with omega(R)>K are at most
N^2 R_K(H)/(2d^2 ik), and the same bound holds for omega(S)>K.
A union bound, followed by the reciprocal cofactor sum, therefore gives

    absolute discarded source <= 2 G0 M0 R_K(H) a(d)^2 N/d^2
                              <= 4 G0 M0 T^(-20) a(d)^2 N/d^2.

This estimates a literal subset of the actual finite source. Intersections
need not be counted twice if the two tails are partitioned in order.
The hypotheses on coefficients and ranges must be proved when applying the
lemma; this note does not identify that family with the full RH-facing sum.

## Rate and missing bridge

For N=exp(T), N T^(-20) has exponent one: for every fixed delta>0,
(N T^(-20))/N^(1-delta)=exp(delta T)/T^20 tends to infinity.
Thus this allowance does not establish N^(7/8), even if an independent
estimate controlled the retained count sum. Signed cancellation in the
retained source and in the discarded or approximation residuals at a common
required rate remains unproved. No claim about other source cells, primes
outside the selected inventory, or the Riemann Hypothesis follows.
