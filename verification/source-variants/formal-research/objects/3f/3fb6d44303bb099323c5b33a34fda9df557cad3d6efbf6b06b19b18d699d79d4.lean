-- corpus-organization-transform:v1
-- Mathematical subject: Computation.LeanMetaprogramming
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Imports.Variant4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Imports.Variant4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Imports.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import Mathlib.Util.Imports
import Mathlib.Util.WhatsNew


namespace FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Imports.Variant4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f

open Lean Meta
#eval show MetaM _ from do
  guard <| (← redundantImports).toArray = #[`Mathlib.Util.Imports, `Mathlib.Util.WhatsNew]

#redundant_imports
