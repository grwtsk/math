import EndpointExpansion

/-! Differentiated complete actual endpoint polynomial.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No arithmetic bridge or signed-work budget. -/
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 600000
noncomputable section
namespace ContinuousResearch.EndpointDerivatives
open MeasureTheory Set Filter
open scoped Interval Topology
open EndpointExpansion EndpointProfile ActualEndpointCorrelation ActualPhaseCurvature
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

def endpointFirstPolynomial (a y : ℝ) : ℝ :=
  (6144/1:ℝ)*y^4 +
  (-512/5:ℝ)*y^6 +
  (8/35:ℝ)*y^8 +
  (-24576/1:ℝ)*a^1*y^5 +
  (2048/7:ℝ)*a^1*y^7 +
  (-32/63:ℝ)*a^1*y^9 +
  (38912/1:ℝ)*a^2*y^6 +
  (-2432/7:ℝ)*a^2*y^8 +
  (152/315:ℝ)*a^2*y^10 +
  (-227328/7:ℝ)*a^3*y^7 +
  (4736/21:ℝ)*a^3*y^9 +
  (-296/1155:ℝ)*a^3*y^11 +
  (110976/7:ℝ)*a^4*y^8 +
  (-9248/105:ℝ)*a^4*y^10 +
  (289/3465:ℝ)*a^4*y^12 +
  (-14080/3:ℝ)*a^5*y^9 +
  (64/3:ℝ)*a^5*y^11 +
  (-2/117:ℝ)*a^5*y^13 +
  (832/1:ℝ)*a^6*y^10 +
  (-104/33:ℝ)*a^6*y^12 +
  (1/462:ℝ)*a^6*y^14 +
  (-896/11:ℝ)*a^7*y^11 +
  (112/429:ℝ)*a^7*y^13 +
  (-1/6435:ℝ)*a^7*y^15 +
  (112/33:ℝ)*a^8*y^12 +
  (-4/429:ℝ)*a^8*y^14 +
  (1/205920:ℝ)*a^8*y^16

def endpointSecondPolynomial (a y : ℝ) : ℝ :=
  (24576/1:ℝ)*y^3 +
  (-3072/5:ℝ)*y^5 +
  (64/35:ℝ)*y^7 +
  (-122880/1:ℝ)*a^1*y^4 +
  (2048/1:ℝ)*a^1*y^6 +
  (-32/7:ℝ)*a^1*y^8 +
  (233472/1:ℝ)*a^2*y^5 +
  (-19456/7:ℝ)*a^2*y^7 +
  (304/63:ℝ)*a^2*y^9 +
  (-227328/1:ℝ)*a^3*y^6 +
  (14208/7:ℝ)*a^3*y^8 +
  (-296/105:ℝ)*a^3*y^10 +
  (887808/7:ℝ)*a^4*y^7 +
  (-18496/21:ℝ)*a^4*y^9 +
  (1156/1155:ℝ)*a^4*y^11 +
  (-42240/1:ℝ)*a^5*y^8 +
  (704/3:ℝ)*a^5*y^10 +
  (-2/9:ℝ)*a^5*y^12 +
  (8320/1:ℝ)*a^6*y^9 +
  (-416/11:ℝ)*a^6*y^11 +
  (1/33:ℝ)*a^6*y^13 +
  (-896/1:ℝ)*a^7*y^10 +
  (112/33:ℝ)*a^7*y^12 +
  (-1/429:ℝ)*a^7*y^14 +
  (448/11:ℝ)*a^8*y^11 +
  (-56/429:ℝ)*a^8*y^13 +
  (1/12870:ℝ)*a^8*y^15

def endpointFullSlope (a y : ℝ) : ℝ :=
  endpointFullPolynomial a y/2-endpointFirstPolynomial a y

def endpointFullCurvature (a y : ℝ) : ℝ :=
  endpointFullPolynomial a y/4-endpointFirstPolynomial a y+endpointSecondPolynomial a y

