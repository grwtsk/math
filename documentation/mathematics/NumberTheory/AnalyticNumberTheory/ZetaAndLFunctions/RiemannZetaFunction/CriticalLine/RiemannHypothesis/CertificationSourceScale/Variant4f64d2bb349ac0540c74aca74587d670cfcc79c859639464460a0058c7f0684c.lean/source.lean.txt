-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Quantity.Variant34b4feec78fd1eee739cdc33357eef104736293582d39f68ce311c8e60392b28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34b4feec78fd1eee739cdc33357eef104736293582d39f68ce311c8e60392b28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Quantity.Variant34b4feec78fd1eee739cdc33357eef104736293582d39f68ce311c8e60392b28","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"34b4feec78fd1eee739cdc33357eef104736293582d39f68ce311c8e60392b28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/PositiveAtlas/CertificationSourceScale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.CertificationEquivalence
import FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction

/-!
# Minimal source-scale certificate charts with native signed readouts

For all real scales `A ≥ 1`, the encodings `s = (A²)⁻¹` and `t = A²` have
exact square-root reconstruction on their actual carriers. The independently
specified certificate family includes the admissible `s` coordinate, the actual
source quadratic value, compensated source sum, combined terminal work and its
full signed terminal expression with the native quadratic event contribution.
Both chart representations are minimal, and their unique comparison preserves
every readout. No boundedness assumption, arithmetic witness or extension to
`s = 0` is supplied by this change of encoding.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Quantity.Variant34b4feec78fd1eee739cdc33357eef104736293582d39f68ce311c8e60392b28

noncomputable section

namespace FormalResearch.PositiveAtlas.CertificationSourceScale

open FormalResearch.RiemannHypothesis
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open SourcePairing SourceKapitzaCompensatedReadout SourceKapitzaEventBalance Realization

universe c

/-- Physical source scales satisfying the admissibility condition `1 ≤ A`. -/
abbrev Scale := {A : ℝ // 1 ≤ A}
/-- Positive small-chart coordinates bounded above by one. -/
abbrev SmallCoordinate := {s : ℝ // 0 < s ∧ s ≤ 1}

/-- Squaring is an actual equivalence on the nonnegative admissible scale domain. -/
def squareEquiv : Scale ≃ Scale where
  toFun A := ⟨A.1 ^ 2, one_le_pow₀ A.2⟩
  invFun t := ⟨Real.sqrt t.1, Real.one_le_sqrt.mpr t.2⟩
  left_inv A := by
    apply Subtype.ext
    exact Real.sqrt_sq (zero_le_one.trans A.2)
  right_inv t := by
    apply Subtype.ext
    exact Real.sq_sqrt (zero_le_one.trans t.2)

/-- The two chart domains are related by reciprocal coordinates. -/
def reciprocalEquiv : Scale ≃ SmallCoordinate where
  toFun t := ⟨t.1⁻¹, inv_pos.mpr (zero_lt_one.trans_le t.2), inv_le_one_of_one_le₀ t.2⟩
  invFun s := ⟨s.1⁻¹, (one_le_inv₀ s.2.1).mpr s.2.2⟩
  left_inv t := Subtype.ext (inv_inv t.1)
  right_inv s := Subtype.ext (inv_inv s.1)

/-- The source coordinate is exactly `s = A⁻²` in the displayed square convention. -/
def smallScaleEquiv : Scale ≃ SmallCoordinate := squareEquiv.trans reciprocalEquiv

theorem smallScaleEquiv_value (A : Scale) : (smallScaleEquiv A).1 = (A.1 ^ 2)⁻¹ := rfl

theorem smallScaleEquiv_reconstruct_value (s : SmallCoordinate) :
    (smallScaleEquiv.symm s).1 = (Real.sqrt s.1)⁻¹ := by
  exact Real.sqrt_inv s.1

/-- The independent native certificate contains heterogeneous coordinate and
signed scalar observations. -/
inductive Quantity
  | coordinate
  | quadratic
  | compensated
  | terminal
  | fullTerminal
  deriving DecidableEq

/-- The actual coordinate and four real certificate readouts of an admissible source scale. -/
abbrev family : CertificateFamily Scale Quantity where
  value
    | .coordinate => SmallCoordinate
    | .quadratic | .compensated | .terminal | .fullTerminal => ℝ
  observe
    | .coordinate => smallScaleEquiv
    | .quadratic => fun A => sourceQuadraticValue explicitSecondDerivative A.1
    | .compensated => fun A => compensatedSourceSum A.1
    | .terminal => fun A => combinedTerminalWork A.1
    | .fullTerminal => fun A => combinedTerminalWork A.1 + totalQuadraticWork A.1

/-- The bounded chart reconstructs the full independently declared family. -/
abbrev smallRepresentation : SufficientRepresentation family where
  carrier := SmallCoordinate
  compress := smallScaleEquiv
  recover i s := family.observe i (smallScaleEquiv.symm s)
  recover_compress i A := by
    rw [smallScaleEquiv.symm_apply_apply]

/-- Minimality follows from the admitted coordinate observation, at an
arbitrary independently supplied competitor universe. -/
theorem smallRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, c} smallRepresentation := by
  intro R
  refine ⟨R.recover .coordinate, ?_⟩
  funext A
  exact (R.recover_compress .coordinate A).symm

/-- Exact scale reconstruction from the small chart, with minimality for this certificate family. -/
abbrev smallQuine : StructuralQuine.{0, 0, 0, 0, c} family where
  quotient := smallRepresentation
  reconstruct := smallScaleEquiv.symm
  «section» := smallScaleEquiv.apply_symm_apply
  reconstruct_equivalent A i := by
    rw [smallScaleEquiv.symm_apply_apply]
  minimal := smallRepresentation_minimal

/-- The unbounded chart uses `t = A²`, with its actual admissible domain. -/
abbrev largeRepresentation : SufficientRepresentation family where
  carrier := Scale
  compress := squareEquiv
  recover i t := family.observe i (squareEquiv.symm t)
  recover_compress i A := by
    rw [squareEquiv.symm_apply_apply]

theorem largeRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, c} largeRepresentation := by
  intro R
  refine ⟨fun x => reciprocalEquiv.symm (R.recover .coordinate x), ?_⟩
  funext A
  rw [Function.comp_apply, R.recover_compress]
  exact (reciprocalEquiv.symm_apply_apply (squareEquiv A)).symm

