# Exact Abel-kernel transfer with weighted exceptional shifts

grwtsk

**SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.**

## Source and existing consumer

New module: `GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer`.
Source integration: `429dc1858fe436618fb8dfb13333f7bc1e3f7ba8`.
Source blob: `bcddb12a2b5a3da9b1629dffe5613ee57146f726`.

The inspected parent is main `efe6005adb385a804a39775925b4e28a300d4708`.
The actual issue #503 kernel is already present there, in
`GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean`
(blob `60d8e7a6036e14738b9e87fca74f96dd3b50cf00`). Its parent chain already
contains the source-level conditional consumer
`GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket`.

This increment reuses that consumer. It does not identify the Abel packet with
`pickupCross`, does not assume a comparison with the good-scale pickup route,
and does not build another abstract RH target. A direct comparison between
those two source objects remains a separate question, not a hidden premise
or a claimed theorem here.

Direct imports:

- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelSubprobabilityKernel`;
- `GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation`, blob
  `b6bc8e512f13203d17c80e9fdfa9cff38937ed05` at the parent.

## Exact arithmetic identity

Write `Y = 2^(j+1)` and retain the ordinary, signed two-point prefix

    C_h(n) = sum_(a=0,...,n-1) mu(a+1) mu(a+1+h).

Retain the existing kernel, without replacing its triangular support:

    K_(j,t)(h) = Y * Delta(j,h,t)
                 if 1 <= h < Y and t < Y-h-1,
                 0 otherwise.

Define the literal pairing

    A_(j,t) = sum_(1<=h<Y) K_(j,t)(h) C_h(t+1).

The new source applies the previously generic finite rearrangement to the
actual Mobius coefficients and proves the exact source identities

    oldDepthSlice(j,t) = (2/Y) A_(j,t),
    oldDepthPacket(j)  = (2/Y) sum_(0<=t<Y) A_(j,t).

The entire old depth packet is retained. No single terminal prefix, fixed
shift, selected depth, absolute correlation, or logarithmically averaged
correlation replaces it. For `t >= Y-2`, the triangular kernel and depth
slice are zero. Those terminal depths are accounted for by source theorems,
not silently removed from the inventory.

## Exceptional shifts: the right error measure

Allow an arbitrary finite exceptional set `B_(j,t)` depending on both scale
and depth. Labels outside `1 <= h < Y` or outside the triangular support have
zero contribution. Set

    R_(j,t) = sum_(h not in B_(j,t)) K_(j,t)(h) C_h(t+1),
    Q_(j,t) = sum_(h in B_(j,t)) K_(j,t)(h) C_h(t+1),
    M_(j,t) = sum_(h in B_(j,t)) K_(j,t)(h).

All sums use the original positive-shift range. Finite algebra gives
`A = R + Q`. The ordinary Mobius coefficient bound gives `|C_h(n)| <= n`.
Consequently the new source proves

    |Q_(j,t)| <= (t+1) M_(j,t),
    |A_(j,t)-R_(j,t)| <= (t+1) M_(j,t),
    A_(j,t) <= R_(j,t) + (t+1) M_(j,t).

The regular contribution R REMAINS SIGNED. Only the exceptional contribution
is replaced by its absolute upper allowance. Kernel positivity supplies
`M >= 0`; the inherited subprobability theorem supplies `M <= 1` when
`t+2 <= Y`.

An estimate on the COUNTING density of B is not an estimate on M. A
nonnegative unit-mass kernel can concentrate all its mass on one label.
Any almost-all-shifts theorem must therefore supply a comparison with these
actual weights, or a direct estimate of M, before use here.

## Exact conditional RH endpoint

Define the concrete upper allowance

    U_j = (2/Y) sum_(0<=t<Y) [R_(j,t) + (t+1) M_(j,t)].

The new theorem `depthPacket_le_exceptionalPacketUpper` proves
`oldDepthPacket(j) <= U_j`. The terminal declaration

    GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer.
      riemannHypothesis_of_kernelExceptionalBudget

consumes precisely

    for every delta>0, there exists C>=0 such that for every j,
    U_j <= C * (2^j)^delta,

and returns the unchanged `_root_.RiemannHypothesis` through the existing
signed Abel criterion. The positive-exponent and all-scale quantifiers
remain explicit. No inhabitant of this arithmetic budget is constructed.
For empty exceptional sets, U_j is exactly the old signed packet; this is a
source theorem, not a new cancellation estimate.

## Quantitative research task

The next substantive supplier is a signed estimate on the complete weighted
regular contribution, together with a sufficiently small weighted exceptional
cost. A direct arithmetic/dispersion method may bound their SUM rather than
introducing separate absolute values.

For orientation only: a uniform normalized prefix estimate of size eta and
weighted exceptional mass of size eta would generally leave an O(Y*eta)
allowance after summing the depths. Merely proving eta=o(1) does not by itself
yield the required O_delta(Y^delta) bound for every delta>0. The actual
weights and signed cancellations may improve this comparison, but that must
be proved rather than inferred from qualitative decorrelation.

Possible analytic methods discussed in the predecessor remain methods to
investigate, not imported theorems. No entropy decrement, Pinsker inequality,
independence, divisibility-expander estimate, or short-interval estimate is
used by this finite increment. This is repository-derived finite algebra;
no new paper theorem or historical attribution is asserted.

## Verification and scope

There are five definitions and fourteen theorem scripts in the new source.
These are lexical source counts, not elaborated declaration identities.
The file is not added to `GRWTSK.lean`; no existing source, upstream license,
lockfile, or historical verification pin is altered.

Pinned source environment: `leanprover/lean4:v4.33.0`, Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`. Compilation, fresh kernel replay,
full transitive axiom/unsafe audit and independent replay are NOT_RUN.
The direct and transitive parent source candidates must also be checked.
Finite rational diagnostics cannot establish those acceptance states or an
all-scale arithmetic bound. Operational commands and evidence belong outside
the mathematical source tree.

The passive target is
`docs/verification/NumberTheory/Moebius/MertensSignedAbelKernelTransfer/abel-kernel-transfer-v0.1.toml`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa7523e9e8cb13b8a9ac2595279ef2a1c4edd50b05484eb117d855edd4ae2338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
