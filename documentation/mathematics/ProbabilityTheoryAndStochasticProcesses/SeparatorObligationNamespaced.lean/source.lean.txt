-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.SeparatorKind.Variant62b713f987890cb50b91ecd3020a8b24c3eeed98735d5ab1d9955436aae371c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62b713f987890cb50b91ecd3020a8b24c3eeed98735d5ab1d9955436aae371c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.SeparatorKind.Variant62b713f987890cb50b91ecd3020a8b24c3eeed98735d5ab1d9955436aae371c2","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"62b713f987890cb50b91ecd3020a8b24c3eeed98735d5ab1d9955436aae371c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/SeparatorObligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.RoutingStatus
import Mathematics.Projection.StructuralIsomorphism

/-!
# Proof obligations emitted by unresolved routing residue

A separator is new mathematics.  A model may propose one, but admission
requires invariance, conservative refinement, and exact separation proofs.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.SeparatorKind.Variant62b713f987890cb50b91ecd3020a8b24c3eeed98735d5ab1d9955436aae371c2

namespace Mathematics.Projection

universe u v w

inductive SeparatorKind
  | intrinsicProbe
  | externalRigidifier
  deriving DecidableEq, Repr

structure SeparatorObligation
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  residue : RoutingResidue Element Probe
  separatorKind : SeparatorKind

/--
An admitted intrinsic separator is an invariant new probe that distinguishes
the complete unresolved fiber and conservatively extends the old code.  The
required theorem is this dependent type itself; no decorative string or
caller-selected proposition is treated as a discharged obligation.
-/
structure CertifiedSeparator
    {Element : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    [DecidableEq Element]
    (oldEncode : Element → IncidenceCode OldProbe)
    (newEncode : Element → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe)
    (obligation : SeparatorObligation Element OldProbe) where
  conservative :
    ConservativeRefinement oldEncode newEncode extension
  separates :
    ∀ left ∈ obligation.residue.candidateFiber,
      ∀ right ∈ obligation.residue.candidateFiber,
        left ≠ right →
          newEncode left ≠ newEncode right

end Mathematics.Projection
