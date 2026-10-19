module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVonMangoldt
public import Surface.Core.PrimeWalkLosslessSpatial
import Mathlib.Tactic

/-!
# Conductor-three coefficient moment paths

This module gives the phrase *moment morphism* one exact, finite meaning. A
coefficient packet frame assigns every packet atom a unique arithmetic entry
index. Its moment state is the partial packet sum through that index.

The frame contains only finite reconstruction data: packet amplitudes, an
`L²(ℝ³; ℂ)` packet, and a bounded linear readout. It contains no decay
estimate, calibration inequality, Wang--Zahl conclusion, or GRH premise.
Geometric localization and Vaughan/Heath--Brown identities belong in
separate adapters built on this algebraic layer.
-/

public section

namespace Surface.Core.PrimeLattice.MomentPath

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeVonMangoldt
open Surface.Core.PrimeWalkLosslessSpatial

/-- Bookkeeping class of an arithmetic packet atom. The tag carries no
estimate and is not used as theorem authority. -/
inductive VaughanAtomKind
  | typeI
  | typeII
  | primePower
  | boundary
  deriving DecidableEq, Repr

/-- A finite packet frame for the conductor-three coefficients through
`2 * N`. Several atoms may enter at the same arithmetic moment; `collapse`
says that their amplitudes recover that one unsummed coefficient exactly. -/
structure ConductorThreeCoefficientPacketFrame (N : ℕ) where
  Atom : Type
  atomFintype : Fintype Atom
  index : Atom → Fin (2 * N + 1)
  kind : Atom → VaughanAtomKind
  amplitude : Atom → ℂ
  packet : Atom → SpatialL2
  readout : SpatialL2 →L[ℂ] ℂ
  collapse : ∀ n : Fin (2 * N + 1),
    (∑ a : Atom, if index a = n then amplitude a else 0) =
      (twistedVonMangoldtThree n : ℂ)
  readout_packet : ∀ a, readout (packet a) = amplitude a

attribute [instance] ConductorThreeCoefficientPacketFrame.atomFintype

/-- The finite atom fiber entering at one arithmetic moment. -/
@[expose]
noncomputable def entryFiber {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) : Finset frame.Atom := by
  classical
  exact Finset.univ.filter fun a ↦ frame.index a = x