/-- Exact scale reconstruction from the square chart, with minimality for this certificate
family. -/
abbrev largeQuine : StructuralQuine.{0, 0, 0, 0, c} family where
  quotient := largeRepresentation
  reconstruct := squareEquiv.symm
  «section» := squareEquiv.apply_symm_apply
  reconstruct_equivalent A i := by
    rw [squareEquiv.symm_apply_apply]
  minimal := largeRepresentation_minimal

/-- The abstract unique comparison is instantiated as the actual `t = 1/s`
coordinate transition. -/
theorem comparison_eq_reciprocal :
    StructuralQuine.comparison smallQuine largeQuine = reciprocalEquiv.symm := by
  apply Equiv.ext
  intro s
  obtain ⟨A, rfl⟩ := smallQuine.{0}.compress_surjective s
  rw [StructuralQuine.comparison_compress]
  exact (reciprocalEquiv.symm_apply_apply (squareEquiv A)).symm

/-- Every independently specified decoder agrees on the actual overlap. -/
theorem decoder_agreement (i : Quantity) (s : SmallCoordinate) :
    largeRepresentation.recover i (reciprocalEquiv.symm s) =
      smallRepresentation.recover i s := by
  rw [← comparison_eq_reciprocal]
  exact StructuralQuine.comparison_recover smallQuine largeQuine i s

theorem quadratic_decoder_agreement (s : SmallCoordinate) :
    sourceQuadraticValue explicitSecondDerivative (Real.sqrt (s.1⁻¹)) =
      sourceQuadraticValue explicitSecondDerivative ((Real.sqrt s.1)⁻¹) := by
  rw [Real.sqrt_inv]

theorem compensated_decoder_agreement (s : SmallCoordinate) :
    compensatedSourceSum (Real.sqrt (s.1⁻¹)) = compensatedSourceSum ((Real.sqrt s.1)⁻¹) := by
  rw [Real.sqrt_inv]

theorem terminal_decoder_agreement (s : SmallCoordinate) :
    combinedTerminalWork (Real.sqrt (s.1⁻¹)) = combinedTerminalWork ((Real.sqrt s.1)⁻¹) := by
  rw [Real.sqrt_inv]

/-- The full terminal expression is transported as one signed observable. -/
theorem full_terminal_decoder_agreement (s : SmallCoordinate) :
    combinedTerminalWork (Real.sqrt (s.1⁻¹)) +
        totalQuadraticWork (Real.sqrt (s.1⁻¹)) =
      combinedTerminalWork ((Real.sqrt s.1)⁻¹) +
        totalQuadraticWork ((Real.sqrt s.1)⁻¹) := by
  rw [Real.sqrt_inv]

