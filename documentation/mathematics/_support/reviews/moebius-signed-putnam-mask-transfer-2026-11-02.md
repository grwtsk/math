# Exact sparse-mask transfer for the original signed high/low Möbius/Gram source (2026-11-02)

Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE; compilation, expected types, fresh Lean kernel,
transitive axiom audit NOT_RUN; signed arithmetic and RH OPEN.

## Source identity and exact statement

New candidate:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSignedPutnamSparseMaskTransfer.lean.
It imports the existing MoebiusSignedAllPositiveRateConditional.lean and
MoebiusEndpointPutnamSparseGapAllRate.lean, without changing either.
The original signs and physical kernel are precisely
taggedMoebius B.primes a m * taggedMoebius B.primes b n *
pickupResponseGram (log (2X)) m n.
The true shell is balancedBlock X (log(2X)), the original off-diagonal
condition is m != n, and the original distance is Nat.dist m n.

The canonical source consumes one named finite gap set:
putnamRateGapSet eta T = Finset.Icc 1 (floor(exp((eta/2)*T))).
It already proves putnam_gap_card_le eta T:
card(putnamRateGapSet eta T) <= exp((eta/2)*T).
The earlier issue #1648 introduced a stronger arbitrary-finite-mask
signed-distance-variation target. That stronger hypothesis is NOT
necessary for the named canonical Putnam mask.

## Primary finite analytic argument (not signed cancellation)

Let I,J be arbitrary ORIGINAL dyadic shell subsets.
For a finite gap set A define
G_A(I,J) = sum_(m in I, n in J, m!=n, Nat.dist m n in A)
  taggedMoebius(B.primes,a,m) taggedMoebius(B.primes,b,n)
  pickupResponseGram(log(2X),m,n).

The exact original mask partition is
  maskedTaggedBlock(A,I,J) = maskedTaggedBlock(empty,I,J) - G_A(I,J).

The published source theorem shell_original_tagged_pair_abs_le yields,
for X>=1 and both indices in the same shell,
  |each true tagged pair| <= 4 log(2)/X.
The original gap_neighbor_card_le A J m bounds the number of n
with m!=n and Nat.dist m n in A by 2|A|, for each m.
The original shell contains at most X integer indices, because
balancedBlock X T is a subset of the exact interval (X,2X].
Consequently, without any arithmetic sign cancellation,

  |G_A(I,J)| <= |I| * 2|A| * 4 log(2)/X
               <= 8 log(2) |A|.

This has NO hidden dependence on B, a, b, I, J, or X.
The proof preserves actual squareful zero coefficients, original
PrimeBand support, and actual physical pickupResponseGram; it does
NOT infer positivity of the signed masked matrix.

Thus,
  |maskedTaggedBlock(A,I,J)|
     <= |maskedTaggedBlock(empty,I,J)| + 8 log(2)|A|.

For the ACTUAL Putnam mask at T=log(2X),
  |HL_Putnam| <= |HL_empty| + 8 log(2) exp(eta*T/2),
with exactly the analogous LH bound.

This is stronger for this source than simply importing the complete
endpoint gap estimate O(|A|T^2), but both rely on the source's
geometric/energy control rather than signed arithmetic cancellation.

## Real transpose: distinct orientations, swapped ordered tags

The original Gram is symmetric by commutativity of its integrand:
  pickupResponseGram T m n = pickupResponseGram T n m.

Changing variables (m,n) to (n,m) in the exact finite rectangle
shows
  maskedTaggedBlock(P,a,b,A,I,J,T)
    = maskedTaggedBlock(P,b,a,A,J,I,T).

In particular,
  originalSignedLH B a b A X = originalSignedHL B b a A X.
This is NOT a claim that HL(a,b)=LH(a,b) for arbitrary tags. A
uniform HL supplier for all ordered Boolean tags covers both
orientations by this proved finite transposition, without assuming
a false rough/matched symmetry.

## Weaker arithmetic frontier and conditional all-positive-rate return

The new explicit UNPROVED Prop NearcriticalUnmaskedSignedHLTarget says:
for each fixed alpha<2 and delta>0, some X0 works for all X>=X0,
all PrimeBands B with every selected genuine p obeying
 p <= (log(2X))^2 * (loglog(2X))^alpha,
