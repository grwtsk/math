-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SChart.Variant1cb640c0c8d822f9af1f01ed9143d288a98d6793102b39279fe3d9604954c47a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cb640c0c8d822f9af1f01ed9143d288a98d6793102b39279fe3d9604954c47a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SChart.Variant1cb640c0c8d822f9af1f01ed9143d288a98d6793102b39279fe3d9604954c47a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1cb640c0c8d822f9af1f01ed9143d288a98d6793102b39279fe3d9604954c47a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/new-cache-source-audit/source/1cb640c0c8d822f9af1f01ed9143d288a98d6793102b39279fe3d9604954c47a.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleVariation
import FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound
import FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction

/-!
# The actual source-profile conic and its signed overlap

The coefficient conic of issue #435 is the square of the source operator
`s * h'' - h / 4`, where `s = (A²)⁻¹`. Its two affine coefficient charts
are related by the nonzero scalar `s²`. The primitive operator retains the
sign of `s`; normalized signed agreement uses the positive physical domain.
The complete arithmetic readout is decoded at the same real scale, including
the moving closed prime-power inventory.

Direction and evaluation: grwtsk contributors. Formalization: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.SChart.Variant1cb640c0c8d822f9af1f01ed9143d288a98d6793102b39279fe3d9604954c47a

namespace FormalResearch.PositiveAtlas.SourceProfileAtlas

noncomputable section

open FormalResearch.RiemannHypothesis
open SourcePairing SourceScaleVariation SourceDerivativeCoefficientBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- The three independently interpreted coefficients of a square profile. -/
@[ext] structure Coefficients where
  a : ℝ
  b : ℝ
  c : ℝ

def sChart (s : ℝ) : Coefficients := ⟨s ^ 2, -s / 2, 1 / 16⟩
def tChart (t : ℝ) : Coefficients := ⟨1, -t / 2, t ^ 2 / 16⟩
def scale (r : ℝ) (p : Coefficients) : Coefficients := ⟨r * p.a, r * p.b, r * p.c⟩
def Conic (p : Coefficients) : Prop := p.b ^ 2 = 4 * p.a * p.c

theorem sChart_conic (s : ℝ) : Conic (sChart s) := by
  unfold Conic sChart
  dsimp
  ring

theorem tChart_conic (t : ℝ) : Conic (tChart t) := by
  unfold Conic tChart
  dsimp
  ring

/-- The overlap uses its genuine domain; inverse is never asserted at zero. -/
theorem coefficient_overlap {s : ℝ} (hs : s ≠ 0) :
    sChart s = scale (s ^ 2) (tChart s⁻¹) := by
  ext <;> dsimp [sChart, tChart, scale] <;> field_simp

theorem transition_involutive {s : ℝ} (hs : s ≠ 0) : s⁻¹⁻¹ = s ∧ s⁻¹ ≠ 0 :=
  ⟨inv_inv s, inv_ne_zero hs⟩

def sDomain : Set ℝ := {s | s ≠ 0}

theorem sDomain_open : IsOpen sDomain := by
  exact isOpen_ne

theorem transition_continuous : ContinuousOn (fun s : ℝ => s⁻¹) sDomain := by
  exact continuousOn_id.inv₀ (fun _ hs => hs)

/-- Homogeneous coefficient normalization is linear in the square coefficients. -/
def denominator (p : Coefficients) : ℝ :=
  (196608 / 5005 : ℝ) * p.a - (131072 / 45045 : ℝ) * p.b +
    (65536 / 109395 : ℝ) * p.c

def normalizedCoefficients (p : Coefficients) : Coefficients :=
  ⟨p.a / denominator p, p.b / denominator p, p.c / denominator p⟩

theorem denominator_scale (r : ℝ) (p : Coefficients) :
    denominator (scale r p) = r * denominator p := by
  unfold denominator scale
  dsimp
  ring

theorem denominator_sChart (s : ℝ) : denominator (sChart s) = normPolynomial s := by
  unfold denominator sChart normPolynomial
  dsimp
  ring

theorem denominator_sChart_pos {s : ℝ} (hs : 0 ≤ s) : 0 < denominator (sChart s) := by
  rw [denominator_sChart]
  exact normPolynomial_pos s hs

