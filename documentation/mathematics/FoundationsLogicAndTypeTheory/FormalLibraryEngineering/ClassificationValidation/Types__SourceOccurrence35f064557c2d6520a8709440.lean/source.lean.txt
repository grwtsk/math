/-
Released under the repository MIT license.
Research direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT.
Candidate source: native compilation and axiom audit NOT_RUN.
-/
import GRWTSK.Order.Taxonomy.Core

/-!
# Universe-polymorphic interpretations and evidence-bearing semantic bindings

Taxonomy ancestry does not furnish a map between arbitrary interpreted types.
A checked term, a restriction system, or an explicit inverse law is required.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Classification

open GRWTSK.Order.Taxonomy

universe u v w

/-- A universe of codes at each taxon, interpreted in a specified Lean universe. -/
structure Signature (T : Taxonomy) where
  Code : T.Node → Type u
  El : (n : T.Node) → Code n → Sort v

/-- All Lean types at one universe level are admissible as type codes.
The code universe is one level higher; this does not assert `Type : Type`. -/
def leanTypeSignature (T : Taxonomy) : Signature.{u + 1, u + 1} T where
  Code _ := Type u
  El _ A := A

/-- Propositions and their proofs remain propositions, not names or status flags. -/
def propositionSignature (T : Taxonomy) : Signature.{0, 0} T where
  Code _ := Prop
  El _ P := P

/-- An application can require actual policy evidence for admitting a type at a node. -/
def policySignature (T : Taxonomy) (Admissible : T.Node → Type u → Prop) :
    Signature.{u + 1, u + 1} T where
  Code n := {A : Type u // Admissible n A}
  El _ A := A.val

/-- Unlike an external declaration name, this object carries an actual typed term. -/
structure CheckedTerm {T : Taxonomy} (S : Signature.{u, v} T) where
  node : T.Node
  code : S.Code node
  value : S.El node code

/-- Every supplied code family and interpretation is representable, at its levels. -/
def signatureOfFamily {T : Taxonomy} (C : T.Node → Type u)
    (E : (n : T.Node) → C n → Sort v) : Signature T := ⟨C, E⟩

@[simp] theorem signatureOfFamily_el {T : Taxonomy}
    (C : T.Node → Type u) (E : (n : T.Node) → C n → Sort v)
    (n : T.Node) (a : C n) : (signatureOfFamily C E).El n a = E n a := rfl

/-- A directional semantic conversion must actually be supplied. -/
structure Binding {T : Taxonomy} (S : Signature.{u, v} T)
    (a b : T.Node) (A : S.Code a) (B : S.Code b) where
  apply : S.El a A → S.El b B

def Binding.identity {T : Taxonomy} (S : Signature.{u, v} T)
    (a : T.Node) (A : S.Code a) : Binding S a a A A := ⟨fun x => x⟩

def Binding.comp {T : Taxonomy} {S : Signature.{u, v} T}
    {a b c : T.Node} {A : S.Code a} {B : S.Code b} {C : S.Code c}
    (f : Binding S a b A B) (g : Binding S b c B C) : Binding S a c A C :=
  ⟨fun x => g.apply (f.apply x)⟩

/-- Reversibility has explicit computational data and both inverse laws. -/
structure ReversibleBinding {T : Taxonomy} (S : Signature.{u, v} T)
    (a b : T.Node) (A : S.Code a) (B : S.Code b) extends Binding S a b A B where
  inverse : S.El b B → S.El a A
  inverse_apply : ∀ x, inverse (apply x) = x
  apply_inverse : ∀ y, apply (inverse y) = y

/-- Independent semantic fibers with coherent restrictions towards ancestors. -/
structure RestrictionSystem (T : Taxonomy) where
  Fiber : T.Node → Type u
  restrict : {a b : T.Node} → a ≤ b → Fiber b → Fiber a
  restrict_self : ∀ (a : T.Node) (x : Fiber a), restrict (le_refl a) x = x
  restrict_comp : ∀ {a b c : T.Node} (hab : a ≤ b) (hbc : b ≤ c) (x : Fiber c),
    restrict hab (restrict hbc x) = restrict (le_trans hab hbc) x

variable {T : Taxonomy}

/-- The compatibility pullback; no invertibility is assumed. -/
def RestrictionSystem.CompatiblePair (F : RestrictionSystem.{u} T) (a b : T.Node) :=
  {p : F.Fiber a × F.Fiber b //
    F.restrict (inf_le_left : a ⊓ b ≤ a) p.1 =
    F.restrict (inf_le_right : a ⊓ b ≤ b) p.2}

/-- A functional binding requires unique compatible lifting. -/
def RestrictionSystem.UniqueLift (F : RestrictionSystem.{u} T) (a b : T.Node) : Prop :=
  ∀ x : F.Fiber a, ∃! y : F.Fiber b,
    F.restrict (inf_le_left : a ⊓ b ≤ a) x =
    F.restrict (inf_le_right : a ⊓ b ≤ b) y

noncomputable def RestrictionSystem.bindOfUniqueLift (F : RestrictionSystem.{u} T)
    {a b : T.Node} (h : F.UniqueLift a b) : F.Fiber a → F.Fiber b :=
  fun x => Classical.choose (ExistsUnique.exists (h x))

theorem RestrictionSystem.bindOfUniqueLift_compatible (F : RestrictionSystem.{u} T)
    {a b : T.Node} (h : F.UniqueLift a b) (x : F.Fiber a) :
    F.restrict (inf_le_left : a ⊓ b ≤ a) x =
    F.restrict (inf_le_right : a ⊓ b ≤ b) (F.bindOfUniqueLift h x) :=
  Classical.choose_spec (ExistsUnique.exists (h x))

/-- Common ancestry alone cannot create an element of an empty fiber. -/
theorem noUniversalConversion : ¬ Nonempty (∀ A B : Type, A → B) := by
  rintro ⟨cast⟩
  cases cast PUnit Empty PUnit.unit

end GRWTSK.Logic.Classification
