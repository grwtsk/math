-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IrreducibleDef.Variant00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IrreducibleDef.Variant00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be","mathematical_subject":"Algebra.Groups","original_sha256":"00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/toAdditiveIrredDef.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Algebra.Group.Defs


namespace GRWTSK.Algebra.GroupTheory.IrreducibleDef.Variant00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be

set_option autoImplicit true
@[to_additive]
irreducible_def mul_conj [Group G] (a b : G) := a⁻¹ * b * a

example [AddGroup A] (a b : A) : add_conj a b = (-a) + b + a :=
  add_conj_def a b
