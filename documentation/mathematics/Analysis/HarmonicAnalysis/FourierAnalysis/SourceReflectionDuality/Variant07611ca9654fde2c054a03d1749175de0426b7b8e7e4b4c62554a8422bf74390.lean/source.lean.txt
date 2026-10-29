-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ComplexL2.Variantf7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.ComplexL2.Variantf7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"f7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/operator/partial-translation/SourceReflectionDuality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.LpSpace
import Mathlib.MeasureTheory.Group.Arithmetic
import Mathlib.MeasureTheory.Function.LpSeminorm.Monotonicity
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Tactic

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ComplexL2.Variantf7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceReflectionDuality
open MeasureTheory FourierTransform
open scoped FourierTransform ComplexInnerProductSpace InnerProductSpace
abbrev ComplexL2 := Lp ℂ 2 (volume : Measure ℝ)

/-- Unit-valued representative of sign; its value at the null frequency0 is immaterial. -/
def signSymbol (ξ : ℝ) : ℂ := if ξ < 0 then -1 else 1

theorem signSymbol_measurable : Measurable signSymbol :=
  Measurable.ite measurableSet_Iio measurable_const measurable_const

theorem signSymbol_norm (ξ : ℝ) : ‖signSymbol ξ‖ = 1 := by
  unfold signSymbol
  split_ifs <;> simp

private theorem multiply_memLp (φ : ℝ → ℂ) (hm : Measurable φ)
    (hφ : ∀ ξ, ‖φ ξ‖ = 1) (f : ComplexL2) :
    MemLp (fun ξ => φ ξ * f ξ) 2 (volume : Measure ℝ) :=
  (Lp.memLp f).of_le (hm.aestronglyMeasurable.mul (Lp.aestronglyMeasurable f))
    (Filter.Eventually.of_forall (fun ξ => by simp [hφ]))

private def multiply (φ : ℝ → ℂ) (hm : Measurable φ)
    (hφ : ∀ ξ, ‖φ ξ‖ = 1) (f : ComplexL2) : ComplexL2 :=
  (multiply_memLp φ hm hφ f).toLp (fun ξ => φ ξ * f ξ)

private theorem multiply_ae (φ : ℝ → ℂ) (hm : Measurable φ)
    (hφ : ∀ ξ, ‖φ ξ‖ = 1) (f : ComplexL2) :
    multiply φ hm hφ f =ᵐ[volume] fun ξ => φ ξ * f ξ :=
  (multiply_memLp φ hm hφ f).coeFn_toLp

private def multiplyLI (φ : ℝ → ℂ) (hm : Measurable φ)
    (hφ : ∀ ξ, ‖φ ξ‖ = 1) : ComplexL2 →ₗᵢ[ℂ] ComplexL2 where
  toFun := multiply φ hm hφ
  map_add' f g := by
    apply Lp.ext
    filter_upwards [multiply_ae φ hm hφ (f+g), multiply_ae φ hm hφ f,
      multiply_ae φ hm hφ g, Lp.coeFn_add f g,
      Lp.coeFn_add (multiply φ hm hφ f) (multiply φ hm hφ g)] with ξ hfg hf hg ha hb
    simp only [hfg, hf, hg, ha, hb, Pi.add_apply]
    ring
  map_smul' a f := by
    apply Lp.ext
    filter_upwards [multiply_ae φ hm hφ (a • f), multiply_ae φ hm hφ f,
      Lp.coeFn_smul a f, Lp.coeFn_smul a (multiply φ hm hφ f)] with ξ haf hf hs ht
    simp only [haf, hf, hs, ht, Pi.smul_apply, smul_eq_mul, RingHom.id_apply]
    ring
  norm_map' f := by
    change ‖(multiply_memLp φ hm hφ f).toLp _‖ = ‖f‖
    rw [Lp.norm_toLp, Lp.norm_def]
    congr 1
    apply eLpNorm_congr_norm_ae
    exact Filter.Eventually.of_forall (fun ξ => by simp [hφ])

/-- The actual pointwise sign-frequency multiplication on complex L². -/
def signMultiplierLI : ComplexL2 →ₗᵢ[ℂ] ComplexL2 :=
  multiplyLI signSymbol signSymbol_measurable signSymbol_norm

theorem signMultiplierLI_coe_ae (f : ComplexL2) :
    signMultiplierLI f =ᵐ[volume] fun ξ => signSymbol ξ * f ξ :=
  multiply_ae signSymbol signSymbol_measurable signSymbol_norm f

