-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LocalTamagawaComponentGroupData.Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LocalTamagawaComponentGroupData.Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b","mathematical_subject":"Computation.DataStructures","original_sha256":"f18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Tamagawa.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Statement


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LocalTamagawaComponentGroupData.Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Tamagawa

What is formalized:
Local Tamagawa component-group and product certificate interfaces.

What is certificate-gated:
All declarations in this component remain theorem-facing interfaces or conditional
unpackers. They do not construct BSD, analytic continuation, Mordell-Weil finite
generation, Sha finiteness, automorphy, or local arithmetic geometry.

What is not claimed:
No theorem in this file proves the Birch and Swinnerton-Dyer conjecture.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/--
Typed local component-group data for a Tamagawa factor.

This exposes the component-group carrier and the map from a special-fiber
carrier into components.  The mathematical identifications with a Neron model
special fiber remain certificate obligations.
-/
structure LocalTamagawaComponentGroupData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  Component : Type u
  zero : Component
  add : Component → Component → Component
  neg : Component → Component
  SpecialFiberPoint : Type u
  componentOf :
    SpecialFiberPoint → Component
  listedComponents :
    List Component
  tamagawaNumber :
    Nat
  tamagawaNumber_eq_listedComponents_length :
    tamagawaNumber = listedComponents.length
  componentGroupLaw : Prop
  componentGroupLawCertified :
    componentGroupLaw
  componentMapSurjective : Prop
  componentMapSurjectiveCertified :
    componentMapSurjective
  compatibleWithMinimalModelProvenance : Prop
  compatibleWithMinimalModelProvenanceCertified :
    compatibleWithMinimalModelProvenance
  boundary : List String

/--
Local Tamagawa-factor certificate at a finite place.

This remains certificate-gated: it does not construct the Neron model or prove
component-group finiteness.  It now carries typed component-group data rather
than a bare assertion that the component group was specified.
-/
structure LocalTamagawaFactorCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  finitePlace :
    LocalEulerFactorFinitePlaceCertificate N F
  finitePlaceCertified :
    finitePlace.certifiedForBSD
  componentGroup :
    LocalTamagawaComponentGroupData (E := E) N F
  componentGroupFinite : Prop
  componentGroupFiniteCertified :
    componentGroupFinite
  tamagawaNumberPositive : Prop
  tamagawaNumberPositiveCertified :
    tamagawaNumberPositive
  tamagawaNumberMatchesComponentGroup : Prop
  tamagawaNumberMatchesComponentGroupCertified :
    tamagawaNumberMatchesComponentGroup
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Local Tamagawa-factor quality required by theorem-facing BSD input. -/
def LocalTamagawaFactorCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (T : LocalTamagawaFactorCertificate (E := E) N F) :
    Prop :=
  T.finitePlace.certifiedForBSD ∧
  T.componentGroup.componentGroupLaw ∧
  T.componentGroup.componentMapSurjective ∧
  T.componentGroupFinite ∧
  T.componentGroup.tamagawaNumber =
    T.componentGroup.listedComponents.length ∧
  T.tamagawaNumberPositive ∧
  T.tamagawaNumberMatchesComponentGroup ∧
  T.componentGroup.compatibleWithMinimalModelProvenance ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem LocalTamagawaFactorCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (T : LocalTamagawaFactorCertificate (E := E) N F)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.finitePlaceCertified
  · constructor
    · exact T.componentGroup.componentGroupLawCertified
    · constructor
      · exact T.componentGroup.componentMapSurjectiveCertified
      · constructor
        · exact T.componentGroupFiniteCertified
        · constructor
          · exact T.componentGroup.tamagawaNumber_eq_listedComponents_length
          · constructor
            · exact T.tamagawaNumberPositiveCertified
            · constructor
              · exact T.tamagawaNumberMatchesComponentGroupCertified
              · constructor
                · exact T.componentGroup.compatibleWithMinimalModelProvenanceCertified
                · exact hsource

/--
Certificate that local Tamagawa factors assemble the Tamagawa component in the
BSD leading-coefficient identity.

This is still an interface certificate. It does not construct component groups
or prove the BSD product formula.
-/
structure TamagawaProductCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {MW : MordellWeilGroup.{u}}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E)
    (S : SecondPartStatement L MW) where
  localTamagawaFactors :
    ∀ F ∈ L.localFactors,
      ∃ T : LocalTamagawaFactorCertificate (E := E) N F,
        T.certifiedForBSD
  tamagawaStatusSupplied :
    S.identityData.tamagawaFactors =
      BSDComponentStatus.suppliedByCertificate
  finiteSupport : Prop
  finiteSupportCertified :
    finiteSupport
  productMatchesSecondPart : Prop
  productMatchesSecondPartCertified :
    productMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Tamagawa-product quality required by theorem-facing BSD input. -/
def TamagawaProductCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {MW : MordellWeilGroup.{u}}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {S : SecondPartStatement L MW}
    (T : TamagawaProductCertificate N L S) :
    Prop :=
  S.identityData.tamagawaFactors =
    BSDComponentStatus.suppliedByCertificate ∧
  T.finiteSupport ∧
  T.productMatchesSecondPart ∧
  (∀ F ∈ L.localFactors,
    ∃ LT : LocalTamagawaFactorCertificate (E := E) N F,
      LT.certifiedForBSD) ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem TamagawaProductCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {MW : MordellWeilGroup.{u}}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {S : SecondPartStatement L MW}
    (T : TamagawaProductCertificate N L S)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.tamagawaStatusSupplied
  · constructor
    · exact T.finiteSupportCertified
    · constructor
      · exact T.productMatchesSecondPartCertified
      · constructor
        · exact T.localTamagawaFactors
        · exact hsource
end BSD
end EllipticCurve
end Surface.Arithmetic

