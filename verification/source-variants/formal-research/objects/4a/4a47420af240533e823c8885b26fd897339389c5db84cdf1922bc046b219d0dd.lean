import FormalResearch.RiemannHypothesis.Laplace.Continuation
import Mathlib.Analysis.Complex.AbsMax
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.Meromorphic.Order

/-!
# B3.3 exact ninth-order pole certificate

Fix an actual zero point whose shifted value has positive real part.  Local
finiteness supplies an isolating disk around the candidate center
`2 * (p - 1/2)`.

Exactly two full occurrence fibers collide there: the point and its
functional-equation reflection.  Their finite contribution has the exact
nonzero ninth-order coefficient from RH-0010 equation (21).  Every remaining
occurrence contributes a complete three-term source kernel analytic on the
isolating disk.  The compact sixth-power boundary majorant and maximum modulus
give a normally convergent analytic noncolliding remainder through the center.

Adding that analytic remainder preserves the cleared coefficient.  A patched
cleared numerator then gives genuine meromorphy and standard meromorphic order
exactly `-9`.

No rightmost-zero, simplicity, finite zero table, or uniform zero-separation
premise is introduced.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.PoleCertificate

open Set Filter Metric Polynomial
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open Kernel Expansion InitialFormula Continuation

noncomputable section

/-- Lower-degree source kernels vanish after clearing any strictly larger pole
order. -/
lemma J_lower_cleared_tendsto
    (k n : ℕ) (hkn : k < n) :
    Tendsto
      (fun w : ℂ ↦ w ^ (n + 1) * J k w)
      (𝓝[≠] 0) (𝓝 0) := by
  have hp :
      Tendsto (fun w : ℂ ↦ w ^ (n - k))
        (𝓝[≠] 0) (𝓝 0) := by
    have hid :
        Tendsto (fun w : ℂ ↦ w)
          (𝓝[≠] 0) (𝓝 0) :=
      continuousAt_id.tendsto.mono_left
        nhdsWithin_le_nhds
    simpa only [zero_pow (Nat.sub_ne_zero_of_lt hkn)] using
      hid.pow (n - k)
  have h := hp.mul (J_cleared_tendsto k)
  simp only [zero_mul] at h
  convert h using 1
  funext w
  rw [← mul_assoc, ← pow_add]
  congr 2
  omega

/-- For a finite degree-eight polynomial, only its top coefficient survives
after clearing order nine. -/
lemma polynomialKernel_cleared_tendsto
    (p : ℂ[X]) :
    Tendsto
      (fun w : ℂ ↦ w ^ 9 * polynomialKernel p w)
      (𝓝[≠] 0)
      (𝓝 (p.coeff 8 * (Nat.factorial 8 : ℂ))) := by
  have hl :
      ∀ k ∈ Finset.range 8,
        Tendsto
          (fun w : ℂ ↦
            p.coeff k * (w ^ 9 * J k w))
          (𝓝[≠] 0) (𝓝 0) := by
    intro k hk
    simpa only [mul_zero] using
      (J_lower_cleared_tendsto k 8
        (Finset.mem_range.mp hk)).const_mul (p.coeff k)
  have hsum := tendsto_finsetSum (Finset.range 8) hl
  simp only [Finset.sum_const_zero] at hsum
  have ht :=
    hsum.add ((J_cleared_tendsto 8).const_mul (p.coeff 8))
  simp only [zero_add] at ht
  convert ht using 1
  funext w
  unfold polynomialKernel
  rw [Finset.sum_range_succ, mul_add, Finset.mul_sum]
  congr 1
  · apply Finset.sum_congr rfl
    intro k _
    ring
  · ring

lemma positivePolynomial_coeff_eight (z : ℂ) :
    (positivePolynomial z).coeff 8 = z ^ 8 := by
  rw [positivePolynomial_coeff z 8 (by norm_num)]
  norm_num [rCoeff]

lemma mixedPolynomial_neg (z : ℂ) :
    mixedPolynomial (-z) = mixedPolynomial z := by
  simp only [mixedPolynomial, neg_neg]
  ring

/-- The complete finite source kernel is invariant under shifted-value
reflection. -/
theorem sourceKernel_neg (z s : ℂ) :
    sourceKernel (-z) s = sourceKernel z s := by
  simp only [sourceKernel, modeCoefficient_neg, neg_neg,
    mixedPolynomial_neg, mul_neg, sub_neg_eq_add,
    ← sub_eq_add_neg]
  ring

/-- Recenter one complete source contribution at its positive candidate. -/
theorem sourceKernel_local (z w : ℂ) :
    sourceKernel z (2 * z + w) =
      modeCoefficient z *
        (polynomialKernel (positivePolynomial z) w +
          (polynomialKernel (positivePolynomial (-z)) (w + 4 * z) -
            2 * polynomialKernel (mixedPolynomial z) (w + 2 * z))) := by
  unfold sourceKernel
  rw [show 2 * z + w - 2 * z = w by ring,
    show 2 * z + w + 2 * z = w + 4 * z by ring,
    show 2 * z + w = w + 2 * z by ring]
  ring

/-- The other two finite terms are analytic at the local origin. -/
theorem sourceKernel_local_remainder_analytic
    (z : ℂ) (hz : z ≠ 0) :
    AnalyticAt ℂ
      (fun w ↦
        polynomialKernel (positivePolynomial (-z)) (w + 4 * z) -
          2 * polynomialKernel (mixedPolynomial z) (w + 2 * z))
      0 := by
  have hfour : (0 : ℂ) + 4 * z ≠ 0 := by
    simpa using
      mul_ne_zero (by norm_num : (4 : ℂ) ≠ 0) hz
  have htwo : (0 : ℂ) + 2 * z ≠ 0 := by
    simpa using
      mul_ne_zero (by norm_num : (2 : ℂ) ≠ 0) hz
  have hleft :
      AnalyticAt ℂ
        (fun w ↦
          polynomialKernel (positivePolynomial (-z)) (w + 4 * z))
        0 :=
    (polynomialKernel_analytic _ _ hfour).comp
      (f := fun w : ℂ ↦ w + 4 * z) (x := 0)
      (analyticAt_id.add analyticAt_const)
  have hright :
      AnalyticAt ℂ
        (fun w ↦
          polynomialKernel (mixedPolynomial z) (w + 2 * z))
        0 :=
    (polynomialKernel_analytic _ _ htwo).comp
      (f := fun w : ℂ ↦ w + 2 * z) (x := 0)
      (analyticAt_id.add analyticAt_const)
  exact hleft.sub (analyticAt_const.mul hright)

