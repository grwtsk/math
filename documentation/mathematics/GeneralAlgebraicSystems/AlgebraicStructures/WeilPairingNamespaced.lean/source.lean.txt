-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MTorsionPoint.Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MTorsionPoint.Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/WeilPairing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.Torsion
import Folder.Cellular.Phase

/-!
# Folder.Arithmetic.WeilPairing

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.weil_pairing
Pivot role: none
Zero typology: elliptic
Contract boundary: contract
Composite stack role: torsion
-/



namespace GRWTSK.Algebra.MTorsionPoint.Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662

namespace Folder
namespace Arithmetic

structure MTorsionPoint
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (m : Nat) where
  point : ECPoint E
  annihilated : nsmulPoint G m point = ECPoint.infinity (E := E)

structure WeilPairingContract
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (m : Nat) where
  pairing :
    MTorsionPoint G m → MTorsionPoint G m → Cellular.Phase m
  alternating :
    ∀ P, pairing P P = 0
  bilinear_left :
    Prop
  bilinear_right :
    Prop
  nondegenerate :
    Prop

theorem weil_pairing_alternating
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {m : Nat}
    (W : WeilPairingContract G m)
    (P : MTorsionPoint G m) :
    W.pairing P P = 0 :=
  W.alternating P

end Arithmetic
end Folder
