-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Constructor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Constructor


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527

structure Foo where
  a : Type
  x : List a

-- fconstructor
example : Foo := by
  fconstructor
  exact Nat
  exact [0,1,2]

-- econstructor
example : Foo := by
  econstructor
  exact [0,1,2]
