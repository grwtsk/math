-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderTraceCertificate.Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CylinderTraceCertificate.Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8","mathematical_subject":"Foundations.Unclassified","original_sha256":"098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/CylinderTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.CylinderAlgebra

/-!
# Stage-independent cylinder trace
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderTraceCertificate.Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8

namespace Mathematics.StratifiedBoundary

structure CylinderTraceCertificate
    (Observable : Type u) where
  algebra : CylinderAlgebraPresentation Observable
  stageTrace : Nat → Observable → Int
  positiveCone : CylinderObservable Observable → Prop
  multiply :
    CylinderObservable Observable →
      CylinderObservable Observable →
      CylinderObservable Observable
  wellDefined :
    ∀ {left right},
      algebra.sameObservable left right →
        stageTrace left.stage left.observable =
          stageTrace right.stage right.observable
  positive :
    ∀ observable,
      positiveCone observable →
        0 ≤ stageTrace observable.stage observable.observable
  tracial :
    ∀ left right,
      stageTrace
          (multiply left right).stage
          (multiply left right).observable =
        stageTrace
          (multiply right left).stage
          (multiply right left).observable

def cylinderTraceValue
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    (observable : CylinderObservable Observable) : Int :=
  certificate.stageTrace observable.stage observable.observable

theorem cylinder_trace_well_defined
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    {left right : CylinderObservable Observable}
    (same : certificate.algebra.sameObservable left right) :
    cylinderTraceValue certificate left =
      cylinderTraceValue certificate right :=
  certificate.wellDefined same

theorem cylinder_trace_positive
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    (observable : CylinderObservable Observable)
    (positive : certificate.positiveCone observable) :
    0 ≤ cylinderTraceValue certificate observable :=
  certificate.positive observable positive

theorem cylinder_trace_tracial
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    (left right : CylinderObservable Observable) :
    cylinderTraceValue certificate
        (certificate.multiply left right) =
      cylinderTraceValue certificate
        (certificate.multiply right left) :=
  certificate.tracial left right

end Mathematics.StratifiedBoundary