theorem signMultiplier_involutive (f : ComplexL2) :
    signMultiplierLI (signMultiplierLI f) = f := by
  apply Lp.ext
  filter_upwards [signMultiplierLI_coe_ae (signMultiplierLI f),signMultiplierLI_coe_ae f] with ξ h1 h2
  rw [h1,h2]
  unfold signSymbol
  split_ifs <;> ring

/-- The sign multiplier is an actual unitary equivalence with itself as inverse. -/
def signMultiplier : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2 :=
  LinearIsometryEquiv.ofSurjective signMultiplierLI
    (fun f => ⟨signMultiplierLI f, signMultiplier_involutive f⟩)

theorem signMultiplier_coe_ae (f : ComplexL2) :
    signMultiplier f =ᵐ[volume] fun ξ => signSymbol ξ * f ξ :=
  signMultiplierLI_coe_ae f

/-- Spatial reflection on the actual Lebesgue complex L² space. -/
def reflectionLI : ComplexL2 →ₗᵢ[ℂ] ComplexL2 :=
  Lp.compMeasurePreservingₗᵢ ℂ (LinearIsometryEquiv.neg ℝ (E:=ℝ))
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving

theorem reflectionLI_coe_ae (f : ComplexL2) :
    reflectionLI f =ᵐ[volume] fun x => f (-x) :=
  Lp.coeFn_compMeasurePreserving f (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving

theorem reflectionLI_involutive (f : ComplexL2) : reflectionLI (reflectionLI f) = f := by
  apply Lp.ext
  filter_upwards [reflectionLI_coe_ae (reflectionLI f),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (reflectionLI_coe_ae f)] with x h1 h2
  change (reflectionLI f) (-x) = f (-(-x)) at h2
  rw [h1, h2, neg_neg]

def reflection : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2 :=
  LinearIsometryEquiv.ofSurjective reflectionLI
    (fun f => ⟨reflectionLI f,reflectionLI_involutive f⟩)

theorem reflection_coe_ae (f : ComplexL2) :
    reflection f =ᵐ[volume] fun x => f (-x) := reflectionLI_coe_ae f

/-- Reflection acts on Schwartz functions exactly as on their L² classes. -/
theorem reflection_toLp (f : SchwartzMap ℝ ℂ) :
    reflection (f.toLp 2) =
      (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (D:=ℝ) (E:=ℝ) (F:=ℂ) (LinearIsometryEquiv.neg ℝ (E:=ℝ)).toContinuousLinearEquiv f).toLp 2 := by
  apply Lp.ext
  filter_upwards [reflection_coe_ae (f.toLp 2),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (SchwartzMap.coeFn_toLp f 2 (volume : Measure ℝ)),
    SchwartzMap.coeFn_toLp
      (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (D:=ℝ) (E:=ℝ) (F:=ℂ) (LinearIsometryEquiv.neg ℝ (E:=ℝ)).toContinuousLinearEquiv f) 2]
      with x hR hf hg
  change (f.toLp 2) (-x) = f (-x) at hf
  rw [hR, hf, hg]
  rfl

/-- The concrete L² Fourier transform intertwines actual spatial and frequency reflection. -/
theorem fourier_reflection (f : ComplexL2) : 𝓕 (reflection f) = reflection (𝓕 f) := by
  let P := fun f : ComplexL2 => 𝓕 (reflection f) = reflection (𝓕 f)
  apply DenseRange.induction_on (p:=P)
    (SchwartzMap.denseRange_toLpCLM (E:=ℝ) (F:=ℂ) (p:=2)
      (μ:=volume) ENNReal.ofNat_ne_top) f
  · exact isClosed_eq
      ((Lp.fourierTransformₗᵢ ℝ ℂ).continuous.comp reflection.continuous)
      (reflection.continuous.comp (Lp.fourierTransformₗᵢ ℝ ℂ).continuous)
  intro φ
  change 𝓕 (reflection (φ.toLp 2)) = reflection (𝓕 (φ.toLp 2))
  rw [reflection_toLp, SchwartzMap.toLp_fourier_eq, SchwartzMap.toLp_fourier_eq,
    reflection_toLp]
  congr 1
  ext ξ
  change 𝓕 ((φ : ℝ → ℂ) ∘ (LinearIsometryEquiv.neg ℝ)) ξ =
    𝓕 (φ : ℝ → ℂ) ((LinearIsometryEquiv.neg ℝ) ξ)
  exact Real.fourier_comp_linearIsometry (LinearIsometryEquiv.neg ℝ) φ ξ

theorem signSymbol_neg {ξ : ℝ} (hξ : ξ ≠ 0) : signSymbol (-ξ) = -signSymbol ξ := by
  unfold signSymbol
  rcases lt_or_gt_of_ne hξ with hn | hp
  · simp only [if_neg (by linarith : ¬ -ξ < 0), if_pos hn]
    norm_num
  · simp only [if_pos (by linarith : -ξ < 0), if_neg (not_lt.mpr hp.le)]

/-- Reflection reverses the actual frequency sign multiplier, modulo only the null point0. -/
theorem reflection_signMultiplier (f : ComplexL2) :
    reflection (signMultiplier f) = -signMultiplier (reflection f) := by
  apply Lp.ext
  have hzero : ∀ᵐ ξ : ℝ ∂volume, ξ ≠ 0 := by rw [ae_iff]; simp
  filter_upwards [reflection_coe_ae (signMultiplier f),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (signMultiplier_coe_ae f),signMultiplier_coe_ae (reflection f),reflection_coe_ae f,
    Lp.coeFn_neg (signMultiplier (reflection f)),hzero] with ξ hR hM hMR hRf hn hξ
  change (signMultiplier f) (-ξ) = signSymbol (-ξ) * f (-ξ) at hM
  change (-signMultiplier (reflection f)) ξ = -(signMultiplier (reflection f) ξ) at hn
  rw [hR,hM,hn,hMR,hRf]
  rw [signSymbol_neg hξ]
  ring

/-- The actual standard Fourier sign duality, on the whole complex Lebesgue L² space. -/
def signFourierDuality : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2 :=
  ((Lp.fourierTransformₗᵢ ℝ ℂ).trans signMultiplier).trans (Lp.fourierTransformₗᵢ ℝ ℂ).symm

theorem duality_fourier (f : ComplexL2) : 𝓕 (signFourierDuality f) = signMultiplier (𝓕 f) := by
  simp [signFourierDuality, LinearIsometryEquiv.trans_apply, FourierTransform.fourier]

theorem duality_fourier_coe_ae (f : ComplexL2) :
    ((𝓕 (signFourierDuality f) : ComplexL2) : ℝ → ℂ) =ᵐ[volume] fun ξ => signSymbol ξ * (𝓕 f : ComplexL2) ξ := by
  rw [duality_fourier]
  exact signMultiplier_coe_ae (𝓕 f)

theorem duality_involutive (f : ComplexL2) : signFourierDuality (signFourierDuality f) = f := by
  apply (Lp.fourierTransformₗᵢ ℝ ℂ).injective
  change 𝓕 (signFourierDuality (signFourierDuality f)) = 𝓕 f
  rw [duality_fourier,duality_fourier]
  exact signMultiplier_involutive (𝓕 f)

/-- Exact spatial reflection anti-commutation of the concrete Fourier duality. -/
theorem reflection_duality_anticommute (f : ComplexL2) :
    reflection (signFourierDuality f) = -signFourierDuality (reflection f) := by
  apply (Lp.fourierTransformₗᵢ ℝ ℂ).injective
  change 𝓕 (reflection (signFourierDuality f)) = 𝓕 (-signFourierDuality (reflection f))
  rw [fourier_reflection,duality_fourier,reflection_signMultiplier]
  rw [FourierTransform.fourier_neg, duality_fourier, fourier_reflection]

/-- Literal right translation on the actual complex Lebesgue L² space. -/
def translationLI (u : ℝ) : ComplexL2 →ₗᵢ[ℂ] ComplexL2 :=
  Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x-u) (measurePreserving_sub_right volume u)