theorem denominator_tChart_pos {t : ℝ} (ht : 0 ≤ t) : 0 < denominator (tChart t) := by
  unfold denominator tChart
  dsimp
  ring_nf
  positivity

/-- The denominator transforms by the same scalar as the coefficients. -/
theorem denominator_overlap {s : ℝ} (hs : s ≠ 0) :
    denominator (sChart s) = s ^ 2 * denominator (tChart s⁻¹) := by
  rw [coefficient_overlap hs, denominator_scale]

theorem denominator_overlap_nonzero {s : ℝ} (hs : s ≠ 0) :
    denominator (sChart s) ≠ 0 ↔ denominator (tChart s⁻¹) ≠ 0 := by
  rw [denominator_overlap hs]
  exact mul_ne_zero_iff_left (pow_ne_zero 2 hs)

theorem normalizedCoefficients_scale {r : ℝ} (hr : r ≠ 0) (p : Coefficients) :
    normalizedCoefficients (scale r p) = normalizedCoefficients p := by
  ext <;> dsimp [normalizedCoefficients] <;>
    rw [denominator_scale] <;> dsimp [scale] <;> exact mul_div_mul_left _ _ hr

theorem normalizedCoefficients_overlap {s : ℝ} (hs : s ≠ 0) :
    normalizedCoefficients (sChart s) = normalizedCoefficients (tChart s⁻¹) := by
  rw [coefficient_overlap hs, normalizedCoefficients_scale (pow_ne_zero 2 hs)]

/-- The independently evaluated square profile has precisely the conic coefficients. -/
def squareReadout (p : Coefficients) (h₂ h₀ : ℝ) : ℝ :=
  p.a * h₂ ^ 2 + p.b * h₂ * h₀ + p.c * h₀ ^ 2

theorem squareReadout_sChart (s h₂ h₀ : ℝ) :
    squareReadout (sChart s) h₂ h₀ = (s * h₂ - h₀ / 4) ^ 2 := by
  unfold squareReadout sChart
  dsimp
  ring

theorem squareReadout_tChart (t h₂ h₀ : ℝ) :
    squareReadout (tChart t) h₂ h₀ = (h₂ - t * h₀ / 4) ^ 2 := by
  unfold squareReadout tChart
  dsimp
  ring

theorem primitive_overlap {s : ℝ} (hs : s ≠ 0) (h₂ h₀ : ℝ) :
    s * h₂ - h₀ / 4 = s * (h₂ - s⁻¹ * h₀ / 4) := by
  field_simp

/-- Signed primitives agree on the physical overlap after their actual normalization. -/
theorem normalizedPrimitive_overlap {s : ℝ} (hs : 0 < s) (h₂ h₀ : ℝ) :
    (s * h₂ - h₀ / 4) / Real.sqrt (denominator (sChart s)) =
      (h₂ - s⁻¹ * h₀ / 4) / Real.sqrt (denominator (tChart s⁻¹)) := by
  rw [primitive_overlap hs.ne', denominator_overlap hs.ne', Real.sqrt_mul (sq_nonneg s),
    Real.sqrt_sq hs.le]
  exact mul_div_mul_left _ _ hs.ne'

/-- The physical coordinate is exactly A⁻², not A⁻¹. -/
def sourceCoordinate (A : ℝ) : ℝ := (A ^ 2)⁻¹
def sDecoder (s : ℝ) : ℝ := (Real.sqrt s)⁻¹
def tDecoder (t : ℝ) : ℝ := Real.sqrt t

theorem sourceCoordinate_bounds {A : ℝ} (hA : 1 ≤ A) :
    0 < sourceCoordinate A ∧ sourceCoordinate A ≤ 1 := by
  unfold sourceCoordinate
  constructor
  · positivity
  · exact inv_le_one_of_one_le₀ (by nlinarith)

theorem sourceCoordinate_normalization {A : ℝ} (hA : 0 < A) :
    denominator (sChart (sourceCoordinate A)) = sourceNormalization A := by
  rw [denominator_sChart]
  unfold normPolynomial sourceCoordinate sourceNormalization
  field_simp
  ring

