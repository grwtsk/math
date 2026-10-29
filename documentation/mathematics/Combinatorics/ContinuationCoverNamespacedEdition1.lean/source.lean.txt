-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ContinuationCover.Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ContinuationCover.Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Completion/ContinuationCover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Certified continuation covers

Child absence is not an infeasibility proof.  A parent may inherit
infeasibility from all children only when an explicit cover shows that every
parent completion continues through a registered child.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ContinuationCover.Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34

namespace Mathematics.BinaryFrontier

structure ContinuationCover
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (parent : Partial)
    (children : Finset Partial) where
  childrenRefine :
    ∀ child ∈ children,
      semantics.refines parent child
  completionCovered :
    ∀ full,
      semantics.extendsFull parent full →
      ∃ child ∈ children,
        semantics.extendsFull child full

theorem parent_infeasible_of_continuation_cover
    {Partial Full Constraint : Type}
    [DecidableEq Partial]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {constraints : Finset Constraint}
    {parent : Partial}
    {children : Finset Partial}
    (cover : ContinuationCover semantics parent children)
    (childrenInfeasible :
      ∀ child ∈ children,
        Infeasible semantics constraints child) :
    Infeasible semantics constraints parent := by
  intro parentFeasible
  obtain ⟨full, parentExtends, satisfies⟩ := parentFeasible
  obtain ⟨child, childMember, childExtends⟩ :=
    cover.completionCovered full parentExtends
  exact childrenInfeasible child childMember
    ⟨full, childExtends, satisfies⟩

end Mathematics.BinaryFrontier
