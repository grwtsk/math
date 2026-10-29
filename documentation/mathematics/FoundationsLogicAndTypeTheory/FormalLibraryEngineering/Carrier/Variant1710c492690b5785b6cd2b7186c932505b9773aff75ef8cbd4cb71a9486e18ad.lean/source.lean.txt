-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carrier.Variant2011df9a8fecaf79f2181203705ca7c465a482b37beef875210a6e37e6547655","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2011df9a8fecaf79f2181203705ca7c465a482b37beef875210a6e37e6547655","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Carrier.Variant2011df9a8fecaf79f2181203705ca7c465a482b37beef875210a6e37e6547655","mathematical_subject":"Foundations.Unclassified","original_sha256":"2011df9a8fecaf79f2181203705ca7c465a482b37beef875210a6e37e6547655","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Trajectory/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GammaBridge.All

/-! # Trajectory carriers -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carrier.Variant2011df9a8fecaf79f2181203705ca7c465a482b37beef875210a6e37e6547655

namespace Mathematics.Trajectory

universe u

structure Carrier (State : Type u) where
  id : TrajectoryId
  progression : Progression.CarrierIdentity
  profile : GammaBridge.ParameterProfile
  path : ℝ → State

end Mathematics.Trajectory