/-- Multiplication by a ninth-order vanishing factor kills any continuous
local remainder. -/
theorem ninth_order_limit_add_continuous
    {f g : ℂ → ℂ} {p c : ℂ}
    (hf :
      Tendsto (fun s ↦ (s - p) ^ 9 * f s)
        (𝓝[≠] p) (𝓝 c))
    (hg : ContinuousAt g p) :
    Tendsto (fun s ↦ (s - p) ^ 9 * (f s + g s))
      (𝓝[≠] p) (𝓝 c) := by
  have hp :
      Tendsto (fun s : ℂ ↦ (s - p) ^ 9)
        (𝓝[≠] p) (𝓝 0) := by
    have ht :=
      ((tendsto_id :
        Tendsto (id : ℂ → ℂ) (𝓝 p) (𝓝 p)).sub_const p).pow 9
    simpa using
      ht.mono_left (nhdsWithin_le_nhds (s := {p}ᶜ))
  have hzero :
      Tendsto (fun s ↦ (s - p) ^ 9 * g s)
        (𝓝[≠] p) (𝓝 0) := by
    simpa using
      hp.mul (hg.tendsto.mono_left nhdsWithin_le_nhds)
  simpa only [mul_add, add_zero] using hf.add hzero

/-- One complete source kernel has the exact ninth-order local coefficient. -/
theorem sourceKernel_local_cleared_tendsto
    (z : ℂ) (hz : z ≠ 0) :
    Tendsto
      (fun w : ℂ ↦ w ^ 9 * sourceKernel z (2 * z + w))
      (𝓝[≠] 0)
      (𝓝 (modeCoefficient z * z ^ 8 *
        (Nat.factorial 8 : ℂ))) := by
  have hmain :
      Tendsto
        (fun w : ℂ ↦ w ^ 9 *
          polynomialKernel (positivePolynomial z) w)
        (𝓝[≠] 0)
        (𝓝 (z ^ 8 * (Nat.factorial 8 : ℂ))) := by
    simpa only [positivePolynomial_coeff_eight] using
      polynomialKernel_cleared_tendsto (positivePolynomial z)
  have h :=
    ninth_order_limit_add_continuous
      (p := (0 : ℂ))
      (by simpa only [sub_zero] using hmain)
      (sourceKernel_local_remainder_analytic z hz).continuousAt
  have hs := h.const_mul (modeCoefficient z)
  convert hs using 1
  · funext w
    rw [sourceKernel_local]
    simp only [sub_zero]
    ring
  · congr 1
    ring

/-- Both reflected source kernels add to the exact equation-(21) coefficient,
with multiplicity counted once. -/
theorem reflected_pair_cleared_tendsto
    (z : ℂ) (hz : z ≠ 0) (m : ℕ) :
    Tendsto
      (fun w : ℂ ↦
        w ^ 9 * ((m : ℂ) *
          (sourceKernel z (2 * z + w) +
            sourceKernel (-z) (2 * z + w))))
      (𝓝[≠] 0)
      (𝓝 (principalCoefficient m z)) := by
  have h :=
    (sourceKernel_local_cleared_tendsto z hz).const_mul
      (2 * (m : ℂ))
  convert h using 1
  · funext w
    rw [sourceKernel_neg]
    ring
  · congr 1
    simpa only [mul_assoc] using (principalCoefficient_eq m z hz).symm

/-- Candidate coefficient for one actual zero point and its full reflected
multiplicity fiber. -/
def pointPairPrincipalCoefficient (p : ZeroPoint) : ℂ :=
  principalCoefficient (multiplicity p) (p.val - 1 / 2)

/-- The complete finite reflected-pair contribution, centered at its candidate
pole. -/
def pointPairKernel (p : ZeroPoint) (w : ℂ) : ℂ :=
  (multiplicity p : ℂ) *
    (sourceKernel (p.val - 1 / 2)
        (2 * (p.val - 1 / 2) + w) +
      sourceKernel (-(p.val - 1 / 2))
        (2 * (p.val - 1 / 2) + w))

theorem point_pair_cleared_tendsto (p : ZeroPoint) :
    Tendsto
      (fun w : ℂ ↦ w ^ 9 * pointPairKernel p w)
      (𝓝[≠] 0)
      (𝓝 (pointPairPrincipalCoefficient p)) := by
  let o : ZeroOccurrence :=
    ⟨p, ⟨0, multiplicity_positive p⟩⟩
  have hz : p.val - 1 / 2 ≠ 0 := by
    simpa only [shiftedValue, o] using
      Expansion.shifted_value_ne_zero o
  simpa only [pointPairKernel, pointPairPrincipalCoefficient] using
    reflected_pair_cleared_tendsto
      (p.val - 1 / 2) hz (multiplicity p)

/-- The exact reflected-pair coefficient is nonzero for every actual zero
point. -/
theorem point_pair_principal_coefficient_ne_zero
    (p : ZeroPoint) :
    pointPairPrincipalCoefficient p ≠ 0 := by
  let o : ZeroOccurrence :=
    ⟨p, ⟨0, multiplicity_positive p⟩⟩
  have hz : p.val - 1 / 2 ≠ 0 := by
    simpa only [shiftedValue, o] using
      Expansion.shifted_value_ne_zero o
  have hp : p.val - 1 / 2 ≠ 1 / 2 := by
    simpa only [shiftedValue, o] using shiftedValue_ne_half o
  have hn : p.val - 1 / 2 ≠ -(1 / 2) := by
    simpa only [shiftedValue, o] using shiftedValue_ne_neg_half o
  exact principalCoefficient_ne_zero
    (multiplicity p) (multiplicity_positive p).ne'
    (p.val - 1 / 2) hz hp hn

