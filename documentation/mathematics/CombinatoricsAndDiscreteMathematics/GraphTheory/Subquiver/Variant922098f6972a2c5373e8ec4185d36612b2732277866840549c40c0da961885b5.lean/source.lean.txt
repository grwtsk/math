-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Total.Variant5c085b14753dc7dfdd8e096250a1b13f08272887e4a8bafeb89419092e1d72ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c085b14753dc7dfdd8e096250a1b13f08272887e4a8bafeb89419092e1d72ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.Total.Variant5c085b14753dc7dfdd8e096250a1b13f08272887e4a8bafeb89419092e1d72ec","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"5c085b14753dc7dfdd8e096250a1b13f08272887e4a8bafeb89419092e1d72ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/Quiver/Subquiver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 David Wärn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Wärn
-/
import Mathlib.Order.Notation
import Mathlib.Combinatorics.Quiver.Basic

/-!
## Wide subquivers

A wide subquiver `H` of a quiver `H` consists of a subset of the edge set `a ⟶ b` for
every pair of vertices `a b : V`. We include 'wide' in the name to emphasize that these
subquivers by definition contain all vertices.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Total.Variant5c085b14753dc7dfdd8e096250a1b13f08272887e4a8bafeb89419092e1d72ec

universe v u

/-- A wide subquiver `H` of `G` picks out a set `H a b` of arrows from `a` to `b`
    for every pair of vertices `a b`.

    NB: this does not work for `Prop`-valued quivers. It requires `G : Quiver.{v+1} V`. -/
def WideSubquiver (V) [Quiver.{v + 1} V] :=
  ∀ a b : V, Set (a ⟶ b)

/-- A type synonym for `V`, when thought of as a quiver having only the arrows from
some `WideSubquiver`. -/
@[nolint unusedArguments]
def WideSubquiver.toType (V) [Quiver V] (_ : WideSubquiver V) : Type u :=
  V

instance wideSubquiverHasCoeToSort {V} [Quiver V] :
    CoeSort (WideSubquiver V) (Type u) where coe H := WideSubquiver.toType V H

/-- A wide subquiver viewed as a quiver on its own. -/
instance WideSubquiver.quiver {V} [Quiver V] (H : WideSubquiver V) : Quiver H :=
  ⟨fun a b ↦ { f // f ∈ H a b }⟩

namespace Quiver

instance {V} [Quiver V] : Bot (WideSubquiver V) :=
  ⟨fun _ _ ↦ ∅⟩

instance {V} [Quiver V] : Top (WideSubquiver V) :=
  ⟨fun _ _ ↦ Set.univ⟩

noncomputable instance {V} [Quiver V] : Inhabited (WideSubquiver V) :=
  ⟨⊤⟩

-- TODO Unify with `CategoryTheory.Arrow`? (The fields have been named to match.)
/-- `Total V` is the type of _all_ arrows of `V`. -/
-- Porting note: no hasNonemptyInstance linter yet https://github.com/leanprover-community/mathlib4/issues/5171
@[ext]
structure Total (V : Type u) [Quiver.{v} V] : Sort max (u + 1) v where
  /-- the source vertex of an arrow -/
  left : V
  /-- the target vertex of an arrow -/
  right : V
  /-- an arrow -/
  hom : left ⟶ right

/-- A wide subquiver of `G` can equivalently be viewed as a total set of arrows. -/
def wideSubquiverEquivSetTotal {V} [Quiver V] :
    WideSubquiver V ≃
      Set (Total V) where
  toFun H := { e | e.hom ∈ H e.left e.right }
  invFun S a b := { e | Total.mk a b e ∈ S }
  left_inv _ := rfl
  right_inv _ := rfl

/-- An `L`-labelling of a quiver assigns to every arrow an element of `L`. -/
def Labelling (V : Type u) [Quiver V] (L : Sort*) :=
  ∀ ⦃a b : V⦄, (a ⟶ b) → L

instance {V : Type u} [Quiver V] (L) [Inhabited L] : Inhabited (Labelling V L) :=
  ⟨fun _ _ _ ↦ default⟩

end Quiver
