# Original low-GCD Möbius source: nonpositive prime dilations and primitive coprime time shift

Research date: 2026-11-02. Mathematical direction and source attribution: **grwtsk contributors**. Source comparison, arithmetic diagnostics and Lean source-proof-candidate drafting: OpenAI ChatGPT. Preserve upstream GRWTSK and Mathlib attribution and licenses.

## Problem, source and previous independent payments

The arithmetic source is the genuine ordered signed off-diagonal causal Möbius Gram:

\[
X(T)=\operatorname{pickupCross}(T)
=\sum_{\substack{m,n\in W_T\\m\ne n}}
\mu(m)\mu(n)\operatorname{pickupResponseGram}(T,m,n),
\qquad W_T=\{1,\ldots,\lfloor e^T\rfloor\}.
\]

The original physical response is \(r_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{u\ge\log n}\), and the Gram is its actual time-integral \(\int_0^T r_m(u)r_n(u)\,du\). Both ordered orientations, original integer indices, true squareful zeros, causal birth cutoff, original source-independent physical-record defect and original endpoint curvature difference remain present.

The previous source candidate MoebiusSparseHighGcdDenseCore.lean partitions X into three previously paid sectors (selected additive gaps, otherwise selected integer ratios, then otherwise high-GCD pairs) plus its still-unproved signed low-GCD dense remainder L. The original fixed gcd threshold is \(D_*(T)=\max(1,\lfloor e^{T-\sqrt T}\rfloor)\). The source-specific paid-sector upper at T>=4 and r>0 is \(64r^{-2}e^{rT}+32Te^{\sqrt T}\); the original endpointSum differs from X by at most 1/4 for T>=0. These were pre-existing source proof candidates, not kernel accepted in this session.

This increment finds a TRUE arithmetic sign feature inside L. It does not prove that the remaining signed core is small.

## Two additive Lean source proof candidates

