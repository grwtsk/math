-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Holder.Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Holder.Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008","mathematical_subject":"Analysis.Integration","original_sha256":"8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/Holder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.MeasureTheory.Integral.Bochner.Basic

/-! # Continuous bilinear maps on `MeasureTheory.Lp` spaces

Given a continuous bilinear map `B : E →L[𝕜] F →L[𝕜] G`, we define an associated map
`ContinuousLinearMap.holder : Lp E p μ → Lp F q μ → Lp G r μ` where `p q r` are a Hölder triple.
We bundle this into a bilinear map `ContinuousLinearMap.holderₗ` and a continuous
bilinear map `ContinuousLinearMap.holderL` under some additional assumptions.

We also declare a heterogeneous scalar multiplication (`HSMul`) instance on `MeasureTheory.Lp`
spaces. Although this could use the `ContinuousLinearMap.holder` construction above, we opt not to
do so in order to minimize the necessary type class assumptions.

When `p q : ℝ≥0∞` are Hölder conjugate (i.e., `HolderConjugate p q`), we also construct the
natural map `ContinuousLinearMap.lpPairing : Lp E p μ →L[𝕜] Lp F q μ →L[𝕜] G` given by
`fun f g ↦ ∫ x, B (f x) (g x) ∂μ`. When `B := (NormedSpace.inclusionInDoubleDual 𝕜 E).flip`, this
is the natural map `Lp (Dual 𝕜 E) p μ →L[𝕜] Dual 𝕜 (Lp E q μ)`.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.Holder.Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008

open ENNReal MeasureTheory Lp
open scoped NNReal

noncomputable section

/-! ### Induced bilinear maps -/

section Bilinear

variable {α 𝕜 E F G : Type*} {m : MeasurableSpace α} {μ : Measure α}
    {p q r : ENNReal} [hpqr : HolderTriple p q r] [NontriviallyNormedField 𝕜]
    [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup G]
    [NormedSpace 𝕜 E] [NormedSpace 𝕜 F] [NormedSpace 𝕜 G]
    (B : E →L[𝕜] F →L[𝕜] G)

namespace ContinuousLinearMap

variable (r) in
/-- The map between `MeasuryTheory.Lp` spaces satisfying `ENNReal.HolderTriple`
induced by a continuous bilinear map on the underlying spaces. -/
def holder (f : Lp E p μ) (g : Lp F q μ) : Lp G r μ :=
  MemLp.toLp (fun x ↦ B (f x) (g x)) <| by
    refine .of_bilin (B · ·) ‖B‖₊ (Lp.memLp f) (Lp.memLp g) ?_ <|
      .of_forall fun _ ↦ B.le_opNorm₂ _ _
    exact B.aestronglyMeasurable_comp₂ (Lp.memLp f).1 (Lp.memLp g).1

lemma coeFn_holder (f : Lp E p μ) (g : Lp F q μ) :
    B.holder r f g =ᵐ[μ] fun x ↦ B (f x) (g x) := by
  rw [holder]
  exact MemLp.coeFn_toLp _

lemma nnnorm_holder_apply_apply_le (f : Lp E p μ) (g : Lp F q μ) :
    ‖B.holder r f g‖₊ ≤ ‖B‖₊ * ‖f‖₊ * ‖g‖₊ := by
  simp_rw [← ENNReal.coe_le_coe, ENNReal.coe_mul, ← enorm_eq_nnnorm, Lp.enorm_def]
  apply eLpNorm_congr_ae (coeFn_holder B f g) |>.trans_le
  exact eLpNorm_le_eLpNorm_mul_eLpNorm_of_nnnorm (Lp.memLp f).1 (Lp.memLp g).1 (B · ·) ‖B‖₊
    (.of_forall fun _ ↦ B.le_opNorm₂ _ _)

lemma norm_holder_apply_apply_le (f : Lp E p μ) (g : Lp F q μ) :
    ‖B.holder r f g‖ ≤ ‖B‖ * ‖f‖ * ‖g‖ :=
  NNReal.coe_le_coe.mpr <| nnnorm_holder_apply_apply_le B f g

lemma holder_add_left (f₁ f₂ : Lp E p μ) (g : Lp F q μ) :
    B.holder r (f₁ + f₂) g = B.holder r f₁ g + B.holder r f₂ g := by
  simp only [holder, ← MemLp.toLp_add]
  apply MemLp.toLp_congr
  filter_upwards [AEEqFun.coeFn_add f₁.val f₂.val] with x hx
  simp [hx]

