-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExponentVectorNat.Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExponentVectorNat.Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/FiniteEulerSmoothNumbers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.FiniteEulerExponentVectors

/-!
# Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers

Finite smooth-number encoding by bounded exponent vectors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExponentVectorNat.Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def exponentVectorNat
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) : Nat :=
  ∏ p : {p : Nat // p ∈ S}, p.val ^ (e p).val

theorem exponentVectorNat_pos
    (S : Finset Nat)
    (K : Nat)
    (hS : ∀ p ∈ S, 0 < p)
    (e : ExponentVector S K) :
    0 < exponentVectorNat S K e := by
  unfold exponentVectorNat
  exact Finset.prod_pos (fun p _hp => pow_pos (hS p.val p.property) _)

noncomputable def boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat) : Finset Nat :=
  Finset.image
    (fun e : ExponentVector S K => exponentVectorNat S K e)
    Finset.univ

theorem exponentVectorNat_mem_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) :
    exponentVectorNat S K e ∈ boundedSmoothNumbers S K := by
  simp [boundedSmoothNumbers]

end AnalyticNumberTheory
end Rebuild
end Folder
