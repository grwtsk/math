# Complete positive high-gcd divisor-cover proof candidate and scalar all-rate envelope

Date: 2026-11-02 (America/Los_Angeles). Local mathematical attribution: grwtsk contributors.

**Verification status: SOURCE_PROOF_CANDIDATE / LEAN NOT_RUN**. This paper and its new Lean proof bodies do not confer kernel acceptance. The original signed RH-strength low-gcd arithmetic remains open.

## Source and fixed goal

Use exactly the original Möbius coefficient and birth-gated causal Gram from MertensPrimitive.lean and the already published nonnegative highGcdDivisorCoverCost D T. All ordered original pairs with m,n in endpointIndex T and common positive divisor g>D appear in the POSITIVE cover. Comparable and incomparable pairs are included and diagonals may be counted only here because this is an upper ABSOLUTE cost. The signed source and its diagonal have not been changed.

The fixed propositions being addressed are, at the previous immutable interfaces:
  CompleteHighGcdDivisorCover.DivisorCoverRootTailTarget:
    forall D T, 0<=T -> 1<=D -> highGcdDivisorCoverCost D T <= 16*T*floor(exp T)/D;
  UnmaskedLowGcdEndpoint.CompleteHighGcdScalarEveryRateTarget:
    forall epsilon>0, exists C>=0,R>=4,forall T>=R,
      32*T*exp(sqrt T)<=C*exp(epsilon*T).

## Step 1. Original pointwise source envelope

The previously published OriginalGramRootFloorSuppliers.lean, source blob efbf49d9d0be6f59dc165ec715b14b0f12207d12, has a candidate source-specific Lean proof body
  |sourceKernel T m n|<=4*T/(sqrt m*sqrt n), T>=0,m,n>=1.
This is sourced from the genuine positive-part original response and exact Möbius coefficient |mu(n)|<=1. No geometry, random signs or RH premise is inserted.

## Step 2. Exactly reindex the positive multiples of each g

For each integer g>=1, let N=floor(exp T) and
  R_g(N)=sum_(1<=m<=N,g|m) 1/sqrt m.
The exact bijection m=g*a maps this source subset to 1<=a<=floor(N/g). There is no coprimality condition, and g is not uniquely chosen as gcd(m,n). The source candidate sum_Icc_divisible_multiples formalizes this as a finite sum_nbij using m/g.

The pinned existing StrongMertensAbel.inv_sqrt_succ_le_twice_gap and new reciprocal_sqrt_Icc_le prove
  sum_(1<=a<=M)1/sqrt a<=2sqrt M.
Using (floor(N/g))*g<=N gives sqrt(floor(N/g))*sqrt g<=sqrt N, and therefore
  R_g(N)<=2*sqrt N/g.

The original positive cover row is
  Cover_g(T) = sum_(1<=m,n<=N,g|m,g|n)|sourceKernel T m n|.
By the source envelope, finite ordered double sum and the row bound,
  Cover_g(T)<=4*T*R_g(N)^2<=16*T*N/g^2.
All cross and diagonal entries remain in this upper cover.

## Step 3. Pinned Mathlib inverse-square tail is already available

At the project's pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, Mathlib/Analysis/PSeries.lean exposes the theorem sum_Ioc_inv_sq_le_sub for real alpha. For D>=1 and N>=D it gives
  sum_(D<g<=N)1/g^2<=1/D-1/N<=1/D.
If N<D the corresponding finite sum is empty.
There is no need to prove a new scalar p-series/inverse-square-tail theorem. The new inverse_square_Icc_tail is a direct adapter.

Combining all positive finite rows gives the paper identity and new authored Lean proof candidate
  highGcdDivisorCoverCost(D,T)
    <=16*T*N*sum_(D<g<=N)g^(-2)
    <=16*T*N/D.
Theorem divisorCoverRootTail_proof has the EXACT type of the previously unproved proposition DivisorCoverRootTailTarget. It contains an explicit Lean proof body and no arithmetic cancellation hypothesis. This must be compiled against the full import closure before the term can be accepted.

## Step 4. All-positive-rate scalar without changing the source

Take epsilon>0, R=max(4,4/epsilon^2) and C=64/epsilon.
For T>=R, T>=4/epsilon^2 implies sqrt T<=epsilon*T/2.
The elementary real exponential inequality x<=exp x yields
  T <= (2/epsilon)*exp(epsilon*T/2).
Thus
  32*T*exp(sqrt T)
    <=(64/epsilon)*exp(epsilon*T/2)*exp(epsilon*T/2)
    =(64/epsilon)*exp(epsilon*T).
The theorem completeHighGcdScalarEveryRate_proof explicitly inhabits the previous CompleteHighGcdScalarEveryRateTarget, with all premises discharged by real algebra and pinned exp/sqrt lemmas. The source cutoff D_*(T)=max(1,floor(exp(T-sqrt T))) is unchanged for ALL epsilon.

The final theorem endpointSum_le_fixedPlain_of_positive_elementary has NO explicit elementarily positive bill assumptions:
  for T>=4, endpointSum T <= fixedPlainLowGcdCross T +32*T*exp(sqrt T)+1/4.
Its only outstanding status, separate from mathematical premises, is exact formal verification of the authored proof candidates and upstream dependencies.

## Checks, provenance and unresolved arithmetic

Actual numerical tests performed in this continuation: 14,365 pairs N=1..169, g=1..N satisfy R_g(N)<=2sqrt(N)/g. Forty-five epsilon/T cutoff tests verified the scalar inequality using logarithmic values to avoid overflow. These are tests, not certified interval or pinned Lean evidence.

All scripts remain SOURCE_PROOF_CANDIDATES. No local lean/lake/elan nor native Noe checkout was available in this tool environment. No native verification or unauthorized runner dispatched. Parsing/elaboration, exact expected types, full import compilation, fresh independent kernel and transitive axiom audit remain NOT_RUN. Root imports, old source, toolchain and Mathlib pins unchanged. The RH-strength open proposition is the original PlainLowGcdEveryRateDyadic on one fixed adequate covering scale set; no claim that it has been proved, nor that RH has been resolved.
