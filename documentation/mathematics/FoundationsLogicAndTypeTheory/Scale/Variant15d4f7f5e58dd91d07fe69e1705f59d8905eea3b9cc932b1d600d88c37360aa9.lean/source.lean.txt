-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ScaleWindow.Variantb24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ScaleWindow.Variantb24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Kakeya/Scale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic

/-!
# Kakeya scale windows

A scale window records the transverse and axial scales of a tube as positive
real geometry.  It replaces integer labels by the quantities those labels are
intended to approximate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ScaleWindow.Variantb24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133

namespace Mathematics.Geometry.Kakeya

/-- Positive transverse and axial scales with the transverse scale no larger. -/
structure ScaleWindow where
  fine : ℝ
  coarse : ℝ
  finePositive : 0 < fine
  fine_le_coarse : fine ≤ coarse

theorem ScaleWindow.coarsePositive (scale : ScaleWindow) :
    0 < scale.coarse :=
  lt_of_lt_of_le scale.finePositive scale.fine_le_coarse

theorem ScaleWindow.fineNonnegative (scale : ScaleWindow) :
    0 ≤ scale.fine :=
  scale.finePositive.le

theorem ScaleWindow.coarseNonnegative (scale : ScaleWindow) :
    0 ≤ scale.coarse :=
  scale.coarsePositive.le

end Mathematics.Geometry.Kakeya