/-- A nonzero ninth-order cleared limit rules out a continuous extension. -/
theorem not_continuousAt_of_ninth_order_limit
    {f : ℂ → ℂ} {p c : ℂ}
    (hf :
      Tendsto (fun s ↦ (s - p) ^ 9 * f s)
        (𝓝[≠] p) (𝓝 c))
    (hc : c ≠ 0) :
    ¬ ContinuousAt f p := by
  intro hcont
  have hp :
      Tendsto (fun s : ℂ ↦ (s - p) ^ 9)
        (𝓝[≠] p) (𝓝 0) := by
    have ht :=
      ((tendsto_id :
        Tendsto (id : ℂ → ℂ) (𝓝 p) (𝓝 p)).sub_const p).pow 9
    simpa using
      ht.mono_left (nhdsWithin_le_nhds (s := {p}ᶜ))
  have hzero :
      Tendsto (fun s ↦ (s - p) ^ 9 * f s)
        (𝓝[≠] p) (𝓝 0) := by
    simpa using
      hp.mul (hcont.tendsto.mono_left nhdsWithin_le_nhds)
  exact hc (tendsto_nhds_unique hf hzero)

/-! ## Local isolation -/

/-- Local finiteness excludes all scaled candidates other than a fixed center
in some neighborhood. -/
theorem eventually_scaled_candidate_eq
    (a : ℂ) (ha : a ≠ 0) (c : ℂ) :
    ∀ᶠ s in 𝓝 c,
      s ∈ range (fun o : ZeroOccurrence ↦
        a * shiftedValue o) →
      s = c := by
  have h :=
    (locallyFinite_scaled_values a ha).iInter_compl_mem_nhds
      (fun _ ↦ isClosed_singleton) c
  filter_upwards [h] with s hs
  rintro ⟨o, rfl⟩
  by_contra hn
  have hc :
      c ∉ ({a * shiftedValue o} : Set ℂ) := by
    simpa only [mem_singleton_iff] using Ne.symm hn
  exact (mem_iInter₂.mp hs o hc) (by simp)

theorem eventually_candidate_eq (c : ℂ) :
    ∀ᶠ s in 𝓝 c,
      s ∈ candidateSingularities → s = c := by
  have hzero :
      ∀ᶠ s in 𝓝 c, s = 0 → s = c := by
    by_cases hc : c = 0
    · exact Eventually.of_forall
        (by intro s hs; simpa [hc] using hs)
    · have h :
          ({0}ᶜ : Set ℂ) ∈ 𝓝 c :=
        isClosed_singleton.isOpen_compl.mem_nhds
          (by simpa only [mem_compl_iff, mem_singleton_iff] using hc)
      filter_upwards [h] with s hs hz
      exact False.elim (hs (by simpa using hz))
  filter_upwards
    [hzero,
      eventually_scaled_candidate_eq 2 (by norm_num) c,
      eventually_scaled_candidate_eq (-2) (by norm_num) c]
    with s hs0 hspos hsneg
  intro hs
  rcases hs with (hz | hp) | hn
  · exact hs0 (by simpa only [mem_singleton_iff] using hz)
  · exact hspos hp
  · exact hsneg hn

/-- A positive center has a source-dependent doubled closed disk containing no
other candidate location. -/
theorem exists_isolating_radius
    (c : ℂ) (hc : 0 < c.re) :
    ∃ r : ℝ, 0 < r ∧
      ∀ s ∈ closedBall c (2 * r),
        0 < s.re ∧
          (s ∈ candidateSingularities → s = c) := by
  have hpos :
      {s : ℂ | 0 < s.re} ∈ 𝓝 c :=
    (isOpen_lt continuous_const Complex.continuous_re).mem_nhds hc
  have hloc :
      ∀ᶠ s in 𝓝 c,
        0 < s.re ∧
          (s ∈ candidateSingularities → s = c) := by
    filter_upwards [hpos, eventually_candidate_eq c]
      with s hs hcandidate
    exact ⟨hs, hcandidate⟩
  obtain ⟨ε, hε, hball⟩ :=
    Metric.mem_nhds_iff.mp hloc
  refine ⟨ε / 4, by positivity, ?_⟩
  intro s hs
  apply hball
  rw [mem_ball, mem_closedBall] at *
  linarith

theorem punctured_closedBall_subset_domain
    (c : ℂ) (r : ℝ)
    (hlocal :
      ∀ s ∈ closedBall c (2 * r),
        0 < s.re ∧
          (s ∈ candidateSingularities → s = c)) :
    closedBall c (2 * r) \ {c} ⊆ convergenceDomain := by
  intro s hs
  obtain ⟨hspos, hsing⟩ := hlocal s hs.1
  exact ⟨hspos, fun h ↦ hs.2 (hsing h)⟩

theorem sphere_subset_domain
    (c : ℂ) (r : ℝ) (hr : 0 < r)
    (hlocal :
      ∀ s ∈ closedBall c (2 * r),
        0 < s.re ∧
          (s ∈ candidateSingularities → s = c)) :
    sphere c r ⊆ convergenceDomain := by
  intro s hs
  apply punctured_closedBall_subset_domain c r hlocal
  constructor
  · rw [mem_closedBall, mem_sphere.mp hs]
    linarith
  · simp only [mem_singleton_iff]
    intro h
    subst s
    have hd := mem_sphere.mp hs
    simp only [dist_self] at hd
    linarith

