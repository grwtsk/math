/-
DistinctOccupancyAndNormalizedSelection
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Midpoint coverage counts Fin samples×Fin samples, zero sampling denotes0 and the unit-interval result retains samplesPositive. Ownership and occupancy records remain distinct; normalized ownership mass requires selectedOwnerCount≠0. The list-selection record retains all four raw data fields. Its separate Coherent predicate requires mask-length agreement, nonempty selection and weight/owner equalities; the raw record constructor does not establish these properties. zip/findSome semantics are unchanged. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- Occupancy classifies geometric inclusion and is independent of ownership. -/
abbrev OccupancyMask (count : Nat) := Fin count → Bool

/-- Every carrier under consideration is a claimant. -/
abbrev Claimant (count : Nat) := Fin count

/-- Directional ownership selection is intentionally a distinct type from
geometric occupancy, even though both have Boolean coordinates. -/
structure OwnershipSelectionMask (count : Nat) where
  selected : Fin count → Bool

instance ownershipSelectionMaskCoeFun {count : Nat} :
    CoeFun (OwnershipSelectionMask count)
    (fun _ => Fin count → Bool) :=
  ⟨OwnershipSelectionMask.selected⟩

/-- Owners are exactly the selected claimants. -/
abbrev Owner {count : Nat} (mask : OwnershipSelectionMask count) :=
  { claimant : Claimant count // mask claimant = true }

/-- Number of selected owners. -/
def selectedOwnerCount {count : Nat} (mask : OwnershipSelectionMask count) : Nat :=
  ((Finset.univ : Finset (Fin count)).filter (fun index => mask index)).card

/-- Exact normalized ownership weight.  A zero mask fails closed to all-zero
weights at the semantic level; the executable API rejects it. -/
def ownershipWeight {count : Nat} (mask : OwnershipSelectionMask count)
    (index : Fin count) : ℚ :=
  if mask index then 1 / selectedOwnerCount mask else 0

@[simp] theorem ownershipWeight_unselected {count : Nat}
    (mask : OwnershipSelectionMask count) (index : Fin count)
    (unselected : mask index = false) : ownershipWeight mask index = 0 := by
  simp [ownershipWeight, unselected]

@[simp] theorem ownershipWeight_selected {count : Nat}
    (mask : OwnershipSelectionMask count) (index : Fin count)
    (selected : mask index = true) :
    ownershipWeight mask index = 1 / selectedOwnerCount mask := by
  simp [ownershipWeight, selected]

/-- Every valid nonempty ownership mask normalizes to unit mass. -/
theorem ownershipWeight_sum {count : Nat} (mask : OwnershipSelectionMask count)
    (selected : selectedOwnerCount mask ≠ 0) :
    ∑ index, ownershipWeight mask index = 1 := by
  classical
  have distribute :
      (∑ index, ownershipWeight mask index) =
        (∑ index, if mask index then (1 : ℚ) else 0) /
          selectedOwnerCount mask := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro index _
    by_cases chosen : mask index = true
    · simp [ownershipWeight, chosen]
    · have rejected : mask index = false := Bool.eq_false_of_not_eq_true chosen
      simp [ownershipWeight, rejected]
  rw [distribute]
  simp only [Finset.sum_boole]
  change (selectedOwnerCount mask : ℚ) / (selectedOwnerCount mask : ℚ) = 1
  exact div_self (Nat.cast_ne_zero.mpr selected)

/-- Pure ownership has exactly one selected owner. -/
def PureOwnership {count : Nat} (mask : OwnershipSelectionMask count) : Prop :=
  selectedOwnerCount mask = 1

/-- Mixed ownership has at least two selected owners. -/
def MixedOwnership {count : Nat} (mask : OwnershipSelectionMask count) : Prop :=
  1 < selectedOwnerCount mask

/-- Occupancy is geometric inclusion data.  It is deliberately a distinct
record from ownership, which additionally requires a nonempty selection. -/
structure OccupancyState (count : Nat) where
  mask : OccupancyMask count

/-- Ownership is a nonempty selection of claimants, not a synonym for
geometric occupancy. -/
structure OwnershipState (count : Nat) where
  mask : OwnershipSelectionMask count
  nonempty : selectedOwnerCount mask ≠ 0

/-- Exact finite weighted bit evaluation. -/
def weightedBitEvaluation {count : Nat} (mask : OwnershipSelectionMask count)
    (bits : Fin count → Bool) : ℚ :=
  ∑ index, ownershipWeight mask index * if bits index then 1 else 0

end BitMatrix.Runtime.Semantics