/-- Apply the exact native compensated identity to the reconstructed chart
state; the full event contribution is retained in the left-hand observable. -/
theorem full_terminal_eq_compensated (s : SmallCoordinate) :
    smallRepresentation.recover .fullTerminal s =
      smallRepresentation.recover .compensated s - (1 : ℝ) +
        quadratureError (smallScaleEquiv.symm s).1 :=
  SourceKapitzaSignedReduction.combined_terminal_eq_compensated
    (smallScaleEquiv.symm s).1 (smallScaleEquiv.symm s).2

/-- An admitted physical-scale evolution evaluates the actual source at the
new scale, including its changing arithmetic inventory. -/
def scaleStep (ρ A : Scale) : Scale :=
  ⟨ρ.1 * A.1, one_le_mul_of_one_le_of_one_le ρ.2 A.2⟩

/-- Multiply a large-chart coordinate by the square of the admissible scale factor. -/
def largeStep (ρ : Scale) (t : Scale) : Scale :=
  ⟨ρ.1 ^ 2 * t.1, one_le_mul_of_one_le_of_one_le (one_le_pow₀ ρ.2) t.2⟩

/-- Decode a small coordinate, evolve its physical scale, and encode the resulting coordinate. -/
def smallStep (ρ : Scale) (s : SmallCoordinate) : SmallCoordinate :=
  smallScaleEquiv (scaleStep ρ (smallScaleEquiv.symm s))

theorem largeStep_compress (ρ A : Scale) :
    largeStep ρ (largeRepresentation.compress A) =
      largeRepresentation.compress (scaleStep ρ A) := by
  apply Subtype.ext
  change ρ.1 ^ 2 * A.1 ^ 2 = (ρ.1 * A.1) ^ 2
  exact (mul_pow ρ.1 A.1 2).symm

theorem smallStep_compress (ρ A : Scale) :
    smallStep ρ (smallRepresentation.compress A) =
      smallRepresentation.compress (scaleStep ρ A) := by
  change smallScaleEquiv (scaleStep ρ (smallScaleEquiv.symm (smallScaleEquiv A))) = _
  rw [smallScaleEquiv.symm_apply_apply]

/-- The actual bounded-coordinate evolution is `s ↦ ρ⁻² s`. -/
theorem smallStep_value (ρ : Scale) (s : SmallCoordinate) :
    (smallStep ρ s).1 = (ρ.1 ^ 2)⁻¹ * s.1 := by
  change ((ρ.1 * Real.sqrt (s.1⁻¹)) ^ 2)⁻¹ = _
  rw [mul_pow, Real.sq_sqrt (inv_nonneg.mpr s.2.1.le), mul_inv_rev, inv_inv]
  exact mul_comm _ _

/-- Coherent chart comparison also intertwines this independently specified
physical evolution; its scalar arithmetic readouts are re-evaluated, not frozen. -/
theorem transition_evolution (ρ : Scale) (s : SmallCoordinate) :
    reciprocalEquiv.symm (smallStep ρ s) = largeStep ρ (reciprocalEquiv.symm s) := by
  obtain ⟨A, rfl⟩ := smallQuine.{0}.compress_surjective s
  rw [smallStep_compress]
  change reciprocalEquiv.symm (reciprocalEquiv (squareEquiv (scaleStep ρ A))) =
    largeStep ρ (reciprocalEquiv.symm (reciprocalEquiv (squareEquiv A)))
  rw [reciprocalEquiv.symm_apply_apply, reciprocalEquiv.symm_apply_apply]
  exact (largeStep_compress ρ A).symm

theorem evolved_decoder_agreement (ρ : Scale) (i : Quantity) (s : SmallCoordinate) :
    largeRepresentation.recover i (largeStep ρ (reciprocalEquiv.symm s)) =
      smallRepresentation.recover i (smallStep ρ s) := by
  rw [← transition_evolution]
  exact decoder_agreement i (smallStep ρ s)

/-- A uniform lower witness for this chart is exactly a witness for the full
native real-parameter quadratic value, with no natural-cutoff restriction. -/
theorem native_lower_bound_iff (L : ℝ) :
    (∀ A : ℝ, 1 ≤ A → L ≤ sourceQuadraticValue explicitSecondDerivative A) ↔
      ∀ s : SmallCoordinate, L ≤ smallRepresentation.recover .quadratic s := by
  constructor
  · intro h s
    exact h (smallScaleEquiv.symm s).1 (smallScaleEquiv.symm s).2
  · intro h A hA
    have hs := h (smallScaleEquiv ⟨A, hA⟩)
    simpa only [smallRepresentation, smallScaleEquiv.symm_apply_apply, family] using hs

