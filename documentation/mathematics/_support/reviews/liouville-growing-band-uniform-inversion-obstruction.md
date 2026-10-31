# Uniform inversion obstruction for time-dependent Liouville prime bands

**Contribution:** grwtsk contributors.
**Disposition:** quantitative obstruction, conditional on the original exact waveform identity; no independent arithmetic gain, no RH proof.
**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleGrowingBandUniformObstruction.lean`.
**Predecessor:** `LiouvilleGrowingPrimeBandIdentity.lean` (observed blob `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`), and `LiouvillePrimeBandCovarianceTolerance.lean` (observed blob `62350831345004d8dada74cef24d621a9997c98f`).
**Verification:** mathematical proof below; Lean source candidate, compilation / expected interfaces / fresh kernel / transitive axioms NOT_RUN.

## Exact source and uniform theorem

For T>=0 let F be the unchanged actual Liouville causal waveform, H(T)=integral_0^T |F|^2. Its zero-before-birth property gives F(u)=0 for u<0. Choose at each T a possibly different finite set P_T of primes p>=2, with nonnegative weights w_{T,p} and W_T=sum_p w_{T,p}>0. Define b_{T,p}=w_{T,p}/sqrt(p), kappa_T=sum_p b_{T,p}, and the original *complete signed* uncovered waveform

    R_T(u)=W_T F(u)+sum_(p in P_T) b_(T,p) F(u-log p).

This is the growing-band waveform identity, not a newly proved arithmetic identity. It includes all repeated-prime, squareful, unsifted, zero-birth and endpoint contributions from the existing coefficient definition.

Put E_T=integral_0^T |R_T(u)|^2. Zero extension and the translation change of variables give

    ||F(.-log p)||_{L2[0,T]} <= ||F||_{L2[0,T]}.

The triangle and reverse triangle inequalities imply

    (W_T-kappa_T) sqrt(H(T)) <= sqrt(E_T)
                                    <= (W_T+kappa_T) sqrt(H(T)).

Because p>=2, kappa_T<=W_T/sqrt(2). Therefore **uniformly in T,
P_T, the cardinality, the weights and any dependence on epsilon**,

    (1-1/sqrt(2)) sqrt(H(T))
      <= sqrt(E_T)/W_T
      <= (1+1/sqrt(2)) sqrt(H(T)).

Squaring (all quantities nonnegative) yields

    (1-1/sqrt(2))^2 H(T)
       <= E_T/W_T^2
       <= (1+1/sqrt(2))^2 H(T).

This is a sharp uniform *methodological* obstruction for all such bands:
normalized residual all-positive-rate energy bounds are equivalent to the
original all-positive-rate energy bound, even for varying bands. Choosing a
growing band cannot alone produce independent arithmetic information.
For bands with minimum prime >=Q, the sharper ratio kappa/W<=1/sqrt(Q)
makes the transformation even closer to an isometry.

The new Lean scalar candidate formalizes the mass-budget summation and the
uniform norm sandwich assuming the explicitly stated triangle inequalities.
It does not claim to have proved the actual analytic translation or
Minkowski return in Lean.

## Complete signed Type II and Buchstab accounting

Write S_T(u)=sum_p b_(T,p) F(u-log p). Pointwise

    |R_T(u)|^2=W_T^2 |F(u)|^2+2W_T F(u)S_T(u)+|S_T(u)|^2.

After integration the *complete* signed identity is

    E_T=W_T^2 H(T)
        +2W_T sum_p b_p C_p(T)
        +sum_(p,q) b_p b_q C_(p,q)(T),

where
    C_p(T)=integral_0^T F(u)F(u-log p) du,
    C_(p,q)(T)=integral_0^T F(u-log p)F(u-log q) du.

The p=q diagonal, p!=q ordered pairs, repeated-prime contributions
inside each shifted waveform, and unsifted residual are all retained.
The expression may be reorganized using a signed Buchstab or Type II
decomposition, but no new cancellation is obtained merely by writing
this exact identity. In particular, a bound for the complete last two
terms that is inferred from E_T or H(T) alone is circular.

## Constraint and next proof obligation

A useful supplier must prove a genuinely independent *signed arithmetic
estimate* after the Type II split, retaining the full diagonal and boundary
costs, rather than interpreting this invertible transformation as a gain.
One bounded next target is an exact, source-derived squareful-aware
bilinear covariance decomposition with a separately estimated complete
signed off-diagonal packet on a stated growing region. The estimate and its
parameter uniformity cannot be assumed from fixed-shift Chowla, entropy
decrement, finite-prime delay, or rough-number density alone.

No theorem about the Riemann Hypothesis follows without that arithmetic
gain and accepted verification of the entire source dependency chain.
