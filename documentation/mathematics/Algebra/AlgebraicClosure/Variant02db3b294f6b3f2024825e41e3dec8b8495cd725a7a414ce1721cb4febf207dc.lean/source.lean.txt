-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Rat.Variant26966266f3ab59c79332dc1cbbb2a1cf002c3a3dfc77769d739bc148e47c058d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26966266f3ab59c79332dc1cbbb2a1cf002c3a3dfc77769d739bc148e47c058d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Rat.Variant26966266f3ab59c79332dc1cbbb2a1cf002c3a3dfc77769d739bc148e47c058d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"26966266f3ab59c79332dc1cbbb2a1cf002c3a3dfc77769d739bc148e47c058d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/instance_diamonds/FieldTheory/IsAlgClosed/AlgebraicClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Algebra.Rat
import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure


namespace GRWTSK.Algebra.Rat.Variant26966266f3ab59c79332dc1cbbb2a1cf002c3a3dfc77769d739bc148e47c058d

variable {k : Type*} [Field k]

example : (AddCommGroup.toNatModule : Module ℕ (AlgebraicClosure k)) =
      @Algebra.toModule _ _ _ _ (AlgebraicClosure.instAlgebra k) := by
  with_reducible_and_instances rfl

example : (AddCommGroup.toIntModule _ : Module ℤ (AlgebraicClosure k)) =
      @Algebra.toModule _ _ _ _ (AlgebraicClosure.instAlgebra k) := by
  with_reducible_and_instances rfl

example [CharZero k] : AlgebraicClosure.instAlgebra k = DivisionRing.toRatAlgebra :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails

example : Ring.toIntAlgebra (AlgebraicClosure ℚ) = AlgebraicClosure.instAlgebra ℚ :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails
