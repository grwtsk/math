-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RadicalProductBounds.Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RadicalProductBounds.Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6","mathematical_subject":"Logic.Foundations","original_sha256":"ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/ab/ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6--MoserGeometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.HadwigerNelson.Moser


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RadicalProductBounds.Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6

namespace FormalResearch.HadwigerNelson

lemma radicalProduct_bounds : 5 < Real.sqrt 3 * Real.sqrt 11 ∧
    Real.sqrt 3 * Real.sqrt 11 < 6 := by
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  have hp : (Real.sqrt 3 * Real.sqrt 11)^2 = 33 := by
    calc _ = (Real.sqrt 3)^2 * (Real.sqrt 11)^2 := by ring
         _ = 33 := by rw [h3, h11]; norm_num
  have hn : 0 ≤ Real.sqrt 3 * Real.sqrt 11 := by positivity
  constructor <;> nlinarith

set_option maxHeartbeats 1600000 in
lemma moser_normSq_unit_iff (i j : Fin 7) :
    Complex.normSq (moserPoint i - moserPoint j) = 1 ↔
    (i, j) ∈ moserEdges ∨ (j, i) ∈ moserEdges := by
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  obtain ⟨hlo, hhi⟩ := radicalProduct_bounds
  fin_cases i <;> fin_cases j <;>
    norm_num [Fin.ext_iff, moserEdges, moserPoint, moserA, moserB, moserT, moserU,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
      Complex.div_ofReal_re, Complex.div_ofReal_im, Complex.sub_re, Complex.sub_im,
      Complex.add_re, Complex.add_im] <;>
    (try ring_nf) <;> norm_num [h3, h11] <;> intro h <;> nlinarith

set_option maxHeartbeats 1600000 in
lemma moserPoint_injective : Function.Injective moserPoint := by
  intro i j h
  have hs : Complex.normSq (moserPoint i - moserPoint j) = 0 := by rw [h, sub_self]; simp
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  obtain ⟨hlo, hhi⟩ := radicalProduct_bounds
  fin_cases i <;> fin_cases j <;> try rfl
  all_goals
    norm_num [moserPoint, moserA, moserB, moserT, moserU,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
      Complex.div_ofReal_re, Complex.div_ofReal_im, Complex.sub_re, Complex.sub_im,
      Complex.add_re, Complex.add_im] at hs <;>
      (try ring_nf at hs) <;> norm_num [h3, h11] at hs <;> nlinarith

end FormalResearch.HadwigerNelson