lemma holder_add_right (f : Lp E p μ) (g₁ g₂ : Lp F q μ) :
    B.holder r f (g₁ + g₂) = B.holder r f g₁ + B.holder r f g₂ := by
  simp only [holder, ← MemLp.toLp_add]
  apply MemLp.toLp_congr
  filter_upwards [AEEqFun.coeFn_add g₁.val g₂.val] with x hx
  simp [hx]

lemma holder_smul_left (c : 𝕜) (f : Lp E p μ) (g : Lp F q μ) :
    B.holder r (c • f) g = c • B.holder r f g := by
  simp only [holder, ← MemLp.toLp_const_smul]
  apply MemLp.toLp_congr
  filter_upwards [Lp.coeFn_smul c f] with x hx
  simp [hx]

lemma holder_smul_right (c : 𝕜) (f : Lp E p μ) (g : Lp F q μ) :
    B.holder r f (c • g) = c • B.holder r f g := by
  simp only [holder, ← MemLp.toLp_const_smul]
  apply MemLp.toLp_congr
  filter_upwards [Lp.coeFn_smul c g] with x hx
  simp [hx]

variable (μ p q r) in
/-- `MeasureTheory.Lp.holder` as a bilinear map. -/
@[simps! apply_apply]
def holderₗ : Lp E p μ →ₗ[𝕜] Lp F q μ →ₗ[𝕜] Lp G r μ :=
  .mk₂ 𝕜 (B.holder r) B.holder_add_left B.holder_smul_left
    B.holder_add_right B.holder_smul_right

variable [Fact (1 ≤ p)] [Fact (1 ≤ q)] [Fact (1 ≤ r)]

variable (μ p q r) in
/-- `MeasureTheory.Lp.holder` as a continuous bilinear map. -/
@[simps! apply_apply]
def holderL : Lp E p μ →L[𝕜] Lp F q μ →L[𝕜] Lp G r μ :=
  LinearMap.mkContinuous₂ (B.holderₗ μ p q r) ‖B‖ (norm_holder_apply_apply_le B)

lemma norm_holderL_le : ‖(B.holderL μ p q r)‖ ≤ ‖B‖ :=
  LinearMap.mkContinuous₂_norm_le _ (norm_nonneg B) _

variable [HolderConjugate p q] [NormedSpace ℝ G] [SMulCommClass ℝ 𝕜 G] [CompleteSpace G]

variable (μ p q) in
/-- The natural pairing between `Lp E p μ` and `Lp F q μ` (for Hölder conjugate `p q : ℝ≥0∞`) with
values in a space `G` induced by a bilinear map `B : E →L[𝕜] F →L[𝕜] G`.

This is given by `∫ x, B (f x) (g x) ∂μ`.