theorem translationLI_coe_ae (u : ℝ) (f : ComplexL2) :
    translationLI u f =ᵐ[volume] fun x => f (x-u) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_sub_right volume u)

theorem translationLI_inverse (u : ℝ) (f : ComplexL2) :
    translationLI u (translationLI (-u) f) = f := by
  apply Lp.ext
  filter_upwards [translationLI_coe_ae u (translationLI (-u) f),
    (measurePreserving_sub_right volume u).quasiMeasurePreserving.ae
      (translationLI_coe_ae (-u) f)] with x h1 h2
  change (translationLI (-u) f) (x-u) = f ((x-u)-(-u)) at h2
  rw [h1,h2]
  congr 1
  ring

def translation (u : ℝ) : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2 :=
  LinearIsometryEquiv.ofSurjective (translationLI u)
    (fun f => ⟨translationLI (-u) f,translationLI_inverse u f⟩)

theorem translation_coe_ae (u : ℝ) (f : ComplexL2) :
    translation u f =ᵐ[volume] fun x => f (x-u) := translationLI_coe_ae u f

/-- Explicitly named standard exp(-2πixξ) sign orientation. -/
def standardSignDuality : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2 := signFourierDuality

/-- Source-angular exp(+iωx) sign orientation; frequency conversion supplies a minus. -/
def angularSignDuality : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2 :=
  standardSignDuality.trans (LinearIsometryEquiv.neg ℂ)

