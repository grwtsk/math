-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpistemicDisposition.Variant1798fcee02e1621fcce8526df65f66cb760c37018eb9d1ad9dc19f489e3f833a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1798fcee02e1621fcce8526df65f66cb760c37018eb9d1ad9dc19f489e3f833a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EpistemicDisposition.Variant1798fcee02e1621fcce8526df65f66cb760c37018eb9d1ad9dc19f489e3f833a","mathematical_subject":"Computation.DataStructures","original_sha256":"1798fcee02e1621fcce8526df65f66cb760c37018eb9d1ad9dc19f489e3f833a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/Negative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Negative mathematics

Failure, ambiguity, prohibition, and supersession remain addressable
mathematical states.  They are not represented by deleting a positive record.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpistemicDisposition.Variant1798fcee02e1621fcce8526df65f66cb760c37018eb9d1ad9dc19f489e3f833a

namespace Mathematics.Concept

inductive EpistemicDisposition
  | true_
  | false_
  | conjectured
  | independent
  | unknown
  | ambiguous
  | undefined
  | prohibited
  | computationalFailure
  | semanticFailure
  | superseded
  | attempted
  deriving DecidableEq, Repr, Inhabited

/-- A first-class negative or unresolved mathematical observation. -/
structure NegativeElement where
  elementId : ElementRef
  subjectId : ElementId
  disposition : EpistemicDisposition
  source : SourceAnalysis.AbstractSourceAddress
  obstructionIds : List StableId
  continuationIds : List StableId
  evidenceIds : List EvidenceId
  statementDigest : Digest
  deriving DecidableEq, Repr

/-- A negative element remains about its original subject under continuation. -/
def NegativeElement.SameSubject
    (left right : NegativeElement) : Prop :=
  left.subjectId = right.subjectId

end Mathematics.Concept