theorem endpointFullPolynomial_contDiff (a : ℝ) : ContDiff ℝ 2 (endpointFullPolynomial a) := by
  unfold endpointFullPolynomial
  fun_prop

theorem endpointFirstPolynomial_contDiff (a : ℝ) : ContDiff ℝ 1 (endpointFirstPolynomial a) := by
  unfold endpointFirstPolynomial
  fun_prop

theorem endpoint_full_deriv (a y : ℝ) :
    deriv (endpointFullPolynomial a) y=endpointFirstPolynomial a y := by
  unfold endpointFullPolynomial endpointFirstPolynomial
  simp (disch := fun_prop)
  ring

theorem endpoint_first_deriv (a y : ℝ) :
    deriv (endpointFirstPolynomial a) y=endpointSecondPolynomial a y := by
  unfold endpointFirstPolynomial endpointSecondPolynomial
  simp (disch := fun_prop)
  ring

theorem endpoint_full_hasDerivAt (a y : ℝ) :
    HasDerivAt (endpointFullPolynomial a) (endpointFirstPolynomial a y) y := by
  rw [←endpoint_full_deriv]
  exact ((endpointFullPolynomial_contDiff a).differentiable (by norm_num) y).hasDerivAt

theorem endpoint_first_hasDerivAt (a y : ℝ) :
    HasDerivAt (endpointFirstPolynomial a) (endpointSecondPolynomial a y) y := by
  rw [←endpoint_first_deriv]
  exact ((endpointFirstPolynomial_contDiff a).differentiable (by norm_num) y).hasDerivAt

theorem endpoint_slope_zero (y : ℝ) : endpointFullSlope 0 y=endpointLeadingSlope y := by
  unfold endpointFullSlope endpointFullPolynomial endpointFirstPolynomial endpointLeadingSlope
  ring

theorem endpoint_curvature_zero (y : ℝ) :
    endpointFullCurvature 0 y=endpointLeadingCurvature y := by
  unfold endpointFullCurvature endpointFullPolynomial endpointFirstPolynomial
    endpointSecondPolynomial endpointLeadingCurvature
  ring

theorem endpoint_slope_continuous : Continuous (fun p : ℝ×ℝ => endpointFullSlope p.1 p.2) := by
  unfold endpointFullSlope endpointFullPolynomial endpointFirstPolynomial
  fun_prop

theorem endpoint_curvature_continuous : Continuous (fun p : ℝ×ℝ => endpointFullCurvature p.1 p.2) := by
  unfold endpointFullCurvature endpointFullPolynomial endpointFirstPolynomial endpointSecondPolynomial
  fun_prop


/-- Genuine uniform compact-y derivative remainder; no arithmetic premise. -/
theorem endpoint_slope_uniform_remainder {ε : ℝ} (hε : 0<ε) :
    ∀ᶠ a : ℝ in 𝓝 0, ∀ y∈Icc (1/2:ℝ) 1,
      |endpointFullSlope a y-endpointLeadingSlope y|<ε := by
  apply isCompact_Icc.eventually_forall_of_forall_eventually
  intro y _
  have hc : Continuous (fun p : ℝ×ℝ =>
      |endpointFullSlope p.1 p.2-endpointLeadingSlope p.2|) := by
    unfold endpointFullSlope endpointFullPolynomial endpointFirstPolynomial endpointLeadingSlope
    fun_prop
  apply hc.continuousAt.eventually
  simpa only [endpoint_slope_zero,sub_self,abs_zero] using gt_mem_nhds hε

theorem endpoint_curvature_uniform_remainder {ε : ℝ} (hε : 0<ε) :
    ∀ᶠ a : ℝ in 𝓝 0, ∀ y∈Icc (1/2:ℝ) 1,
      |endpointFullCurvature a y-endpointLeadingCurvature y|<ε := by
  apply isCompact_Icc.eventually_forall_of_forall_eventually
  intro y _
  have hc : Continuous (fun p : ℝ×ℝ =>
      |endpointFullCurvature p.1 p.2-endpointLeadingCurvature p.2|) := by
    unfold endpointFullCurvature endpointFullPolynomial endpointFirstPolynomial
      endpointSecondPolynomial endpointLeadingCurvature
    fun_prop
  apply hc.continuousAt.eventually
  simpa only [endpoint_curvature_zero,sub_self,abs_zero] using gt_mem_nhds hε