theorem angular_duality_eq_neg_standard (f : ComplexL2) :
    angularSignDuality f = -standardSignDuality f := rfl

theorem angular_duality_involutive (f : ComplexL2) :
    angularSignDuality (angularSignDuality f) = f := by
  change -signFourierDuality (-signFourierDuality f) = f
  rw [map_neg,duality_involutive,neg_neg]

theorem angular_reflection_duality_anticommute (f : ComplexL2) :
    reflection (angularSignDuality f) = -angularSignDuality (reflection f) := by
  change reflection (-signFourierDuality f) = -(-signFourierDuality (reflection f))
  rw [map_neg,reflection_duality_anticommute,neg_neg]

theorem stationary_inner_dual (f g : ComplexL2) :
    ⟪signFourierDuality f,signFourierDuality g⟫_ℂ = ⟪f,g⟫_ℂ :=
  signFourierDuality.inner_map_map f g

theorem angular_stationary_inner_dual (f g : ComplexL2) :
    ⟪angularSignDuality f,angularSignDuality g⟫_ℂ = ⟪f,g⟫_ℂ :=
  angularSignDuality.inner_map_map f g

/-- The correct reflected right argument has no additional sign multiplier. -/
theorem reflected_pairing_dual (f g : ComplexL2) :
    ⟪signFourierDuality f,reflection (signFourierDuality g)⟫_ℂ =
      -⟪f,reflection g⟫_ℂ := by
  rw [reflection_duality_anticommute,inner_neg_right,stationary_inner_dual]

theorem angular_reflected_pairing_dual (f g : ComplexL2) :
    ⟪angularSignDuality f,reflection (angularSignDuality g)⟫_ℂ =
      -⟪f,reflection g⟫_ℂ := by
  rw [angular_reflection_duality_anticommute,inner_neg_right,angular_stationary_inner_dual]

/-- Involution plus unitarity gives the actual Hermitian self-adjoint contract. -/
theorem duality_inner_symmetric (f g : ComplexL2) :
    ⟪signFourierDuality f,g⟫_ℂ = ⟪f,signFourierDuality g⟫_ℂ := by
  calc
    _ = ⟪signFourierDuality f,signFourierDuality (signFourierDuality g)⟫_ℂ := by
      rw [duality_involutive]
    _ = _ := stationary_inner_dual _ _

theorem duality_selfAdjoint : IsSelfAdjoint (signFourierDuality.toLinearIsometry.toContinuousLinearMap : ComplexL2 →L[ℂ] ComplexL2) :=
  ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr duality_inner_symmetric

theorem angular_duality_selfAdjoint : IsSelfAdjoint (angularSignDuality.toLinearIsometry.toContinuousLinearMap : ComplexL2 →L[ℂ] ComplexL2) := by
  apply ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr
  intro f g
  calc
    ⟪angularSignDuality f,g⟫_ℂ =
      ⟪angularSignDuality f,angularSignDuality (angularSignDuality g)⟫_ℂ := by
        rw [angular_duality_involutive]
    _ = _ := angular_stationary_inner_dual _ _


/-- Standard Fourier phase associated with the literal right translation. -/
def translationPhase (u ξ : ℝ) : ℂ := Real.fourierChar (-u * ξ)

theorem translationPhase_measurable (u : ℝ) : Measurable (translationPhase u) := by
  unfold translationPhase
  fun_prop

theorem translationPhase_norm (u ξ : ℝ) : ‖translationPhase u ξ‖ = 1 := by
  exact Circle.norm_coe _

def translationPhaseMultiplier (u : ℝ) : ComplexL2 →ₗᵢ[ℂ] ComplexL2 :=
  multiplyLI (translationPhase u) (translationPhase_measurable u) (translationPhase_norm u)

theorem translationPhaseMultiplier_coe_ae (u : ℝ) (f : ComplexL2) :
    translationPhaseMultiplier u f =ᵐ[volume] fun ξ => translationPhase u ξ * f ξ :=
  multiply_ae (translationPhase u) (translationPhase_measurable u) (translationPhase_norm u) f

