import GRWTSK.Analysis.Complex.HolomorphicAreaReproducing
import Mathlib.MeasureTheory.Function.L2Space

/-!
# The actual-area Hilbert space inside ordinary L2

The historical completion embeds into Mathlib's ordinary L2 for the SAME unnormalized
area measure on the SAME domain subtype. Finite energy supplies L2 membership, and the
historical pairing supplies isometry. Its closed image consists exactly of classes with
finite-energy holomorphic representatives. L2 coercions agree only almost everywhere.
The existing Riesz kernel reproduces by an integrable area integral, with its argument
order fixed by conjugate-linearity in the first inner-product slot. No arbitrary L2 point
recovery, pointwise representative selection, projection, or differential domain is added.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicAreaL2

open Filter Topology MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (section_continuous)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform
open GRWTSK.Analysis.Complex.HolomorphicAreaComplete
open GRWTSK.Analysis.Complex.HolomorphicAreaReproducing
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- Only an abbreviation for the preceding exact holomorphic realization's values. -/
abbrev realizedValue (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) : Section D.X :=
  (completedRealization hOpen v : Section D.X)

/-- The earlier global energy theorem, not an extra membership hypothesis. -/
def realizedFinite (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen :=
  ⟨scalarSection D hOpen (completedRealization hOpen v), completedRealization_finite hOpen v⟩

theorem realized_square_integrable (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    Integrable (fun x => ‖realizedValue hOpen v x‖ ^ 2) (areaMeasure D.X) := by
  have h := realSquare_integrable (MetricWeights.identity D) (areaMeasure D.X)
    hOpen (realizedFinite hOpen v)
  change Integrable (fun x => 1 * Complex.normSq (realizedValue hOpen v x))
    (areaMeasure D.X) at h
  simpa only [one_mul, Complex.normSq_eq_norm_sq] using h

/-- Cross-integrability uses the old finite-section polarization proof. -/
theorem realized_pair_integrable (hOpen : D.IsOpenCover) (v w : AreaCompletion hOpen) :
    Integrable (fun x => star (realizedValue hOpen v x) * realizedValue hOpen w x)
      (areaMeasure D.X) := by
  have h := pairDensity_integrable (MetricWeights.identity D) (areaMeasure D.X)
    hOpen (realizedFinite hOpen v) (realizedFinite hOpen w)
  change Integrable (fun x => (1 : ℂ) *
    ((starRingEnd ℂ) (realizedValue hOpen v x) * realizedValue hOpen w x))
      (areaMeasure D.X) at h
  simpa only [one_mul, starRingEnd_apply] using h

/-- Bind the actual completed inner product to the exact existing area integral. -/
theorem completed_inner_integral (hOpen : D.IsOpenCover) (v w : AreaCompletion hOpen) :
    inner ℂ v w = ∫ x, star (realizedValue hOpen v x) * realizedValue hOpen w x
      ∂areaMeasure D.X := by
  obtain ⟨q, rfl⟩ := toCompletion_surjective hOpen v
  obtain ⟨r, rfl⟩ := toCompletion_surjective hOpen w
  rw [toCompletion_inner]
  simp only [realizedValue, completedRealization_toCompletion]
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  rw [inner_classOf]
  change (∫ x, (1 : ℂ) * ((starRingEnd ℂ) (s.1.value x) * t.1.value x)
    ∂areaMeasure D.X) = ∫ x, star (s.1.value x) * t.1.value x ∂areaMeasure D.X
  simp only [one_mul, starRingEnd_apply]

/-- Point evaluations bind linearity without installing a new structure on holomorphic sections. -/
theorem realizedValue_add (hOpen : D.IsOpenCover) (v w : AreaCompletion hOpen)
    (x : D.X.carrier) :
    realizedValue hOpen (v + w) x = realizedValue hOpen v x + realizedValue hOpen w x := by
  simpa only [evaluationAt_eq_value] using (evaluationAt hOpen x).map_add v w

theorem realizedValue_smul (hOpen : D.IsOpenCover) (c : ℂ) (v : AreaCompletion hOpen)
    (x : D.X.carrier) :
    realizedValue hOpen (c • v) x = c * realizedValue hOpen v x := by
  simpa only [evaluationAt_eq_value, smul_eq_mul] using (evaluationAt hOpen x).map_smul c v

/-- Measurability and integrable square are proved before constructing an L2 element. -/
theorem realized_memLp (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    MemLp (realizedValue hOpen v) 2 (areaMeasure D.X) :=
  (memLp_two_iff_integrable_sq_norm
    (section_continuous D.X (completedRealization hOpen v)).measurable.aestronglyMeasurable).mpr
      (realized_square_integrable hOpen v)

/-- Mathlib's ordinary measurable-function L2 class, not a new carrier or a changed measure. -/
def toL2 (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) : Lp ℂ 2 (areaMeasure D.X) :=
  (realized_memLp hOpen v).toLp (realizedValue hOpen v)

/-- The ambient L2 coercion is bound only almost everywhere, not at every point. -/
theorem toL2_ae (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    (toL2 hOpen v : Section D.X) =ᵐ[areaMeasure D.X] realizedValue hOpen v :=
  (realized_memLp hOpen v).coeFn_toLp

theorem toL2_add (hOpen : D.IsOpenCover) (v w : AreaCompletion hOpen) :
    toL2 hOpen (v + w) = toL2 hOpen v + toL2 hOpen w := by
  apply Lp.ext
  filter_upwards [toL2_ae hOpen (v + w), toL2_ae hOpen v, toL2_ae hOpen w,
    Lp.coeFn_add (toL2 hOpen v) (toL2 hOpen w)] with x hsum hv hw hadd
  calc
    toL2 hOpen (v + w) x = realizedValue hOpen (v + w) x := hsum
    _ = realizedValue hOpen v x + realizedValue hOpen w x := realizedValue_add hOpen v w x
    _ = (toL2 hOpen v + toL2 hOpen w) x := by
      simpa only [Pi.add_apply, hv, hw] using hadd.symm

theorem toL2_smul (hOpen : D.IsOpenCover) (c : ℂ) (v : AreaCompletion hOpen) :
    toL2 hOpen (c • v) = c • toL2 hOpen v := by
  apply Lp.ext
  filter_upwards [toL2_ae hOpen (c • v), toL2_ae hOpen v,
    Lp.coeFn_smul c (toL2 hOpen v)] with x hcv hv hsmul
  calc
    toL2 hOpen (c • v) x = realizedValue hOpen (c • v) x := hcv
    _ = c * realizedValue hOpen v x := realizedValue_smul hOpen c v x
    _ = (c • toL2 hOpen v) x := by
      simpa only [Pi.smul_apply, smul_eq_mul, hv] using hsmul.symm

/-- The L2 pairing and the historical pairing coincide as complex numbers, not just real parts. -/
theorem toL2_inner (hOpen : D.IsOpenCover) (v w : AreaCompletion hOpen) :
    inner ℂ (toL2 hOpen v) (toL2 hOpen w) = inner ℂ v w := by
  rw [L2.inner_def, completed_inner_integral]
  apply integral_congr_ae
  filter_upwards [toL2_ae hOpen v, toL2_ae hOpen w] with x hv hw
  rw [hv, hw]
  exact RCLike.inner_apply' _ _

theorem toL2_norm (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    ‖toL2 hOpen v‖ = ‖v‖ := by
  have h := congrArg Complex.re (toL2_inner hOpen v v)
  simp only [inner_self_eq_norm_sq_to_K, ← Complex.ofReal_pow, Complex.ofReal_re] at h
  exact le_antisymm
    ((sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp h.le)
    ((sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp h.ge)

/-- A constructed linear isometry with the old completed space as its exact source. -/
def l2Embedding (hOpen : D.IsOpenCover) :
    AreaCompletion hOpen →ₗᵢ[ℂ] Lp ℂ 2 (areaMeasure D.X) where
  toLinearMap :=
    { toFun := toL2 hOpen
      map_add' := toL2_add hOpen
      map_smul' := toL2_smul hOpen }
  norm_map' := toL2_norm hOpen

@[simp] theorem l2Embedding_apply (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    l2Embedding hOpen v = toL2 hOpen v := rfl

/-- The original quotient maps through precisely the historical completion embedding. -/
def originalL2Embedding (hOpen : D.IsOpenCover) :
    AreaQuotient hOpen →ₗᵢ[ℂ] Lp ℂ 2 (areaMeasure D.X) :=
  (l2Embedding hOpen).comp (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen)

theorem originalL2Embedding_range (hOpen : D.IsOpenCover) :
    Set.range (originalL2Embedding hOpen) = Set.range (l2Embedding hOpen) := by
  ext g
  constructor
  · rintro ⟨q, rfl⟩
    exact ⟨toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q, rfl⟩
  · rintro ⟨v, rfl⟩
    obtain ⟨q, rfl⟩ := toCompletion_surjective hOpen v
    exact ⟨q, rfl⟩

/-- The actual image submodule in ordinary L2, not a declaration that every L2 vector is holomorphic. -/
def holomorphicSubspace (hOpen : D.IsOpenCover) : Submodule ℂ (Lp ℂ 2 (areaMeasure D.X)) :=
  LinearMap.range (l2Embedding hOpen).toLinearMap

/-- Source completeness and the proved isometry close this exact L2 image. -/
theorem holomorphicSubspace_closed (hOpen : D.IsOpenCover) :
    IsClosed (holomorphicSubspace hOpen : Set (Lp ℂ 2 (areaMeasure D.X))) :=
  (l2Embedding hOpen).isometry.isClosedEmbedding.isClosed_range

/-- Every finite-energy holomorphic function is recovered through the ORIGINAL class map. -/
theorem completedRealization_scalar_class (hOpen : D.IsOpenCover)
    (f : HolomorphicSection D.X) (hf : scalarEnergy hOpen f < ∞) :
    completedRealization hOpen (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen
      (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen
        ⟨scalarSection D hOpen f, hf⟩)) = f := by
  rw [completedRealization_toCompletion, realization_classOf]
  apply Subtype.ext
  funext x
  rfl

/-- Image membership means existence of a holomorphic representative, not holomorphy of every one. -/
theorem mem_holomorphicSubspace_iff (hOpen : D.IsOpenCover)
    (g : Lp ℂ 2 (areaMeasure D.X)) :
    g ∈ holomorphicSubspace hOpen ↔ ∃ f : HolomorphicSection D.X,
      scalarEnergy hOpen f < ∞ ∧ (g : Section D.X) =ᵐ[areaMeasure D.X] (f : Section D.X) := by
  change (∃ v, l2Embedding hOpen v = g) ↔ _
  constructor
  · rintro ⟨v, rfl⟩
    exact ⟨completedRealization hOpen v, completedRealization_finite hOpen v, toL2_ae hOpen v⟩
  · rintro ⟨f, hf, hgf⟩
    let v := toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen
      (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen
        (⟨scalarSection D hOpen f, hf⟩ :
          FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen))
    have hv : completedRealization hOpen v = f := completedRealization_scalar_class hOpen f hf
    refine ⟨v, ?_⟩
    apply Lp.ext
    exact (toL2_ae hOpen v).trans (by simpa only [realizedValue, hv] using hgf.symm)

/-- The old multiplier action has this precise a.e. action in the ambient L2 space. -/
theorem l2Embedding_multiplier_ae (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X)
    (v : AreaCompletion hOpen) :
    (l2Embedding hOpen (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X)
      hOpen f v) : Section D.X) =ᵐ[areaMeasure D.X]
        fun x => f.value x * (l2Embedding hOpen v : Section D.X) x := by
  filter_upwards [toL2_ae hOpen (completedRepresentation (MetricWeights.identity D)
    (areaMeasure D.X) hOpen f v), toL2_ae hOpen v] with x hfv hv
  change toL2 hOpen (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X)
    hOpen f v) x = f.value x * toL2 hOpen v x
  rw [hfv, hv]
  change ((completedRealization hOpen
    (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f v) :
      HolomorphicSection D.X) : Section D.X) x = _
  rw [completedRealization_multiplier]
  rfl

/-- Argument order is forced by the preceding Hermitian symmetry, with no changed kernel. -/
theorem kernel_integrand_eq (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (v : AreaCompletion hOpen) :
    (fun z => kernel hOpen x z * realizedValue hOpen v z) =
      fun z => star (realizedValue hOpen (kernelVector hOpen x) z) * realizedValue hOpen v z := by
  funext z
  change kernel hOpen x z * _ = star (kernel hOpen z x) * _
  rw [kernel_conj_symm]

/-- The reproducing integral is genuinely integrable before its value is asserted. -/
theorem kernel_integrable (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (v : AreaCompletion hOpen) :
    Integrable (fun z => kernel hOpen x z * realizedValue hOpen v z) (areaMeasure D.X) := by
  rw [kernel_integrand_eq]
  exact realized_pair_integrable hOpen (kernelVector hOpen x) v

/-- Integral reproduction for every completed vector, with the SAME area measure and realization. -/
theorem integral_reproduces (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (v : AreaCompletion hOpen) :
    (∫ z, kernel hOpen x z * realizedValue hOpen v z ∂areaMeasure D.X) =
      realizedValue hOpen v x := by
  rw [kernel_integrand_eq, ← completed_inner_integral]
  exact kernelVector_reproduces hOpen x v

/-- The integral statement also covers each supplied finite-energy holomorphic function. -/
theorem integral_reproduces_holomorphic (hOpen : D.IsOpenCover) (f : HolomorphicSection D.X)
    (hf : scalarEnergy hOpen f < ∞) (x : D.X.carrier) :
    Integrable (fun z => kernel hOpen x z * (f : Section D.X) z) (areaMeasure D.X) ∧
      (∫ z, kernel hOpen x z * (f : Section D.X) z ∂areaMeasure D.X) = (f : Section D.X) x := by
  let v := toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen
    (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen
      (⟨scalarSection D hOpen f, hf⟩ :
        FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen))
  have hv : completedRealization hOpen v = f := completedRealization_scalar_class hOpen f hf
  simpa only [realizedValue, hv] using
    And.intro (kernel_integrable hOpen x v) (integral_reproduces hOpen x v)

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures (disk diskCover_isOpen center)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures
  (spike spike_center spike_ae_zero)

/-- The nonholomorphic point spike is L2 because its a.e. class is zero. -/
theorem spike_memLp : MemLp spike 2 (areaMeasure disk) :=
  (memLp_congr_ae spike_ae_zero).mpr MemLp.zero

def spikeClass : Lp ℂ 2 (areaMeasure disk) := spike_memLp.toLp spike

theorem spikeClass_zero : spikeClass = 0 := by
  apply Lp.eq_zero_iff_ae_eq_zero.mpr
  exact spike_memLp.coeFn_toLp.trans spike_ae_zero

/-- Membership asserts existence of the zero holomorphic representative, not spike holomorphy. -/
theorem spikeClass_mem : spikeClass ∈ holomorphicSubspace diskCover_isOpen := by
  rw [spikeClass_zero]
  exact (holomorphicSubspace diskCover_isOpen).zero_mem

/-- No map on ALL ordinary L2 classes can recover every representative's center value. -/
theorem no_allL2_point_recovery :
    ¬ ∃ E : Lp ℂ 2 (areaMeasure disk) → ℂ,
      ∀ (f : Section disk) (hf : MemLp f 2 (areaMeasure disk)), E (hf.toLp f) = f center := by
  rintro ⟨E, hE⟩
  have h1 := hE spike spike_memLp
  have h0 := hE (0 : Section disk) MemLp.zero
  have hs : spike_memLp.toLp spike = 0 := spikeClass_zero
  rw [hs, spike_center] at h1
  have hz : E 0 = 0 := by simpa only [MemLp.toLp_zero, Pi.zero_apply] using h0
  exact zero_ne_one (hz.symm.trans h1)

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicAreaL2
