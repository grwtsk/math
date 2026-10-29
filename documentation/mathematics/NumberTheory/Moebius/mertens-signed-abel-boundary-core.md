# Square-root boundary depths have bounded total cost

grwtsk

**SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.**
This note records an elementary finite reduction and its conditional RH
consumer. It does not assert compiled Lean acceptance or arithmetic cancellation.

## Exact source

- Module: `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore`.
- Path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelBoundaryCore.lean`.
- Introduction on main: `57aca43c1eab1c92ce234b36961e4c440eeb6d40`.
- Git blob: `ddc5631c450ad8f4fd18d466a4db48568eac251c`.
- Source SHA-256: `3e81173730f8c70d8fe9a6bd45bce13620aeddcab3477e8be9f78ad56e5e25cb`.
- Reviewed parent: `9763469752bd5f372b769a1095a4f5f2b6c03aaf`.
- Direct local import: `MertensSignedAbelExceptionalCardinality.lean`,
  blob `71193b9bd513ac422c3a8821a33b705c69b4c7fc`.
- Direct Mathlib import: `Mathlib.Data.Nat.Sqrt`, revision
  `db584cd6d46c92f209a44c0f1c829460d327499d`, source blob
  `6e0e55b225761cc0112e2b1c8d1d394ef867bfec`.
- Lean: `leanprover/lean4:v4.33.0`.

No root import, dependency pin or existing source was changed.

## The unchanged arithmetic packet

Put X=2^j, Y=2X, and retain the existing normalized Abel kernel K(j,t,h),
ordinary Mobius prefix C_h(t+1), and signed pairing

    A(j,t) = sum_(1<=h<Y) K(j,t,h) C_h(t+1).
    P_j    = (2/Y) sum_(t<Y) A(j,t).

P_j is the existing `weightedMertensDyadicSignedAbelDepthPacket`, not a new
approximate source. The inherited triangular support remains literal.

## Complete depth-mass profile

For m(j,t)=sum_h K(j,t,h), the source derives

    m(j,t) = 1                         when t+2 <= X;
             Y/(t+2)-1                 when X < t+2 < Y;
             0                         when t+2 >= Y.

The proof reuses the existing exact Abel-drop telescope rather than
recomputing a synthetic kernel. The t+2=X and t+2=Y boundaries, all past-end
indices and j=0 are retained. The theorem is `kernelMass_eq_profile`.

For t<Y in the late region, `length_mul_kernelMass_le_tail` gives

    (t+1) m(j,t) <= Y-(t+1).

This last unit is useful: summing the early and late triangular allowances
cancels their linear terms.

## Remove complete boundary layers, not a sparse list of shifts

Let L be a natural number with L<=X. At depths t<L or Y-L<=t declare ALL
shift labels 1<=h<Y exceptional; retain all shifts at every other depth.
The two removed depth intervals are disjoint. The general definition
`boundaryShifts width` permits a scale-dependent L=width(j).

The existing exceptional allowance is exactly

    E_j = (2/Y) sum_removed_depths (t+1) m(j,t).

Using m<=1 at early depths gives L(L+1)/2 before the factor 2/Y.
At late depths, summing Y-(t+1) gives L(L-1)/2. Therefore

    E_j <= 2 L^2 / Y.

`boundary_weight_sum_le_square` proves the unnormalized L^2 bound;
`boundary_cost_le_two_square_div` retains the complete source normalization.
L=0 and L=X are included. No positivity, mean-zero or cancellation assumption
on the signed regular contribution is used.

## Canonical integer square-root width

Take `sqrtWidth j = Nat.sqrt (2^(j+1))`, the exact floor square root.
The source uses `Nat.sqrt_le'` to prove L^2<=Y and derives L<=X.
Consequently

    E_j <= 2.

This improves the earlier proposed constant three. It is NOT a claim that
two is the optimal possible constant.

Define B_j=`bulkPacket sqrtWidth j`. Its explicit source expression is

    B_j = (2/Y) sum_(L<=t<Y-L) sum_(1<=h<Y) K(j,t,h) C_h(t+1).

No regular summand is replaced by its absolute value. For the small scales
where the middle interval is empty, the empty sum is retained exactly.
The source derives

    |P_j-B_j| <= E_j <= 2;
    P_j <= exceptionalPacketUpper(boundaryShifts sqrtWidth,j) <= P_j+4.

The first assertion uses the actual exceptional absolute allowance, not
just its one-sided upper estimate. The all-shift exceptional sets have
Y-1 labels at each removed depth, so the old maximum-cardinality bound is
unnecessarily large here. The improvement comes from depth geometry.

## The precise RH-facing consequence

The theorem `subpolynomialDepthPacket_iff_sqrt_bulk` identifies the two
arithmetic obligations:

    SubpolynomialDyadicSignedAbelDepthPacket
      iff
    forall delta>0, exists C>=0, forall j,
      bulkPacket sqrtWidth j <= C*(2^j)^delta.

The constants increase by two in either direction; every positive exponent
and every dyadic scale remain quantified. This is NOT a claim of equivalence
between RH itself and either source premise.

`riemannHypothesis_of_sqrt_bulk_budget` composes the reverse direction with
the already existing canonical RH consumer. The bulk budget remains an
unproved arithmetic hypothesis. Boundary removal does not lower its exponent
or provide the missing signed cancellation estimate.

## Provenance and verification limits

This increment is repository-derived finite algebra. No theorem from Tao,
Helfgott-Radziwill, Pilatte, a short-interval paper, Franel-Landau or
Nyman-Beurling is imported or encoded as a new axiom. Mathlib and existing
GRWTSK sources retain their upstream attribution and licenses. No new
paper-derived formalization entry is introduced by this local calculation.

The source has three definitions, twenty-one public theorem scripts and one
private theorem helper. These are lexical counts, not an elaborated census.
Compilation, fresh kernel replay and transitive axiom/native audit are
NOT_RUN. See the passive source-bound specification under
`docs/verification/NumberTheory/Moebius/MertensSignedAbelBoundaryCore/`.
Execution logs and receipts belong outside math in grwtsk/noeaaeue.

## Next bounded supplier

On this exact signed bulk, construct a prime-divisor extraction or compare
the actual weighted pairing with a named arithmetic operator. Preserve the
ordinary growing shifts, variable prefix, multiplicative normalization,
unsifted/repeated-prime terms and every resulting error. A logarithmic saving
against a linear-size allowance is not the required subpolynomial estimate.
No such extraction, external theorem admission, good-scale coverage or
comparison with pickupCross is supplied by the boundary reduction.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9799f7f2d692e219af755e6505274a4ad0afaeffb17b2416c1694615d5a87e65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensSignedAbelBoundaryCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
