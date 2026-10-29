-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefinementEdge.Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RefinementEdge.Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d","mathematical_subject":"Foundations.Unclassified","original_sha256":"a1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Refinement/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Completion.Bitfield

/-!
# Finite one-coordinate refinement trees

Every certified edge carries a `OneCoordinateResolution`.  A complete Boolean
split resolves the same unresolved coordinate to zero and one in its two
children.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefinementEdge.Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d

namespace Mathematics.BinaryFrontier

structure RefinementEdge
    {n : Nat}
    (parent child : PartialBitfield n) where
  resolution :
    OneCoordinateResolution parent child
  presentationDeltaRef : String
  verificationRef : String
  rollbackRef : String

structure CompleteBooleanSplit
    {n : Nat}
    (parent : PartialBitfield n) where
  coordinate : Fin n
  parentUnresolved :
    parent coordinate = .unresolved
  zeroChild : PartialBitfield n :=
    resolveAt parent coordinate false
  oneChild : PartialBitfield n :=
    resolveAt parent coordinate true
  zeroChild_exact :
    zeroChild = resolveAt parent coordinate false
  oneChild_exact :
    oneChild = resolveAt parent coordinate true

def CompleteBooleanSplit.zeroResolution
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    OneCoordinateResolution parent split.zeroChild := by
  rw [split.zeroChild_exact]
  exact resolveAt_is_oneCoordinateResolution
    parent split.coordinate false split.parentUnresolved

def CompleteBooleanSplit.oneResolution
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    OneCoordinateResolution parent split.oneChild := by
  rw [split.oneChild_exact]
  exact resolveAt_is_oneCoordinateResolution
    parent split.coordinate true split.parentUnresolved

theorem completeBooleanSplit_children_extend
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    parent ≤ split.zeroChild ∧
      parent ≤ split.oneChild :=
  ⟨oneCoordinateResolution_extends split.zeroResolution,
    oneCoordinateResolution_extends split.oneResolution⟩

end Mathematics.BinaryFrontier