In the special case when `B := (NormedSpace.inclusionInDoubleDual 𝕜 E).flip`, which is
definitionally the same as `B := ContinuousLinearMap.id 𝕜 (E →L[𝕜] 𝕜)`, this is the
natural map `Lp (Dual 𝕜 E) p μ →L[𝕜] Dual 𝕜 (Lp E q μ)`. -/
def lpPairing (B : E →L[𝕜] F →L[𝕜] G) : Lp E p μ →L[𝕜] Lp F q μ →L[𝕜] G :=
  (L1.integralCLM' 𝕜 |>.postcomp <| Lp F q μ) ∘L (B.holderL μ p q 1)

lemma lpPairing_eq_integral (f : Lp E p μ) (g : Lp F q μ) :
    B.lpPairing μ p q f g = ∫ x, B (f x) (g x) ∂μ := by
  show L1.integralCLM _ = _
  rw [← L1.integral_def, L1.integral_eq_integral]
  exact integral_congr_ae <| B.coeFn_holder _ _

end ContinuousLinearMap

end Bilinear

namespace MeasureTheory
namespace Lp

/-! ### Heterogeneous scalar multiplication

While the previous section is *nominally* more general than this one, and indeed, we could
use the constructions of the previous section to define the scalar multiplication herein,
we would lose some slight generality as we would need to require that `𝕜` is a nontrivially
normed field everywhere. Moreover, it would only simplify a few proofs.
-/

section SMul

variable {α 𝕜' 𝕜 E : Type*} {m : MeasurableSpace α} {μ : Measure α}
    {p q r : ℝ≥0∞} [hpqr : HolderTriple p q r]

section MulActionWithZero

variable [NormedRing 𝕜] [NormedAddCommGroup E] [MulActionWithZero 𝕜 E] [IsBoundedSMul 𝕜 E]

/-- Heterogeneous scalar multiplication of `MeasureTheory.Lp` functions by `MeasureTheory.Lp`
functions when the exponents satisfy `ENNReal.HolderTriple p q r`. -/
instance : HSMul (Lp 𝕜 p μ) (Lp E q μ) (Lp E r μ) where
  hSMul f g := (Lp.memLp g).smul (Lp.memLp f) |>.toLp (⇑f • ⇑g)

lemma smul_def {f : Lp 𝕜 p μ} {g : Lp E q μ} :
    f • g = ((Lp.memLp g).smul (Lp.memLp f)).toLp (⇑f • ⇑g) :=
  rfl

lemma coeFn_lpSMul (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    (f • g : Lp E r μ) =ᵐ[μ] ⇑f • g := by
  rw [smul_def]
  exact MemLp.coeFn_toLp _

protected lemma norm_smul_le (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    ‖f • g‖ ≤ ‖f‖ * ‖g‖ := by
  simp only [Lp.norm_def, ← ENNReal.toReal_mul, coeFn_lpSMul]
  refine ENNReal.toReal_mono ?_ ?_
  · exact ENNReal.mul_ne_top (eLpNorm_ne_top f) (eLpNorm_ne_top g)
  · rw [eLpNorm_congr_ae (coeFn_lpSMul f g)]
    exact eLpNorm_smul_le_mul_eLpNorm (Lp.aestronglyMeasurable g) (Lp.aestronglyMeasurable f)

end MulActionWithZero

section Module

variable [NormedRing 𝕜] [NormedAddCommGroup E] [Module 𝕜 E] [IsBoundedSMul 𝕜 E]

protected lemma smul_add (f₁ f₂ : Lp 𝕜 p μ) (g : Lp E q μ) :
    (f₁ + f₂) • g = f₁ • g + f₂ • g := by
  simp only [smul_def, ← MemLp.toLp_add]
  apply MemLp.toLp_congr
  filter_upwards [AEEqFun.coeFn_add f₁.val f₂.val] with x hx
  simp [hx, add_smul]

protected lemma add_smul (f : Lp 𝕜 p μ) (g₁ g₂  : Lp E q μ) :
    f • (g₁ + g₂) = f • g₁ + f • g₂ := by
  simp only [smul_def, ← MemLp.toLp_add]
  apply MemLp.toLp_congr _ _ ?_
  filter_upwards [AEEqFun.coeFn_add g₁.val g₂.val] with x hx
  simp [hx, smul_add]

variable (E q) in
@[simp]
protected lemma smul_zero (f : Lp 𝕜 p μ) :
    f • (0 : Lp E q μ) = (0 : Lp E r μ) := by
  convert MemLp.zero (ε := E) |>.toLp_zero
  apply MemLp.toLp_congr _ _ ?_
  filter_upwards [Lp.coeFn_zero E q μ] with x hx
  rw [Pi.smul_apply', hx]
  simp

variable (𝕜 p) in
@[simp]
protected lemma zero_smul (f : Lp E q μ) :
    (0 : Lp 𝕜 p μ) • f = (0 : Lp E r μ) := by
  convert MemLp.zero (ε := E) |>.toLp_zero
  apply MemLp.toLp_congr _ _ ?_
  filter_upwards [Lp.coeFn_zero 𝕜 p μ] with x hx
  rw [Pi.smul_apply', hx]
  simp

@[simp]
protected lemma smul_neg (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    f • -g = -(f • g) := by
  simp [eq_neg_iff_add_eq_zero, ← Lp.add_smul]

@[simp]
protected lemma neg_smul (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    -f • g = -(f • g) := by
  simp [eq_neg_iff_add_eq_zero, ← Lp.smul_add]

protected lemma neg_smul_neg (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    -f • -g = f • g := by
  simp

variable [NormedRing 𝕜'] [Module 𝕜' E] [Module 𝕜' 𝕜] [IsBoundedSMul 𝕜' E] [IsBoundedSMul 𝕜' 𝕜]

protected lemma smul_assoc [IsScalarTower 𝕜' 𝕜 E]
    (c : 𝕜') (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    (c • f) • g = c • (f • g) := by
  simp only [smul_def, ← MemLp.toLp_const_smul]
  apply MemLp.toLp_congr
  filter_upwards [Lp.coeFn_smul c f] with x hx
  simp [- smul_eq_mul, hx]

protected lemma smul_comm [SMulCommClass 𝕜' 𝕜 E]
    (c : 𝕜') (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    c • f • g = f • c • g := by
  simp only [smul_def, ← MemLp.toLp_const_smul]
  apply MemLp.toLp_congr
  filter_upwards [Lp.coeFn_smul c f, Lp.coeFn_smul c g] with x hfx hgx
  simp [smul_comm, hfx, hgx]

end Module

end SMul

end Lp
end MeasureTheory
