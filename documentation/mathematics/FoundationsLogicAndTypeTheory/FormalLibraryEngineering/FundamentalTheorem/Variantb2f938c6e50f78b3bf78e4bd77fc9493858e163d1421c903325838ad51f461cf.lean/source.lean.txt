-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorProduct.Variant67242c0b846e8a715e81722237d208503cca30156a180b52e373033535510040","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67242c0b846e8a715e81722237d208503cca30156a180b52e373033535510040","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FactorProduct.Variant67242c0b846e8a715e81722237d208503cca30156a180b52e373033535510040","mathematical_subject":"Foundations.Unclassified","original_sha256":"67242c0b846e8a715e81722237d208503cca30156a180b52e373033535510040","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/NumberTheory/FundamentalTheorem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.Factorization

/-!
# Folder.NumberTheory.FundamentalTheorem

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.fta
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorProduct.Variant67242c0b846e8a715e81722237d208503cca30156a180b52e373033535510040

namespace Folder
namespace NumberTheory

def factorProduct
    (f : Nat →₀ Nat) : Nat :=
  f.prod (fun p e => p ^ e)

theorem factorProduct_factorization
    (n : PositiveNat) :
    factorProduct (FactorizationMap n) = n.val := by
  unfold factorProduct FactorizationMap PositiveNat.val
  exact Nat.prod_factorization_pow_eq_self (Nat.ne_of_gt n.2)

theorem factorProduct_one :
    factorProduct (0 : Nat →₀ Nat) = 1 := by
  simp [factorProduct]

end NumberTheory
end Folder
