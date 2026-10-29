import ActualMuntzBound
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-! Genuine complex L2(dx) normalized positive dilation.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
Physical source scale A is not the independent dilation parameter a. -/
set_option autoImplicit false
set_option pp.all true
noncomputable section
namespace ContinuousResearch.PositiveDilation
open MeasureTheory Set Filter
open scoped InnerProductSpace

def positiveMeasure : Measure ℝ := volume.restrict (Ioi 0)
abbrev PositiveL2 := Lp ℂ 2 positiveMeasure

def dilateFunc (a : ℝ) (f : ℝ → ℂ) (x : ℝ) : ℂ := (Real.sqrt a : ℂ)*f (a*x)

theorem positiveMeasure_map_mul {a : ℝ} (ha : 0 < a) :
    positiveMeasure.map (a*·) = ENNReal.ofReal a⁻¹ • positiveMeasure := by
  have hp : (fun x : ℝ => a*x) ⁻¹' Ioi 0 = Ioi 0 := by
    ext x
    simp only [mem_preimage,mem_Ioi,mul_pos_iff_of_pos_left ha]
  have h := Measure.restrict_map (μ:=volume) (s:=Ioi (0:ℝ)) (measurable_const_mul a) measurableSet_Ioi
  rw [hp,Real.map_volume_mul_left ha.ne',Measure.restrict_smul,abs_of_pos (inv_pos.mpr ha)] at h
  exact h.symm

theorem positive_mul_quasi {a : ℝ} (ha : 0 < a) :
    Measure.QuasiMeasurePreserving (a*·) positiveMeasure positiveMeasure := by
  refine ⟨measurable_const_mul a,?_⟩
  rw [positiveMeasure_map_mul ha]
  exact Measure.smul_absolutelyContinuous

theorem dilateFunc_memLp {a : ℝ} (ha : 0 < a) {f : ℝ → ℂ}
    (hf : MemLp f 2 positiveMeasure) : MemLp (dilateFunc a f) 2 positiveMeasure := by
  have hg : MemLp f 2 (positiveMeasure.map (a*·)) := by
    rw [positiveMeasure_map_mul ha]
    exact hf.smul_measure (by simp)
  exact (hg.comp_of_map (measurable_const_mul a).aemeasurable).const_mul _

def dilate (a : ℝ) (ha : 0 < a) (f : PositiveL2) : PositiveL2 :=
  (dilateFunc_memLp ha (Lp.memLp f)).toLp (dilateFunc a f)

theorem dilate_ae (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    dilate a ha f =ᵐ[positiveMeasure] dilateFunc a f :=
  (dilateFunc_memLp ha (Lp.memLp f)).coeFn_toLp

theorem norm_sq_integral (f : PositiveL2) :
    ‖f‖^2 = ∫ x, ‖f x‖^2 ∂positiveMeasure := by
  have h : ((∫ x, ‖f x‖^2 ∂positiveMeasure : ℝ) : ℂ) = ((‖f‖^2 : ℝ) : ℂ) := by
    calc
      _ = ∫ x, ((‖f x‖^2 : ℝ) : ℂ) ∂positiveMeasure := integral_complex_ofReal.symm
      _ = ⟪f,f⟫_ℂ := by
        rw [L2.inner_def]
        congr 1
        funext x
        simpa only [Complex.ofReal_pow] using (inner_self_eq_norm_sq_to_K (𝕜:=ℂ) (f x)).symm
      _ = _ := by
        convert! (inner_self_eq_norm_sq_to_K (𝕜:=ℂ) f) using 1
        norm_cast
  exact (Complex.ofReal_injective h).symm

theorem dilate_norm_sq (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    ‖dilate a ha f‖^2 = ‖f‖^2 := by
  rw [norm_sq_integral]
  have he : (fun x => ‖dilate a ha f x‖^2) =ᵐ[positiveMeasure]
      (fun x => a*‖f (a*x)‖^2) := by
    filter_upwards [dilate_ae a ha f] with x hx
    rw [hx,dilateFunc,norm_mul,Complex.norm_real,Real.norm_eq_abs,
      abs_of_nonneg (Real.sqrt_nonneg a),mul_pow,Real.sq_sqrt ha.le]
  rw [integral_congr_ae he,integral_const_mul]
  change a*(∫ x in Ioi 0, ‖f (a*x)‖^2) = _
  rw [integral_comp_mul_left_Ioi (fun x => ‖f x‖^2) 0 ha,mul_zero,smul_eq_mul,
    ←mul_assoc,mul_inv_cancel₀ ha.ne',one_mul]
  exact (norm_sq_integral f).symm

theorem dilate_norm (a : ℝ) (ha : 0 < a) (f : PositiveL2) : ‖dilate a ha f‖ = ‖f‖ := by
  nlinarith [dilate_norm_sq a ha f,norm_nonneg (dilate a ha f),norm_nonneg f]

theorem dilate_one (f : PositiveL2) : dilate 1 (by norm_num) f = f := by
  apply Lp.ext
  filter_upwards [dilate_ae 1 (by norm_num) f] with x hx
  simpa only [dilateFunc,Real.sqrt_one,Complex.ofReal_one,one_mul] using hx

theorem dilate_comp {a b : ℝ} (ha : 0 < a) (hb : 0 < b) (f : PositiveL2) :
    dilate a ha (dilate b hb f) = dilate (a*b) (mul_pos ha hb) f := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (dilate b hb f),
    (positive_mul_quasi ha).ae_eq_comp (dilate_ae b hb f),
    dilate_ae (a*b) (mul_pos ha hb) f] with x hx hy hz
  dsimp only [Function.comp_apply] at hy
  rw [hx,hz,dilateFunc]
  rw [hy,dilateFunc,←mul_assoc,←Complex.ofReal_mul,←Real.sqrt_mul ha.le]
  congr 2
  ring

theorem dilate_inverse {a : ℝ} (ha : 0 < a) (f : PositiveL2) :
    dilate a⁻¹ (inv_pos.mpr ha) (dilate a ha f) = f := by
  have h := dilate_comp (inv_pos.mpr ha) ha f
  simpa only [inv_mul_cancel₀ ha.ne',dilate_one] using h

theorem dilate_add {a : ℝ} (ha : 0 < a) (f g : PositiveL2) :
    dilate a ha (f+g) = dilate a ha f + dilate a ha g := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (f+g),dilate_ae a ha f,dilate_ae a ha g,
    Lp.coeFn_add (dilate a ha f) (dilate a ha g),
    (positive_mul_quasi ha).ae_eq_comp (Lp.coeFn_add f g)] with x hfg hf hg hadd hp
  dsimp only [Pi.add_apply,Function.comp_apply] at hadd hp
  rw [hfg,hadd,hf,hg,dilateFunc,dilateFunc,dilateFunc,hp]
  exact mul_add _ _ _

theorem dilate_smul {a : ℝ} (ha : 0 < a) (c : ℂ) (f : PositiveL2) :
    dilate a ha (c • f) = c • dilate a ha f := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (c • f),dilate_ae a ha f,
    Lp.coeFn_smul c (dilate a ha f),(positive_mul_quasi ha).ae_eq_comp (Lp.coeFn_smul c f)]
    with x hcf hf hsmul hp
  dsimp only [Pi.smul_apply,Function.comp_apply] at hsmul hp
  rw [hcf,hsmul,hf,dilateFunc,dilateFunc,hp]
  simp only [smul_eq_mul]
  ring

def dilationIsometry (a : ℝ) (ha : 0 < a) : PositiveL2 →ₗᵢ[ℂ] PositiveL2 where
  toFun := dilate a ha
  map_add' := dilate_add ha
  map_smul' := dilate_smul ha
  norm_map' := dilate_norm a ha

def dilationEquiv (a : ℝ) (ha : 0 < a) : PositiveL2 ≃ₗᵢ[ℂ] PositiveL2 :=
  { dilationIsometry a ha with
    invFun := dilate a⁻¹ (inv_pos.mpr ha)
    left_inv := dilate_inverse ha
    right_inv := fun f => by
      change dilate a ha (dilate a⁻¹ (inv_pos.mpr ha) f) = f
      simpa only [inv_inv] using dilate_inverse (inv_pos.mpr ha) f }

end ContinuousResearch.PositiveDilation
