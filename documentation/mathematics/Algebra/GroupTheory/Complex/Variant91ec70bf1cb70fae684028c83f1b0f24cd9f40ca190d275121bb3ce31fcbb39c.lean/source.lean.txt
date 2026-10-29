-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Complex.Variant0f52fa706b2ce3ca550e4afc515ad4591e6c3bc6076a3d2067e9ef940d1529e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f52fa706b2ce3ca550e4afc515ad4591e6c3bc6076a3d2067e9ef940d1529e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Complex.Variant0f52fa706b2ce3ca550e4afc515ad4591e6c3bc6076a3d2067e9ef940d1529e6","mathematical_subject":"Algebra.Groups","original_sha256":"0f52fa706b2ce3ca550e4afc515ad4591e6c3bc6076a3d2067e9ef940d1529e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Cubical/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity
import Mathlib.Algebra.Group.Hom.Basic

/-! # Dimension-explicit cubical chain complexes -/


namespace GRWTSK.Algebra.GroupTheory.Complex.Variant0f52fa706b2ce3ca550e4afc515ad4591e6c3bc6076a3d2067e9ef940d1529e6

namespace Mathematics.Cubical

universe u

/-- A concrete complex must provide the fixed predicate `∂ (∂ c) = 0`. -/
structure Complex (Chain : Type u) [AddCommMonoid Chain] where
  dimension : Nat
  boundary : Chain →+ Chain
  boundary_squared_zero : ∀ chain, boundary (boundary chain) = 0

theorem boundary_squared_zero
    {Chain : Type u} [AddCommMonoid Chain]
    (complex : Complex Chain)
    (chain : Chain) :
    complex.boundary (complex.boundary chain) = 0 :=
  complex.boundary_squared_zero chain

end Mathematics.Cubical
