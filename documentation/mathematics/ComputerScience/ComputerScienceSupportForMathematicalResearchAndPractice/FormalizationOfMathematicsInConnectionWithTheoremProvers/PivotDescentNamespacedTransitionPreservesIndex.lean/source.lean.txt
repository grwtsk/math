-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransitionPreservesIndex.Variant4de1ab8ea319010bc66aa9ec986e4d04252085d3809f20e3fd70a923ec2c64f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4de1ab8ea319010bc66aa9ec986e4d04252085d3809f20e3fd70a923ec2c64f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransitionPreservesIndex.Variant4de1ab8ea319010bc66aa9ec986e4d04252085d3809f20e3fd70a923ec2c64f1","mathematical_subject":"Foundations.Unclassified","original_sha256":"4de1ab8ea319010bc66aa9ec986e4d04252085d3809f20e3fd70a923ec2c64f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/PivotDescent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.PivotDescent

/-!
# Folder.Theorem.CanonicalPath.PivotDescent

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports pivot descent projection facts.
Ontology: proof.canonical_pivot_descent
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransitionPreservesIndex.Variant4de1ab8ea319010bc66aa9ec986e4d04252085d3809f20e3fd70a923ec2c64f1

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem transition_preserves_index
    {P Q : Folder.CanonicalPath.CanonicalPivot}
    (T : Folder.CanonicalPath.PivotTransition P Q)
    (h : Folder.CanonicalPath.LocalKIndexNonzero P.kIndexClass) :
    Folder.CanonicalPath.LocalKIndexNonzero Q.kIndexClass :=
  T.preserves_index h

theorem atlas_transition_preserves_index
    (A : Folder.CanonicalPath.CanonicalPivotAtlas)
    {i j : A.Pivot}
    (o : A.overlap i j)
    (h :
      Folder.CanonicalPath.LocalKIndexNonzero
        (A.toPivot i).kIndexClass) :
    Folder.CanonicalPath.LocalKIndexNonzero
      (A.toPivot j).kIndexClass :=
  A.transition_preserves_index o h

theorem conditional_pivot_input_has_base_pivot
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput) :
    ∃ i : I.atlas.Pivot,
      Folder.CanonicalPath.LocalKIndexNonzero
        (I.atlas.toPivot i).kIndexClass :=
  Folder.CanonicalPath.conditional_pivot_input_has_base_pivot I

theorem conditional_pivot_input_barriers_closed
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput) :
    I.atlas.barrierClosed :=
  Folder.CanonicalPath.conditional_pivot_input_barriers_closed I

end CanonicalPath
end Theorem
end Folder
