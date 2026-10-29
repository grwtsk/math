import FormalResearch.MathematicalTooling.Semantics.Atlas.Foliation

/-!
# Small checked bridge fixtures

These fixtures distinguish occurrence spelling, explicit equivalence and one-way
implication. They exercise mathematical evidence directly, without treating
metadata strings as declaration resolution.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas.BridgeFixtures

/-- Two occurrences can have the same printed name while their sources differ. -/
def occurrenceName (_ : Bool) : String := "D"

/-- Source identity distinguishes the two occurrences despite their equal printed names. -/
def occurrenceSource : Bool → String
  | false => "source-a"
  | true => "source-b"

/-- Even definitionally equal carriers do not automatically create an edge. -/
def noBridgeGraph : FiniteBridgeGraph Bool Unit where
  nodes := Finset.univ
  bridges := ∅
  interface := fun _ => .object Nat
  admitted := fun _ =>
    { source := false
      target := false
      evidence := .invertible (.definitionalEquality (.object Nat))
      metadata := ⟨"", "unused edge identity"⟩ }
  endpoints_mem := by simp

/-- Identical spelling and even identical carrier types are insufficient. -/
theorem identical_names_without_bridge_remain_distinct :
    occurrenceName false = occurrenceName true ∧
      occurrenceSource false ≠ occurrenceSource true ∧
      ¬ noBridgeGraph.SameLeaf false true := by
  refine ⟨rfl, by decide, ?_⟩
  rw [noBridgeGraph.same_leaf_iff_eq_of_no_invertible]
  · decide
  · intro x y
    simp [FiniteBridgeGraph.InvertibleEdge, noBridgeGraph]

/-- This particular coordinate change is explicitly proved with both inverses. -/
def productUnitEquiv : (Nat × Unit) ≃ Nat where
  toFun := Prod.fst
  invFun := fun n => (n, ())
  left_inv := by rintro ⟨n, ⟨⟩⟩; rfl
  right_inv := by intro n; rfl

/-- The two checked carrier interfaces related by the product-with-unit equivalence. -/
def equivalenceInterface : Bool → Interface
  | false => .object (Nat × Unit)
  | true => .object Nat

/-- Bind the product-with-unit equivalence to its endpoints and source annotation. -/
def productUnitBridge : VerifiedBridge equivalenceInterface where
  source := false
  target := true
  evidence := .invertible (.equivalence productUnitEquiv)
  metadata :=
    ⟨"FormalResearch.MathematicalTooling.Semantics.Atlas.BridgeFixtures.productUnitEquiv",
      "finite product fixture"⟩

/-- Finite graph admitting the single checked product-with-unit equivalence. -/
def equivalenceGraph : FiniteBridgeGraph Bool Unit where
  nodes := Finset.univ
  bridges := Finset.univ
  interface := equivalenceInterface
  admitted := fun _ => productUnitBridge
  endpoints_mem := by simp

/-- One checked equivalence places its endpoints on the same leaf. -/
theorem proved_equivalence_same_leaf : equivalenceGraph.SameLeaf false true := by
  apply Relation.EqvGen.rel
  exact ⟨(), Finset.mem_univ (), rfl, rfl, trivial⟩

/-- The transport remains available in the reverse direction with an inverse. -/
theorem proved_equivalence_reverse_transport :
    Nonempty ((equivalenceGraph.interface true).Carrier ≃
      (equivalenceGraph.interface false).Carrier) :=
  equivalenceGraph.same_leaf_equiv
    (equivalenceGraph.leaf_equivalence.symm proved_equivalence_same_leaf)

/-- Statement interfaces for the one-way implication from falsehood to truth. -/
def implicationInterface : Bool → Interface
  | false => .statement False
  | true => .statement True

/-- An actual implication can be admitted despite lacking a converse. -/
theorem false_implies_true : False → True := False.elim

/-- Bind the proved implication to its exact statement interfaces. -/
def implicationBridge : VerifiedBridge implicationInterface where
  source := false
  target := true
  evidence := .directional (.implication false_implies_true)
  metadata :=
    ⟨"FormalResearch.MathematicalTooling.Semantics.Atlas.BridgeFixtures.false_implies_true",
      "finite implication fixture"⟩

/-- Finite graph selecting the directional implication without an inverse edge. -/
def implicationGraph : FiniteBridgeGraph Bool Unit where
  nodes := Finset.univ
  bridges := Finset.univ
  interface := implicationInterface
  admitted := fun _ => implicationBridge
  endpoints_mem := by simp

/-- A selected directional edge is present, but does not identify its leaves. -/
theorem implication_is_transverse :
    () ∈ implicationGraph.bridges ∧
      implicationBridge.evidence.kind = .implication ∧
      implicationBridge.evidence.orientation = .forward ∧
      ¬ implicationGraph.SameLeaf false true := by
  refine ⟨Finset.mem_univ (), rfl, rfl, ?_⟩
  rw [implicationGraph.same_leaf_iff_eq_of_no_invertible]
  · decide
  · intro x y
    simp [FiniteBridgeGraph.InvertibleEdge, implicationGraph, implicationBridge,
      BridgeEvidence.IsInvertible]

/-- This example truly has no converse, independently of graph bookkeeping. -/
theorem implication_has_no_inverse : ¬ (True → False) := fun h => h trivial

/-- A target contract, rather than carrier cardinality, licenses leaf transport. -/
theorem declared_constant_target_preserved :
    (fun _ : Bool => (7 : Nat)) false = (fun _ : Bool => (7 : Nat)) true :=
  equivalenceGraph.leaf_transport_preserves_targets (fun _ => (7 : Nat))
    (fun _ _ _ => rfl) proved_equivalence_same_leaf

/-- A distinguishing target cannot claim invariance on the admitted equivalence. -/
theorem distinguishing_target_needs_own_contract :
    ¬ equivalenceGraph.TargetInvariant (fun x : Bool => x) := by
  intro h
  have := equivalenceGraph.leaf_transport_preserves_targets (fun x : Bool => x)
    h proved_equivalence_same_leaf
  exact Bool.false_ne_true this

end FormalResearch.MathematicalTooling.Semantics.Atlas.BridgeFixtures