/-- Noncolliding complete kernels are analytic throughout an isolating doubled
disk. -/
theorem noncolliding_kernel_analytic
    (c : ℂ) (r : ℝ)
    (hlocal :
      ∀ s ∈ closedBall c (2 * r),
        0 < s.re ∧
          (s ∈ candidateSingularities → s = c))
    (o : ZeroOccurrence)
    (hpos : c ≠ 2 * shiftedValue o)
    (hneg : c ≠ -2 * shiftedValue o)
    (s : ℂ) (hs : s ∈ closedBall c (2 * r)) :
    AnalyticAt ℂ (sourceKernel (shiftedValue o)) s := by
  obtain ⟨hsre, hsing⟩ := hlocal s hs
  apply sourceKernel_analytic_of_denominators
  · intro h
    simp [h] at hsre
  · intro h
    have he : s = 2 * shiftedValue o :=
      sub_eq_zero.mp h
    have hc : s = c :=
      hsing (Or.inl (Or.inr ⟨o, he.symm⟩))
    exact hpos (hc.symm.trans he)
  · intro h
    have he : s = -2 * shiftedValue o := by
      linear_combination h
    have hc : s = c :=
      hsing (Or.inr ⟨o, he.symm⟩)
    exact hneg (hc.symm.trans he)

/-! ## Exact collision family -/

/-- Every occurrence whose positive or negative shifted candidate collides with
the chosen reflected pair. -/
def collisionSet (p : ZeroPoint) : Set ZeroOccurrence :=
  {o |
    shiftedValue o = p.val - 1 / 2 ∨
      shiftedValue o = -(p.val - 1 / 2)}

theorem shiftedValue_eq_iff
    (p : ZeroPoint) (o : ZeroOccurrence) :
    shiftedValue o = p.val - 1 / 2 ↔ o.1 = p := by
  constructor
  · intro h
    apply Subtype.ext
    dsimp only [shiftedValue] at h
    linear_combination h
  · intro h
    simp only [shiftedValue, h]

theorem shiftedValue_eq_neg_iff
    (p : ZeroPoint) (o : ZeroOccurrence) :
    shiftedValue o = -(p.val - 1 / 2) ↔
      o.1 = reflectPoint p := by
  constructor
  · intro h
    apply Subtype.ext
    change o.1.val = 1 - p.val
    dsimp only [shiftedValue] at h
    linear_combination h
  · intro h
    simp only [shiftedValue, h, reflectPoint]
    ring

theorem collisionSet_eq_point_fibers
    (p : ZeroPoint) :
    collisionSet p =
      {o : ZeroOccurrence | o.1 = p} ∪
        {o : ZeroOccurrence | o.1 = reflectPoint p} := by
  ext o
  exact or_congr
    (shiftedValue_eq_iff p o)
    (shiftedValue_eq_neg_iff p o)

theorem collisionSet_finite
    (p : ZeroPoint) :
    (collisionSet p).Finite := by
  apply
    (finite_occurrences_norm_le
      ‖p.val - 1 / 2‖).subset
  intro o ho
  rcases ho with h | h <;>
    simp only [mem_ofPred_eq, h, norm_neg, le_refl]

instance collisionSetFintype
    (p : ZeroPoint) :
    Fintype (collisionSet p) :=
  (collisionSet_finite p).fintype

theorem point_ne_reflect
    (p : ZeroPoint)
    (hp : p.val - 1 / 2 ≠ 0) :
    p ≠ reflectPoint p := by
  intro h
  have hv := congrArg Subtype.val h
  change p.val = 1 - p.val at hv
  apply hp
  linear_combination (1 / 2 : ℂ) * hv

theorem point_fibers_disjoint
    (p : ZeroPoint)
    (hp : p.val - 1 / 2 ≠ 0) :
    Disjoint
      {o : ZeroOccurrence | o.1 = p}
      {o : ZeroOccurrence | o.1 = reflectPoint p} := by
  apply Set.disjoint_left.mpr
  intro o hleft hright
  exact point_ne_reflect p hp
    (hleft.symm.trans hright)

