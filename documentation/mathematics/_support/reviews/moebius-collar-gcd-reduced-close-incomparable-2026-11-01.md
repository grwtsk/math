# Original Möbius long/incomparable residual: gcd-reduced close-gap all-rate payment

Research date: 2026-11-01 (America/Los_Angeles).
Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Classification: ordinary mathematical proof plus Lean source proof candidate; compilation DEFERRED at the user's request.

## Exact source and what is new

Start from the UNMODIFIED longOrIncomparableCross in
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCollarResidualShortRatio.lean
(Git blob 12d234aa8977cefe3a587706a9de2360467a9e31), lowIndices in
MoebiusCollarResidualLowWave.lean (blob 792ca30380389c5e491a738fb598f86786a57496),
and original moebiusReal and pickupResponseGram from MertensPrimitive.lean.
The genuine arithmetic common-factor sign identity is from
MoebiusStrongIncomparableGcdReduced.lean
(blob 18cedc1e613147793d3efee64b39b69ca560044b).

No source coefficients, response births, true integer inventories,
dyadic grid, diagonal, additive-gap masks, or both ordered orientations
are altered. Squareful zeros remain in all sums.

At J>=1 put T=J*log2, N=2^J=floor(exp T) and
K=floor(exp(sqrt T)). The previous collar residual equals its
shortRatioCross plus the true longOrIncomparableCross.
For m,n in the latter, let
  g=gcd(m,n), a=m/g, b=n/g.
Select exactly the INCOMPARABLE pairs, neither m|n nor n|m,
such that |a-b|<=K. Coprimality gcd(a,b)=1 follows automatically,
and incomparability implies a,b>=2. Unlike an ordinary original
short-gap mask, |m-n|=g*|a-b| may be arbitrarily larger than K.

For a concrete original example at J=8 with EMPTY prime bank:
  m=66=11*6, n=77=11*7, K=10;
  m,n are both in the true low inventory;
  |m-n|=11>10, yet |a-b|=1;
  mu(66)=-1, mu(77)=+1; their original Gram term is NEGATIVE.
Thus the selection pays new original pairs genuinely absent from
the prior bounded-ratio packet.

An arbitrary original additive-gap exclusion mask A remains imposed
as Nat.dist m n notin A; it is never substituted by the reduced gap.
An arbitrary further choose(m,n) predicate is also permitted.

## Unconditional complete original causal-source absolute bound

For each original positive n and u>=0 the unchanged birth-gated
pickup response has
  0<=r_n(u)<=2/sqrt(n).
It is zero before birth u=log n, and afterward equals
2*(n^(-1/2)-exp(-u/2)).
Consequently for T>=0,
  0<=K_T(m,n)<=4*T/sqrt(m*n).
Also |mu(n)|<=1, including squareful zero values.

Every selected pair uniquely corresponds to g,a,b as above,
so the true original source term obeys
  |mu(m)*mu(n)*K_T(m,n)|<=4T/(g*sqrt(a*b)).
Removing coprimality, source membership and mask restrictions
only increases the upper sum.

Fix g<=N, put Y=floor(N/g) and write H_Y=sum_(a=1..Y)1/a.
For a<b<=Y with b-a<=K, 1/sqrt(a*b)<=1/a;
for each a there are at most K choices for b.
Thus the one-way pair sum is <=K*H_Y, and BOTH original
ordered orientations cost <=2K*H_Y. Summing all g gives

  |selectedReducedCloseCross(B,A,J,choose)|
    <= 8*T*K*sum_(g=1..N)(H_floor(N/g)/g)
    <= 8*T*K*(H_N)^2
    <= 8*T*(1+T)^2*exp(sqrt T).                    (1)

The only analytic estimates are H_N<=1+log N<=1+T and
the literal K<=exp(sqrt T). This is bank-, mask-, selection- and
Möbius-sign-independent. It assumes neither PNT nor Mertens
power savings, external zeta theorems, Chowla, RH, independence,
a randomly signed Gram, nor unshifted causal dilation.

### Quantified all-positive-rate conversion

For EVERY epsilon>0 and T>=0,
  sqrt T<=epsilon*T/2+1/(2*epsilon),
  T<=(6/epsilon)*exp(epsilon*T/6),
  1+T<=(1+6/epsilon)*exp(epsilon*T/6).
