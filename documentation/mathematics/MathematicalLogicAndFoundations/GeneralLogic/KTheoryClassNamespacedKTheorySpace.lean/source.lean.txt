-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheorySpace.Variant32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KTheorySpace.Variant32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","mathematical_subject":"Foundations.Unclassified","original_sha256":"32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/KTheoryClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.DerivedSheaf.KTheoryClass

Radiation role: research-boundary
BinaryMatrix spine: This module records K-theory class data, not BinaryMatrix carriers.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheorySpace.Variant32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa

namespace Folder
namespace DerivedSheaf

structure KTheorySpace where
  Base : Type _
  Class : Type _
  zero : Class
  add : Class → Class → Class
  neg : Class → Class
  label : String

structure KTheoryClass
    (K : KTheorySpace) where
  value : K.Class
  label : String

def KTheoryClass.IsZero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  x.value = K.zero

def KTheoryClass.Nonzero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  ¬ x.IsZero

theorem ktheory_class_has_value
    {K : KTheorySpace}
    (x : KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  ⟨x.value, rfl⟩

end DerivedSheaf
end Folder