/-- One exact point fiber contributes its analytic multiplicity once. -/
theorem point_fiber_tsum
    (p : ZeroPoint) (f : ℂ → ℂ) :
    (∑' o :
      {o : ZeroOccurrence // o.1 = p},
      f (shiftedValue o.val)) =
      (multiplicity p : ℂ) *
        f (p.val - 1 / 2) := by
  let e :
      {o : ZeroOccurrence // o.1 = p} ≃
        Fin (multiplicity p) :=
    Equiv.sigmaSubtype
      (β := fun q : ZeroPoint ↦ Fin (multiplicity q)) p
  calc
    _ =
        ∑' i : Fin (multiplicity p),
          f (shiftedValue (e.symm i).val) :=
      (e.symm.tsum_eq
        (fun o ↦ f (shiftedValue o.val))).symm
    _ = _ := by
      change
        (∑' _i : Fin (multiplicity p),
          f (p.val - 1 / 2)) = _
      simp [nsmul_eq_mul]

/-- Both complete collision fibers contribute exactly the reflected pair with
multiplicity once. -/
theorem collision_tsum_eq
    (p : ZeroPoint)
    (hp : p.val - 1 / 2 ≠ 0)
    (f : ℂ → ℂ) :
    (∑' o : collisionSet p,
      f (shiftedValue o.val)) =
      (multiplicity p : ℂ) *
        (f (p.val - 1 / 2) +
          f (-(p.val - 1 / 2))) := by
  have hf (q : ZeroPoint) :
      Summable
        (fun o :
          {o : ZeroOccurrence // o.1 = q} ↦
          f (shiftedValue o.val)) := by
    let e :
        {o : ZeroOccurrence // o.1 = q} ≃
          Fin (multiplicity q) :=
      Equiv.sigmaSubtype
        (β := fun r : ZeroPoint ↦ Fin (multiplicity r)) q
    let := Finite.of_equiv
      (Fin (multiplicity q)) e.symm
    exact Summable.of_finite
  have hsplit :=
    Summable.tsum_union_disjoint
      (f := fun o : ZeroOccurrence ↦
        f (shiftedValue o))
      (point_fibers_disjoint p hp)
      (hf p) (hf (reflectPoint p))
  have heq :
      (∑' o : collisionSet p,
        f (shiftedValue o.val)) =
        (∑' o :
          {o : ZeroOccurrence // o.1 = p},
          f (shiftedValue o.val)) +
        ∑' o :
          {o : ZeroOccurrence //
            o.1 = reflectPoint p},
          f (shiftedValue o.val) := by
    let e :=
      Equiv.setCongr (collisionSet_eq_point_fibers p)
    exact
      (e.tsum_eq
        (fun o ↦ f (shiftedValue o.val))).trans hsplit
  rw [heq, point_fiber_tsum, point_fiber_tsum,
    multiplicity_reflect]
  have hshift :
      (reflectPoint p).val - 1 / 2 =
        -(p.val - 1 / 2) := by
    simp only [reflectPoint]
    ring
  rw [hshift]
  ring

theorem collision_sum_eq_pointPairKernel
    (p : ZeroPoint)
    (hp : p.val - 1 / 2 ≠ 0)
    (w : ℂ) :
    (∑ o : collisionSet p,
      sourceKernel (shiftedValue o.val)
        (2 * (p.val - 1 / 2) + w)) =
      pointPairKernel p w := by
  calc
    _ =
        ∑' o : collisionSet p,
          sourceKernel (shiftedValue o.val)
            (2 * (p.val - 1 / 2) + w) :=
      (tsum_fintype _).symm
    _ = _ :=
      collision_tsum_eq p hp
        (fun z ↦
          sourceKernel z
            (2 * (p.val - 1 / 2) + w))

/-- Splitting a summable full family retains every noncolliding occurrence. -/
theorem tsum_eq_pointPairKernel_add_remainder
    (p : ZeroPoint)
    (hp : p.val - 1 / 2 ≠ 0)
    (w : ℂ)
    (hsum :
      Summable
        (fun o : ZeroOccurrence ↦
          sourceKernel (shiftedValue o)
            (2 * (p.val - 1 / 2) + w))) :
    (∑' o : ZeroOccurrence,
      sourceKernel (shiftedValue o)
        (2 * (p.val - 1 / 2) + w)) =
      pointPairKernel p w +
        ∑' o :
          {o : ZeroOccurrence // o ∉ collisionSet p},
          sourceKernel (shiftedValue o.val)
            (2 * (p.val - 1 / 2) + w) := by
  have hsplit :=
    (hsum.subtype (collisionSet p)).tsum_add_tsum_compl
      (hsum.subtype (collisionSet p)ᶜ)
  calc
    _ =
        (∑' o : collisionSet p,
          sourceKernel (shiftedValue o.val)
            (2 * (p.val - 1 / 2) + w)) +
        ∑' o :
          {o : ZeroOccurrence // o ∉ collisionSet p},
          sourceKernel (shiftedValue o.val)
            (2 * (p.val - 1 / 2) + w) :=
      hsplit.symm
    _ = _ :=
      congrArg
        (fun x ↦
          x +
            ∑' o :
              {o : ZeroOccurrence // o ∉ collisionSet p},
              sourceKernel (shiftedValue o.val)
                (2 * (p.val - 1 / 2) + w))
        (collision_tsum_eq p hp
          (fun z ↦
            sourceKernel z
              (2 * (p.val - 1 / 2) + w)))

/-! ## Analytic noncollision remainder -/

/-- Zero occurrences outside the two reflected fibers in `collisionSet p`. -/
abbrev RemainingOccurrence (p : ZeroPoint) :=
  {o : ZeroOccurrence // o ∉ collisionSet p}

/-- Sum of the complete source kernels over the noncolliding occurrences for `p`. -/
def remainder (p : ZeroPoint) (s : ℂ) : ℂ :=
  ∑' o : RemainingOccurrence p,
    sourceKernel (shiftedValue o.val) s

lemma boundary_norms_summable
    (p : ZeroPoint) (r : ℝ)
    (hD :
      sphere (2 * (p.val - 1 / 2)) r ⊆
        convergenceDomain) :
    Summable
      (fun o : RemainingOccurrence p ↦
        compactKernelNorm
          (sphere (2 * (p.val - 1 / 2)) r)
          o.val) :=
  (sourceKernel_compact_norms_summable _
    (isCompact_sphere _ _) hD).subtype _

lemma closedDisk_norm_le_boundary
    (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD :
      sphere (2 * (p.val - 1 / 2)) r ⊆
        convergenceDomain)
    (hhol :
      ∀ o : RemainingOccurrence p,
        AnalyticOnNhd ℂ
          (sourceKernel (shiftedValue o.val))
          (closedBall (2 * (p.val - 1 / 2)) r))
    (o : RemainingOccurrence p)
    (s : ℂ)
    (hs :
      s ∈ closedBall
        (2 * (p.val - 1 / 2)) r) :
    ‖sourceKernel (shiftedValue o.val) s‖ ≤
      compactKernelNorm
        (sphere (2 * (p.val - 1 / 2)) r)
        o.val := by
  apply
    Complex.norm_le_of_forall_mem_frontier_norm_le
      (U := ball (2 * (p.val - 1 / 2)) r)
      isBounded_ball
  · apply DifferentiableOn.diffContOnCl
    rw [closure_ball _ hr.ne']
    exact (hhol o).differentiableOn
  · intro t ht
    exact
      norm_le_compactKernelNorm _
        (isCompact_sphere _ _) hD o.val t
        (frontier_ball_subset_sphere ht)
  · simpa only [closure_ball _ hr.ne'] using hs

lemma closedDisk_norms_summable
    (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD :
      sphere (2 * (p.val - 1 / 2)) r ⊆
        convergenceDomain)
    (hhol :
      ∀ o : RemainingOccurrence p,
        AnalyticOnNhd ℂ
          (sourceKernel (shiftedValue o.val))
          (closedBall (2 * (p.val - 1 / 2)) r))
    (s : ℂ)
    (hs :
      s ∈ closedBall
        (2 * (p.val - 1 / 2)) r) :
    Summable
      (fun o : RemainingOccurrence p ↦
        ‖sourceKernel (shiftedValue o.val) s‖) :=
  Summable.of_nonneg_of_le
    (fun _ ↦ norm_nonneg _)
    (fun o ↦
      closedDisk_norm_le_boundary
        p r hr hD hhol o s hs)
    (boundary_norms_summable p r hD)

lemma remainder_hasSumUniformlyOn_closedDisk
    (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD :
      sphere (2 * (p.val - 1 / 2)) r ⊆
        convergenceDomain)
    (hhol :
      ∀ o : RemainingOccurrence p,
        AnalyticOnNhd ℂ
          (sourceKernel (shiftedValue o.val))
          (closedBall (2 * (p.val - 1 / 2)) r)) :
    HasSumUniformlyOn
      (fun o : RemainingOccurrence p ↦
        sourceKernel (shiftedValue o.val))
      (remainder p)
      (closedBall (2 * (p.val - 1 / 2)) r) :=
  HasSumUniformlyOn.of_norm_le_summable
    (boundary_norms_summable p r hD)
    (fun o s hs ↦
      closedDisk_norm_le_boundary
        p r hr hD hhol o s hs)

lemma remainder_analyticOn_ball
    (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD :
      sphere (2 * (p.val - 1 / 2)) r ⊆
        convergenceDomain)
    (hhol :
      ∀ o : RemainingOccurrence p,
        AnalyticOnNhd ℂ
          (sourceKernel (shiftedValue o.val))
          (closedBall (2 * (p.val - 1 / 2)) r)) :
    AnalyticOnNhd ℂ (remainder p)
      (ball (2 * (p.val - 1 / 2)) r) := by
  have hlim :=
    ((remainder_hasSumUniformlyOn_closedDisk
      p r hr hD hhol).mono
      ball_subset_closedBall).hasSumLocallyUniformlyOn
  rw [hasSumLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn]
    at hlim
  apply DifferentiableOn.analyticOnNhd _ isOpen_ball
  apply hlim.differentiableOn _ isOpen_ball
  exact Eventually.of_forall
    (fun _ ↦
      DifferentiableOn.fun_sum
        (fun o _ s hs ↦
          (hhol o s (ball_subset_closedBall hs)).differentiableAt.differentiableWithinAt))

lemma remaining_kernel_analytic_on_isolating_disk
    (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hlocal :
      ∀ s ∈ closedBall
        (2 * (p.val - 1 / 2)) (2 * r),
        0 < s.re ∧
          (s ∈ candidateSingularities →
            s = 2 * (p.val - 1 / 2)))
    (o : RemainingOccurrence p) :
    AnalyticOnNhd ℂ
      (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r) := by
  have hne :
      shiftedValue o.val ≠ p.val - 1 / 2 ∧
        shiftedValue o.val ≠ -(p.val - 1 / 2) := by
    simpa only [collisionSet, mem_ofPred_eq, not_or] using
      o.property
  have hpos :
      2 * (p.val - 1 / 2) ≠
        2 * shiftedValue o.val := by
    intro he
    exact hne.1
      ((mul_left_cancel₀
        (by norm_num : (2 : ℂ) ≠ 0) he).symm)
  have hneg :
      2 * (p.val - 1 / 2) ≠
        -2 * shiftedValue o.val := by
    intro he
    apply hne.2
    linear_combination (1 / 2 : ℂ) * he
  intro s hs
  apply noncolliding_kernel_analytic
    _ r hlocal o.val hpos hneg s
  exact closedBall_subset_closedBall
    (by linarith) hs

lemma exists_remainder_disk
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    ∃ r : ℝ, 0 < r ∧
      sphere (2 * (p.val - 1 / 2)) r ⊆
        convergenceDomain ∧
      (∀ s ∈ closedBall
        (2 * (p.val - 1 / 2)) r,
        Summable
          (fun o : RemainingOccurrence p ↦
            ‖sourceKernel (shiftedValue o.val) s‖)) ∧
      HasSumUniformlyOn
        (fun o : RemainingOccurrence p ↦
          sourceKernel (shiftedValue o.val))
        (remainder p)
        (closedBall (2 * (p.val - 1 / 2)) r) ∧
      AnalyticOnNhd ℂ (remainder p)
        (ball (2 * (p.val - 1 / 2)) r) := by
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  obtain ⟨r, hr, hlocal⟩ :=
    exists_isolating_radius _ hc
  have hD :=
    sphere_subset_domain _ r hr hlocal
  have hhol :=
    remaining_kernel_analytic_on_isolating_disk
      p r hr hlocal
  exact ⟨r, hr, hD,
    fun s hs ↦
      closedDisk_norms_summable
        p r hr hD hhol s hs,
    remainder_hasSumUniformlyOn_closedDisk
      p r hr hD hhol,
    remainder_analyticOn_ball p r hr hD hhol⟩

lemma remainder_analytic_at
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    AnalyticAt ℂ (remainder p)
      (2 * (p.val - 1 / 2)) := by
  obtain ⟨r, hr, _, _, _, hhol⟩ :=
    exists_remainder_disk p hp
  exact hhol _ (mem_ball_self hr)

/-! ## Full continued sum and exact pole -/

theorem eventually_center_add_mem_domain
    (c : ℂ) (hc : 0 < c.re) :
    ∀ᶠ w in 𝓝[≠] (0 : ℂ),
      c + w ∈ convergenceDomain := by
  obtain ⟨r, hr, hlocal⟩ :=
    exists_isolating_radius c hc
  have ht :
      Tendsto (fun w : ℂ ↦ c + w)
        (𝓝 0) (𝓝 c) := by
    simpa using
      tendsto_const_nhds.add
        (tendsto_id :
          Tendsto (id : ℂ → ℂ) (𝓝 0) (𝓝 0))
  have hball :=
    ht.eventually
      (closedBall_mem_nhds c
        (show 0 < 2 * r by positivity))
  filter_upwards
    [hball.filter_mono nhdsWithin_le_nhds,
      self_mem_nhdsWithin]
    with w hw hne
  apply punctured_closedBall_subset_domain
    c r hlocal
  refine ⟨hw, ?_⟩
  simpa only [mem_singleton_iff, add_eq_left] using
    (show w ≠ 0 from hne)

theorem continuedTransform_summable
    (s : ℂ) (hs : s ∈ convergenceDomain) :
    Summable
      (fun o : ZeroOccurrence ↦
        sourceKernel (shiftedValue o) s) :=
  (sourceKernel_hasSumLocallyUniformlyOn.hasSum hs).summable

theorem continuedTransform_punctured_differentiable
    (c : ℂ) (hc : 0 < c.re) :
    ∀ᶠ w in 𝓝[≠] (0 : ℂ),
      DifferentiableAt ℂ
        (fun v ↦ continuedTransform (c + v)) w := by
  filter_upwards
    [eventually_center_add_mem_domain c hc]
    with w hw
  exact
    (continuedTransform_analytic (c + w) hw).differentiableAt.comp w (by fun_prop)

theorem continuedTransform_eventually_split
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    ∀ᶠ w in 𝓝[≠] (0 : ℂ),
      continuedTransform
          (2 * (p.val - 1 / 2) + w) =
        pointPairKernel p w +
          remainder p
            (2 * (p.val - 1 / 2) + w) := by
  have hp0 :
      p.val - 1 / 2 ≠ 0 := by
    intro h
    rw [h] at hp
    norm_num at hp
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  filter_upwards
    [eventually_center_add_mem_domain
      (2 * (p.val - 1 / 2)) hc]
    with w hw
  exact
    tsum_eq_pointPairKernel_add_remainder
      p hp0 w
      (continuedTransform_summable _ hw)

/-- The analytic noncolliding remainder cannot cancel the exact finite
reflected-pair coefficient. -/
theorem continuedTransform_cleared_tendsto
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    Tendsto
      (fun w : ℂ ↦
        w ^ 9 *
          continuedTransform
            (2 * (p.val - 1 / 2) + w))
      (𝓝[≠] 0)
      (𝓝 (pointPairPrincipalCoefficient p)) := by
  have hg :
      ContinuousAt
        (fun w : ℂ ↦
          remainder p
            (2 * (p.val - 1 / 2) + w))
        0 := by
    have h :
        ContinuousAt (remainder p)
          (2 * (p.val - 1 / 2) + (0 : ℂ)) := by
      simpa only [add_zero] using
        (remainder_analytic_at p hp).continuousAt
    exact h.comp (by fun_prop)
  have hlim :=
    ninth_order_limit_add_continuous
      (p := (0 : ℂ))
      (by
        simpa only [sub_zero] using
          point_pair_cleared_tendsto p)
      hg
  apply hlim.congr'
  filter_upwards
    [continuedTransform_eventually_split p hp]
    with w hw
  simpa only [sub_zero] using
    congrArg (fun x : ℂ ↦ w ^ 9 * x) hw.symm

/-- Cleared local product with the correct limiting value assigned at zero. -/
def patchedNumerator
    (f : ℂ → ℂ) (a : ℂ) : ℂ → ℂ :=
  Function.update (fun w ↦ w ^ 9 * f w) 0 a

theorem patchedNumerator_zero
    (f : ℂ → ℂ) (a : ℂ) :
    patchedNumerator f a 0 = a := by
  simp [patchedNumerator]

theorem patchedNumerator_of_ne
    (f : ℂ → ℂ) (a w : ℂ)
    (hw : w ≠ 0) :
    patchedNumerator f a w =
      w ^ 9 * f w :=
  Function.update_of_ne hw _ _

theorem patchedNumerator_analytic
    {f : ℂ → ℂ} {a : ℂ}
    (hlim :
      Tendsto (fun w ↦ w ^ 9 * f w)
        (𝓝[≠] 0) (𝓝 a))
    (hd :
      ∀ᶠ w in 𝓝[≠] (0 : ℂ),
        DifferentiableAt ℂ f w) :
    AnalyticAt ℂ (patchedNumerator f a) 0 := by
  apply
    Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · filter_upwards [hd, self_mem_nhdsWithin]
      with w hdw hw
    have hne : w ≠ 0 := hw
    have heq :
        patchedNumerator f a =ᶠ[𝓝 w]
          fun v ↦ v ^ 9 * f v := by
      filter_upwards [eventually_ne_nhds hne]
        with v hv
      exact patchedNumerator_of_ne f a v hv
    exact
      (((differentiableAt_id.pow 9).mul hdw).congr_of_eventuallyEq heq)
  · exact continuousAt_update_same.mpr hlim

theorem meromorphicAt_of_patched_numerator
    {f H : ℂ → ℂ}
    (hH : AnalyticAt ℂ H 0)
    (heq :
      ∀ᶠ w in 𝓝[≠] (0 : ℂ),
        f w = H w / w ^ 9) :
    MeromorphicAt f 0 := by
  have hm :
      MeromorphicAt
        (fun w ↦ H w / w ^ 9) 0 :=
    hH.meromorphicAt.div
      ((analyticAt_id.pow 9).meromorphicAt)
  exact hm.congr
    (heq.mono (fun _ h ↦ h.symm))

theorem meromorphicOrderAt_of_patched_numerator
    {f H : ℂ → ℂ}
    (hH : AnalyticAt ℂ H 0)
    (hH0 : H 0 ≠ 0)
    (heq :
      ∀ᶠ w in 𝓝[≠] (0 : ℂ),
        f w = H w / w ^ 9) :
    meromorphicOrderAt f 0 = (-9 : ℤ) := by
  apply
    (meromorphicOrderAt_eq_int_iff
      (meromorphicAt_of_patched_numerator hH heq)).mpr
  refine ⟨H, hH, hH0, ?_⟩
  filter_upwards [heq] with w hw
  rw [hw]
  simp [smul_eq_mul, zpow_neg, div_eq_mul_inv,
    mul_comm]

theorem exact_pole_certificate
    {f : ℂ → ℂ} {a : ℂ}
    (ha : a ≠ 0)
    (hlim :
      Tendsto (fun w ↦ w ^ 9 * f w)
        (𝓝[≠] 0) (𝓝 a))
    (hd :
      ∀ᶠ w in 𝓝[≠] (0 : ℂ),
        DifferentiableAt ℂ f w) :
    AnalyticAt ℂ (patchedNumerator f a) 0 ∧
      patchedNumerator f a 0 = a ∧
      (∀ᶠ w in 𝓝 (0 : ℂ),
        patchedNumerator f a w ≠ 0) ∧
      (∀ᶠ w in 𝓝[≠] (0 : ℂ),
        f w = patchedNumerator f a w / w ^ 9) ∧
      meromorphicOrderAt f 0 = (-9 : ℤ) := by
  have hH :=
    patchedNumerator_analytic hlim hd
  have hH0 :
      patchedNumerator f a 0 ≠ 0 := by
    simpa only [patchedNumerator_zero] using ha
  have hunit :
      ∀ᶠ w in 𝓝 (0 : ℂ),
        patchedNumerator f a w ≠ 0 :=
    (hH.continuousAt.ne_iff_eventually_ne
      continuousAt_const).mp hH0
  have heq :
      ∀ᶠ w in 𝓝[≠] (0 : ℂ),
        f w =
          patchedNumerator f a w / w ^ 9 := by
    filter_upwards [self_mem_nhdsWithin]
      with w hw
    have hne : w ≠ 0 := hw
    rw [patchedNumerator_of_ne f a w hne]
    field_simp
  exact ⟨hH, patchedNumerator_zero f a,
    hunit, heq,
    meromorphicOrderAt_of_patched_numerator
      hH hH0 heq⟩

/-- The continued transform recentered at `2 * (p.val - 1 / 2)` and multiplied
by the ninth power, with its principal coefficient assigned at the origin. -/
def sourcePatchedNumerator
    (p : ZeroPoint) : ℂ → ℂ :=
  patchedNumerator
    (fun w ↦
      continuedTransform
        (2 * (p.val - 1 / 2) + w))
    (pointPairPrincipalCoefficient p)

/-- Every actual shifted zero in the right half-strip produces an exact
ninth-order pole of the complete continued equation-(20) sum. -/
theorem source_exact_ninth_order_pole
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    MeromorphicAt continuedTransform
        (2 * (p.val - 1 / 2)) ∧
      meromorphicOrderAt continuedTransform
        (2 * (p.val - 1 / 2)) = (-9 : ℤ) ∧
      AnalyticAt ℂ
        (sourcePatchedNumerator p) 0 ∧
      sourcePatchedNumerator p 0 =
        pointPairPrincipalCoefficient p ∧
      pointPairPrincipalCoefficient p ≠ 0 ∧
      (∀ᶠ w in 𝓝 (0 : ℂ),
        sourcePatchedNumerator p w ≠ 0) ∧
      (∀ᶠ w in 𝓝[≠] (0 : ℂ),
        continuedTransform
            (2 * (p.val - 1 / 2) + w) =
          sourcePatchedNumerator p w / w ^ 9) := by
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  obtain ⟨hH, hH0, hunit, heq, horderLocal⟩ :=
    exact_pole_certificate
      (point_pair_principal_coefficient_ne_zero p)
      (continuedTransform_cleared_tendsto p hp)
      (continuedTransform_punctured_differentiable _ hc)
  have htranslate :
      meromorphicOrderAt
          (fun w ↦
            continuedTransform
              (2 * (p.val - 1 / 2) + w))
          0 =
        meromorphicOrderAt continuedTransform
          (2 * (p.val - 1 / 2)) := by
    simpa only [zero_add, add_comm] using
      (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
        (f := continuedTransform)
        (x := (0 : ℂ))
        (c := 2 * (p.val - 1 / 2)))
  have horder :
      meromorphicOrderAt continuedTransform
          (2 * (p.val - 1 / 2)) =
        (-9 : ℤ) :=
    htranslate.symm.trans horderLocal
  have hmer :
      MeromorphicAt continuedTransform
        (2 * (p.val - 1 / 2)) :=
    meromorphicAt_of_meromorphicOrderAt_ne_zero
      (by rw [horder]; norm_num)
  exact ⟨hmer, horder, hH, hH0,
    point_pair_principal_coefficient_ne_zero p,
    hunit, heq⟩

/-- Exact local-pole checkpoint reached before global positive-half-plane
meromorphic assembly. -/
def PoleCertificateCheckpoint : Prop :=
  ∀ p : ZeroPoint,
    0 < (p.val - 1 / 2).re →
      MeromorphicAt continuedTransform
          (2 * (p.val - 1 / 2)) ∧
      meromorphicOrderAt continuedTransform
          (2 * (p.val - 1 / 2)) = (-9 : ℤ) ∧
      pointPairPrincipalCoefficient p =
        principalCoefficient
          (multiplicity p) (p.val - 1 / 2) ∧
      pointPairPrincipalCoefficient p ≠ 0

theorem pole_certificate_checkpoint :
    PoleCertificateCheckpoint := by
  intro p hp
  obtain ⟨hmer, horder, _, _, hcoeff, _, _⟩ :=
    source_exact_ninth_order_pole p hp
  exact ⟨hmer, horder, rfl, hcoeff⟩

end
end FormalResearch.RiemannHypothesis.Laplace.PoleCertificate
