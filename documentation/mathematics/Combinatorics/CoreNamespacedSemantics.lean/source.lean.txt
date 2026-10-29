-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Semantics.Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Semantics.Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Completion/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# Generic finite completion semantics

Completion is independent of any bitfield representation.  Rejected proof
objects, graph traversal, runtime ownership, and serialization do not occur
in this mathematical core.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Semantics.Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e

namespace Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint

structure Semantics
    (Partial : Type uPartial)
    (Full : Type uFull)
    (Constraint : Type uConstraint) where
  refines :
    Partial → Partial → Prop
  extendsFull :
    Partial → Full → Prop
  satisfies :
    Full → Constraint → Prop
  refinement_sound :
    ∀ {parent child completion},
      refines parent child →
      extendsFull child completion →
      extendsFull parent completion

def Semantics.SatisfiesAll
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (completion : Full)
    (constraints : Finset Constraint) : Prop :=
  ∀ constraint ∈ constraints,
    semantics.satisfies completion constraint

def Semantics.Feasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (partial : Partial) : Prop :=
  ∃ completion,
    semantics.extendsFull partial completion ∧
      semantics.SatisfiesAll
        completion constraints

def Semantics.Infeasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (partial : Partial) : Prop :=
  ∀ completion,
    semantics.extendsFull partial completion →
    ¬semantics.SatisfiesAll
      completion constraints

theorem Semantics.infeasible_iff_not_feasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (partial : Partial) :
    semantics.Infeasible constraints partial ↔
      ¬semantics.Feasible constraints partial := by
  constructor
  · intro infeasible feasible
    rcases feasible with
      ⟨completion, extends, satisfies⟩
    exact
      infeasible completion extends satisfies
  · intro notFeasible completion extends satisfies
    exact
      notFeasible
        ⟨completion, extends, satisfies⟩

structure CompletionCertificate
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (partial : Partial) where
  completion : Full
  extends :
    semantics.extendsFull partial completion
  satisfies :
    semantics.SatisfiesAll
      completion constraints

structure NoCompletionCertificate
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (partial : Partial) where
  noCompletion :
    semantics.Infeasible constraints partial

theorem Semantics.infeasible_of_refinement
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics Partial Full Constraint}
    {constraints : Finset Constraint}
    {parent child : Partial}
    (refines :
      semantics.refines parent child)
    (parentInfeasible :
      semantics.Infeasible constraints parent) :
    semantics.Infeasible constraints child := by
  intro completion childExtends
  exact
    parentInfeasible completion
      (semantics.refinement_sound
        refines childExtends)

theorem Semantics.infeasibility_downward_closed
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics Partial Full Constraint}
    {constraints : Finset Constraint}
    {parent child : Partial}
    (refines :
      semantics.refines parent child)
    (parentInfeasible :
      semantics.Infeasible constraints parent) :
    semantics.Infeasible constraints child :=
  semantics.infeasible_of_refinement
    refines parentInfeasible

theorem Semantics.infeasible_mono_constraints
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics Partial Full Constraint}
    {small large : Finset Constraint}
    {partial : Partial}
    (subset : small ⊆ large)
    (smallInfeasible :
      semantics.Infeasible small partial) :
    semantics.Infeasible large partial := by
  intro completion extends satisfiesLarge
  apply smallInfeasible completion extends
  intro constraint member
  exact
    satisfiesLarge constraint (subset member)

theorem Semantics.feasible_anti_constraints
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics Partial Full Constraint}
    {small large : Finset Constraint}
    {partial : Partial}
    (subset : small ⊆ large)
    (largeFeasible :
      semantics.Feasible large partial) :
    semantics.Feasible small partial := by
  rcases largeFeasible with
    ⟨completion, extends, satisfiesLarge⟩
  exact
    ⟨completion, extends, fun constraint member =>
      satisfiesLarge constraint (subset member)⟩

end Mathematics.BinaryFrontier.Completion
