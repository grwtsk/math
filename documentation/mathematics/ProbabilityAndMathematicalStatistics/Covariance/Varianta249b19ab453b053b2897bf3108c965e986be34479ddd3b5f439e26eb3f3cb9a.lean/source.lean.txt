-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.Covariance.Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Covariance.Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/Moments/Covariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.Moments.Variance

/-!
# Covariance

We define the covariance of two real-valued random variables.

## Main definitions

* `covariance`: covariance of two real-valued random variables, with notation `cov[X, Y; μ]`.
  `cov[X, Y; μ] = ∫ ω, (X ω - μ[X]) * (Y ω - μ[Y]) ∂μ`.

## Main statements

* `covariance_same`: `cov[X, X; μ] = Var[X; μ]`

## Notation

* `cov[X, Y; μ] = covariance X Y μ`
* `cov[X, Y] = covariance X Y volume`

-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.Covariance.Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de

open MeasureTheory

namespace ProbabilityTheory

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {X Y Z : Ω → ℝ} {μ : Measure Ω}

/-- The covariance of two real-valued random variables defined as
the integral of `(X - 𝔼[X])(Y - 𝔼[Y])`. -/
noncomputable def covariance (X Y : Ω → ℝ) (μ : Measure Ω) : ℝ :=
  ∫ ω, (X ω - μ[X]) * (Y ω - μ[Y]) ∂μ

@[inherit_doc]
scoped notation "cov[" X ", " Y "; " μ "]" => ProbabilityTheory.covariance X Y μ

/-- The covariance of the real-valued random variables `X` and `Y`
according to the volume measure. -/
scoped notation "cov[" X ", " Y "]" => cov[X, Y; MeasureTheory.MeasureSpace.volume]

lemma covariance_same {X : Ω → ℝ} (hX : AEMeasurable X μ) :
    cov[X, X; μ] = Var[X; μ] := by
  rw [covariance, variance_eq_integral hX]
  congr with x
  ring

@[simp] lemma covariance_zero_left : cov[0, Y; μ] = 0 := by simp [covariance]

@[simp] lemma covariance_zero_right : cov[X, 0; μ] = 0 := by simp [covariance]

@[simp] lemma covariance_zero_measure : cov[X, Y; (0 : Measure Ω)] = 0 := by simp [covariance]

variable (X Y) in
lemma covariance_comm : cov[X, Y; μ] = cov[Y, X; μ] := by
  simp_rw [covariance]
  congr with x
  ring

@[simp]
lemma covariance_const_left [IsProbabilityMeasure μ] (c : ℝ) : cov[fun _ ↦ c, Y; μ] = 0 := by
  simp [covariance]

@[simp]
lemma covariance_const_right [IsProbabilityMeasure μ] (c : ℝ) : cov[X, fun _ ↦ c; μ] = 0 := by
  simp [covariance]

@[simp]
lemma covariance_add_const_left [IsProbabilityMeasure μ] (hX : Integrable X μ) (c : ℝ) :
    cov[fun ω ↦ X ω + c, Y; μ] = cov[X, Y; μ] := by
  simp_rw [covariance]
  congr with ω
  rw [integral_add hX (by fun_prop)]
  simp

@[simp]
lemma covariance_const_add_left [IsProbabilityMeasure μ] (hX : Integrable X μ) (c : ℝ) :
    cov[fun ω ↦ c + X ω, Y; μ] = cov[X, Y; μ] := by
  simp_rw [add_comm c]
  exact covariance_add_const_left hX c

@[simp]
lemma covariance_add_const_right [IsProbabilityMeasure μ] (hY : Integrable Y μ) (c : ℝ) :
    cov[X, fun ω ↦ Y ω + c; μ] = cov[X, Y; μ] := by
  rw [covariance_comm, covariance_add_const_left hY c, covariance_comm]

@[simp]
lemma covariance_const_add_right [IsProbabilityMeasure μ] (hY : Integrable Y μ) (c : ℝ) :
    cov[X, fun ω ↦ c + Y ω; μ] = cov[X, Y; μ] := by
  simp_rw [add_comm c]
  exact covariance_add_const_right hY c

