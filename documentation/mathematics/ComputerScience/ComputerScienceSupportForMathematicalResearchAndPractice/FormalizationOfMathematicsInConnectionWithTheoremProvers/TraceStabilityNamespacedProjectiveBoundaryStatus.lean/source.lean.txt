-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveBoundaryStatus.Variant126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectiveBoundaryStatus.Variant126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","mathematical_subject":"Foundations.Unclassified","original_sha256":"126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/TraceStability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.TraceExtension
import Mathematics.StratifiedBoundary.Boundary.Perturbation

/-!
# Trace stability classification
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveBoundaryStatus.Variant126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261

namespace Mathematics.StratifiedBoundary

inductive ProjectiveBoundaryStatus where
  | exact
  | asymptotic
  | residual (bound : Nat)
  | unbounded
  | unknown
deriving DecidableEq, Repr

structure VisibleTraceResidual where
  connectorDefect : Nat
  observableMismatch : Nat
  classification : ProjectiveBoundaryStatus
  residualVisible : Bool := true
  residualVisible_exact : residualVisible = true

end Mathematics.StratifiedBoundary