/-- Literal source equality on an open physical interval permits actual differentiation. -/
theorem actual_endpoint_model_eventuallyEq {A u : ℝ} (hA : 1≤A)
    (hu : u∈Ioo (0:ℝ) (2*A)) :
    criticalPrimeTest A =ᶠ[𝓝 u] fun v =>
      Real.exp (v/2)*endpointFullPolynomial A⁻¹ (2*A-v)/(A^9*sourceNormalization A) := by
  have hZ := (source_normalization_pos A hA).ne'
  have hne : A≠0 := by linarith
  filter_upwards [Ioo_mem_nhds hu.1 hu.2] with v hv
  have he := actual_endpoint_full_polynomial hA
    (y:=2*A-v) (show 2*A-v∈Icc (0:ℝ) (2*A) by constructor <;> linarith [hv.1,hv.2])
  have hvv : 2*A-(2*A-v)=v := by ring
  rw [hvv] at he
  unfold criticalPrimeTest
  rw [←he]
  field_simp [hne,hZ]

/-- Exact actual g' formula, with the physical endpoint orientation retained. -/
theorem actual_endpoint_first_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : u∈Ioo (0:ℝ) (2*A)) :
    HasDerivAt (criticalPrimeTest A)
      (Real.exp (u/2)*endpointFullSlope A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hd := (endpoint_full_hasDerivAt A⁻¹ (2*A-u)).comp u
    ((hasDerivAt_const u (2*A)).sub (hasDerivAt_id u))
  have hh := (he.mul hd).div_const (A^9*sourceNormalization A)
  have hm : HasDerivAt
      (fun v : ℝ => Real.exp (v/2)*endpointFullPolynomial A⁻¹ (2*A-v)/(A^9*sourceNormalization A))
      (Real.exp (u/2)*endpointFullSlope A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
    convert hh using 1
    unfold endpointFullSlope
    ring
  exact hm.congr_of_eventuallyEq (actual_endpoint_model_eventuallyEq hA hu)

/-- Exact actual g'' formula on the same open interval, not a seam assumption for D. -/
theorem actual_endpoint_second_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : u∈Ioo (0:ℝ) (2*A)) :
    HasDerivAt (deriv (criticalPrimeTest A))
      (Real.exp (u/2)*endpointFullCurvature A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hs := ((endpoint_full_hasDerivAt A⁻¹ (2*A-u)).div_const 2).sub
    (endpoint_first_hasDerivAt A⁻¹ (2*A-u))
  have hs' : HasDerivAt (endpointFullSlope A⁻¹)
      (endpointFirstPolynomial A⁻¹ (2*A-u)/2-endpointSecondPolynomial A⁻¹ (2*A-u)) (2*A-u) := by
    exact hs
  have hd := hs'.comp u ((hasDerivAt_const u (2*A)).sub (hasDerivAt_id u))
  have hh := (he.mul hd).div_const (A^9*sourceNormalization A)
  have hm : HasDerivAt
      (fun v : ℝ => Real.exp (v/2)*endpointFullSlope A⁻¹ (2*A-v)/(A^9*sourceNormalization A))
      (Real.exp (u/2)*endpointFullCurvature A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
    convert hh using 1
    unfold endpointFullSlope endpointFullCurvature
    ring
  apply hm.congr_of_eventuallyEq
  filter_upwards [Ioo_mem_nhds hu.1 hu.2] with v hv
  exact (actual_endpoint_first_hasDerivAt hA hv).deriv

end ContinuousResearch.EndpointDerivatives
