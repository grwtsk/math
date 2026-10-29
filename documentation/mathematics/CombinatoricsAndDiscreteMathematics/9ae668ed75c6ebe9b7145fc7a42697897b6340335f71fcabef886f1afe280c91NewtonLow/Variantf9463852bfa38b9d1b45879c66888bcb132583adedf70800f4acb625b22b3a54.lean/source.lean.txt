-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EsymmConsSucc.Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EsymmConsSucc.Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/9a/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91--NewtonLow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.RingTheory.Polynomial.Vieta

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EsymmConsSucc.Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91

namespace FixedPointScratch
open Multiset
variable {R : Type*} [CommRing R]
lemma esymm_cons_succ (s : Multiset R) (x : R) (n : ℕ) :
    (x ::ₘ s).esymm (n + 1) = x * s.esymm n + s.esymm (n + 1) := by
  simp [Multiset.esymm, Multiset.powersetCard_cons, Multiset.sum_map_mul_left, add_comm]
lemma esymm_zero (s : Multiset R) : s.esymm 0 = 1 := by
  simp [Multiset.esymm]
lemma newton_low (s : Multiset R) :
    (s.map (· ^ 1)).sum = s.esymm 1 ∧
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 ∧
    (s.map (· ^ 3)).sum = s.esymm 1 ^ 3 - 3 * s.esymm 1 * s.esymm 2 + 3 * s.esymm 3 ∧
    (s.map (· ^ 4)).sum = s.esymm 1 ^ 4 - 4 * s.esymm 1 ^ 2 * s.esymm 2 +
      4 * s.esymm 1 * s.esymm 3 + 2 * s.esymm 2 ^ 2 - 4 * s.esymm 4 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rcases ih with ⟨h1,h2,h3,h4⟩
    simp only [Multiset.map_cons, Multiset.sum_cons, h1, h2, h3, h4]
    norm_num only [show 1 = 0 + 1 from rfl, show 2 = 1 + 1 from rfl,
      show 3 = 2 + 1 from rfl, show 4 = 3 + 1 from rfl,
      esymm_cons_succ, esymm_zero]
    constructor
    · ring
    constructor
    · ring
    constructor <;> ring
end FixedPointScratch