/-- Distinct arithmetic moments have disjoint entry fibers. -/
@[surface_novel, surface_published]
theorem entryFiber_disjoint_of_ne {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    {x y : Fin (2 * N + 1)} (hxy : x ≠ y) :
    Disjoint (entryFiber frame x) (entryFiber frame y) := by
  classical
  rw [Finset.disjoint_left]
  intro a hax hay
  simp only [entryFiber, Finset.mem_filter, Finset.mem_univ, true_and] at hax hay
  exact hxy (hax.symm.trans hay)

/-- The arithmetic clock covers every packet atom. Together with disjointness
this is the exact finite meaning of “passes every moment once.” -/
@[surface_novel, surface_published]
theorem momentClock_covers_atoms {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    [DecidableEq frame.Atom] :
    (Finset.univ : Finset (Fin (2 * N + 1))).biUnion
        (entryFiber frame) = Finset.univ := by
  classical
  ext a
  simp [entryFiber]

/-- The packets entering at exactly one arithmetic moment. -/
@[expose]
def entryState {N : ℕ} (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) : SpatialL2 :=
  ∑ a : frame.Atom, if frame.index a = x then frame.packet a else 0

/-- Finite linear synthesis of packet coefficients.  This is the linear
object beneath the moment path; no frame bound is asserted. -/
@[expose]
def packetSynthesis {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    (frame.Atom → ℂ) →ₗ[ℂ] SpatialL2 where
  toFun coefficient := ∑ a : frame.Atom, coefficient a • frame.packet a
  map_add' := by
    intro left right
    simp only [Pi.add_apply, add_smul, Finset.sum_add_distrib]
  map_smul' := by
    intro scalar coefficient
    simp only [Pi.smul_apply, smul_eq_mul, mul_smul, RingHom.id_apply]
    rw [Finset.smul_sum]

/-- Boolean prefix selection embedded into complex packet coefficients. -/
@[expose]
def momentCoefficients {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) : frame.Atom → ℂ :=
  fun a ↦ if frame.index a ≤ x then 1 else 0

/-- Partial packet sum through the moment `x`. This is the canonical finite
moment path; it visits coefficient fibers in arithmetic order. -/
@[expose]
def momentState {N : ℕ} (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) : SpatialL2 :=
  ∑ a : frame.Atom, if frame.index a ≤ x then frame.packet a else 0

/-- The moment path is exactly the linear synthesis of its prefix-selection
coefficient vector. -/
@[surface_novel, surface_published]
theorem packetSynthesis_momentCoefficients {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) :
    packetSynthesis frame (momentCoefficients frame x) =
      momentState frame x := by
  classical
  unfold packetSynthesis momentCoefficients momentState
  apply Finset.sum_congr rfl
  intro a _
  by_cases ha : frame.index a ≤ x <;> simp [ha]

/-- Every atom has exactly one entry moment. This says nothing about spatial
point coverage: the unique moment is simply the value of `frame.index`. -/
@[surface_novel, surface_published]
theorem atom_enters_at_unique_moment {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) (a : frame.Atom) :
    ∃! x : Fin (2 * N + 1), frame.index a = x := by
  refine ⟨frame.index a, rfl, ?_⟩
  intro x hx
  exact hx.symm

/-- Regrouping the atoms by their entry index recovers the prefix of the
unsummed conductor-three coefficient block. -/
@[surface_novel, surface_published]
theorem amplitude_moment_eq_psi {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) :
    (∑ a : frame.Atom,
        if frame.index a ≤ x then frame.amplitude a else 0) =
      (conductorThreePsi x : ℂ) := by
  classical
  have hsingle (a : frame.Atom) :
      (∑ n : Fin (2 * N + 1),
          if n ≤ x then
            if frame.index a = n then frame.amplitude a else 0
          else 0) =
        if frame.index a ≤ x then frame.amplitude a else 0 := by
    rw [Finset.sum_eq_single (frame.index a)]
    · simp
    · intro b _ hba
      have hab : frame.index a ≠ b := Ne.symm hba
      simp [hab]
    · simp
  calc
    (∑ a : frame.Atom,
        if frame.index a ≤ x then frame.amplitude a else 0) =
        ∑ a : frame.Atom, ∑ n : Fin (2 * N + 1),
          if n ≤ x then
            if frame.index a = n then frame.amplitude a else 0
          else 0 := by
            apply Finset.sum_congr rfl
            intro a _
            exact (hsingle a).symm
    _ = ∑ n : Fin (2 * N + 1), ∑ a : frame.Atom,
          if n ≤ x then
            if frame.index a = n then frame.amplitude a else 0
          else 0 := Finset.sum_comm
    _ = ∑ n : Fin (2 * N + 1),
          if n ≤ x then
            (∑ a : frame.Atom,
              if frame.index a = n then frame.amplitude a else 0)
          else 0 := by
            apply Finset.sum_congr rfl
            intro n _
            by_cases hn : n ≤ x <;> simp [hn]
    _ = ∑ n : Fin (2 * N + 1),
          if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0 := by
            apply Finset.sum_congr rfl
            intro n _
            by_cases hn : n ≤ x
            · simp only [hn, if_true]
              exact frame.collapse n
            · simp [hn]
    _ = (conductorThreePsi x : ℂ) := by
      change
        (∑ n : Fin (2 * N + 1),
          if n.val ≤ x.val then
            (twistedVonMangoldtThree n.val : ℂ) else 0) =
          (conductorThreePsi x.val : ℂ)
      rw [Fin.sum_univ_eq_sum_range
        (fun n : ℕ ↦
          if n ≤ x.val then (twistedVonMangoldtThree n : ℂ) else 0)
        (2 * N + 1)]
      rw [← Finset.sum_range_add_sum_Ico
        (f := fun n ↦
          if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0)
        (show x.val + 1 ≤ 2 * N + 1 by omega)]
      have hmain :
          (∑ n ∈ Finset.range (x.val + 1),
              if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0) =
            ∑ n ∈ Finset.range (x.val + 1),
              (twistedVonMangoldtThree n : ℂ) := by
        apply Finset.sum_congr rfl
        intro n hn
        simp only [Finset.mem_range] at hn
        have hnle : n ≤ x.val := by omega
        simp [hnle]
      rw [hmain]
      have htail :
          (∑ n ∈ Finset.Ico (x.val + 1) (2 * N + 1),
              if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0) = 0 := by
        apply Finset.sum_eq_zero
        intro n hn
        simp only [Finset.mem_Ico] at hn
        simp [show ¬n ≤ x by omega]
      rw [htail, add_zero]
      simp [conductorThreePsi]

/-- The bounded readout of the moment state is exactly the twisted Chebyshev
sum at that moment. -/
@[surface_novel, surface_published]
theorem readout_momentState {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) :
    frame.readout (momentState frame x) = (conductorThreePsi x : ℂ) := by
  rw [momentState, map_sum]
  calc
    (∑ a : frame.Atom,
        frame.readout
          (if frame.index a ≤ x then frame.packet a else 0)) =
        ∑ a : frame.Atom,
          if frame.index a ≤ x then frame.amplitude a else 0 := by
            apply Finset.sum_congr rfl
            intro a _
            by_cases ha : frame.index a ≤ x
            · simp [ha, frame.readout_packet]
            · simp [ha]
    _ = (conductorThreePsi x : ℂ) := amplitude_moment_eq_psi frame x

/-- A successor step adds exactly the packet fiber assigned to the new
moment. Multiple atoms may enter together, so the right side is `entryState`
rather than a single packet. -/
@[surface_novel, surface_published]
theorem momentState_succ_sub {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N)) :
    momentState frame x.succ - momentState frame x.castSucc =
      entryState frame x.succ := by
  classical
  rw [momentState, momentState, entryState, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a _
  by_cases ha : frame.index a = x.succ
  · have hnew : frame.index a ≤ x.succ := ha.le
    have hold : ¬frame.index a ≤ x.castSucc := by
      rw [ha]
      exact not_le_of_gt x.castSucc_lt_succ
    rw [if_pos hnew, if_neg hold, if_pos ha, sub_zero]
  · have hle : frame.index a ≤ x.succ ↔ frame.index a ≤ x.castSucc := by
      change (frame.index a).val ≤ x.val + 1 ↔
        (frame.index a).val ≤ x.val
      have hane : (frame.index a).val ≠ x.val + 1 := by
        intro hval
        apply ha
        apply Fin.ext
        exact hval
      omega
    by_cases hax : frame.index a ≤ x.castSucc
    · simp [ha, hax, hle.mpr hax]
    · simp [ha, hax, hle.not.mpr hax]

/-! ## Algebraic inhabitant (not a geometric packet construction) -/

/-- One atom per coefficient, encoded along the repository's normalized
rank-one spatial mode. This witnesses only the consistency of the algebraic
interface. It has no tube localization and cannot prove a signed packet
estimate. -/
@[expose]
def canonicalRankOneCoefficientFrame (N : ℕ) :
    ConductorThreeCoefficientPacketFrame N where
  Atom := Fin (2 * N + 1)
  atomFintype := inferInstance
  index := id
  kind := fun _ ↦ .boundary
  amplitude := fun n ↦ (twistedVonMangoldtThree n : ℂ)
  packet := fun n ↦
    canonicalUnitSpatialProfile.encoder (twistedVonMangoldtThree n : ℂ)
  readout := canonicalUnitSpatialProfile.decoder
  collapse := by
    intro n
    classical
    rw [Finset.sum_eq_single n]
    · simp
    · intro b _ hbn
      simp [hbn]
    · simp
  readout_packet := by
    intro n
    exact canonicalUnitSpatialProfile.decoder_encoder
      (twistedVonMangoldtThree n : ℂ)

end

end Surface.Core.PrimeLattice.MomentPath
