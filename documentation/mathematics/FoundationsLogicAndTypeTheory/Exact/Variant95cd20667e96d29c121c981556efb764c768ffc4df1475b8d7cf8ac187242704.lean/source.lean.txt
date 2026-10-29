-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Exact.Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Exact.Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/Exact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Progression.All
import Mathlib.Data.Real.Basic

/-! # Exact endpoint-preserving Gamma bridges -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Exact.Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f

namespace Mathematics.GammaBridge

universe u

/-- An exact bridge carries its endpoints as fixed predicates. -/
structure Exact (State : Type u) where
  id : GammaBridgeId
  path : ℝ → State
  left : State
  right : State
  left_endpoint : path 0 = left
  right_endpoint : path 1 = right

end Mathematics.GammaBridge
