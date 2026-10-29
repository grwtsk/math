-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.BadPrimeTMFLocalization.Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.BadPrimeTMFLocalization.Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/AdelicInfinityTopos/BadPrimeLocalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.BadPrimeLocalization

Radiation role: research-boundary
BinaryMatrix spine: This module separates bad-prime TMF localization from concrete BinaryMatrix data.
Ontology: adelic.bad_prime_localization
Pivot role: arithmetic
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.BadPrimeTMFLocalization.Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75

namespace Folder
namespace AdelicInfinityTopos

structure BadPrimeTMFLocalization where
  p : Nat
  prime : Nat.Prime p
  bad : p = 2 ∨ p = 3
  localTMF : SpectrumObject
  torsionWildness : Prop
  chromaticHeight? : Option Nat

theorem bad_prime_localization_is_bad
    (L : BadPrimeTMFLocalization) :
    L.p = 2 ∨ L.p = 3 :=
  L.bad

end AdelicInfinityTopos
end Folder
