# RH primitive-slope sign balance: exact positive mass and authentic negative credit

Local attribution: **grwtsk contributors**. Research formalization assistance: OpenAI ChatGPT. Date 2026-11-02. **Source proof candidate; native Lean compilation, fresh kernel and transitive axiom review NOT_RUN. RH/GRH NOT_PROVED.**

## Exact source and newly authored theorem

Pinned inspected mathematical baseline: `grwtsk/math@b84ea004f7e9f681e2febb439409ac3c002bffd1`. Closest source `MoebiusPrimeFreeSlopeSignLedger.lean` (Git blob `d394e86e6066afcb0c626934b7312c7e02352f8e`); the exact gcd triple return `MoebiusPrimeFreeExactTripleReindex.lean` (blob `0db3152b7108d1a9e8f7819a8114458bc9070cab`), the full mask `MoebiusLowGcdPrimeFreePrimitiveBridge.lean` (blob `74a6def7792b1688c7cbf4292ff32cf1280ed21f`), and the conditional RH consumer `MoebiusLowGcdPrimeDilationNegative.lean` (blob `e7abaa44008b76aaeb2a6a7ee69e0b5602787014`) are unchanged.

The original unpaid source `otherLowGcdCross Q T` consists of the literal ordered, birth-gated Möbius pair Gram with complete original masks: prime-dilation exclusion, `fixedGcdCutoff T = max 1 floor(exp(T-sqrt(T)))`, short selected additive gaps, selected small integer ratios, and original diagonal removal. The canonical gcd triple reindex proves, as a separate source candidate,

\[
C_Q(T)=\sum_{(a,b)=1}\mu(a)\mu(b) W_{Q,T}(a,b)
\]

where `W = nonnegativeSourceSlopeMass` retains every actual original multiplier, squareful-zero, coefficient, response Gram, and original time-dependent mask; `W>=0` at physical T>=0.

The previously authored one-sided result was `C_Q<=P_Q`, with `P_Q` only the nonnegative-sign slope mass. New `MoebiusPrimeFreeSlopeCreditBalance.lean` retains the **opposite-sign credit**

\[
N_Q(T)=\sum_{(a,b)=1,\ \mu(a)\mu(b)<0}[-\mu(a)\mu(b)]\,W_{Q,T}(a,b)\ge0.
\]

Literal finite-sum sign partition gives the exact identity

\[
\boxed{C_Q(T)+N_Q(T)=P_Q(T).}
\]

The old nonpositive prime-dilation packet was removed *before* this slope grouping and is never double-counted in `N_Q`.

## Precise consumer and equivalence

The original missing `OtherLowGcdEveryRateOn G` requires `C_{Q(rate,T)}(T)<=C_rate exp(rate*T)` for every positive rate, eventually on **one fixed** scale set G, with `Q(rate,T)=putnamRateGapSet (rate/2) T`.

The new `PositiveSlopeCreditEveryRateOn G` requires, with exactly the same rate, Q, scale, threshold and constants,

\[
P_{Q(rate,T)}(T)\le N_{Q(rate,T)}(T)+C_{rate}e^{rate T}.
\]

The source candidate `positiveSlopeCreditEveryRateOn_iff_otherLowGcd` proves their **exact equivalence** by the displayed balance equation. Together with the existing independent paid-sector RH consumer, `AffineFrequent G` and `PositiveSlopeCreditEveryRateOn G` imply the canonical Mathlib RH *conditionally*. Neither open arithmetic premise is supplied by writing the equivalence.

`PositiveSlopeOnlyEveryRateOn G` is a strictly stronger sufficient **form** in general: dropping `N_Q` gives a valid majorant but can discard the very cancellation needed for RH. A hostile scalar family `P(T)=N(T)=exp(T)` has zero signed source but exponentially growing positive count. This is a generic counterexample, not an assertion about actual Möbius growth.

## Independent finite hostile test

The standalone `reference/original_mobius_slope_credit_reference.py` compares **two** exact original index inventories with independent summation routes: direct ordered (m,n) pairs and the (g,a,b) gcd-triple inventory, preserving all original masks. True Möbius coefficients come from an integer sieve. The genuine physical causal response Gram is evaluated from its analytic closed form at 50-decimal-digit numerical precision. For N=8,12,16,24,32,40, T=log N and Q in {empty, {1,2}, {1,2,3}}, the fixture passed **31,113 checks over 18 source configurations**. Both positive and negative original slope sectors are nonvacuous. For Q empty and N=40, the computed triple values are approximately C=10.44208448, P=13.93583439, N=3.49374991 and obey C+N=P.

This is a bounded numerical diagnostic, not native Lean, interval-certified computation, an all-rate Möbius estimate, source-to-Python refinement, or independent proof of RH.

## Comparison and remaining arithmetic step

The argument is a literal sign-splitting lemma over the **existing source-proved** positive slope masses. It does not claim originality of the elementary identity or an independent arithmetic cancellation theorem. Compared with the earlier one-sided `C<=P`, it preserves a complete signed credit and prevents a stronger-than-needed positive-only target. This is a source-aware bookkeeping advancement, not a new asymptotic bound.

The fixed-conductor Hodge/Dirichlet Parseval source `MoebiusFixedConductorHodgeAllRateEquivalence.lean` (blob `c6edc741d6b81cb09e68932fde8743a461cec2ba`) is a **different complex character representation**. There is no new theorem here transferring real primitive-slope credit to each complex character, no principal-channel suppression, and no GRH claim.

**Unresolved supplier:** independently prove that the complete positive original primitive-slope mass is covered by its authentic opposite-sign credit up to an all-positive-rate allowance, on one fixed affine-frequent population. The known high-smooth, sparse Putnam and strong-heat sector estimates do not currently establish that difference bound. Native verification requires exact source commit/tree/Mathlib pin, expected declaration types, independent kernel replay and full transitive axiom audit; all are NOT_RUN.
