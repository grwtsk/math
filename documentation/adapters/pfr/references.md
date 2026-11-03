# Dense PFR consumer references

Local attribution: grwtsk contributors. Imported sources retain Apache-2.0 and
public upstream bylines. The canonical [paper ledger](../../mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#pfr-dense-submodule-slice-20261029)
binds the original Gowers--Green--Manners--Tao2023 paper separately from Liao2024's
exponent-nine refinement and from these elementary local consequences.

The new DenseSubmoduleSlice.lean source at 9a913f5c7e184d75e8701096c5c5a59b144c2793, blob83d53ed5afb4254d155a461eeb3bc989498ed554,
constructs a nonempty translated slice in the exact PFR submodule and consumes
the existing Mathlib Finset.addEnergy/Cauchy--Schwarz API. The strict 2*K^9 factor,
full-slice identity, overlap allowance and all variable domains are retained.
The earlier SmallDoublingDifferenceCover.lean and its historical target remain
unchanged; the two existential constructions are alternative routes.

[Exact verification target](../../mathematics/_verification/targets/Combinatorics/pfr-dense-submodule-slice-20261029.json) and adjacent profile/TOML require
all three roots, complete compiler-owned/axiom coverage and three explicit type
checks. Native compilation, fresh replay, axiom and type checks remain NOT_RUN.
No incompatible root dependency/import is introduced.

## Original A energy return (2026-11-02)

The new source candidate `GRWTSK/Combinatorics/PfrOriginalEnergyTransport.lean`
uses an actual injection of energy quadruples under the common
translation `b ↦ u+b` to prove `E(B) ≤ E(A)` and, with the existing
`DenseSubmoduleSlice` theorem, the **original-source** bound
`|B|^4 ≤ |H| E(A)`. The same nonempty B, finite H, strict
`|A|<2*K^9*|B|` bound, and source inclusion are retained.
See the authored
[mathematical disposition](../../mathematics/_support/reviews/pfr-original-energy-transport-2026-11-02.md).
This is an isolated PFR versioned source candidate, not a newly
compiled proof or a cross-version root import. The reverse energy
inequality is false in general; compilation/kernel/axioms remain NOT_RUN.
