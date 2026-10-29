-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealizationCompatible.Variantbe70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittRealizationCompatible.Variantbe70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69","mathematical_subject":"Foundations.Unclassified","original_sha256":"be70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/WittRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.WittRealization

/-!
# Folder.Theorem.DerivedSheaf.WittRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt realization facts, not BinaryMatrix data.
Ontology: derived.witt_realization
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealizationCompatible.Variantbe70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem witt_realization_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    (R : Folder.DerivedSheaf.WittRealization M W) :
    R.compatibleWithChernCharacter :=
  Folder.DerivedSheaf.witt_realization_compatible R

theorem ktheory_index_witt_image_eq
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {R : Folder.DerivedSheaf.WittRealization M W}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (X : Folder.DerivedSheaf.KTheoryIndexWittImage R I) :
    X.image = R.realize I.indexClass :=
  Folder.DerivedSheaf.ktheory_index_witt_image_eq X

end DerivedSheaf
end Theorem
end Folder
