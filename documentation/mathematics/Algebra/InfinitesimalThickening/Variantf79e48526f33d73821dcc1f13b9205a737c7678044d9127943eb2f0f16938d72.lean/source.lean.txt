-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.InfinitesimalThickening.Variante501a766bed56a797756f1225ccc0188f970c172d64e19a5153805c1dbd5612e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e501a766bed56a797756f1225ccc0188f970c172d64e19a5153805c1dbd5612e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.InfinitesimalThickening.Variante501a766bed56a797756f1225ccc0188f970c172d64e19a5153805c1dbd5612e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"e501a766bed56a797756f1225ccc0188f970c172d64e19a5153805c1dbd5612e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/InfinitesimalThickening.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.CrystallineTensor.InfinitesimalThickening

Radiation role: research-boundary
BinaryMatrix spine: This module records nilpotent thickening metadata, not a BinaryMatrix construction.
Ontology: crystalline.infinitesimal_thickening
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.Algebra.InfinitesimalThickening.Variante501a766bed56a797756f1225ccc0188f970c172d64e19a5153805c1dbd5612e

namespace Folder
namespace CrystallineTensor

/--
Abstract nilpotent-thickening metadata.

This is a proof-carrying boundary record: it does not construct a crystalline
site or an ideal sheaf, but it prevents nilpotence from being asserted without
a supplied certificate.
-/
structure InfinitesimalThickening where
  Base : Type _
  Thickened : Type _
  closedImmersion : Thickened → Base
  ideal : Type _
  nilpotentIdeal : Prop
  nilpotentIdeal_certified : nilpotentIdeal
  label : String

theorem thickening_has_nilpotent_ideal
    (T : InfinitesimalThickening) :
    T.nilpotentIdeal :=
  T.nilpotentIdeal_certified

end CrystallineTensor
end Folder