| Module | Source commit | Final Git blob | Public theorem candidates |
| --- | --- | --- | ---: |
| [MoebiusLowGcdPrimeDilationNegative.lean](https://github.com/grwtsk/math/blob/2df19f28a3ceaa2b326c7ae6d37b478be1500c0d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusLowGcdPrimeDilationNegative.lean) | 2df19f28a3ceaa2b326c7ae6d37b478be1500c0d | e7abaa44008b76aaeb2a6a7ee69e0b5602787014 | 9 |
| [MoebiusLowGcdPrimeFreePrimitiveBridge.lean](https://github.com/grwtsk/math/blob/797c92859b1b14d4e88c47d35d975ffa6fccfc7b/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusLowGcdPrimeFreePrimitiveBridge.lean) | 797c92859b1b14d4e88c47d35d975ffa6fccfc7b | 74a6def7792b1688c7cbf4292ff32cf1280ed21f | 8 |

The first file was initially published at e3d1ce0bd007dceb4933262b17919e0c82f80552, then changed only its nonpositive-addition proof step. The second was published at fcbe588173107a0b04be4a6bcb9f574b75b1486b, then extended with a squareful-safe coprime shift, the explicitly open full-gcd reindexing target, and a conditional primitive signed-bilinear RH supplier at commit 797c92859b1b14d4e88c47d35d975ffa6fccfc7b. Pins refer to final blobs only.

Both sources are uncompiled proof candidates, not accepted Lean theorems.

## First exact arithmetic contribution: a nonpositive ordered packet

The existing source MoebiusDenseReducedPrimeDilationCancellation.lean proves as a source candidate that if \(p\) is prime, \(p\nmid q\), and \(q>0\), then for the ORIGINAL coefficients
\[
\mu(q)\mu(pq)=-\mu(q)^2.
\]
The original real Gram \(\operatorname{pickupResponseGram}(T,q,pq)\) is nonnegative for \(T\ge0\) because each causal response is nonnegative on its birth-gated integration interval. The same holds for the reverse ordered orientation. Thus
\[
\mu(q)\mu(pq)\operatorname{pickupResponseGram}(T,q,pq)\le0.
\]

The new module applies this result ONLY to pairs that genuinely survive the earlier additive, integer-ratio and high-GCD masks. Define P(Q,T) as the sum of those original signed low-GCD dense pairs that are true prime dilations, and B(Q,T) as the literal complementary original signed pairs. Their exact no-double-count identity is
\[
L_Q(T)=P(Q,T)+B(Q,T),\qquad P(Q,T)\le0\quad(T\ge0).
\]
Consequently
\[
L_Q(T)\le B(Q,T),
\]
with zero upper cost for P. Combining this with the existing three positive source payments gives the new candidate:
\[
\boxed{\operatorname{endpointSum}(T)
\le B(Q_{r,T},T)+64r^{-2}e^{rT}
+32Te^{\sqrt T}+\frac14}
\qquad(r>0,\;T\ge4).
\]
The exact source also equals the original three paid sectors + P + B. All sources are the literal arithmetic Möbius coefficients on the same original ordered finite support.

The new OtherLowGcdEveryRateOn(G) proposition chooses ONE scale set G before quantifying every positive rate. Its proof candidate transports this **stronger** all-rate bound to LowGcdDenseEveryRateOn(G), and therefore to the existing conditional RH good-scale consumer only if AffineFrequent(G) is separately proved.

**Critical one-way boundary:** the converse is not claimed. P might be large and NEGATIVE. A small original signed L may be obtained through cancellation between a large negative P and a large positive B. Establishing the upper bound on B could be substantially harder. We do NOT say that B has an independently proved all-positive-rate estimate, and do NOT promote the conditional consumer to an RH proof.

## Second exact contribution: primitive common-factor time shift with actual squareful zeros

The independent original source MoebiusIncomparableGcdLcm.lean proves the true multiplicativity identity
\[
\mu(m)\mu(n)=\mu(\gcd(m,n))\mu(\operatorname{lcm}(m,n)),
\]
without assuming squarefree source coefficients.

The new primitive adapter identifies the entire remaining B(Q,T) pair mask, proves its symmetry, and rewrites the literal original source product using the true gcd/lcm signs.

The original CausalGcdTimeShift.lean proves the genuine shift
\[
\operatorname{Gram}_T(ga,gb)
=\frac1g\operatorname{Gram}_{T-\log g}(a,b).
\]
Combining that with original Möbius multiplicativity under the **required** coprimality guards \(\gcd(g,a)=\gcd(g,b)=1\) gives the new source-level termwise result
\[
\boxed{
\mu(ga)\mu(gb)\operatorname{Gram}_T(ga,gb)
=
\frac{\mu(g)^2\mu(a)\mu(b)}{g}
\operatorname{Gram}_{T-\log g}(a,b).
}
\]
It holds even when g, a or b is squareful: the *actual* Möbius zeros remain zero. If g shares a prime factor with a or b the displayed factorization cannot be assumed, and the source does not do so. For the canonical actual gcd decomposition, the reduced a,b must additionally be coprime.

The new primitivePrimeFreeTripleCross definition retains (i) original endpoint source-window membership of ga,gb, (ii) \(\gcd(a,b)=1\), (iii) the two coprimality-with-g guards, (iv) the entire original prime-free low-GCD dense mask on ga,gb, and (v) the true time-shifted Gram and the \(\mu(g)^2\) factor. The exact original double-to-triple reindex remains **a named unproved proposition**, ExactPrimeFreeTripleReindexTarget. The termwise theorem is NOT silently promoted to that full sum identity.

## Finite numerical diagnostic using original Möbius coefficients

For illustration, the true integer Möbius symbols and analytically integrated original causal response Gram were evaluated at T=log N, sparse rate r=0.65, using 55-digit mpmath working precision. These are exploratory finite calculations, not exact Lean evaluations or a universal arithmetic bound:

| N | Selected Q | Original D* | Surviving prime-dilation pairs | Signed P | Other surviving low-GCD pairs | Signed B | Original low-GCD signed L |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 8 | 1 | 1 | 6 | -0.670037272 | 22 | 0.143708187 | -0.526329085 |
| 16 | 2 | 3 | 16 | -1.427281708 | 142 | 1.344819746 | -0.082461962 |
| 32 | 3 | 4 | 34 | -4.489293088 | 686 | 4.560462716 | 0.071169628 |
| 48 | 3 | 6 | 60 | -8.196203530 | 1772 | 8.852476003 | 0.656272473 |
| 64 | 3 | 8 | 84 | -11.926280001 | 3368 | 13.245206471 | 1.318926470 |

All observed prime-dilation original pair contributions were <=0. Some were zero because the original index q was squareful. At N=64 the sum P is about -11.93, the complementary B is +13.25, and their combined original L is only +1.32. Thus a negative-packet-free upper supplier is **one-sided and potentially stronger**, which is an important hostile check against claiming equivalence or a new all-rate result.

All N(N-1) ordered off-diagonal pairs were assigned to the old three paid sectors or one of the two new low-GCD sectors; no pair was independently resampled, dropped, or counted twice. This is finite numerical support for source-mask correctness, not a proof of asymptotic cancellation.

## Verification boundary and next noncircular arithmetic task

Original source revision inspected for this increment: grwtsk/math main at 162891132952e479189bfbc59529185fccfc10b1, with each subsequent new source publication revision pinned separately. Related exact source blobs: old nonpositive prime theorem 50f9ee06b3deea0321982c7e8cb8ba41bf9fc7e9; original causal gcd time-shift db0052901eca3050ed0ce812d3e0e7675c8fab05; gcd/lcm identity d1178838452604248726b5b6b28a697525624506; original coprime Möbius multiplication 6164a4de724f2a29ef4304304f87b48d3ec78b41; old strict low-GCD source 11ac20aa5fca77f0de5deebce670f06204e61e4f. All source publication hashes are Git-readback identities only.

Pinned toolchain: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The host has no installed lean, lake or elan and no native run was dispatched. Parser, elaboration/compilation, expected theorem-type checks, fresh kernel checking, dependency closure and transitive axiom/opaque/native audit remain **NOT_RUN**. The imported source theorems also retain their separate acceptance obligations. There are no authored sorry, admit, axiom or native_decide declarations in the two new files by a noncertifying static scan.

Next independently useful mathematical objective: prove the full *exact* gcd-to-primitive triple-sum reindex of this B(Q,T) original source, with the true squareful-zero and original masks. Only then investigate a genuinely noncircular one-sided estimate for the shifted coprime primitive bilinear source, rather than mistaking a negative dropped packet or a distributional model for cancellation. The fixed good-scale signed original arithmetic bound and RH remain OPEN.


## Finite primitive gcd bijection: precise mathematical argument, Lean proof still open

For each original positive ordered source pair (m,n), let \(g=\gcd(m,n)\), \(a=m/g\), \(b=n/g\). Then \(g\ge1\), \(a,b\ge1\), \(\gcd(a,b)=1\), and the map from (m,n) to (g,a,b) is one-to-one: from a primitive coprime triple, \(\gcd(ga,gb)=g\), which recovers g, a and b uniquely. Both ordered orientations survive. The original source index bound on m,n is equivalent to the membership checks \(ga,gb\in W_T\); since g,a,b are positive factors of m,n, each is also bounded by \(\lfloor e^T\rfloor\).

If \(\mu(m)\mu(n)\ne0\), then both m,n are squarefree, and the actual original squarefree-multiplication theorem forces \(\gcd(g,a)=\gcd(g,b)=1\). In that case the published coprime common-factor identity gives the exact term with \(\mu(g)^2\mu(a)\mu(b)/g\) and genuine time shift \(T-\log g\). If instead \(\mu(m)\mu(n)=0\), the original ordered term vanishes. If either coprimality-with-g guard fails, the original ga or gb contains a squared prime and vanishes, so excluding that triple discards only an original zero term. Squarefulness of g,a or b also makes the triple coefficient vanish through the genuine Möbius symbols.

Thus ordinary finite arithmetic establishes a *paper-level* bijection and zero-handling proof outline for the equality named ExactPrimeFreeTripleReindexTarget. This is NOT a completed Lean derivation: all membership/bijection and source-zero lemmas must still be elaborated in the pinned kernel; the declaration remains a Prop without an authored proof.

The final source now also defines PrimitivePrimeFreeEveryRateOn(G), an explicitly OPEN one-sided signed upper bound for the actual shifted primitive triple sum on ONE fixed scale set. The candidate theorem riemannHypothesis_of_primitivePrimeFree_goodScales requires **all three** premises jointly: ExactPrimeFreeTripleReindexTarget, PrimitivePrimeFreeEveryRateOn(G), and AffineFrequent(G). This is a conditional consumer, not a new proof of RH or any missing analytic premise.

As a numerical cross-check (not Lean acceptance), evaluating the FULL original prime-free double sum and the explicitly guarded primitive triple sum at T=log N, r=0.65, using genuine integer Möbius values and 55-digit causal Gram arithmetic gave:

| N | Original prime-free double sum | Guarded primitive triple sum | Numerical difference | Retained primitive triples |
| ---: | ---: | ---: | ---: | ---: |
| 8 | 0.143708186913084616 | 0.143708186913084616 | 0 | 22 |
| 16 | 1.344819746140155267 | 1.344819746140155267 | less than 10^-54 | 118 |
| 32 | 4.560462715962372962 | 4.560462715962372962 | 0 | 558 |
| 64 | 13.245206470806456814 | 13.245206470806456814 | less than 10^-53 | 2646 |

At N=64 the full prime-free pair selector contains 3368 ordered pairs but only 2646 guarded primitive triples, because the omitted pairs have original Möbius coefficient zero from shared prime factors with g. Their omission is not cancellation of any nonzero signed source. The finite checks corroborate the formula at four horizons but do not prove it for all horizons, certify the Lean code, or supply the missing primitive bilinear upper.
