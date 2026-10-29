-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreePrimePowerRemoval.Variantd61744994b6e0e94e72a1ccf37e3125765c06904b4b5f6e91f8f1a937e39df77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d61744994b6e0e94e72a1ccf37e3125765c06904b4b5f6e91f8f1a937e39df77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConductorThreePrimePowerRemoval.Variantd61744994b6e0e94e72a1ccf37e3125765c06904b4b5f6e91f8f1a937e39df77","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d61744994b6e0e94e72a1ccf37e3125765c06904b4b5f6e91f8f1a937e39df77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:d0e6bf40dced7564e727c277/workspace/Check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.ConductorThreePrimePowerRemoval
import Mathlib.Tactic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreePrimePowerRemoval.Variantd61744994b6e0e94e72a1ccf37e3125765c06904b4b5f6e91f8f1a937e39df77

#check Real.log_le_sub_one_of_pos
#check Real.add_one_le_exp
#check Real.exp_one_lt_d9
#check Real.exp_one_lt_three
#check Real.le_log_iff_exp_le

example {x : ℕ} (hx : 3 ≤ x) :
    (1 : ℝ) ≤ Real.sqrt x * Real.log x := by
  have hsqrt : 1 ≤ Real.sqrt (x : ℝ) := by
    rw [Real.one_le_sqrt]
    exact_mod_cast (by omega : 1 ≤ x)
  have hlog : 1 ≤ Real.log (x : ℝ) := by
    rw [← Real.exp_le_exp]
    rw [Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast hx)
  nlinarith
