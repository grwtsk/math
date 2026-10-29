import GRWTSK.Analysis.Complex.HolomorphicLineGauge
import Mathlib.Tactic.NormNum

/-!
# Topological realization of a holomorphic gauge

The maps below use the actual two vector-bundle total-space topologies. Equality of their model
fiber types does not prove continuity. The forward and inverse continuity proofs use chartwise
holomorphy and the exact gauge equation. No metric or global trivialization is selected.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicLineGauge.Gauge

open Filter Topology
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E F : Cocycle D}

/-- A total scalar representative, used only on its declared chart. -/
def multiplier (G : Gauge C E) (i : ι) (x : D.X.carrier) : ℂ :=
  ambientRepresentative (D.U i) ((G.frame i : HolomorphicSection (D.U i)) : Section _) x.1

theorem multiplier_apply (G : Gauge C E) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) :
    G.multiplier i x = unitValue (G.frame i) ⟨x.1, hi⟩ :=
  ambientRepresentative_apply _ _ _ hi

theorem multiplier_continuousOn (G : Gauge C E) (i : ι) :
    ContinuousOn (G.multiplier i) (Cocycle.chartSet D i) :=
  (ambientRepresentative_differentiableOn (D.U i)
    (G.frame i : HolomorphicSection (D.U i))).continuousOn.comp
      continuous_subtype_val.continuousOn (fun _ hx => hx)

