# Exact causal-weighted cyclic packet and its integrated arithmetic kernel

Local attribution: grwtsk contributors.
Predecessor: SignedCyclicWalkPacket at
`9fcdd3a98232805b10ea12508f2a2afeb16ae8fe`.
The new source is `LiouvilleWeightedCyclicEnergy.lean` and imports the actual
Liouville target and original response continuity source. It is an unverified
Lean candidate; no packet estimate is asserted.

## Actual readout and recording inventory

For N>=1, u real, define on ZMod N

    b_(N,u)(z)=lambda(z.val+1)*pickupResponse(z.val+1,u).

The val+1 map is a bijection onto the CLOSED integer labels 1,...,N. It is not
a periodic extension of the infinite arithmetic sequence. If N=floor(exp T)
and u<=T, every additional label beyond floor(exp u) has zero response.
Thus the fixed recording inventory equals the dynamic causal waveform. For
T>=0 its size N is at least one, including T=0 and its zero-response birth.

Applying the predecessor to these REAL-WEIGHTED coefficients gives

    completePacket(b_(N,u))=F_lambda(u)^2, 0<=u<=T,
    H_lambda(T)=sum_(h in ZMod N) integral_0^T C_(N,u)(h)du.

Every correlation integrand is continuous, being a finite sum of products
of the actual continuous responses. This supplies finite integral-exchange
witnesses in the source candidate, rather than treating a totalized integral
as proof of integrability.

The period N and any optional arithmetic residue modulus d² are independent
coordinates. Original label parities are retained when partitioning products;
cyclic offset parity must not silently replace label parity, especially under
wrap-around. Coefficient precision reductions remain those of the original
integer source, and do not alter its real-valued response.

## Opposite gaps with the original weights

Let b(n)=lambda(n)r_n(u) on 1,...,N. For 1<=h<N, splitting the cyclic sum
at n=N-h gives EXACTLY

    C_N(h;u)=U_N(h;u)+U_N(N-h;u),
    U_N(g;u)=sum_(m=1)^(N-g)lambda(m)lambda(m+g)r_m(u)r_(m+g)(u).

For the wrap terms put m=n+h-N; the commutativity of the two real factors
identifies the opposite-gap contribution. Summing all offsets yields

    F_lambda(u)^2=sum_(n<=N)r_n(u)^2+2 sum_(g=1)^(N-1)U_N(g;u).

The zero-offset diagonal uses lambda(n)^2=1 at positive labels. For a Möbius
readout it would instead retain mu(n)^2, including squareful zeros. The new
Lean source uses the generic complete packet; the explicit opposite-gap
formula above remains a mathematical derivation, not a claimed Lean theorem.

## Integrate the causal weights first

For m,n>=1 define the actual response Gram kernel

    W_T(m,n)=integral_0^T r_m(u)r_n(u)du, T>=0.

Let a=1/sqrt(m), b=1/sqrt(n), v=log(max(m,n)). If v>T the kernel is zero.
Otherwise direct integration of the ORIGINAL response product gives

    W_T(m,n)=4*[a*b*(T-v)
               +2*(a+b)*(exp(-T/2)-exp(-v/2))
               +exp(-v)-exp(-T)].

It is symmetric and nonnegative, including at births. The exact finite
energy identity is therefore

    H_lambda(T)=D_T+2*S_T,
    D_T=sum_(n=1)^N W_T(n,n),
    S_T=sum_(g=1)^(N-1)sum_(m=1)^(N-g)
           lambda(m)lambda(m+g)*W_T(m,m+g).

All four arithmetic parity sectors and both ordered orientations are present.
This is the complete signed source with weights integrated once, not an
unweighted approximation or a sum of separate positive residue variances.
The required supplier is D_T+2*S_T<=C_epsilon exp(epsilon T) for every T>=0.
Neither the finite cyclic identity nor the explicit W formula proves it.

## A precise weighted-prefix transport, with its loss exposed

For fixed g write A_g(t)=sum_(m=1)^t lambda(m)lambda(m+g), A_g(0)=0,
M=N-g and w_m=W_T(m,m+g). The original responses decrease with their
positive integer label. Hence w_m>=w_(m+1)>=0. Exact finite Abel summation is

    sum_(m=1)^M lambda(m)lambda(m+g)w_m
      =A_g(M)w_M+sum_(m=1)^(M-1)A_g(m)*(w_m-w_(m+1)).

If an independently proved |A_g(t)|<=K_g holds for all allowed prefixes,
the weighted gap is bounded by K_g*w_1, and

    w_1<=4*T/sqrt(1+g),
    |2*S_T|<=8*T*sum_(g=1)^(N-1)K_g/sqrt(1+g).

These are sufficient transport bounds, not a cancellation theorem. Separate
absolute aggregation can lose the diagonal/off-diagonal cancellation needed
by the energy target. Fixed-g limiting estimates or constants depending
uncontrolledly on g cannot be substituted into an all-scale bound.
A signed one-sided prefix envelope may instead be inserted into the exact
Abel formula before aggregating. That route must retain every gap and its
full parameter dependence; no such envelope is supplied here.

## Status

Source candidate: positive-label cycle readout; causal fixed-inventory
transport; pointwise complete weighted packet; exact energy identification;
continuous correlation integrands and finite integral exchange; conditional
upper-bound consumer. The general bound and weighted opposite-gap/kernel
formalization remain open. Compilation, fresh kernel replay, expected types
and transitive axiom audit: NOT_RUN. Earlier finite tests do not certify these
new weighted source bytes. No dependency pin or root import was changed.
