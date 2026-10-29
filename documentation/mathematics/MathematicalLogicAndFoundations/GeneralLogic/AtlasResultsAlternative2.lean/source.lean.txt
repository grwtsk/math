import FormalResearch.MathematicalTooling.Semantics.Atlas.Basic
import FormalResearch.MathematicalTooling.Semantics.Atlas.Bridge
import FormalResearch.MathematicalTooling.Semantics.Atlas.Closure

/-!
# Proof grammar as a parameterized theorem

A grammar exposes hypotheses and conclusions, together with an actual theorem
at every parameter. It is neither an extraction guess nor a sequence of tactics.
Concrete source bindings belong in checked fixtures and metadata.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

universe u

/-- A reusable proof schema whose assumptions and result are explicit. -/
structure ProofGrammar (Parameter : Type*) where
  /-- Exact assumptions needed for each instantiation of the theorem schema. -/
  hypotheses : Parameter → Prop
  /-- Exact proposition obtained when the corresponding assumptions are proved. -/
  conclusion : Parameter → Prop
  prove : ∀ parameter, hypotheses parameter → conclusion parameter

/-- Instantiate a checked grammar as a sound finite ground rule. Both premise
and conclusion interpretation maps are required; a rule-kind label is insufficient. -/
theorem ProofGrammar.rule_sound {Parameter Fact : Type*} (grammar : ProofGrammar Parameter)
    (parameter : Parameter) (meaning : Fact → Prop) (rule : Rule Fact)
    (inputs : (∀ x ∈ rule.premises, meaning x) → grammar.hypotheses parameter)
    (output : grammar.conclusion parameter → meaning rule.conclusion) :
    (∀ x ∈ rule.premises, meaning x) → meaning rule.conclusion :=
  fun premises => output (grammar.prove parameter (inputs premises))

/-- Identity composition grammar with its actual reflexive bridge witness. -/
def identityGrammar : ProofGrammar Interface where
  hypotheses _ := True
  conclusion I := Nonempty (InvertibleBridge I I)
  prove I _ := invertibleBridge_refl I

/-- Invertible composition is typed at a single shared middle interface. -/
def invertibleCompositionGrammar (I J K : Interface) : ProofGrammar Unit where
  hypotheses _ := Nonempty (InvertibleBridge I J) ∧ Nonempty (InvertibleBridge J K)
  conclusion _ := Nonempty (InvertibleBridge I K)
  prove _ premises := invertibleBridge_trans premises.1 premises.2

/-- The implication grammar retains orientation and introduces no converse. -/
def implicationGrammar (P Q R : Prop) : ProofGrammar Unit where
  hypotheses _ := (P → Q) ∧ (Q → R)
  conclusion _ := P → R
  prove _ premises := implication_trans premises.1 premises.2

/-- Typed specializations supply an actual composite specialization. -/
def specializationGrammar (I J K : Interface) : ProofGrammar Unit where
  hypotheses _ := Nonempty (Specialization I J) ∧ Nonempty (Specialization J K)
  conclusion _ := Nonempty (Specialization I K)
  prove _ premises := by
    obtain ⟨first⟩ := premises.1
    obtain ⟨second⟩ := premises.2
    exact ⟨second.comp first⟩

/-- Transport a chosen property to the equivalent carrier using the declared inverse. -/
def propertyTransportGrammar {α β : Type u} (equivalence : α ≃ β) (property : α → Prop) :
    ProofGrammar α where
  hypotheses x := property x
  conclusion x := property (equivalence.symm (equivalence x))
  prove x hypothesis := (property_transport equivalence property x).mpr hypothesis

/-- Reuse the original quotient-descent theorem as a parameterized proof carrier. -/
def quotientDescentGrammar {X Y : Type*} (relation : Setoid X) : ProofGrammar (X → Y) where
  hypotheses target := ∀ x y, relation x y → target x = target y
  conclusion target := RecoverableFrom (Quotient.mk relation) target
  prove target := (recoverableFrom_quotient_iff relation target).mpr

/-- Descent followed by a declared map reuses the original recovery postcomposition law. -/
def quotientDescentCompositionGrammar {X Y Z : Type*} (relation : Setoid X) (next : Y → Z) :
    ProofGrammar (X → Y) where
  hypotheses target := ∀ x y, relation x y → target x = target y
  conclusion target := RecoverableFrom (Quotient.mk relation) (next ∘ target)
  prove target invariant :=
    ((quotientDescentGrammar relation).prove target invariant).postcompose next

end FormalResearch.MathematicalTooling.Semantics.Atlas