lemma covariance_add_left [IsFiniteMeasure μ]
    (hX : MemLp X 2 μ) (hY : MemLp Y 2 μ) (hZ : MemLp Z 2 μ) :
    cov[X + Y, Z; μ] = cov[X, Z; μ] + cov[Y, Z; μ] := by
  simp_rw [covariance, Pi.add_apply]
  rw [← integral_add]
  · congr with x
    rw [integral_add (hX.integrable (by simp)) (hY.integrable (by simp))]
    ring
  · exact (hX.sub (memLp_const _)).integrable_mul (hZ.sub (memLp_const _))
  · exact (hY.sub (memLp_const _)).integrable_mul (hZ.sub (memLp_const _))

lemma covariance_add_right [IsFiniteMeasure μ]
    (hX : MemLp X 2 μ) (hY : MemLp Y 2 μ) (hZ : MemLp Z 2 μ) :
    cov[X, Y + Z; μ] = cov[X, Y; μ] + cov[X, Z; μ] := by
  rw [covariance_comm, covariance_add_left hY hZ hX, covariance_comm X, covariance_comm Z]

lemma covariance_smul_left (c : ℝ) : cov[c • X, Y; μ] = c * cov[X, Y; μ] := by
  simp_rw [covariance, Pi.smul_apply, smul_eq_mul, ← integral_const_mul, ← mul_assoc, mul_sub,
    integral_const_mul]

lemma covariance_smul_right (c : ℝ) : cov[X, c • Y; μ] = c * cov[X, Y; μ] := by
  rw [covariance_comm, covariance_smul_left, covariance_comm]

@[simp]
lemma covariance_neg_left : cov[-X, Y; μ] = -cov[X, Y; μ] := by
  calc cov[-X, Y; μ]
  _ = cov[(-1 : ℝ) • X, Y; μ] := by simp
  _ = - cov[X, Y; μ] := by rw [covariance_smul_left]; simp

@[simp]
lemma covariance_fun_neg_left : cov[fun ω ↦ - X ω, Y; μ] = -cov[X, Y; μ] :=
  covariance_neg_left

@[simp]
lemma covariance_neg_right : cov[X, -Y; μ] = -cov[X, Y; μ] := by
  calc cov[X, -Y; μ]
  _ = cov[X, (-1 : ℝ) • Y; μ] := by simp
  _ = - cov[X, Y; μ] := by rw [covariance_smul_right]; simp

@[simp]
lemma covariance_fun_neg_right : cov[X, fun ω ↦ - Y ω; μ] = -cov[X, Y; μ] :=
  covariance_neg_right

lemma covariance_sub_left [IsFiniteMeasure μ]
    (hX : MemLp X 2 μ) (hY : MemLp Y 2 μ) (hZ : MemLp Z 2 μ) :
    cov[X - Y, Z; μ] = cov[X, Z; μ] - cov[Y, Z; μ] := by
  simp_rw [sub_eq_add_neg, covariance_add_left hX hY.neg hZ, covariance_neg_left]

lemma covariance_sub_right [IsFiniteMeasure μ]
    (hX : MemLp X 2 μ) (hY : MemLp Y 2 μ) (hZ : MemLp Z 2 μ) :
    cov[X, Y - Z; μ] = cov[X, Y; μ] - cov[X, Z; μ] := by
  simp_rw [sub_eq_add_neg, covariance_add_right hX hY hZ.neg, covariance_neg_right]

@[simp]
lemma covariance_sub_const_left [IsProbabilityMeasure μ] (hX : Integrable X μ) (c : ℝ) :
    cov[fun ω ↦ X ω - c, Y; μ] = cov[X, Y; μ] := by
  simp [sub_eq_add_neg, hX]

@[simp]
lemma covariance_const_sub_left [IsProbabilityMeasure μ] (hX : Integrable X μ) (c : ℝ) :
    cov[fun ω ↦ c - X ω, Y; μ] = - cov[X, Y; μ] := by
  simp [sub_eq_add_neg, hX.neg']

@[simp]
lemma covariance_sub_const_right [IsProbabilityMeasure μ] (hY : Integrable Y μ) (c : ℝ) :
    cov[X, fun ω ↦ Y ω - c; μ] = cov[X, Y; μ] := by
  simp [sub_eq_add_neg, hY]

@[simp]
lemma covariance_const_sub_right [IsProbabilityMeasure μ] (hY : Integrable Y μ) (c : ℝ) :
    cov[X, fun ω ↦ c - Y ω; μ] = - cov[X, Y; μ] := by
  simp [sub_eq_add_neg, hY.neg']

end ProbabilityTheory