and all ordered Boolean tags a,b, giving

  |originalSignedHL B a b empty X|
     <= exp(delta*log(2X))*bankSquareRootWeight B.primes.

This is NOT discharged and is not introduced as an axiom. The new
theorem distanceVariation_implies_unmaskedHL proves that issue #1648's
stronger all-mask signed-distance-variation premise implies it, while
the reverse is not assumed.

The published nearcritical Euler source candidate promises
eventually
  bankSquareRootWeight B.primes <= exp(eta*T)
for all such moving banks and every fixed eta>0. Its Lean compilation
and kernel acceptance remain NOT_RUN independently.

The source-level conditional theorem
both_ordered_putnam_all_positive_rate_of_unmasked combines the
unmasked HL target at delta=epsilon/2, the positive bank budget
eta=epsilon/2, and the actual Putnam gap estimate. Since T=log(2X)>=0,

  exp(epsilon*T/2) <= exp(epsilon*T),

both true masked orientations obey

  |HL_Putnam(epsilon)|, |LH_Putnam(epsilon)|
      <= (1 + 8 log(2)) * exp(epsilon*T).

The absolute constant (1+8log 2) is uniform in B, a, b, alpha and X.
This is a standard fixed-constant all-positive-rate upper statement,
not the stronger normalized constant-one statement. If required, a
separate epsilon-slack threshold can absorb the fixed constant.
Such an absorption does not supply the missing signed arithmetic input.

The genuinely uncontrolled original low/low packet remains separate.
For the empty bank B, original true/true low/low contains the full
rough/rough signed source. The high/high packet and the return to the
complete original endpoint cannot be removed by the sparse transfer.

## Hostile boundaries and comparison

- A=empty: G_A=0 exactly; the new theorem merely recovers the original
  unmasked source, explicitly exposing the missing arithmetic input.
- Arbitrary A of size comparable to X: 8 log(2)|A| is exponential rate
  one; this theorem NEVER claims universal-mask signed cancellation.
- Canonical Putnam A_eta: |A_eta|<=exp(eta*T/2); at a freely chosen
  positive eta its geometric cost is at every positive rate.
- Fixed ordered tags: swapping the source coordinates also swaps a,b.
  It is unsafe to identify the two terms without this exchange.
- alpha>=2: the earlier coefficient-64 Euler bridge does not supply
  an arbitrarily small bank exponent; the new reduction does not
  override that restriction.
- epsilon<=0 excluded; X>=1 ensures log(2X)>=0 and avoids division by 0.
- PNT/log-averaged two-point correlations and almost-all short-
  interval results are not silently imported as uniform absolute
  two-variable signed estimates.

External comparisons (inspiration only, NOT a source proof of this target):
* Matomäki–Radziwiłł, Multiplicative functions in short intervals,
  Annals of Mathematics 183 (2016), 1015–1056,
  DOI 10.4007/annals.2016.183.3.6; arXiv:1501.04585.
  Almost-all interval cancellation, not the uniform original
  source-specific Möbius physical-Gram HL statement here.
* Tao, The logarithmically averaged Chowla and Elliott conjectures
  for two-point correlations (2015), arXiv:1509.05422.
  Logarithmic averaging, not an all-bank, all-shell physical
  Gram norm estimate for the original masks.

The new mathematical ingredient is an explicit consumer-backed
geometric reduction of the unnecessarily strong all-finite-masks
arithmetic premise, together with source-exact tag-swapped
transposition. No independent proof of the remaining arithmetic
supplier or RH is claimed.

## Verification and publication holds

Lean version 4.34.1, pinned Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Source publication commit/blob: record the actual branch readback on
grwtsk/math issue #1648; a draft blob alone is not main publication.
The candidate has no intentionally introduced axiom or sorry
declaration but has NOT been parsed/elaborated or transitive-checked.
Exact expected types, full imports, fresh kernel replay and
transitive sorryAx/opaque/unsafe/private audits remain NOT_RUN.

SIGNED_UNMASKED_HL_OPEN / SIGNED_LL_OPEN / RH_OPEN.
