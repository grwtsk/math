-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.C.Variant1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.C.Variant1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/IEANTN/RosserSchoenfeld/RosserSchoenfeldPrime_tables.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic

/-
This file stores the numerical data for `RosserSchoenfeldPrime.lean`, as well as any purely numerical computations about that data.  This file should not import any other files from the PNT+ project, other than further numerical data files.  This is to avoid these computation-intensive files from having to be repeatedly compiled.

In general, data should be moved here once we require significant numerical calculations to be performed using that data.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.C.Variant1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b

namespace RS_prime

/- This is the optimal constant in the inequality $\psi(x) \leq c_0 x$. -/

def c₀ : ℝ := 1.03883

end RS_prime