/-- The same exact change of encoding retains the combined signed terminal
budget as one quantity; it does not split cancelling components. -/
theorem native_terminal_budget_iff (B : ℝ) :
    (∀ A : ℝ, 1 ≤ A → combinedTerminalWork A ≤ B) ↔
      ∀ s : SmallCoordinate, smallRepresentation.recover .terminal s ≤ B := by
  constructor
  · intro h s
    exact h (smallScaleEquiv.symm s).1 (smallScaleEquiv.symm s).2
  · intro h A hA
    have hs := h (smallScaleEquiv ⟨A, hA⟩)
    simpa only [smallRepresentation, smallScaleEquiv.symm_apply_apply, family] using hs

/-- The actual source-storage consumer caps the combined expression `W + Q`.
This equivalence keeps that quantity together at every real physical scale. -/
theorem native_full_terminal_budget_iff (B : ℝ) :
    (∀ A : ℝ, 1 ≤ A → combinedTerminalWork A + totalQuadraticWork A ≤ B) ↔
      ∀ s : SmallCoordinate, smallRepresentation.recover .fullTerminal s ≤ B := by
  constructor
  · intro h s
    exact h (smallScaleEquiv.symm s).1 (smallScaleEquiv.symm s).2
  · intro h A hA
    have hs := h (smallScaleEquiv ⟨A, hA⟩)
    simpa only [smallRepresentation, smallScaleEquiv.symm_apply_apply, family] using hs

/-- The infinite-scale boundary is outside these finite-scale reconstruction
domains; a readout extension at zero is a further mathematical obligation. -/
theorem source_coordinate_ne_zero (A : Scale) : (smallScaleEquiv A).1 ≠ 0 :=
  ne_of_gt (smallScaleEquiv A).2.1

/-- Physical tail radii reverse order in the bounded source coordinate. -/
theorem scale_le_iff_smallCoordinate_le (R A : Scale) :
    R.1 ≤ A.1 ↔ (smallScaleEquiv A).1 ≤ (smallScaleEquiv R).1 := by
  change R.1 ≤ A.1 ↔ (A.1 ^ 2)⁻¹ ≤ (R.1 ^ 2)⁻¹
  rw [inv_le_inv₀ (pow_pos (zero_lt_one.trans_le A.2) 2)
    (pow_pos (zero_lt_one.trans_le R.2) 2),
    sq_le_sq₀ (zero_le_one.trans R.2) (zero_le_one.trans A.2)]

theorem decoded_tail_iff (R : Scale) (s : SmallCoordinate) :
    R.1 ≤ (smallScaleEquiv.symm s).1 ↔ s.1 ≤ (R.1 ^ 2)⁻¹ := by
  have h := scale_le_iff_smallCoordinate_le R (smallScaleEquiv.symm s)
  simpa only [smallScaleEquiv.apply_symm_apply, smallScaleEquiv_value] using h

/-- The actual tail consumer can use a finite physical radius `R`; it does not
need a cap on every smaller scale. The chart domain is exactly `s ≤ R⁻²`. -/
theorem native_full_terminal_tail_budget_iff (R B : ℝ) (hR : 1 ≤ R) :
    (∀ A : ℝ, R ≤ A → combinedTerminalWork A + totalQuadraticWork A ≤ B) ↔
      ∀ s : SmallCoordinate, s.1 ≤ (R ^ 2)⁻¹ →
        smallRepresentation.recover .fullTerminal s ≤ B := by
  constructor
  · intro h s hs
    exact h (smallScaleEquiv.symm s).1 ((decoded_tail_iff ⟨R, hR⟩ s).mpr hs)
  · intro h A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have hs : (smallScaleEquiv ⟨A, hA⟩).1 ≤ (R ^ 2)⁻¹ :=
      (scale_le_iff_smallCoordinate_le ⟨R, hR⟩ ⟨A, hA⟩).mp hRA
    have hb := h (smallScaleEquiv ⟨A, hA⟩) hs
    simpa only [smallRepresentation, smallScaleEquiv.symm_apply_apply, family] using hb

end FormalResearch.PositiveAtlas.CertificationSourceScale
