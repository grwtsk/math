-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensor.Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedTensor.Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629","mathematical_subject":"Foundations.Unclassified","original_sha256":"0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/FixedTensor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.HeatCompatibleEndomorphism
import Folder.CrystallineTensor.TensorSection

/-!
# Folder.CrystallineTensor.FixedTensor

Radiation role: research-boundary
BinaryMatrix spine: This module records horizontal fixed tensor sections, not binary fixed points.
Ontology: crystalline.fixed_tensor
Pivot role: spectral
Zero typology: none
Contract boundary: definition
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensor.Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629

namespace Folder
namespace CrystallineTensor

structure FixedTensor
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F)
    (e : CrystalEndomorphism F)
    (X : C.Site.Obj) where
  tensor : TensorSection F X
  horizontal :
    nabla.horizontal X tensor.underlyingSection
  fixed :
    e.map X tensor.underlyingSection = tensor.underlyingSection

theorem fixed_tensor_is_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {e : CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : FixedTensor nabla e X) :
    nabla.horizontal X T.tensor.underlyingSection :=
  T.horizontal

theorem fixed_tensor_is_fixed
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {e : CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : FixedTensor nabla e X) :
    e.map X T.tensor.underlyingSection =
      T.tensor.underlyingSection :=
  T.fixed

end CrystallineTensor
end Folder
