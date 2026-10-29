# KQHPole Relative Form Audit Kernel Preserving Relative Error Through ACommon Annihilator — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7d32c3e06678d769efe41a1836ace241f18fa5c` · SHA-256 `e64128a7acaf5024fbc174ad1c4153d6b1ac38c6b2fa2a334e3d00c7e004d169`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.CompensatedReadout
import Mathlib.Tactic.Linarith

/-!
# Kernel-preserving relative error through a common annihilator

grwtsk contributors selected the transfer direction. OpenAI Codex extracted and
formalized this elementary mechanism from the pinned Laughlin transfer proof.
The signed native readout is preserved through `quadraticReadout`; its missing
annihilator factorization and energy comparison remain explicit premises.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHPoleRelativeForm

open scoped InnerProductSpace
open CompensatedReadout

variable {H L : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  [NormedAddCommGroup L] [InnerProductSpace ℂ L]

/-- A perturbation factored through the same annihilator is relative to its
positive energy. The map can encode a finite collection in a Hilbert direct sum. -/
theorem annihilator_error_bound (R : L →L[ℂ] L) (v : L) :
    |(⟪v, R v⟫_ℂ).re| ≤ ‖R‖ * ‖v‖ ^ 2 := by
  calc
    |(⟪v, R v⟫_ℂ).re| ≤ ‖⟪v, R v⟫_ℂ‖ := Complex.abs_re_le_norm _
    _ ≤ ‖v‖ * ‖R v‖ := norm_inner_le_norm _ _
    _ ≤ ‖v‖ * (‖R‖ * ‖v‖) :=
      mul_le_mul_of_nonneg_left (R.le_opNorm v) (norm_nonneg v)
    _ = ‖R‖ * ‖v‖ ^ 2 := by ring

/-- A controlled change of variables preserves the energy kernel through an
exact common-annihilator comparison. No continuity of ranges is assumed. -/
theorem transferred_error_bound (B : H →L[ℂ] L) (Δ : H →L[ℂ] H)
    (R : L →L[ℂ] L) (energy : H → ℝ) (x : H)
    (henergy : ‖B (Δ x)‖ ^ 2 ≤ energy x) :
    |(⟪B (Δ x), R (B (Δ x))⟫_ℂ).re| ≤ ‖R‖ * energy x :=
  (annihilator_error_bound R (B (Δ x))).trans
    (mul_le_mul_of_nonneg_left henergy (norm_nonneg R))

/-- Zero native energy forces every transferred annihilator to vanish. -/
theorem transferred_kernel (B : H →L[ℂ] L) (Δ : H →L[ℂ] H)
    (energy : H → ℝ) (x : H)
    (henergy : ‖B (Δ x)‖ ^ 2 ≤ energy x) (hzero : energy x = 0) :
    B (Δ x) = 0 := by
  rw [hzero] at henergy
  have hn : ‖B (Δ x)‖ = 0 := by nlinarith [norm_nonneg (B (Δ x))]
  exact norm_eq_zero.mp hn

/-- Applied to the repository's exact signed scalar, the common-annihilator
identity yields a lower bound and an error budget relative to native energy. -/
theorem native_readout_transfer (K : H →L[ℂ] H)
    (B : H →L[ℂ] L) (Δ : H →L[ℂ] H) (R : L →L[ℂ] L)
    (energy baseline : H → ℝ) (x : H)
    (hidentity : quadraticReadout K x = baseline x +
      (⟪B (Δ x), R (B (Δ x))⟫_ℂ).re)
    (henergy : ‖B (Δ x)‖ ^ 2 ≤ energy x) :
    baseline x - ‖R‖ * energy x ≤ quadraticReadout K x ∧
      |quadraticReadout K x - baseline x| ≤ ‖R‖ * energy x := by
  have hb := transferred_error_bound B Δ R energy x henergy
  constructor
  · have hlo := (abs_le.mp hb).1
    rw [hidentity]
    linarith
  · rw [hidentity, add_sub_cancel_left]
    exact hb

end FormalResearch.RiemannHypothesis.KQHPoleRelativeForm

set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.KQHPoleRelativeForm
#check annihilator_error_bound
#print axioms annihilator_error_bound
#check transferred_error_bound
#print axioms transferred_error_bound
#check transferred_kernel
#print axioms transferred_kernel
#check native_readout_transfer
#print axioms native_readout_transfer
end FormalResearch.RiemannHypothesis.KQHPoleRelativeForm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fb621153692645a48db50b2793312e19aa4a81099518e5fae0e7f74cc83b4b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAudit/Variante64128a7acaf5024fbc174ad1c4153d6b1ac38c6b2fa2a334e3d00c7e004d169.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
