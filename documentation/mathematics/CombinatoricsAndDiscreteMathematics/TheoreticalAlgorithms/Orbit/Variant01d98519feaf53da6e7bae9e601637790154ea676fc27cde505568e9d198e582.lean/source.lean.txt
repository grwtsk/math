import Mathlib.Data.List.Basic

/-!
# Exact orbit-character coverage

An orbit certificate decides precisely the supplied arithmetic relation
lattice.  Character projection retains every finite weight component rather
than treating the invariant average as a complete decomposition.
-/

namespace Mathematics.AbelReynolds

abbrev Weight := List Int

def Weight.difference (left right : Weight) : Weight :=
  List.zipWith (· - ·) left right

structure RelationLatticeCertificate where
  basis : List Weight
  inRelation : Weight → Bool
  arithmeticRelation : Weight → Prop
  soundComplete :
    ∀ weight, inRelation weight = true ↔ arithmeticRelation weight
  reflexive :
    ∀ weight, inRelation (Weight.difference weight weight) = true

structure WeightedComponent (Value : Type*) where
  weight : Weight
  value : Value
  deriving DecidableEq, Repr

def sameCharacter
    (certificate : RelationLatticeCertificate)
    (left right : Weight) : Bool :=
  certificate.inRelation (Weight.difference left right)

def characterProjection
    (certificate : RelationLatticeCertificate)
    (representative : Weight)
    (components : List (WeightedComponent Value)) :
    List (WeightedComponent Value) :=
  components.filter
    (fun component =>
      sameCharacter certificate component.weight representative)

theorem component_mem_own_projection
    (certificate : RelationLatticeCertificate)
    (component : WeightedComponent Value)
    (components : List (WeightedComponent Value))
    (member : component ∈ components) :
    component ∈
      characterProjection certificate component.weight components := by
  simp only [characterProjection, List.mem_filter]
  exact ⟨member, certificate.reflexive component.weight⟩

structure CharacterCoverageCertificate (Value : Type*) where
  relation : RelationLatticeCertificate
  components : List (WeightedComponent Value)
  representatives : List Weight
  retained :
    ∀ component ∈ components,
      ∃ representative ∈ representatives,
        component ∈
          characterProjection relation representative components

structure AbelReynoldsAgreement (Value : Type*) where
  projector : Weight → Value → Value
  abelBoundary : Weight → Value → Value
  agreement :
    ∀ weight value,
      projector weight value = abelBoundary weight value

def invariantWeight (weight : Weight) : Bool :=
  weight.all (· = 0)

def invariantProjection
    (components : List (WeightedComponent Value)) :
    List (WeightedComponent Value) :=
  components.filter (fun component => invariantWeight component.weight)

theorem nontrivial_component_is_not_detected_by_invariant_projection
    (value : Value) :
    invariantProjection
        [{ weight := [1], value := value }] = [] ∧
      ([{ weight := [1], value := value }] :
        List (WeightedComponent Value)) ≠ [] := by
  simp [invariantProjection, invariantWeight]

end Mathematics.AbelReynolds
