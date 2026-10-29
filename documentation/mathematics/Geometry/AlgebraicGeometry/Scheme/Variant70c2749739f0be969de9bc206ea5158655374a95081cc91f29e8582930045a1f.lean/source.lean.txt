-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Restrict.Variant6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Restrict.Variant6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Delab/Scheme.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.AlgebraicGeometry.Restrict


namespace GRWTSK.Geometry.AlgebraicGeometry.Restrict.Variant6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec

universe u

open AlgebraicGeometry

variable (X : Scheme.{u}) (x : X) in
/-- info: x : ↥X -/
#guard_msgs in
#check x

variable (R : CommRingCat.{u}) (x : Spec R) in
/-- info: x : ↥(Spec R) -/
#guard_msgs in
#check x

variable (X : Scheme.{u}) (U : X.Opens) (x : U.toScheme) in
/-- info: x : ↥↑U -/
#guard_msgs in
#check x

variable (X : Scheme.{u}) (U : X.Opens) (x : U) in
/-- info: x : ↥U -/
#guard_msgs in
#check x
