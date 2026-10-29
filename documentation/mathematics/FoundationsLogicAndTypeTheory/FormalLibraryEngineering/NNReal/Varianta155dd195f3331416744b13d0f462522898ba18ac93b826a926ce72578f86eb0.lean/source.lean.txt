-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variante05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Inv.Variante05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/Linarith/NNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module
import Mathlib.Basic.ENNReal.Inv
import Mathlib.Basic.ENNReal.Operations
import Mathlib.Tactic.Linarith.NNRealPreprocessor


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variante05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925

open NNReal

example {a b c : ℝ≥0} (h1 : 2 * a < b + 1) (h2 : b ≤ c) : a < (c + 1) / 2 := by
  linarith

example {a b c d : ℝ≥0} (h1 : 3 * a + 2 * b ≤ 5 * c + 7) (h2 : c ≤ d) : a ≤ (5 * d + 7) / 3 := by
  linarith

example {a b c d e : ℝ≥0} (h1 : (a + b) / 2 + c ≤ d) (h2 : d ≤ e) : a ≤ 2 * e := by
  linarith

example {a b c d : ℝ≥0} (h1 : (a + 3 * b) / 4 < c + 1) (h2 : c ≤ d) : a < 4 * (d + 1) := by
  linarith

example {a b c d : ℝ≥0} (h1 : 2 * a + b ≤ 3 * c) (h2 : c < d + 5) : a < (3 * (d + 5)) / 2 := by
  linarith

example {a b c d : ℝ≥0} (h1 : a + b ≤ c) (h2 : c ≤ d / 2) : a ≤ d / 2 := by
  linarith

example {a b c d : ℝ≥0} (h1 : a + b ≤ 2 * c + 3) (h2 : c ≤ d) : a ≤ 2 * d + 3 := by
  linarith
