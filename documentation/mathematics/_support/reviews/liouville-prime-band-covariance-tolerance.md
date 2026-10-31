# Negative-covariance tolerance for complete Liouville prime bands

**Status:** mathematically proved scalar transfer; additive Lean source-proof candidate.
**Verification:** compilation, expected-interface checks, fresh kernel and transitive
axiom audit NOT_RUN. No new arithmetic bound and no RH claim.

**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeBandCovarianceTolerance.lean`.
**Upstream exact source:** `LiouvilleGrowingPrimeBandIdentity.lean`, observed Git
blob `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`.
The existing integrated identity remains a named open proposition rather than
a kernel-established theorem.

## Exact conditional transfer

For the actual original Liouville causal waveform F, cumulative energy H,
complete signed uncovered waveform R_P, its energy E_P and *complete* delayed
covariance C_P, retain the source identity

    W H(T) + C_P(T) = integral_0^T F(u) R_P(u) du,

where W = sum_{p in P} w_p > 0. No prime, repeated-power multiple, unsifted
integer, birth collar or signed covariance term has been deleted.

Fix 0 <= eta < 1. Suppose, simultaneously, for every T >= 0,

    C_P(T) >= -eta W H(T)
    E_P(T) <= W^2 B(T), B(T) >= 0.

Cauchy--Schwarz gives

    [(1-eta) W H(T)]^2 <= H(T) E_P(T).

If H(T)=0 the conclusion is immediate. Otherwise cancel H(T)>0, then W^2>0:

    H(T) <= B(T)/(1-eta)^2.

In particular B(T)=C_epsilon exp(epsilon T) provides the unchanged
all-positive-rate target, with a constant multiplier (1-eta)^(-2).
The Lean scalar theorem takes the Cauchy--Schwarz square inequality as an
explicit hypothesis, rather than silently claiming integrability or the
upstream integrated identity was formally established.

## Automatic negative-covariance bound and circularity test

For any prime p>=2 and T>=0, a delayed F supported on nonnegative time obeys

    integral_0^T |F(u-log p)|^2 du <= H(T).

Indeed shift the variable and use H's nonnegative density. Cauchy--Schwarz
therefore gives |C_p(T)| <= H(T). With nonnegative weights put

    kappa(P,w) = sum_{p in P} w_p / sqrt(p).

Then C_P(T) >= -kappa H(T). If W>0 and every p is prime,
kappa/W <= 1/sqrt(2) < 1; hence eta=kappa/W is automatically admissible.

Moreover, Minkowski's inequality for the exact waveform identity

    R_P = W F + sum_p (w_p/sqrt(p)) F(.-log p)

gives ||R_P||_2 <= (W+kappa)||F||_2; the reverse triangle inequality gives
||R_P||_2 >= (W-kappa)||F||_2. Hence, for every fixed finite band with
W>kappa, the residual all-positive-rate energy property is quantitatively
equivalent to the original causal-energy target. The residual bound alone
does NOT constitute a weaker, independently established arithmetic input.

This tests the proposed supplier against invertibility rather than
presenting the relaxed covariance inequality as new Liouville cancellation.
In particular no absolute bound was imposed termwise on the signed
arithmetic expansion. The finite-prime and reciprocal-summable-prime
countermodels remain relevant and are not counterexamples to Liouville.

## Frontier

The only useful successor must extract a nontrivial *independent signed
arithmetic gain* (e.g. a scale-dependent Type II or weighted Buchstab
covariance estimate) before invoking the invertible band transformation.
A finite numerical test, standalone sign condition, or uniform rectangular
supremum cannot supply it. At the source revision here, all such gains
remain OPEN. The additive scalar Lean candidate has not been compiled.