The first is a completed square and the others follow from
exp(x)>=1+x for x>=0.
Multiply these bounds in (1) to obtain

  |selectedReducedCloseCross(B,A,J,choose)|
      <= C_epsilon*exp(epsilon*T),

  C_epsilon=(48/epsilon)*(1+6/epsilon)^2
                  *exp(1/(2*epsilon)).             (2)

One explicit C_epsilon works for ALL J>=1, all finite genuine
prime banks B (even varying with J), all finite masks A, and all
additional choose predicates. K remains FIXED as a function of J,
independent of epsilon. No changing good-scale sets.

## Genuine squarefree Möbius parity sign

For squarefree original m,n, g=gcd(m,n), a=m/g and b=n/g,
we have gcd(g,a)=gcd(g,b)=1 and mu(g)^2=1, so the ORIGINAL
integer signs satisfy
  mu(m)*mu(n)=mu(g)^2*mu(a)*mu(b)=mu(a)*mu(b).       (3)
The arithmetic theorem is already sourced to the original
Möbius multiplicative function.

Therefore the original squarefree incomparable subpacket with
mu(a)*mu(b)=-1 is a TRUE nonpositive packet: each summand is
-K_T(m,n)<=0. It includes both ordered orientations, any A and any B.
This is not an arbitrary sign choice or a claim that unknown
positive and negative populations balance. The separate
otherReducedCloseCross retains all other source summands.
No previous negative comparable or two-prime odd-base packet
is subtracted again.

## Exact finite partition and true remaining RH frontier

All formulas below are exact signed finite source identities:
  longOrIncomparableCross
    =reducedCloseCross+farReducedOrLongCross;
  reducedCloseCross
    =reducedOppositeParityCross+otherReducedCloseCross;
  collarResidualCross
    =oddShortRatioCross+otherShortRatioCross
     +reducedOppositeParityCross+otherReducedCloseCross
     +farReducedOrLongCross.

The entire reduced-close sector is an absolutely every-positive-rate
proper packet. Consequently the every-positive-rate ONE-SIDED
upper estimate for longOrIncomparableCross on the original fixed
dyadic grid is equivalent to that for farReducedOrLongCross.
This equivalence consumes the elementary numerical bound as an
explicit Lean proposition, NOT as a known/accepted theorem.

The new far packet contains every original long comparable ratio
and all incomparable pairs with reduced gap > K. It remains
arithmetically UNPAID and RH-strength. No new global all-rate
signed cancellation estimate is claimed.

The earlier unconditional lower bound
  collarResidualCross(B,empty,J)>=-2*T^2
also implies, after paying the two disjoint proper packets,
  farReducedOrLongCross(B,empty,J)
   >=-2*T^2-16*T*(1+T)*exp(sqrt T/2)
           -8*T*(1+T)^2*exp(sqrt T).              (4)
Thus the remaining far signed packet has an unconditional
every-positive-rate LOWER bound, but the desired UPPER bound
is not proved.

## Finite diagnostic and pinned trust boundary

Independent original integer Mobius and exact-formula causal Gram
preflight: 160 masked/source partition fixtures J=1..8 with
five true-prime banks (including empty) and four finite original
additive masks PASS. 2,204 actual squarefree opposite reduced
Möbius-parity signed pair checks PASS; 8,156 ordered original
inventory pairs have genuinely long original additive gap >K
while their reduced gap <=K. The new magnitude bound (1)
passed all 160 fixtures. Diagnostics are noncertifying, not
rigorous analytic enclosures or Lean proofs.

The additive Lean module
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCollarResidualGcdReducedGap.lean
contains exact finite partition candidates, a source-true gcd
Möbius sign identity and nonpositive packet proof candidate,
all-rate equivalence conditional on an explicit numerical Prop,
and a conditional source lower frontier.

The elementary numerical source bounds remain
ReducedCloseQuantitativeTarget and ReducedCloseUniformAllRateTarget,
both PROP_NOT_PROVED_IN_LEAN. They are not axiom declarations,
hidden research cancellation hypotheses, or accepted kernel theorems.
The genuinely unpaid far UPPER bound is not assumed at all.

Pinned Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
User requested compilation DEFERRED. Parsing/elaboration, expected
types, fresh kernel replay, transitive axiom, opaque/native/unsafe
audit all NOT_RUN. No root import, original source, toolchain,
external repo, Noe runner, scheduler or CI modified.
Canonical RH remains OPEN.
