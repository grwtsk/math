import ReflectedPositivePrimitive
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

/-! Genuine actual reflected second-primitive envelope on its closed physical half-support.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
No arithmetic density, signed witness or RH premise is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourcePrimitiveEnvelope
open MeasureTheory Set
open ContinuousResearch.SourcePositivePrimitive
open ContinuousResearch.ReflectedPositivePrimitive
open FormalResearch.RiemannHypothesis.SourcePairing

def overlapFactor0 (u : ℝ) : ℝ :=
  7*u^8+126*u^7+988*u^6+4344*u^5+11376*u^4+17376*u^3+15808*u^2+8064*u+1792

def overlapFactor1 (u : ℝ) : ℝ :=
  7*u^7+112*u^6+768*u^5+2880*u^4+6144*u^3+6912*u^2+4096*u+1024

def overlapFactor1Prime (u : ℝ) : ℝ :=
  49*u^6+672*u^5+3840*u^4+11520*u^3+18432*u^2+13824*u+4096

theorem overlapFactor0_bound {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapFactor0 u≤622336 := by
  have h0 : 0≤u := hu.1
  have h2 : u≤2 := hu.2
  have hp : overlapFactor0 u≤overlapFactor0 2 := by
    unfold overlapFactor0
    gcongr
  norm_num [overlapFactor0] at hp
  exact hp

theorem overlapFactor1_bound {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapFactor1 u≤164736 := by
  have h0 : 0≤u := hu.1
  have h2 : u≤2 := hu.2
  have hp : overlapFactor1 u≤overlapFactor1 2 := by
    unfold overlapFactor1
    gcongr
  norm_num [overlapFactor1] at hp
  exact hp

theorem overlapFactor1_nonneg {u : ℝ} (hu : 0≤u) :
    0≤overlapFactor1 u ∧ 0≤overlapFactor1Prime u := by
  constructor <;> unfold overlapFactor1 overlapFactor1Prime <;> positivity

/-- The subtractive term is retained before obtaining an upper envelope. -/
theorem overlapPolynomial2_factor (u : ℝ) :
    overlapPolynomial2 u=(2-u)^7*(8*u*overlapFactor1 u-
      (2-u)*(overlapFactor1 u+u*overlapFactor1Prime u))/90090 := by
  unfold overlapPolynomial2 overlapFactor1 overlapFactor1Prime
  ring

theorem overlapPolynomial0_upper {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapPolynomial0 u≤(128/315:ℝ)*(2-u)^9 := by
  rw [overlapPolynomial0_factor]
  change (2-u)^9*overlapFactor0 u/1531530≤_
  have hp := mul_le_mul_of_nonneg_left (overlapFactor0_bound hu)
    (pow_nonneg (by linarith [hu.2] : 0≤2-u) 9)
  have hq := div_le_div_of_nonneg_right hp (by norm_num : (0:ℝ)≤1531530)
  convert hq using 1 <;> ring

theorem overlapPolynomial1_upper {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    -overlapPolynomial1 u≤(128/35:ℝ)*(2-u)^8 := by
  rw [overlapPolynomial1_factor]
  change u*(2-u)^8*overlapFactor1 u/90090≤_
  have hp := (overlapFactor1_nonneg hu.1).1
  have hx : u*overlapFactor1 u≤2*164736 :=
    mul_le_mul hu.2 (overlapFactor1_bound hu) hp (by norm_num)
  have hm := mul_le_mul_of_nonneg_left hx
    (pow_nonneg (by linarith [hu.2] : 0≤2-u) 8)
  have hq := div_le_div_of_nonneg_right hm (by norm_num : (0:ℝ)≤90090)
  convert hq using 1 <;> ring

theorem overlapPolynomial2_upper {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapPolynomial2 u≤(1024/35:ℝ)*(2-u)^7 := by
  have hp := overlapFactor1_nonneg hu.1
  have hsub : 0≤(2-u)*(overlapFactor1 u+u*overlapFactor1Prime u) :=
    mul_nonneg (by linarith [hu.2]) (add_nonneg hp.1 (mul_nonneg hu.1 hp.2))
  have hx : u*overlapFactor1 u≤2*164736 :=
    mul_le_mul hu.2 (overlapFactor1_bound hu) hp.1 (by norm_num)
  have hi : 8*u*overlapFactor1 u-
      (2-u)*(overlapFactor1 u+u*overlapFactor1Prime u)≤16*164736 := by
    nlinarith
  have hm := mul_le_mul_of_nonneg_left hi
    (pow_nonneg (by linarith [hu.2] : 0≤2-u) 7)
  have hq := div_le_div_of_nonneg_right hm (by norm_num : (0:ℝ)≤90090)
  rw [overlapPolynomial2_factor]
  convert hq using 1 <;> ring

theorem source_normalization_lower (A : ℝ) :
    (4096/109395:ℝ)≤sourceNormalization A := by
  unfold sourceNormalization
  have h2 : 0≤(131072/45045:ℝ)/(2*A^2) := by positivity
  have h4 : 0≤(196608/5005:ℝ)/A^4 := by positivity
  linarith

/-- The independently stated envelope, not defined by the desired remainder. -/
def reflectedEnvelope (y : ℝ) : ℝ :=
  (2431/896:ℝ)*Real.exp (-y/2)*y^7*(y+12)*(y+24)

theorem reflectedEnvelope_nonneg {y : ℝ} (hy : 0≤y) : 0≤reflectedEnvelope y := by
  unfold reflectedEnvelope
  positivity

/-- Literal reflected polynomial form: this is an actual source second primitive on [0,2A]. -/
theorem reflectedPrimitive_polynomial (A y : ℝ) :
    reflectedPrimitive A y=Real.exp (-y/2)/sourceNormalization A*
      (A^7*overlapPolynomial2 ((2*A-y)/A)-A^8*overlapPolynomial1 ((2*A-y)/A)+
        A^9*overlapPolynomial0 ((2*A-y)/A)/4) := by
  unfold reflectedPrimitive physicalScale positivePrimitive
  have he : Real.exp (-A)*Real.exp ((2*A-y)/2)=Real.exp (-y/2) := by
    rw [←Real.exp_add]
    congr 1
    ring
  by_cases hA : A=0
  · subst A
    norm_num
  · field_simp
    nlinarith [he]

theorem reflectedPrimitive_le_envelope {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) : reflectedPrimitive A y≤reflectedEnvelope y := by
  have hp : 0<A := by linarith
  have hu : (2*A-y)/A∈Icc (0:ℝ) 2 := by
    constructor
    · exact div_nonneg (by linarith [hy.2]) hp.le
    · exact (div_le_iff₀ hp).mpr (by linarith [hy.1])
  have he : 2-(2*A-y)/A=y/A := by field_simp; ring
  have h0 := mul_le_mul_of_nonneg_left (overlapPolynomial0_upper hu) (pow_nonneg hp.le 9)
  have h1 := mul_le_mul_of_nonneg_left (overlapPolynomial1_upper hu) (pow_nonneg hp.le 8)
  have h2 := mul_le_mul_of_nonneg_left (overlapPolynomial2_upper hu) (pow_nonneg hp.le 7)
  rw [he] at h0 h1 h2
  have e0 : A^9*((128/315:ℝ)*(y/A)^9)=(128/315:ℝ)*y^9 := by field_simp; ring
  have e1 : A^8*((128/35:ℝ)*(y/A)^8)=(128/35:ℝ)*y^8 := by field_simp; ring
  have e2 : A^7*((1024/35:ℝ)*(y/A)^7)=(1024/35:ℝ)*y^7 := by field_simp; ring
  rw [e0] at h0
  rw [e1] at h1
  rw [e2] at h2
  have hb : A^7*overlapPolynomial2 ((2*A-y)/A)-A^8*overlapPolynomial1 ((2*A-y)/A)+
      A^9*overlapPolynomial0 ((2*A-y)/A)/4≤
      (1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9 := by
    nlinarith
  have hz := source_normalization_pos A hA
  have hn : 0≤(1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9 := by positivity
  rw [reflectedPrimitive_polynomial]
  have hm := mul_le_mul_of_nonneg_left hb (by positivity : 0≤Real.exp (-y/2)/sourceNormalization A)
  apply hm.trans
  have hd : ((1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9)/sourceNormalization A≤
      ((1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9)/(4096/109395:ℝ) :=
    div_le_div_of_nonneg_left hn (by norm_num) (source_normalization_lower A)
  have hh := mul_le_mul_of_nonneg_left hd (Real.exp_pos (-y/2)).le
  convert hh using 1 <;> unfold reflectedEnvelope <;> ring

theorem reflectedPrimitive_source_envelope {A y : ℝ} (hA : 1≤A)
    (hthreshold : (136/7:ℝ)≤A^2) (hy : y∈Icc (0:ℝ) (2*A)) :
    0≤reflectedPrimitive A y ∧ reflectedPrimitive A y≤reflectedEnvelope y :=
  ⟨reflectedPrimitive_nonneg hA hthreshold hy,reflectedPrimitive_le_envelope hA hy⟩

end ContinuousResearch.SourcePrimitiveEnvelope
