# Closing the divisor-restricted square-energy and first-collar coefficient proof candidates; higher-divisor no-go

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-02, America/Los_Angeles.
Mathematical status: complete exact finite proof arguments with new authored Lean proof bodies, not compiler/kernel-accepted. RH-strength signed low-gcd bound not proved.

## 1. Current source identity and exact pins

Use the ORIGINAL birth-gated real `pickupResponse`, `pickupResponseGram`, `moebiusReal`, and `sourceKernel`. The published finite sieve source `MoebiusLowGcdSieveSquareEnergy.lean` blob `72e6bcf5046f090011ae261dda8a77b837906741` gives
  lowGcdFullGram(D,T)=sum_(d<=N) c_D(d)*divisorRestrictedFullGram(d,T),
  plainLowGcdCross(D,T)=lowGcdFullGram(D,T)-lowGcdSourceDiagonal(D,T),
where c_D(d)=sum_(x*y=d,y<=D)mu(x) and N=floor(exp T). The diagonal is EXACTLY n<=D; both original ordered orientations and squareful Möbius zeros survive.

## 2. DivisorRestrictedEnergyIdentityTarget: source-exact finite integral argument

For every d,n and u define
  f_d(n,u)= 1_(d|n) * mu(n) * pickupResponse(n,u).
The pinned source `MoebiusCausalGramCauchy.lean` blob `01c7128c5c81664405b6fe4d1a373dfdbb0a51dc` has
  `sourceResponseVector_continuous`,
  `sourceResponse_cross_integral`,
so every f_d(n,.) is continuous for positive source n and
  integral_0^T f_d(m,u)f_d(n,u)du
  =1_(d|m,d|n)*sourceKernel(T,m,n).
Pinned Mathlib v4.34.1 / d13f23b723b8a846827a245b89c10fc7d3f11612 has
  `intervalIntegral.integral_finsetSum` in `MeasureTheory/Integral/IntervalIntegral/Basic.lean`, and `continuous_finsetSum` with its finite continuity proof. Therefore two finite integral/sum exchanges and the finite ring identity `(sum f_d)^2=sum_(m,n)f_d(m)f_d(n)` give
  divisorRestrictedFullGram(d,T)
      =integral_0^T(divisorRestrictedPickup(d,T,u))^2 du.
The newly authored `divisorRestrictedEnergyIdentity_proof` is a source-specific Lean proof body of the ACTUAL `DivisorRestrictedEnergyIdentityTarget`. It does not supply or assume any bound on that square energy. Real parsing, elaboration, fresh native compiler and transitive axiom audit remain NOT_RUN.

## 3. FirstDivisorCollarCoefficientTarget: direct finite inversion induction

From the already published `lowGcdSieveWeight_sum_divisors`, for every n>0,
  sum_(k|n)c_D(k)=1_(n<=D).
A strong induction on n<=D, separating the divisor n from its proper divisors, proves
  c_D(1)=1, c_D(k)=0 for 2<=k<=D.
The induction uses `Nat.cons_self_properDivisors` and `Nat.mem_properDivisors` from pinned Mathlib. Every proper divisor k<n is positive; if n<=D the induction applies. Only k=1 has coefficient 1.

For D<d<=2D, each positive proper divisor k<d satisfies 2k<=d<=2D, so k<=D. Since the inversion sum for d is ZERO, 0=c_D(d)+1, hence
  c_D(d)=-1.
The new proofs `lowGcdSieveWeight_small`, `lowGcdSieveWeight_above_eq_neg_proper`, `twice_le_of_proper_divisor` and `firstDivisorCollarCoefficient_proof` constitute the second ACTUAL Lean theorem candidate. The prior conditional first-collar nonpositivity consumer is instantiated without extra hypotheses, subject to compiler acceptance.

## 4. Higher divisor exact algebra, and why coefficient signs cannot close RH

Let
  FullHigh_D(T)=sum_(1<=m,n<=N,gcd(m,n)>D) mu(m)mu(n)K_T(m,n)
be the ORIGINAL full high-gcd Gram, including diagonal pairs n>D.
For D>=1, c_D(1)=1 and c_D(d)=0 for 2<=d<=D. Therefore
  lowGcdFullGram(D,T)
    =divisorRestrictedFullGram(1,T)
     +sum_(D<d<=N)c_D(d)*divisorRestrictedFullGram(d,T).
The original complete signed Gram is
  pickupFullGram(T)=lowGcdFullGram(D,T)+FullHigh_D(T).
Because divisorRestrictedFullGram(1,T)=pickupFullGram(T), EXACT finite algebra gives
  sum_(D<d<=N)c_D(d)*divisorRestrictedFullGram(d,T)
    = -FullHigh_D(T).
Using the newly authored finite square identity:
  sum_(D<d<=N)c_D(d)*divisorRestrictedEnergy(d,T)
    = -FullHigh_D(T).                              (H)

This is the **exact higher-divisor no-go**: the ENTIRE signed collar packet merely reconstructs the negative of the original high-gcd full Gram. The full high-gcd sum includes diagonal, unlike `plainHighGcdCross`. It is dominated by the previously constructed POSITIVE common-divisor cover; its existing `DivisorCoverRootTailTarget` is an UNPROVED pinned Lean elementary sum. On paper, |(H)|<=16*T*N/D for D>=1,T>=0, and at D_*(T)=max(1,floor(exp(T-sqrt T))) the entire packet is subexponential at all positive rates.

Therefore the higher-divisor sign pattern can never, by itself, cancel an exponentially large d=1 pickup square energy. It is a source-exact reconstruction of an already payable high-gcd tail, not an independent RH solution. New source proof candidates `higherDivisorSignedFullGram_eq_neg_highGcd` and `higherDivisorSignedEnergy_eq_neg_highGcd` implement the full signed identity.

## 5. Exact individual coefficient stratification

For any D>=1 and d>1, let r=floor((d-1)/D). From ordinary full divisor Möbius cancellation and the condition k<=D:
  c_D(d)=-sum_(q|d,q<=r)mu(q).
Consequently, for the original source coefficient c_D:
- 2<=d<=D: 0.
- D<d<=2D: -1.
- 2D<d<=3D: -1 + 1_(2|d), hence never positive.
- 3D<d<=4D: -1 + 1_(2|d)+1_(3|d); positive iff 6|d.
The `SecondDivisorCollarCoefficientTarget` records the next exact pinned Lean arithmetic gate, explicitly UNPROVED and not consumed by the completed candidate proofs above.

The exact integer assertions were checked for D=1..24 and d=2..149 (3552 finite coefficient pairs). This is a reproducible integer diagnostic, NOT a native Lean proof or source kernel audit.

## 6. Verification, source discipline and next frontier

New additive `MoebiusLowGcdSieveTargetClosures.lean` has genuine proof bodies for both previous named targets and the higher-divisor exact signed reconstruction. It imports the unchanged prior sieve source and genuine response-continuity/cross-integral source. No mathematical axiom, sorry, admission, hidden signed premise, change of original cross, diagonal alteration, change of toolchain or root imports. The source remains a CANDIDATE until exact declaration types, full import compilation, fresh independent kernel replay and complete transitive axiom audit are performed.

Remaining: `DivisorCoverRootTailTarget` elementary positive bill; `FixedGcdRatioTarget` elementary floor bound; independent signed `PlainLowGcdEveryRateDyadic` on one fixed covering set; canonical RH theorem remains OPEN. The signed low-gcd rate is NOT inferred from (H). For honest acceptance keep issue #1566 and #15 OPEN, source and manifest immutable and exact.
