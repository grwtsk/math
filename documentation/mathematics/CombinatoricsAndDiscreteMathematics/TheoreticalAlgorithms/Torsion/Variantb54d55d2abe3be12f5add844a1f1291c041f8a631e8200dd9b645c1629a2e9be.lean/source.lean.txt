-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MordellWeilTorsionSubgroupData.Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MordellWeilTorsionSubgroupData.Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b","mathematical_subject":"Computation.DataStructures","original_sha256":"0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Torsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Statement


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MordellWeilTorsionSubgroupData.Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Torsion

What is formalized:
Mordell-Weil torsion subgroup and torsion-order interfaces.

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
Typed torsion-subgroup data for the smooth Mordell-Weil interface.

The torsion carrier, its inclusion into curve points, and its predicate on
curve points are explicit data. The Prop fields record the theorem obligations
linking this data to the finite-generation certificate and smooth group law.
-/
structure MordellWeilTorsionSubgroupData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  TorsionPoint : Type u
  toPoint :
    TorsionPoint → Point C.E
  torsionPredicate :
    Point C.E → Prop
  listedTorsionPoints :
    List TorsionPoint
  torsionPredicateMatchesCarrier : Prop
  torsionPredicateMatchesCarrierCertified :
    torsionPredicateMatchesCarrier
  listedTorsionPointsMatchGenerators :
    listedTorsionPoints.length = M.finiteGeneration.torsionGenerators.length
  boundary : List String

/--
Torsion-subgroup certificate for the smooth Mordell-Weil interface.

This remains certificate-gated: it does not prove the structure theorem for
finitely generated abelian groups. It now carries a typed torsion carrier rather
than a bare assertion that a torsion subgroup was specified.
-/
structure MordellWeilTorsionSubgroupCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  torsionData :
    MordellWeilTorsionSubgroupData M
  torsionSubgroupFinite : Prop
  torsionSubgroupFiniteCertified :
    torsionSubgroupFinite
  torsionGeneratorsMatchFiniteGenerationCertificate : Prop
  torsionGeneratorsMatchFiniteGenerationCertificateCertified :
    torsionGeneratorsMatchFiniteGenerationCertificate
  torsionSubgroupCompatibleWithSmoothGroupLaw : Prop
  torsionSubgroupCompatibleWithSmoothGroupLawCertified :
    torsionSubgroupCompatibleWithSmoothGroupLaw
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Torsion-subgroup quality required by theorem-facing BSD input. -/
def MordellWeilTorsionSubgroupCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : MordellWeilTorsionSubgroupCertificate M) :
    Prop :=
  T.torsionData.torsionPredicateMatchesCarrier ∧
  T.torsionSubgroupFinite ∧
  T.torsionGeneratorsMatchFiniteGenerationCertificate ∧
  T.torsionSubgroupCompatibleWithSmoothGroupLaw ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem MordellWeilTorsionSubgroupCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : MordellWeilTorsionSubgroupCertificate M)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.torsionData.torsionPredicateMatchesCarrierCertified
  · constructor
    · exact T.torsionSubgroupFiniteCertified
    · constructor
      · exact T.torsionGeneratorsMatchFiniteGenerationCertificateCertified
      · constructor
        · exact T.torsionSubgroupCompatibleWithSmoothGroupLawCertified
        · exact hsource

/--
Torsion-order certificate for the BSD second part.

This certificate ties the torsion-order metadata to the smooth Mordell-Weil
torsion subgroup and to the denominator appearing in the BSD leading-coefficient
identity.
-/
structure MordellWeilTorsionOrderData
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : MordellWeilTorsionSubgroupCertificate M) where
  order : Nat
  order_eq_listed_torsion_points :
    order = T.torsionData.listedTorsionPoints.length
  squaredDenominatorTerm : Nat
  squaredDenominatorTerm_eq :
    squaredDenominatorTerm = order * order
  boundary : List String

structure TorsionOrderCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    {L : HasseWeilLFunction C.K.field C.E}
    (S : SecondPartStatement L M.MW) where
  torsionSubgroup :
    MordellWeilTorsionSubgroupCertificate M
  torsionSubgroupCertified :
    torsionSubgroup.certifiedForBSD
  torsionOrder :
    MordellWeilTorsionOrderData torsionSubgroup
  torsionOrderPositive : Prop
  torsionOrderPositiveCertified :
    torsionOrderPositive
  torsionOrderMatchesSubgroup : Prop
  torsionOrderMatchesSubgroupCertified :
    torsionOrderMatchesSubgroup
  torsionOrderSquaredInDenominator : Prop
  torsionOrderSquaredInDenominatorCertified :
    torsionOrderSquaredInDenominator
  torsionOrderStatusSupplied :
    S.identityData.torsionOrder =
      BSDComponentStatus.suppliedByCertificate
  torsionOrderMatchesSecondPart : Prop
  torsionOrderMatchesSecondPartCertified :
    torsionOrderMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Torsion-order quality required by theorem-facing BSD input. -/
def TorsionOrderCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TorsionOrderCertificate M S) :
    Prop :=
  T.torsionSubgroup.certifiedForBSD ∧
  T.torsionOrder.order = T.torsionSubgroup.torsionData.listedTorsionPoints.length ∧
  T.torsionOrderPositive ∧
  T.torsionOrderMatchesSubgroup ∧
  T.torsionOrderSquaredInDenominator ∧
  S.identityData.torsionOrder =
    BSDComponentStatus.suppliedByCertificate ∧
  T.torsionOrderMatchesSecondPart ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem TorsionOrderCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TorsionOrderCertificate M S)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.torsionSubgroupCertified
  · constructor
    · exact T.torsionOrder.order_eq_listed_torsion_points
    · constructor
      · exact T.torsionOrderPositiveCertified
      · constructor
        · exact T.torsionOrderMatchesSubgroupCertified
        · constructor
          · exact T.torsionOrderSquaredInDenominatorCertified
          · constructor
            · exact T.torsionOrderStatusSupplied
            · constructor
              · exact T.torsionOrderMatchesSecondPartCertified
              · exact hsource

end BSD
end EllipticCurve
end Surface.Arithmetic

