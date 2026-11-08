# RH and Dirichlet GRH source targets with the complete prime credit

Local attribution: grwtsk contributors.

This note retains mathematical definitions, comparisons and the recorded
prime-credit obstruction from sections 4–8 of the former research-programme
prompt. The exact origin is
[`grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec`](https://github.com/grwtsk/math/blob/8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec/documentation/mathematics/_support/reference/RH-GRH-Unified-Research-Closure-Prompt-v5.md),
blob `e1bf2b21d682de1b0fe2f1b8d611faab51def4ee`. It preserves historical
mathematical scope; it does not claim a new proof, source audit, independent
review, compilation, kernel replay or axiom audit. The operational research
programme belongs in Noe.

The **NOT_PUBLISHED** labels below describe the earlier handoff/packet at its
recorded time. Publishing this retained note does not retroactively publish or
verify that historical attempt, establish novelty, or upgrade mathematical or
formal acceptance.

## Original arithmetic objects and quantifiers

The canonical RH proposition is `_root_.RiemannHypothesis`, with its actual
upstream definition and zero-divisor conventions. The arithmetic source is the
unchanged function `ArithmeticFunction.moebius`, retaining its positive integer
labels, signs, squareful zeros, factorization and birth gates.

For the original coherent signed waveform, the recorded cumulative energy and
source decomposition are

\[
E(T)=\int_0^T|\operatorname{wholePickup}(u)|^2\,du=D(T)+X(T),
\]

where `D` is the genuine nonnegative diagonal and `X` is the complete signed,
ordered off-diagonal Möbius Gram sum. At the specified nonnegative horizons the
recorded endpoint comparison is

\[
|\operatorname{endpointSum}(T)-X(T)|\le\tfrac14.
\]

The quarter-unit term is a reconstruction allowance, not arithmetic cancellation.
The all-positive-rate target is

\[
\forall\varepsilon>0\ \exists C_\varepsilon\ge0\ \forall T\ge0,
\qquad E(T)\le C_\varepsilon e^{\varepsilon T}.
\]

The original conditional Laplace/energy machinery requires an independently
proved estimate for that source. Constants cannot secretly depend on `T`.
Dyadic, eventual or good-scale statements require their actual source comparison,
finite-initial-range control and permitted scale-set quantifier order.

For a positive presentation modulus `q` and each genuine Dirichlet character,

\[
M_\chi(N)=\sum_{n\le N}\mu(n)\chi(n),\qquad
S_a(N)=\sum_{\substack{n\le N\\n\equiv a\pmod q}}\mu(n),
\qquad P_q(N)=\sum_{a\in(\mathbb Z/q\mathbb Z)^\times}S_a(N)^2.
\]

The recorded character-orthogonality comparison retains every principal and
nonprincipal term:

\[
\varphi(q)P_q(N)=\sum_{\chi\bmod q}|M_\chi(N)|^2.
\]

The sufficient arithmetic target has the precise order

\[
\forall q\ge1\ \forall\varepsilon>0\ \exists C_{q,\varepsilon}\ge0\
\forall N\ge1,\quad
\varphi(q)P_q(N)\le C_{q,\varepsilon}N^{1+2\varepsilon}.
\]

The presentation modulus, primitive conductor, principal pole, nonunit zeros,
conjugate characters and the `q=1` specialization remain distinct. The analytic
return additionally requires the actual identity

\[
L(s,\chi)^{-1}=s\int_1^\infty M_\chi(x)x^{-s-1}\,dx
\]

first in its valid half-plane, then continuation, zero exclusion, the primitive
functional-equation return and imprimitive Euler factors. Finite Parseval alone
does not provide Dirichlet GRH.

## Complete source partition

All quantities below retain the original ordered positive-integer inventory,
Möbius coefficients, birth-gated Gram, horizon, fixed GCD cutoff, additive-gap and
ratio masks, and both orientations.

| Symbol | Existing source quantity | Role |
|---|---|---|
| `X` | `pickupCross` | Complete ordered off-diagonal source |
| `A_Q` | `threePaidSectors` | Gap, ratio and high-GCD sectors in their stated partition |
| `J_Q` | `lowGcdPrimeDilationCross` | Nonpositive prime-dilation packet in the remaining low-GCD sector |
| `H_Q=-J_Q` | Negative of the same packet | Nonnegative prime credit, counted once |
| `B_Q` | `otherLowGcdCross` | Prime-dilation-free low-GCD remainder |
| `L_Q` | `lowGcdDenseCross` | Complete low-GCD remainder, including the prime packet |

The recorded exact identities are

\[
X=A_Q+J_Q+B_Q=A_Q+L_Q,\qquad L_Q=B_Q-H_Q.
\]

For nonnegative horizons, `J_Q≤0` and `H_Q≥0`. The sign gives `L_Q≤B_Q`,
not equivalence of their all-rate upper bounds. The primitive-slope decomposition
belongs to `B_Q`:

\[
B_Q(T)=\sum_{(a,b)=1}\mu(a)\mu(b)W_{Q,T}(a,b),\qquad W_{Q,T}(a,b)\ge0.
\]

With the existing `nonnegativeSignSlopeCross` denoted by `P_Q` and
`oppositeSignSlopeCredit` by `N_Q`,

\[
B_Q+N_Q=P_Q,\qquad L_Q=P_Q-N_Q-H_Q.
\]

The credits `N_Q` and `H_Q` are disjoint source sectors. The existing
`positiveSlopeCreditEveryRateOn_iff_otherLowGcd` concerns the pruned
`OtherLowGcdEveryRateOn`, not the complete `LowGcdDenseEveryRateOn`.

## Recorded obstruction to the pruned premise

The inherited analytical handoff was at commit
`f61109b6d67bd0496181dc54503fb1dd6ab1897d`, tree
`7fac6961869a6ec9d26cabb4950910639128cd52`, and had status **NOT_PUBLISHED**.
No Lean theorem was authored or accepted in that handoff; compilation, expected
types, fresh kernel replay and transitive axiom audit were **NOT_RUN**.
The following is its retained argument, not a fresh independent verification.

Its exact source blobs under `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/`
were:

| File | Blob |
|---|---|
| `MoebiusLowGcdPrimeDilationNegative.lean` | `e7abaa44008b76aaeb2a6a7ee69e0b5602787014` |
| `MoebiusSparseHighGcdDenseCore.lean` | `11ac20aa5fca77f0de5deebce670f06204e61e4f` |
| `MoebiusDenseCoreRowControlVariate.lean` | `ab3c4fa71e53f6d512560b0dab32edb04ef1c9f3` |
| `MoebiusEndpointPutnamSparseGapAllRate.lean` | `2ccedc75331c8ec88956923f896083727d49ec4f` |
| `MoebiusPrimeFreeSlopeCreditBalance.lean` | `74938c0c69abe7a2fb342cd8856f4a113bbb705e` |

Fix rate `r=1/4` and the actual mask
`Q(T)=putnamRateGapSet(1/8,T)`, with `|Q(T)|≤e^(T/16)`. Finite square expansion
gives `E_fin=D+X≥0`, hence

\[
B_Q(T)\ge H_Q(T)-D(T)-|A_Q(T)|.
\]

For a prime `p`, the two ordered pairs `(1,p)` and `(p,1)` have GCD one and
coefficient product `−1`. They remain in the prime packet when both `p` and
`p−1` lie outside `Q`. At most `2|Q|` primes fail these exclusions. With
`x=e^(T−2)`, the handoff uses the unconditional prime-number theorem to retain
at least `x/(4 log x)` primes in `(x/2,x]`, eventually.

For the literal response

\[
r_n(u)=\begin{cases}2(n^{-1/2}-e^{-u/2}),&u\ge\log n,\\0,&u<\log n,
\end{cases}
\]

put `a=1−e^(−1/2)`. On `[T−1,T]`, each surviving prime has
`r_1≥2a`, `r_p≥2a/√p`, so `K_T(1,p)≥4a²/√x`. Counting the two orientations
once gives, eventually,

\[
H_{Q(T)}(T)\ge c_0\frac{e^{T/2}}T,\qquad c_0=\frac{2a^2}{e}.
\]

The same handoff records

\[
D(T)\le4T(1+T),\qquad
|A_{Q(T)}(T)|\le16T(1+T)e^{T/16}+32Te^{\sqrt T}.
\]

Therefore

\[
B_{Q(T)}(T)\ge c_0\frac{e^{T/2}}T-4T(1+T)
-16T(1+T)e^{T/16}-32Te^{\sqrt T}.
\]

The subtracted terms are smaller than `e^(T/2)/T` by factors tending to zero.
For all sufficiently large real `T`, the recorded conclusion is

\[
B_{\operatorname{putnamRateGapSet}(1/8,T)}(T)
\ge\frac{(1-e^{-1/2})^2}{e}\frac{e^{T/2}}T.
\]

This contradicts a `Ce^(T/4)` upper bound on any set unbounded above. The
recorded disposition analytically refutes `OtherLowGcdEveryRateOn G` and its
stated positive-slope equivalent at that source scope for unbounded `G`.
It does not refute RH, the finite balance identities, their conditional
implications, or any claim about bounded `G`. The argument is untwisted; its
prime-packet sign has no established transfer to complex/nonprincipal twists.
Historical finite diagnostic counts are external evidence, not the proof of the
eventual prime-count estimate.

## Corrected conditional return and remaining premise

For one fixed scale population `G` with the consumer's required coverage, the
complete target is

\[
\forall r>0\ \exists C_r,R_r\ge0\ \forall T\in G,\quad
R_r\le T\Longrightarrow
L_{Q_r(T)}(T)\le C_r e^{rT},\qquad
Q_r(T)=\operatorname{putnamRateGapSet}(r/2,T).
\]

At the level of the displayed algebra this is
`P_Q≤N_Q+H_Q+C_r e^(rT)`. It is the existing complete-source target,
not a newly authored Lean equivalence. The referenced consumer is
`riemannHypothesis_of_lowGcdDense_goodScales` in the
`MoebiusSparseHighGcdDenseCoreReturn` source neighborhood, retaining its actual
type and `AffineFrequent G` premise.

If an independent complete `L` supplier is established, substitution of
`r=ε/2` uses the same mask `putnamRateGapSet(ε/4,T)` and gives the recorded
conditional comparison

\[
E_{\rm fin}(T)\le4T(1+T)+C_{\varepsilon/2}e^{\varepsilon T/2}
+\frac{1024}{\varepsilon^2}e^{\varepsilon T/4}+32Te^{\sqrt T}.
\]

That independent premise remains open in the handoff. Good-scale transfer,
finite-response/prefix identification and the finite initial range remain
separate obligations. An `endpointSum` comparison also retains its `1/4`
allowance. The direct absolute-value estimate only gave
`E_fin(T)≤16(e^T−1)`, a fixed rate-one bound.

## Related source comparisons retained at their original scope

The existing `MoebiusFixedConductorHodgePort` and
`MoebiusFixedConductorHodgeAllRateEquivalence` sources describe
`H_q_full=φ(q)∑_a E_a=∑_χ E_χ`. Their comparison requires independent control
of both positive Hodge metric energy and the signed reconstruction allowance.
The zero-metric/full-error counterexample prevents treating unrestricted
reconstruction error as cancellation.

The finite biased-noise source candidates at
`bde0082d361cdf117db4a7a625e9271a0e3af231` retain
`Q_ρ=ρ²S+(1−ρ²)D` and sharp cost `m/(1+(m−1)ρ²)` for the specified finite
joint second moments. `FiniteBiasedNoiseRecovery.lean` had blob
`ffea782f81c424b440c2b40694f0fca77f2fa319` and
`MoebiusLFunctionBiasedNoiseRecovery.lean` blob
`9d0acba83018a4e6dc3155672b6a7d065c662f3a`. Their source publication was not
native acceptance; finite-response energy and cumulative prefix energy still
require their actual source map.

The deterministic prime-noise divisor-energy expansion inspected at
`f61109b6d67bd0496181dc54503fb1dd6ab1897d` retains all ordered terms, the
diagonal and original source coefficients. The empty prime subset is the
original finite energy. A relative covariance bound still containing the
unknown original energy supplies no independent all-positive-rate upper bound.
The inherited unpublished divisor-reconstruction argument and the distinct
issue-level report in [#334](https://github.com/grwtsk/math/issues/334#issuecomment-6612873855)
had different constants and incomplete source identifications; this extraction
does not conflate or qualify them.

The complete historical formulas and their original qualifications remain in the
pinned origin above and the preserved Noe source archive. No source-definition,
proof-acceptance or formal-assurance status is upgraded by this split.