/-- The pointwise fiber map uses the unit in the same preferred chart in source and target. -/
def fiberMap (G : Gauge C E) (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (C.vectorBundleCore hOpen).Fiber x → (E.vectorBundleCore hOpen).Fiber x :=
  fun a => unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * a

@[simp] theorem fiberMap_symm_apply (G : Gauge C E) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (a : (C.vectorBundleCore hOpen).Fiber x) :
    G.symm.fiberMap hOpen x (G.fiberMap hOpen x a) = a := by
  change unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ *
    (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * a) = a
  rw [← mul_assoc, unitValue_inv_mul, one_mul]

@[simp] theorem fiberMap_apply_symm (G : Gauge C E) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (a : (E.vectorBundleCore hOpen).Fiber x) :
    G.fiberMap hOpen x (G.symm.fiberMap hOpen x a) = a := by
  change unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
    (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ * a) = a
  rw [← mul_assoc, unitValue_mul_inv, one_mul]

/-- Actual continuous-linear equivalence of the exact two fibers; no norm-preservation field. -/
def fiberEquiv (G : Gauge C E) (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (C.vectorBundleCore hOpen).Fiber x ≃L[ℂ] (E.vectorBundleCore hOpen).Fiber x where
  toLinearEquiv :=
    { toFun := G.fiberMap hOpen x
      invFun := G.symm.fiberMap hOpen x
      left_inv := G.fiberMap_symm_apply hOpen x
      right_inv := G.fiberMap_apply_symm hOpen x
      map_add' := by intros; exact mul_add _ _ _
      map_smul' := by intros; exact mul_left_comm _ _ _ }
  continuous_toFun := continuous_const.mul continuous_id
  continuous_invFun := continuous_const.mul continuous_id

/-- Map between the actual glued total spaces, over the identity base map. -/
def totalMap (G : Gauge C E) (hOpen : D.IsOpenCover) :
    (C.vectorBundleCore hOpen).TotalSpace → (E.vectorBundleCore hOpen).TotalSpace :=
  fun p => ⟨p.proj, G.fiberMap hOpen p.proj p.snd⟩

@[simp] theorem totalMap_proj (G : Gauge C E) (hOpen : D.IsOpenCover)
    (p : (C.vectorBundleCore hOpen).TotalSpace) : (G.totalMap hOpen p).proj = p.proj := rfl

/-- The total map has the declared gauge multiplier in every chart, not only the preferred one. -/
theorem totalMap_coordinate (G : Gauge C E) (hOpen : D.IsOpenCover)
    (i : ι) (p : (C.vectorBundleCore hOpen).TotalSpace)
    (hi : p.proj.1 ∈ (D.U i).carrier) :
    ((E.vectorBundleCore hOpen).localTriv i (G.totalMap hOpen p)).2 =
      unitValue (G.frame i) ⟨p.proj.1, hi⟩ *
        ((C.vectorBundleCore hOpen).localTriv i p).2 := by
  change E.scalar (D.select p.proj) i p.proj *
      (unitValue (G.frame (D.select p.proj)) ⟨p.proj.1, D.select_mem p.proj⟩ * p.snd) =
    unitValue (G.frame i) ⟨p.proj.1, hi⟩ * (C.scalar (D.select p.proj) i p.proj * p.snd)
  rw [← mul_assoc, ← G.compatible (D.select p.proj) i p.proj (D.select_mem p.proj) hi,
    mul_assoc]

/-- Continuity is proved in local bundle coordinates; raw fiber type equality is not used as proof. -/
theorem totalMap_continuous (G : Gauge C E) (hOpen : D.IsOpenCover) :
    Continuous (G.totalMap hOpen) := by
  apply continuous_iff_continuousAt.mpr
  intro p
  let i := D.select p.proj
  have hi : p.proj.1 ∈ (D.U i).carrier := D.select_mem p.proj
  have hChart : IsOpen (Cocycle.chartSet D i) :=
    (hOpen.member_open i).preimage continuous_subtype_val
  have hProj := (C.vectorBundleCore hOpen).continuous_proj.continuousAt (x := p)
  have hCoord : ContinuousAt
      (fun q : (C.vectorBundleCore hOpen).TotalSpace =>
        ((C.vectorBundleCore hOpen).localTriv i q).2) p := by
    exact ((FiberBundle.continuousAt_totalSpace (F := ℂ)
      (fun q : (C.vectorBundleCore hOpen).TotalSpace => q)).mp continuousAt_id).2
  have hMul : ContinuousAt (fun q : (C.vectorBundleCore hOpen).TotalSpace =>
      G.multiplier i q.proj) p :=
    ((G.multiplier_continuousOn i).continuousAt (hChart.mem_nhds hi)).comp hProj
  apply (FiberBundle.continuousAt_totalSpace (F := ℂ) (G.totalMap hOpen)).mpr
  refine ⟨hProj, ?_⟩
  change ContinuousAt
    (fun q => ((E.vectorBundleCore hOpen).localTriv i (G.totalMap hOpen q)).2) p
  apply (hMul.mul hCoord).congr_of_eventuallyEq
  have hmem : {q : (C.vectorBundleCore hOpen).TotalSpace |
      q.proj ∈ Cocycle.chartSet D i} ∈ 𝓝 p :=
    (hChart.preimage (C.vectorBundleCore hOpen).continuous_proj).mem_nhds hi
  filter_upwards [hmem] with q hq
  rw [G.totalMap_coordinate hOpen i q hq, G.multiplier_apply i q.proj hq]

/-- The actual total spaces are homeomorphic over the unchanged base, with inverse gauge. -/
def totalHomeomorph (G : Gauge C E) (hOpen : D.IsOpenCover) :
    (C.vectorBundleCore hOpen).TotalSpace ≃ₜ (E.vectorBundleCore hOpen).TotalSpace where
  toFun := G.totalMap hOpen
  invFun := G.symm.totalMap hOpen
  left_inv := by
    rintro ⟨x, a⟩
    change (⟨x, G.symm.fiberMap hOpen x (G.fiberMap hOpen x a)⟩ :
        (C.vectorBundleCore hOpen).TotalSpace) = ⟨x, a⟩
    rw [G.fiberMap_symm_apply]
  right_inv := by
    rintro ⟨x, a⟩
    change (⟨x, G.fiberMap hOpen x (G.symm.fiberMap hOpen x a)⟩ :
        (E.vectorBundleCore hOpen).TotalSpace) = ⟨x, a⟩
    rw [G.fiberMap_apply_symm]
  continuous_toFun := G.totalMap_continuous hOpen
  continuous_invFun := G.symm.totalMap_continuous hOpen

/-- Transport of bundle sections is induced by the same exact total-space map. -/
theorem bundleSectionEquiv_value (G : Gauge C E) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) :
    (G.bundleSectionEquiv hOpen s).value x = G.fiberMap hOpen x (s.value x) := by
  change unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
      (C.scalar (D.select x) (D.select x) x * s.value x) =
    unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * s.value x
  rw [C.scalar_self (D.select x) x (D.select_mem x), one_mul]

/-- Total-space transport composes in the same order as the gauge itself. -/
theorem totalMap_comp (G : Gauge C E) (H : Gauge E F) (hOpen : D.IsOpenCover)
    (p : (C.vectorBundleCore hOpen).TotalSpace) :
    (G.comp H).totalMap hOpen p = H.totalMap hOpen (G.totalMap hOpen p) := by
  rcases p with ⟨x, a⟩
  change (⟨x, (unitValue (H.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
        unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩) * a⟩ :
      (F.vectorBundleCore hOpen).TotalSpace) =
      ⟨x, unitValue (H.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
        (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * a)⟩
  rw [mul_assoc]

end
end GRWTSK.Analysis.Complex.HolomorphicLineGauge.Gauge

namespace GRWTSK.Analysis.Complex.HolomorphicLineGauge.Fixtures

open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection)

noncomputable section

/-- Constants give actual holomorphic units, including their inverse section. -/
def constantUnit (A : Domain) (c : ℂˣ) : (HolomorphicSection A)ˣ where
  val := constantSection A (c : ℂ)
  inv := constantSection A (↑(c⁻¹) : ℂ)
  val_inv := by
    apply Subtype.ext
    funext z
    exact c.val_inv
  inv_val := by
    apply Subtype.ext
    funext z
    exact c.inv_val

/-- A uniform constant gauge commutes with every line transition. -/
def constantGauge {ι : Type*} {D : IndexedDomainCover ι} (C : Cocycle D) (c : ℂˣ) :
    Gauge C C where
  frame i := constantUnit (D.U i) c
  compatible := by
    intro i j x hi hj
    change (c : ℂ) * C.scalar i j x = C.scalar i j x * (c : ℂ)
    exact mul_comm _ _

def twoUnit : ℂˣ where
  val := 2
  inv := 1 / 2
  val_inv := by norm_num
  inv_val := by norm_num

/-- A valid gauge need not preserve even the standard norms of the model fibers. -/
theorem doubling_not_modelNormPreserving :
    let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
    let hOpen := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen
    let C := Cocycle.identity D
    let G := constantGauge C twoUnit
    ¬ ∀ (x : D.X.carrier) (a : (C.vectorBundleCore hOpen).Fiber x),
      ‖G.fiberMap hOpen x a‖ = ‖a‖ := by
  intro h
  have h0 := h ⟨0, Set.mem_univ _⟩ 1
  norm_num [Gauge.fiberMap, constantGauge, constantUnit, unitValue, constantSection, twoUnit] at h0

/-- At an actual point, a zero frame value cannot occur in a holomorphic unit. -/
theorem unitValue_ne_zero {A : Domain} (h : (HolomorphicSection A)ˣ) (z : A.carrier) :
    unitValue h z ≠ 0 := by
  intro hz
  have hh := unitValue_inv_mul h z
  rw [hz, mul_zero] at hh
  exact zero_ne_one hh

end
end GRWTSK.Analysis.Complex.HolomorphicLineGauge.Fixtures