theorem translation_toLp (u : ℝ) (f : SchwartzMap ℝ ℂ) :
    translation u (f.toLp 2) = (f.compSubConstCLM ℂ u).toLp 2 := by
  apply Lp.ext
  filter_upwards [translation_coe_ae u (f.toLp 2),
    (measurePreserving_sub_right volume u).quasiMeasurePreserving.ae
      (SchwartzMap.coeFn_toLp f 2 (volume : Measure ℝ)),
    SchwartzMap.coeFn_toLp (f.compSubConstCLM ℂ u) 2] with x ht hf hg
  change (f.toLp 2) (x-u) = f (x-u) at hf
  rw [ht,hf,hg]
  rfl

private theorem fourier_translation_function (u : ℝ) (f : ℝ → ℂ) (ξ : ℝ) :
    𝓕 (fun x => f (x-u)) ξ = translationPhase u ξ * 𝓕 f ξ := by
  change VectorFourier.fourierIntegral Real.fourierChar volume (innerₗ ℝ) (fun x => f (x-u)) ξ =
    translationPhase u ξ * VectorFourier.fourierIntegral Real.fourierChar volume (innerₗ ℝ) f ξ
  have h := congrFun (VectorFourier.fourierIntegral_comp_add_right
    Real.fourierChar (volume : Measure ℝ) (innerₗ ℝ) f (-u)) ξ
  simpa only [sub_eq_add_neg, Function.comp_def, innerₗ_apply_apply,
    Real.inner_apply, Circle.smul_def, smul_eq_mul, translationPhase, mul_comm ξ] using h

/-- Concrete L² translation law, extended from Schwartz functions by density. -/
theorem fourier_translation (u : ℝ) (f : ComplexL2) :
    𝓕 (translation u f) = translationPhaseMultiplier u (𝓕 f) := by
  let P := fun f : ComplexL2 =>
    𝓕 (translation u f) = translationPhaseMultiplier u (𝓕 f)
  apply DenseRange.induction_on (p:=P)
    (SchwartzMap.denseRange_toLpCLM (E:=ℝ) (F:=ℂ) (p:=2)
      (μ:=volume) ENNReal.ofNat_ne_top) f
  · exact isClosed_eq
      ((Lp.fourierTransformₗᵢ ℝ ℂ).continuous.comp (translation u).continuous)
      ((translationPhaseMultiplier u).continuous.comp (Lp.fourierTransformₗᵢ ℝ ℂ).continuous)
  intro φ
  change 𝓕 (translation u (φ.toLp 2)) = translationPhaseMultiplier u (𝓕 (φ.toLp 2))
  rw [translation_toLp,SchwartzMap.toLp_fourier_eq,SchwartzMap.toLp_fourier_eq]
  apply Lp.ext
  filter_upwards [SchwartzMap.coeFn_toLp (𝓕 (φ.compSubConstCLM ℂ u)) 2,
    translationPhaseMultiplier_coe_ae u ((𝓕 φ).toLp 2),
    SchwartzMap.coeFn_toLp (𝓕 φ) 2] with ξ h1 h2 h3
  rw [h1,h2,h3]
  exact fourier_translation_function u φ ξ

private theorem phase_sign_commute (u : ℝ) (f : ComplexL2) :
    signMultiplier (translationPhaseMultiplier u f) =
      translationPhaseMultiplier u (signMultiplier f) := by
  apply Lp.ext
  filter_upwards [signMultiplier_coe_ae (translationPhaseMultiplier u f),
    translationPhaseMultiplier_coe_ae u f,
    translationPhaseMultiplier_coe_ae u (signMultiplier f),signMultiplier_coe_ae f]
    with ξ h1 h2 h3 h4
  rw [h1,h2,h3,h4]
  ring

/-- The actual sign Fourier multiplier commutes with actual spatial translations. -/
theorem translation_duality_commute (u : ℝ) (f : ComplexL2) :
    translation u (signFourierDuality f) = signFourierDuality (translation u f) := by
  apply (Lp.fourierTransformₗᵢ ℝ ℂ).injective
  change 𝓕 (translation u (signFourierDuality f)) =
    𝓕 (signFourierDuality (translation u f))
  rw [fourier_translation,duality_fourier,duality_fourier,fourier_translation,
    phase_sign_commute]

theorem angular_translation_duality_commute (u : ℝ) (f : ComplexL2) :
    translation u (angularSignDuality f) = angularSignDuality (translation u f) := by
  change translation u (-signFourierDuality f) = -signFourierDuality (translation u f)
  rw [map_neg,translation_duality_commute]

end FormalResearch.RiemannHypothesis.SourceReflectionDuality