theorem sourceCoordinate_decode {A : ℝ} (hA : 0 < A) : sDecoder (sourceCoordinate A) = A := by
  unfold sDecoder sourceCoordinate
  rw [Real.sqrt_inv, Real.sqrt_sq hA.le, inv_inv]

theorem decoder_overlap (s : ℝ) : sDecoder s = tDecoder s⁻¹ := by
  exact (Real.sqrt_inv s).symm

theorem tDecoder_source {A : ℝ} (hA : 0 ≤ A) : tDecoder (A ^ 2) = A :=
  Real.sqrt_sq hA

/-- Every prescribed source readout, including signed arithmetic, agrees by exact decoding. -/
theorem readout_overlap (R : ℝ → ℝ) {s : ℝ} (_hs : s ≠ 0) :
    R (sDecoder s) = R (tDecoder s⁻¹) := by
  rw [decoder_overlap]

theorem actual_quadratic_overlap {s : ℝ} (hs : 0 < s ∧ s ≤ 1) :
    sourceQuadraticValue explicitSecondDerivative (sDecoder s) =
      sourceQuadraticValue explicitSecondDerivative (tDecoder s⁻¹) :=
  readout_overlap _ hs.1.ne'

theorem actual_compensated_overlap {s : ℝ} (hs : 0 < s ∧ s ≤ 1) :
    SourceKapitzaCompensatedReadout.compensatedSourceSum (sDecoder s) =
      SourceKapitzaCompensatedReadout.compensatedSourceSum (tDecoder s⁻¹) :=
  readout_overlap _ hs.1.ne'

/-- The conic coefficients reconstruct the actual normalized source square at physical scale. -/
theorem actual_source_square {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (normalizedTest explicitSecondDerivative A x) ^ 2 =
      squareReadout (normalizedCoefficients (sChart (sourceCoordinate A)))
        (deriv (deriv sourceBump) (x / A)) (sourceBump (x / A)) / A := by
  rw [← scaleProfile_eq_source hA x]
  unfold scaleProfile squareReadout normalizedCoefficients sChart
  dsimp only
  have hn := sourceCoordinate_normalization hA
  have hZ := sourceNormalization_pos hA
  unfold sourceCoordinate at hn ⊢
  dsimp [sChart] at hn
  rw [hn]
  rw [div_pow, div_pow, Real.sq_sqrt hZ.le, Real.sq_sqrt hA.le]
  field_simp
  ring

/-- The finite coefficient limit does exist; no arithmetic limit is inferred. -/
theorem normalizedCoefficients_continuousAt_zero :
    ContinuousAt (fun s : ℝ => (normalizedCoefficients (sChart s)).a) 0 ∧
    ContinuousAt (fun s : ℝ => (normalizedCoefficients (sChart s)).b) 0 ∧
    ContinuousAt (fun s : ℝ => (normalizedCoefficients (sChart s)).c) 0 := by
  have hZ : denominator (sChart 0) ≠ 0 := (denominator_sChart_pos (by norm_num)).ne'
  have hd : Continuous (fun s : ℝ => denominator (sChart s)) := by
    unfold denominator sChart
    dsimp
    fun_prop
  constructor
  · exact (continuousAt_id.pow 2).div hd.continuousAt hZ
  constructor
  · exact ((continuousAt_id.neg).div_const 2).div hd.continuousAt hZ
  · exact continuousAt_const.div hd.continuousAt hZ

/-- The complete arithmetic inventory grows without bound even though
the coefficient limit exists. -/
theorem arithmetic_inventory_unbounded (M : ℕ) :
    ∃ A : ℝ, 1 ≤ A ∧ M ≤ SourceKapitzaEventBalance.cutoff A := by
  refine ⟨max 1 (M : ℝ), le_max_left _ _, ?_⟩
  unfold SourceKapitzaEventBalance.cutoff
  apply (Nat.le_floor_iff (Real.exp_pos _).le).mpr
  have hm : (M : ℝ) ≤ max 1 (M : ℝ) := le_max_right _ _
  have hA : 1 ≤ max 1 (M : ℝ) := le_max_left _ _
  have he := Real.add_one_le_exp (2 * max 1 (M : ℝ))
  linarith

end
end FormalResearch.PositiveAtlas.SourceProfileAtlas
