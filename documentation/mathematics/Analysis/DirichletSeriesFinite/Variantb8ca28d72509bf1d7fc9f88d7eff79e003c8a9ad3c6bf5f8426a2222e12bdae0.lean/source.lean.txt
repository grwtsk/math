-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FiniteDirichletSum.Variant52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FiniteDirichletSum.Variant52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/DirichletSeriesFinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.DirichletConvolution
import Mathlib.Analysis.SpecialFunctions.Pow.Complex

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletSeriesFinite

Finite Dirichlet sums and linear finite identities.
-/


namespace GRWTSK.Analysis.FiniteDirichletSum.Variant52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteDirichletSum
    (a : Nat → ℂ)
    (s : ℂ)
    (N : Nat) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N, a n / (n : ℂ) ^ s

theorem finiteDirichletSum_add
    (a b : Nat → ℂ)
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun n => a n + b n) s N =
      finiteDirichletSum a s N + finiteDirichletSum b s N := by
  simp [finiteDirichletSum, add_div, Finset.sum_add_distrib]

theorem finiteDirichletSum_zero
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun _ => 0) s N = 0 := by
  simp [finiteDirichletSum]

end AnalyticNumberTheory
end Rebuild
end Folder
