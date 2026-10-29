-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderObservable.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CylinderObservable.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","mathematical_subject":"Foundations.Unclassified","original_sha256":"fd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/CylinderAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite-stage cylinder observables

Every cylinder observable names a finite representing stage.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderObservable.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d

namespace Mathematics.StratifiedBoundary

structure CylinderObservable (Observable : Type u) where
  stage : Nat
  observable : Observable
  finiteRepresentationRef : String

structure CylinderAlgebraPresentation
    (Observable : Type u) where
  sameObservable :
    CylinderObservable Observable →
      CylinderObservable Observable →
      Prop
  equivalenceCertificateRef : String
  noCompletedRuntimeObject : Bool := true
  noCompletedRuntimeObject_exact :
    noCompletedRuntimeObject = true

end Mathematics.StratifiedBoundary
