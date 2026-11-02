# Finite torsion resolution and source-exact Möbius return — 2026-11-02

## Immutable mathematics and bounded claim

New Lean leaf: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFiniteTorsionResolutionReturn.lean.
Source code Git blob: 77b6af2581e21edc4e8a471fe42de3032c6f25cc.

This adds a noncircular finite-capacity and lossless-index interface to the existing canonical prime source, actual finite elliptic affine-point fibers, ordered signed Möbius pickup, and endpoint quadrature.

1. A fixed finite phase space G can injectively encode at most card(G) different original source indices. On any finite S the paired source-plus-phase type has exactly card(S)*card(G) states, and retaining the original index makes it injective even when the phase-only map collides. The finite-torsion theorem assumes a genuinely finite additive group. No general bound on the number of changing fibers is claimed.
2. The existing actual affine solution fiber of an integral Weierstrass curve over F_p has exactly integralModelCount(W,p)-1 affine positions. A faithful phase-only label into this fiber requires card(S)+1 <= integralModelCount(W,p). This is an actual finite point-count capacity, **not** an identification of affine points with rational torsion, not a good-reduction certificate, and not a rank-32 argument.
3. The existing positive-integer SourceAtom retains the full original n, all prime factors, exponent information and Möbius signs. Attaching or changing any auxiliary phase leaves the source-indexed ordered signed Gram literally equal to pickupCross(T).
4. A decoder that sees only phase data reconstructs an arbitrary observedCoeff. For every phase assignment and decoder, pickupCross(T)=observedCross(T)+signedLoss(T). Both ordered orientations remain; the loss expands exactly into coefficientError(m)*mu(n)+observedCoeff(m)*coefficientError(n), multiplied by the original response Gram. Even a constant or incorrect decoder cannot silently erase the arithmetic remainder.
5. Source exact decoding requires its own explicit coefficient-equality hypothesis. Different source Möbius values on a collided phase cannot both be decoded correctly.
6. The imported endpoint theorem then gives |endpointSum(T)-(observedCross(T)+signedLoss(T))|<=1/4 for all T>=0. One-sided bound is endpointSum(T)<=observedCross(T)+signedLoss(T)+1/4. The quarter-unit is curvature approximation, NOT a bound on signedLoss or on the arithmetic source.

## Connection to named research programmes and limitations

- Rank32 grwtsk/math#1049: the finite verified character computations are distinct from a formally proved Mordell-Weil lower bound, and the free rank is not the torsion subgroup. No billion-prime verification is claimed here.
- M23 grwtsk/math#217 and #175: candidate descent and exact recognition are research methodology; no action on RH, prime-typed atoms or elliptic torsion is inferred.
- RS moment decoding #1403: a finite code transports an existing source only through a proved decoding or error theorem, not by claiming all reconstructed coefficients from too few samples.
- Physical two-bit observer #1559: both methods retain original Möbius values only when the source-encoding hypothesis is present. Neither creates mu(n) from geometry.
- Elliptic matched/unmatched signed return #1553, sparse Putnam gaps #1556 and Farey-Fáry #1566: the rough, both mixed, matched and long-gap defects remain independent arithmetic responsibilities.
- RH endpoint #1406 and canonical programme #15: a fixed affine-frequent good-scale set and all-positive-exponent signed upper bound for endpointSum(T) is still OPEN. The new identity cannot discharge it on its own.
- Weil, Tao, Connes, Sarnak and Erdős-related methods remain possible inputs to a quantitative arithmetic supplier; no imported theorem or attribution creates a proved missing bound.

## Source provenance and passive verification

The current repository pin was read from grwtsk/math main: leanprover/lean4:v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. All existing source files, pins and public root imports remain unchanged.

STATUS: SOURCE_PROOF_CANDIDATE. Compilation NOT_RUN; elaborated expected types NOT_RUN; fresh kernel replay NOT_RUN; transitive axiom, unsafe and sorry audit NOT_RUN. Static lexical inspection found no authored sorry or research axiom in the new source. A source blob and a mathematical proof script do not establish compilation or formal acceptance.

Passive acceptance request (no workflow authorization):
- lake build --wfail GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFiniteTorsionResolutionReturn
- lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFiniteTorsionResolutionReturn.lean
- Inspect exact imported and generated/private/opaque dependency closure and all theorem signatures; determine supported fresh-checker invocation from pinned help; record command statuses and complete axiom inventory.
- Reject unsupported coercion of affine fiber to torsion group, finite-rank to finite-resolution implication, dropped source indices, changed moduli, lost pair orientations, zero interpreted as missing coefficient, or a claimed global RH bound from finite capacity.
- Keep mutable verification receipts and execution effects in grwtsk/noeaaeue, not in pure mathematical source.

No repository mutation outside the three new math/review/static-target files is intended.
