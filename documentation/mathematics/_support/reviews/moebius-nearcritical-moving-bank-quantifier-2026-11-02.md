# Nearcritical true-prime moving bank: floor cutoff and ordered signed return (2026-11-02)

Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.

## Actual statement and source comparison

The proposed source module is
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusNearcriticalMovingBankQuantifier.lean.
It imports the published true-prime finite-Abel supplier
MoebiusChebyshevWeightedPrimeAbel.lean (pinned comparison commit
2fe1354378e4df78947ae04debbde889faa90bf0; source blob
6c3dde6b6c815b7da37c5740fbeea70947a6383d).
The new module does NOT replay or redefine the Chebyshev argument.

For fixed real alpha<2 and epsilon>0, let

  R_alpha(T) = T^2 (log T)^alpha, T>1,
  Y_alpha(T) = floor(R_alpha(T)) in Nat.

The source candidate asserts the explicit order of quantifiers

  forall alpha<2, forall epsilon>0, exists T0>1,
  forall T>=T0, Y_alpha(T)>=256 and
  64 sqrt(Y_alpha(T))/log(Y_alpha(T)) <= epsilon*T.

For any original PrimeBand B, the separate condition is

  forall p in B.primes, (p:Real) <= R_alpha(T).

Nat.le_floor makes this equivalent to p<=Y_alpha(T), and B.prime_mem
makes each selected label genuinely prime. There is no fixed-bank
assumption. The true-prime Euler bank estimate
bankSquareRootWeight_le_exp_of_nearcritical_budget then gives
V_B <= exp(epsilon*T).

## Analytic proof and integer rounding

Write t=log T. The pinned real-power limit
exp(t)/t^(-alpha)->+infinity shows that, after a tGrowth threshold,
exp(t)*t^alpha>=2, hence
R_alpha(exp t)=exp(2t)*t^alpha >= 2exp(t).

The exact floor inequalities
floor(R)<=R<floor(R)+1, together with exp(t)>=1, imply
exp(t)<=Y_alpha(exp t)<=R_alpha(exp t).
For t>=256, exp(t)>=256, so Y>=256 and
log Y >= log(exp t)=t>0.

The exact root identity
sqrt(exp(2t)*t^alpha)=exp(t)*t^(alpha/2)
follows from positivity and the real-power product of exponents.
Consequently,

  64 sqrt(Y)/log Y
     <= 64 exp(t)*t^(alpha/2)/t
     = 64 exp(t)*t^(alpha/2-1).

Since delta=1-alpha/2>0, the pinned limit
t^(-delta)->0 provides a tCost threshold where
64*t^(alpha/2-1)<=epsilon. The source selects
t0=max(256,tGrowth,tCost), and T0=exp(t0).
The proof explicitly establishes the threshold for every later T.

There is no rounding-to-ceiling extra term or enlarged coefficient.

## Eventual cutoff monotonicity and boundary checks

For t1<=t2 and t1>=max(1,-alpha), log monotonicity gives
DeltaLog=log(t2)-log(t1)>=0.
The elementary tangent inequality
log(t2/t1)<=t2/t1-1 yields
t1*DeltaLog<=t2-t1.
Since -alpha<=t1, it follows that
2*t1+alpha*log(t1) <= 2*t2+alpha*log(t2).
Exponentiation and Nat.floor_mono preserve the order. Thus Y_alpha(T)
is eventually nondecreasing for T>=exp(max(1,-alpha)).
This does not claim monotonicity near T=1 for negative alpha.

The boundary alpha=2 has normalized Euler exponent asymptotically
32, so a universal every-positive-epsilon budget does not follow;
alpha>2 is worse. epsilon<=0 is excluded. Empty banks meet the support
condition but do not improve any unproved signed low/low claim.
An arbitrary moving bank lacking support inside R_alpha(T) cannot
inherit the cost bound.

## Genuine signed consumers and obstruction

At T=log(2X), the source chooses
X0=max(1,ceil(exp(T0))) and quantifies ALL X>=X0 and ALL
PrimeBands B, Boolean tags a,b and finite masks A. It separately
applies
original_masked_high_low_nearcritical_budget and
original_masked_low_high_nearcritical_budget.
The two original masks, genuine arithmetic signs, diagonal
exclusion, Nat.dist gap mask and physical pickupResponseGram remain
the ones already imported. No false high/low versus low/high
symmetry is asserted.

The surviving absolute mixed bound is
4 log(2) sqrt(2X) exp(sqrt(log(2X))+epsilon*log(2X)).
For arbitrarily small epsilon this is of exponent 1/2+o(1),
not of every positive exponent. LL and matched mixed signed
cancellation are untouched. The new statement is neither RH nor a
global arithmetic asymptotic.

## Comparison, alternate view and verification state

The direct asymptotic view divides the unrounded expression by T:
64 sqrt(R_alpha(T))/(T log R_alpha(T))
=64 (log T)^(alpha/2)/(2 log T+alpha loglog T)
~32 (log T)^(alpha/2-1).
The formal candidate uses a DIFFERENT inequality route through the
pinned exponential-dominates-powers limits, floor inequalities and
log Y>=log T. Both depend on classical real analysis; these are
related checks, not claimed independent historical discoveries.
This increment is a source-level closure of a quantifier interface,
not a new prime-distribution theorem or a claim of prior-art novelty.

Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612:
COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. The new candidate may contain
elaboration defects until checked. The imported coefficient-16
Chebyshev supplier is itself a SOURCE_PROOF_CANDIDATE, NOT_RUN.
Source publication is not theorem acceptance.

Acceptance gates: parse/compile exact source and full imported
transitive dependency chain; exact expected theorem types; fresh
kernel replay; complete transitive axiom, sorryAx, unsafe, opaque,
private dependency audit; independent mathematical comparison; and
separate proof of signed cancellation before any RH-strength claim.
