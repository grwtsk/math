-- corpus-organization-transform:v1
-- Mathematical subject: DifferentialEquationsAndDynamicalSystems
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.DifferentialEquationsAndDynamicalSystems.GroupLawCertificate.Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.DifferentialEquations.SourceCorpus.GroupLawCertificate.Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89","mathematical_subject":"Analysis.DifferentialEquations","original_sha256":"a6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/GroupLaw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve


namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.GroupLawCertificate.Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89

namespace Surface.Arithmetic
namespace EllipticCurve

universe u

/-!
# Group-law certificate interface

The group law on an elliptic curve is not installed globally.  Downstream code
may use `Point` as an abelian group only after receiving a
`GroupLawCertificate`.
-/

variable {K : FieldLike.{u}}
variable (E : ShortWeierstrass K)

/-- A proof-carrying group-law package for `E(K)`. -/
structure GroupLawCertificate where
  zero : Point E
  negPoint : Point E → Point E
  addPoint : Point E → Point E → Point E
  zero_is_infinity : zero = Point.infinity
  zero_add : ∀ P : Point E, addPoint zero P = P
  add_zero : ∀ P : Point E, addPoint P zero = P
  add_left_neg : ∀ P : Point E, addPoint (negPoint P) P = zero
  add_assoc : ∀ P Q R : Point E,
    addPoint (addPoint P Q) R = addPoint P (addPoint Q R)
  add_comm : ∀ P Q : Point E, addPoint P Q = addPoint Q P
  certificateBoundary : List String

/-- Negation is available from a group-law certificate. -/
def neg (C : GroupLawCertificate E) : Point E → Point E :=
  C.negPoint

/-- Addition is available from a group-law certificate. -/
def add (C : GroupLawCertificate E) : Point E → Point E → Point E :=
  C.addPoint

theorem zero_add
    (C : GroupLawCertificate E)
    (P : Point E) :
    add E C C.zero P = P :=
  C.zero_add P

theorem add_zero
    (C : GroupLawCertificate E)
    (P : Point E) :
    add E C P C.zero = P :=
  C.add_zero P

theorem add_comm
    (C : GroupLawCertificate E)
    (P Q : Point E) :
    add E C P Q = add E C Q P :=
  C.add_comm P Q

theorem add_assoc
    (C : GroupLawCertificate E)
    (P Q R : Point E) :
    add E C (add E C P Q) R =
      add E C P (add E C Q R) :=
  C.add_assoc P Q R

/-!
## Law-gated group-law interface

The raw `GroupLawCertificate` remains a low-level certificate for a particular
short-Weierstrass curve.  The theorem-facing interface below requires a
`LawfulShortWeierstrass`, so future arithmetic geometry cannot use the group law
without also carrying the field-law and characteristic gates.
-/

/--
A group-law certificate attached to a law-carrying short-Weierstrass curve.

This does not construct the chord-tangent law.  It gates theorem-facing use of
the existing `GroupLawCertificate` by requiring a lawful field and the
`char ≠ 2,3` short-Weierstrass boundary.
-/
structure LawfulGroupLawCertificate
    (C : LawfulShortWeierstrass.{u}) where
  groupLaw : GroupLawCertificate C.E
  boundary : List String

/-- The characteristic gate carried by a lawful group-law package. -/
theorem LawfulGroupLawCertificate.charNeTwoThree
    {C : LawfulShortWeierstrass.{u}}
    (_G : LawfulGroupLawCertificate C) :
    C.E.charNeTwoThree :=
  C.charNeTwoThreeCertified

/-- The nontrivial field gate carried by a lawful group-law package. -/
theorem LawfulGroupLawCertificate.zero_ne_one
    {C : LawfulShortWeierstrass.{u}}
    (_G : LawfulGroupLawCertificate C) :
    C.K.field.zero ≠ C.K.field.one :=
  LawfulFieldLike.zero_ne_one C.K

/-- Addition exposed from a lawful group-law certificate. -/
def LawfulGroupLawCertificate.add
    {C : LawfulShortWeierstrass.{u}}
    (G : LawfulGroupLawCertificate C) :
    Point C.E → Point C.E → Point C.E :=
  G.groupLaw.addPoint

/-- Commutativity exposed from a lawful group-law certificate. -/
theorem LawfulGroupLawCertificate.add_comm
    {C : LawfulShortWeierstrass.{u}}
    (G : LawfulGroupLawCertificate C)
    (P Q : Point C.E) :
    G.add P Q = G.add Q P :=
  G.groupLaw.add_comm P Q

/-- Associativity exposed from a lawful group-law certificate. -/
theorem LawfulGroupLawCertificate.add_assoc
    {C : LawfulShortWeierstrass.{u}}
    (G : LawfulGroupLawCertificate C)
    (P Q R : Point C.E) :
    G.add (G.add P Q) R = G.add P (G.add Q R) :=
  G.groupLaw.add_assoc P Q R

/--
Projective closure data needed by the chord-tangent construction.

This is still an interface certificate. It does not construct projective space
as a scheme or prove the projective cubic equation. It now carries typed
projective-point data instead of a bare assertion that the model and point at
infinity were merely specified.
-/
structure ProjectiveWeierstrassModelData
    (C : LawfulShortWeierstrass.{u}) where
  ProjectivePoint : Type u
  fromCurvePoint :
    Point C.E → ProjectivePoint
  projectiveEquation :
    ProjectivePoint → Prop
  fromCurvePoint_onModel :
    ∀ P : Point C.E,
      OnCurve C.E P →
        projectiveEquation (fromCurvePoint P)
  pointAtInfinity :
    ProjectivePoint
  fromCurveInfinity_eq_pointAtInfinity :
    fromCurvePoint Point.infinity = pointAtInfinity
  pointAtInfinity_onModel :
    projectiveEquation pointAtInfinity
  boundary : List String

structure ProjectiveWeierstrassClosureCertificate
    (C : LawfulShortWeierstrass.{u}) where
  projectiveModel :
    ProjectiveWeierstrassModelData C
  affineChartMatchesShortWeierstrass : Prop
  affineChartMatchesShortWeierstrassCertified :
    affineChartMatchesShortWeierstrass
  pointAtInfinitySmooth : Prop
  pointAtInfinitySmoothCertified :
    pointAtInfinitySmooth
  boundary : List String

/-- Projective closure quality required by theorem-facing group-law input. -/
def ProjectiveWeierstrassClosureCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (P : ProjectiveWeierstrassClosureCertificate C) :
    Prop :=
  P.projectiveModel.projectiveEquation P.projectiveModel.pointAtInfinity ∧
  P.projectiveModel.fromCurvePoint Point.infinity =
    P.projectiveModel.pointAtInfinity ∧
  P.affineChartMatchesShortWeierstrass ∧
  P.pointAtInfinitySmooth

theorem ProjectiveWeierstrassClosureCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    (P : ProjectiveWeierstrassClosureCertificate C) :
    P.certifiedForBSD := by
  constructor
  · exact P.projectiveModel.pointAtInfinity_onModel
  · constructor
    · exact P.projectiveModel.fromCurveInfinity_eq_pointAtInfinity
    · constructor
      · exact P.affineChartMatchesShortWeierstrassCertified
      · exact P.pointAtInfinitySmoothCertified

theorem ProjectiveWeierstrassClosureCertificate.curvePoint_on_projectiveModel
    {C : LawfulShortWeierstrass.{u}}
    (P : ProjectiveWeierstrassClosureCertificate C)
    (Q : Point C.E)
    (hQ : OnCurve C.E Q) :
    P.projectiveModel.projectiveEquation
      (P.projectiveModel.fromCurvePoint Q) :=
  P.projectiveModel.fromCurvePoint_onModel Q hQ

theorem ProjectiveWeierstrassClosureCertificate.infinity_on_projectiveModel
    {C : LawfulShortWeierstrass.{u}}
    (P : ProjectiveWeierstrassClosureCertificate C) :
    P.projectiveModel.projectiveEquation
      P.projectiveModel.pointAtInfinity :=
  P.projectiveModel.pointAtInfinity_onModel

theorem ProjectiveWeierstrassClosureCertificate.curveInfinity_maps_to_pointAtInfinity
    {C : LawfulShortWeierstrass.{u}}
    (P : ProjectiveWeierstrassClosureCertificate C) :
    P.projectiveModel.fromCurvePoint Point.infinity =
      P.projectiveModel.pointAtInfinity :=
  P.projectiveModel.fromCurveInfinity_eq_pointAtInfinity

/--
Projective line/cubic intersection provenance for the chord-tangent construction.

This is still an interface certificate. It does not construct projective
schemes, prove Bezout's theorem, or define intersection multiplicity. It now
carries typed line and intersection incidence data instead of bare assertions
that projective lines and line/cubic intersections were specified.
-/
structure ProjectiveLineCubicIntersectionData
    (C : LawfulShortWeierstrass.{u})
    (P : ProjectiveWeierstrassClosureCertificate C) where
  Line : Type u
  lineContains :
    Line → P.projectiveModel.ProjectivePoint → Prop
  lineThrough :
    Point C.E → Point C.E → Line → Prop
  tangentAt :
    Point C.E → Line → Prop
  IntersectionPoint : Type u
  toProjectivePoint :
    IntersectionPoint → P.projectiveModel.ProjectivePoint
  intersectionLine :
    IntersectionPoint → Line
  intersection_on_line :
    ∀ X : IntersectionPoint,
      lineContains (intersectionLine X) (toProjectivePoint X)
  intersection_on_cubic :
    ∀ X : IntersectionPoint,
      P.projectiveModel.projectiveEquation (toProjectivePoint X)
  boundary : List String

/--
Typed Bezout/multiplicity data for line/cubic intersections.

This is supplied theorem-facing data. It does not prove Bezout or define
scheme-theoretic multiplicity from first principles; it prevents those inputs
from being represented by bare descriptor gates.
-/
structure ProjectiveIntersectionMultiplicityData
    (C : LawfulShortWeierstrass.{u})
    (P : ProjectiveWeierstrassClosureCertificate C)
    (D : ProjectiveLineCubicIntersectionData C P) where
  multiplicity :
    D.IntersectionPoint → Nat
  tangentMultiplicity :
    Point C.E → D.Line → Nat
  intersectionsOnLine :
    D.Line → List D.IntersectionPoint
  listedIntersections_on_line :
    ∀ (L : D.Line) (X : D.IntersectionPoint),
      X ∈ intersectionsOnLine L →
        D.lineContains L (D.toProjectivePoint X)
  listedIntersections_on_cubic :
    ∀ (L : D.Line) (X : D.IntersectionPoint),
      X ∈ intersectionsOnLine L →
        P.projectiveModel.projectiveEquation (D.toProjectivePoint X)
  lineIntersectionCount_eq_three :
    ∀ L : D.Line,
      (intersectionsOnLine L).length = 3
  multiplicityPositive :
    ∀ X : D.IntersectionPoint,
      0 < multiplicity X
  tangentMultiplicityPositive :
    ∀ (Q : Point C.E) (L : D.Line),
      D.tangentAt Q L →
        0 < tangentMultiplicity Q L
  boundary : List String

structure ProjectiveLineCubicIntersectionCertificate
    (C : LawfulShortWeierstrass.{u})
    (P : ProjectiveWeierstrassClosureCertificate C) where
  projectiveClosureCertified :
    P.certifiedForBSD
  intersectionData :
    ProjectiveLineCubicIntersectionData C P
  multiplicityData :
    ProjectiveIntersectionMultiplicityData C P intersectionData
  thirdIntersectionUnique : Prop
  thirdIntersectionUniqueCertified :
    thirdIntersectionUnique
  exceptionalCasesCovered : Prop
  exceptionalCasesCoveredCertified :
    exceptionalCasesCovered
  boundary : List String

/--
Projective line/cubic intersection quality required by theorem-facing
chord-tangent group-law input.
-/
def ProjectiveLineCubicIntersectionCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P) :
    Prop :=
  P.certifiedForBSD ∧
  (∀ X : I.intersectionData.IntersectionPoint,
    I.intersectionData.lineContains
      (I.intersectionData.intersectionLine X)
      (I.intersectionData.toProjectivePoint X)) ∧
  (∀ X : I.intersectionData.IntersectionPoint,
    P.projectiveModel.projectiveEquation
      (I.intersectionData.toProjectivePoint X)) ∧
  (∀ L : I.intersectionData.Line,
    (I.multiplicityData.intersectionsOnLine L).length = 3) ∧
  (∀ X : I.intersectionData.IntersectionPoint,
    0 < I.multiplicityData.multiplicity X) ∧
  (∀ (Q : Point C.E) (L : I.intersectionData.Line),
    I.intersectionData.tangentAt Q L →
      0 < I.multiplicityData.tangentMultiplicity Q L) ∧
  I.thirdIntersectionUnique ∧
  I.exceptionalCasesCovered

theorem ProjectiveLineCubicIntersectionCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P) :
    I.certifiedForBSD := by
  constructor
  · exact I.projectiveClosureCertified
  · constructor
    · exact I.intersectionData.intersection_on_line
    · constructor
      · exact I.intersectionData.intersection_on_cubic
      · constructor
        · exact I.multiplicityData.lineIntersectionCount_eq_three
        · constructor
          · exact I.multiplicityData.multiplicityPositive
          · constructor
            · exact I.multiplicityData.tangentMultiplicityPositive
            · constructor
              · exact I.thirdIntersectionUniqueCertified
              · exact I.exceptionalCasesCoveredCertified

theorem ProjectiveLineCubicIntersectionCertificate.intersection_on_line
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P)
    (X : I.intersectionData.IntersectionPoint) :
    I.intersectionData.lineContains
      (I.intersectionData.intersectionLine X)
      (I.intersectionData.toProjectivePoint X) :=
  I.intersectionData.intersection_on_line X

theorem ProjectiveLineCubicIntersectionCertificate.intersection_on_cubic
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P)
    (X : I.intersectionData.IntersectionPoint) :
    P.projectiveModel.projectiveEquation
      (I.intersectionData.toProjectivePoint X) :=
  I.intersectionData.intersection_on_cubic X

theorem ProjectiveLineCubicIntersectionCertificate.lineIntersectionCount_eq_three
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P)
    (L : I.intersectionData.Line) :
    (I.multiplicityData.intersectionsOnLine L).length = 3 :=
  I.multiplicityData.lineIntersectionCount_eq_three L

theorem ProjectiveLineCubicIntersectionCertificate.multiplicityPositive
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P)
    (X : I.intersectionData.IntersectionPoint) :
    0 < I.multiplicityData.multiplicity X :=
  I.multiplicityData.multiplicityPositive X

theorem ProjectiveLineCubicIntersectionCertificate.tangentMultiplicityPositive
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P)
    (Q : Point C.E)
    (L : I.intersectionData.Line)
    (h : I.intersectionData.tangentAt Q L) :
    0 < I.multiplicityData.tangentMultiplicity Q L :=
  I.multiplicityData.tangentMultiplicityPositive Q L h

/--
Geometric associativity provenance for the chord-tangent group law.

This is still an interface certificate. It does not prove the divisor theorem,
Cayley-Bacharach, Bezout, or associativity from first principles. It carries
typed divisor and configuration data rather than bare descriptor gates.
-/
structure ChordTangentAssociativityData
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E)
    (P : ProjectiveWeierstrassClosureCertificate C)
    (I : ProjectiveLineCubicIntersectionCertificate C P) where
  DivisorClass : Type u
  lineDivisorClass :
    I.intersectionData.Line → DivisorClass
  divisorLinearEquivalent :
    DivisorClass → DivisorClass → Prop
  principalDivisorLine :
    I.intersectionData.Line → Prop
  divisorLinearEquivalenceWitness :
    ∀ L M : I.intersectionData.Line,
      divisorLinearEquivalent
        (lineDivisorClass L)
        (lineDivisorClass M)
  principalDivisorLineWitness :
    ∀ L : I.intersectionData.Line,
      principalDivisorLine L
  CayleyBacharachConfiguration : Type u
  configurationPoints :
    CayleyBacharachConfiguration →
      List P.projectiveModel.ProjectivePoint
  configurationPointCount_eq_nine :
    ∀ cfg : CayleyBacharachConfiguration,
      (configurationPoints cfg).length = 9
  cayleyBacharachApplies :
    CayleyBacharachConfiguration → Prop
  cayleyBacharachWitness :
    ∀ cfg : CayleyBacharachConfiguration,
      cayleyBacharachApplies cfg
  associativityConfiguration :
    Point C.E → Point C.E → Point C.E →
      CayleyBacharachConfiguration
  associativityConfigurationValid :
    Point C.E → Point C.E → Point C.E → Prop
  associativityConfigurationWitness :
    ∀ P Q R : Point C.E,
      associativityConfigurationValid P Q R
  boundary : List String

structure ChordTangentAssociativityCertificate
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E)
    (P : ProjectiveWeierstrassClosureCertificate C)
    (I : ProjectiveLineCubicIntersectionCertificate C P) where
  projectiveClosureCertified :
    P.certifiedForBSD
  intersectionTheoryCertified :
    I.certifiedForBSD
  associativityData :
    ChordTangentAssociativityData C G P I
  exceptionalAssociativityCasesCovered : Prop
  exceptionalAssociativityCasesCoveredCertified :
    exceptionalAssociativityCasesCovered
  geometricAssociativityStatement : Prop
  geometricAssociativityStatementCertified :
    geometricAssociativityStatement
  geometricAssociativityMatchesSuppliedAddAssoc : Prop
  geometricAssociativityMatchesSuppliedAddAssocCertified :
    geometricAssociativityMatchesSuppliedAddAssoc
  boundary : List String

/--
Associativity quality required by theorem-facing chord-tangent group-law input.
-/
def ChordTangentAssociativityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentAssociativityCertificate C G P I) :
    Prop :=
  P.certifiedForBSD ∧
  I.certifiedForBSD ∧
  (∀ L M : I.intersectionData.Line,
    A.associativityData.divisorLinearEquivalent
      (A.associativityData.lineDivisorClass L)
      (A.associativityData.lineDivisorClass M)) ∧
  (∀ L : I.intersectionData.Line,
    A.associativityData.principalDivisorLine L) ∧
  (∀ cfg : A.associativityData.CayleyBacharachConfiguration,
    A.associativityData.cayleyBacharachApplies cfg) ∧
  (∀ P Q R : Point C.E,
    A.associativityData.associativityConfigurationValid P Q R) ∧
  A.exceptionalAssociativityCasesCovered ∧
  A.geometricAssociativityStatement ∧
  A.geometricAssociativityMatchesSuppliedAddAssoc

theorem ChordTangentAssociativityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentAssociativityCertificate C G P I) :
    A.certifiedForBSD := by
  constructor
  · exact A.projectiveClosureCertified
  · constructor
    · exact A.intersectionTheoryCertified
    · constructor
      · exact A.associativityData.divisorLinearEquivalenceWitness
      · constructor
        · exact A.associativityData.principalDivisorLineWitness
        · constructor
          · exact A.associativityData.cayleyBacharachWitness
          · constructor
            · exact A.associativityData.associativityConfigurationWitness
            · constructor
              · exact A.exceptionalAssociativityCasesCoveredCertified
              · constructor
                · exact A.geometricAssociativityStatementCertified
                · exact A.geometricAssociativityMatchesSuppliedAddAssocCertified

theorem ChordTangentAssociativityCertificate.divisorLinearEquivalenceWitness
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentAssociativityCertificate C G P I)
    (L M : I.intersectionData.Line) :
    A.associativityData.divisorLinearEquivalent
      (A.associativityData.lineDivisorClass L)
      (A.associativityData.lineDivisorClass M) :=
  A.associativityData.divisorLinearEquivalenceWitness L M

theorem ChordTangentAssociativityCertificate.principalDivisorLineWitness
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentAssociativityCertificate C G P I)
    (L : I.intersectionData.Line) :
    A.associativityData.principalDivisorLine L :=
  A.associativityData.principalDivisorLineWitness L

theorem ChordTangentAssociativityCertificate.cayleyBacharachWitness
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentAssociativityCertificate C G P I)
    (cfg : A.associativityData.CayleyBacharachConfiguration) :
    A.associativityData.cayleyBacharachApplies cfg :=
  A.associativityData.cayleyBacharachWitness cfg

theorem ChordTangentAssociativityCertificate.associativityConfigurationWitness
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentAssociativityCertificate C G P I)
    (P₁ Q R : Point C.E) :
    A.associativityData.associativityConfigurationValid P₁ Q R :=
  A.associativityData.associativityConfigurationWitness P₁ Q R

/--
Geometric identity, inverse, and commutativity provenance for the chord-tangent
group law.

This is still an interface certificate. It does not construct the Picard group,
prove divisor linear equivalence, or derive the group axioms from first
principles.
-/
structure ChordTangentIdentityInverseCommutativityData
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E)
    (P : ProjectiveWeierstrassClosureCertificate C)
    (I : ProjectiveLineCubicIntersectionCertificate C P) where
  identityLine :
    Point C.E → I.intersectionData.Line
  identityLine_contains_point :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (identityLine Q)
        (P.projectiveModel.fromCurvePoint Q)
  identityLine_contains_infinity :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (identityLine Q)
        P.projectiveModel.pointAtInfinity
  pointAtInfinityIdentity :
    ∀ Q : Point C.E,
      G.addPoint Point.infinity Q = Q ∧
      G.addPoint Q Point.infinity = Q
  inverseReflectionLine :
    Point C.E → I.intersectionData.Line
  inverseLine_contains_point :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (inverseReflectionLine Q)
        (P.projectiveModel.fromCurvePoint Q)
  inverseLine_contains_inverse :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (inverseReflectionLine Q)
        (P.projectiveModel.fromCurvePoint (G.negPoint Q))
  inverseReflection :
    ∀ Q : Point C.E,
      G.addPoint (G.negPoint Q) Q = G.zero
  chordLine :
    Point C.E → Point C.E → I.intersectionData.Line
  chordLine_contains_left :
    ∀ Q R : Point C.E,
      I.intersectionData.lineContains
        (chordLine Q R)
        (P.projectiveModel.fromCurvePoint Q)
  chordLine_contains_right :
    ∀ Q R : Point C.E,
      I.intersectionData.lineContains
        (chordLine Q R)
        (P.projectiveModel.fromCurvePoint R)
  chordSymmetry :
    ∀ Q R : Point C.E,
      chordLine Q R = chordLine R Q
  boundary : List String

structure ChordTangentIdentityInverseCommutativityCertificate
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E)
    (P : ProjectiveWeierstrassClosureCertificate C)
    (I : ProjectiveLineCubicIntersectionCertificate C P) where
  projectiveClosureCertified :
    P.certifiedForBSD
  intersectionTheoryCertified :
    I.certifiedForBSD
  identityInverseCommutativityData :
    ChordTangentIdentityInverseCommutativityData C G P I
  leftIdentityMatchesSuppliedZeroAdd : Prop
  leftIdentityMatchesSuppliedZeroAddCertified :
    leftIdentityMatchesSuppliedZeroAdd
  rightIdentityMatchesSuppliedAddZero : Prop
  rightIdentityMatchesSuppliedAddZeroCertified :
    rightIdentityMatchesSuppliedAddZero
  inverseMatchesSuppliedNegation : Prop
  inverseMatchesSuppliedNegationCertified :
    inverseMatchesSuppliedNegation
  verticalLineInverseCasesCovered : Prop
  verticalLineInverseCasesCoveredCertified :
    verticalLineInverseCasesCovered
  commutativityMatchesSuppliedAddComm : Prop
  commutativityMatchesSuppliedAddCommCertified :
    commutativityMatchesSuppliedAddComm
  tangentAndInfinityExceptionalCasesCovered : Prop
  tangentAndInfinityExceptionalCasesCoveredCertified :
    tangentAndInfinityExceptionalCasesCovered
  boundary : List String

/--
Identity, inverse, and commutativity quality required by theorem-facing
chord-tangent group-law input.
-/
def ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentIdentityInverseCommutativityCertificate C G P I) :
    Prop :=
  P.certifiedForBSD ∧
  I.certifiedForBSD ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.identityLine Q)
      (P.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.identityLine Q)
      P.projectiveModel.pointAtInfinity) ∧
  (∀ Q : Point C.E,
    G.addPoint Point.infinity Q = Q ∧
    G.addPoint Q Point.infinity = Q) ∧
  A.leftIdentityMatchesSuppliedZeroAdd ∧
  A.rightIdentityMatchesSuppliedAddZero ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.inverseReflectionLine Q)
      (P.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.inverseReflectionLine Q)
      (P.projectiveModel.fromCurvePoint (G.negPoint Q))) ∧
  (∀ Q : Point C.E,
    G.addPoint (G.negPoint Q) Q = G.zero) ∧
  A.inverseMatchesSuppliedNegation ∧
  A.verticalLineInverseCasesCovered ∧
  (∀ Q R : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.chordLine Q R)
      (P.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q R : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.chordLine Q R)
      (P.projectiveModel.fromCurvePoint R)) ∧
  (∀ Q R : Point C.E,
    A.identityInverseCommutativityData.chordLine Q R =
      A.identityInverseCommutativityData.chordLine R Q) ∧
  A.commutativityMatchesSuppliedAddComm ∧
  A.tangentAndInfinityExceptionalCasesCovered

theorem ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentIdentityInverseCommutativityCertificate C G P I) :
    A.certifiedForBSD := by
  constructor
  · exact A.projectiveClosureCertified
  · constructor
    · exact A.intersectionTheoryCertified
    · constructor
      · exact A.identityInverseCommutativityData.identityLine_contains_point
      · constructor
        · exact A.identityInverseCommutativityData.identityLine_contains_infinity
        · constructor
          · exact A.identityInverseCommutativityData.pointAtInfinityIdentity
          · constructor
            · exact A.leftIdentityMatchesSuppliedZeroAddCertified
            · constructor
              · exact A.rightIdentityMatchesSuppliedAddZeroCertified
              · constructor
                · exact A.identityInverseCommutativityData.inverseLine_contains_point
                · constructor
                  · exact A.identityInverseCommutativityData.inverseLine_contains_inverse
                  · constructor
                    · exact A.identityInverseCommutativityData.inverseReflection
                    · constructor
                      · exact A.inverseMatchesSuppliedNegationCertified
                      · constructor
                        · exact A.verticalLineInverseCasesCoveredCertified
                        · constructor
                          · exact A.identityInverseCommutativityData.chordLine_contains_left
                          · constructor
                            · exact A.identityInverseCommutativityData.chordLine_contains_right
                            · constructor
                              · exact A.identityInverseCommutativityData.chordSymmetry
                              · constructor
                                · exact A.commutativityMatchesSuppliedAddCommCertified
                                · exact A.tangentAndInfinityExceptionalCasesCoveredCertified

theorem ChordTangentIdentityInverseCommutativityCertificate.pointAtInfinityIdentity
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentIdentityInverseCommutativityCertificate C G P I)
    (Q : Point C.E) :
    G.addPoint Point.infinity Q = Q ∧
      G.addPoint Q Point.infinity = Q :=
  A.identityInverseCommutativityData.pointAtInfinityIdentity Q

theorem ChordTangentIdentityInverseCommutativityCertificate.inverseReflection
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentIdentityInverseCommutativityCertificate C G P I)
    (Q : Point C.E) :
    G.addPoint (G.negPoint Q) Q = G.zero :=
  A.identityInverseCommutativityData.inverseReflection Q

theorem ChordTangentIdentityInverseCommutativityCertificate.chordSymmetry
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentIdentityInverseCommutativityCertificate C G P I)
    (Q R : Point C.E) :
    A.identityInverseCommutativityData.chordLine Q R =
      A.identityInverseCommutativityData.chordLine R Q :=
  A.identityInverseCommutativityData.chordSymmetry Q R

/--
Degree-zero divisor-class provenance for a smooth projective Weierstrass cubic.

This is still an interface certificate. It does not construct divisors,
principal divisors, the Picard group, line bundles, or Picard functor.
-/
structure DegreeZeroDivisorClassData
    (C : LawfulShortWeierstrass.{u})
    (_P : ProjectiveWeierstrassClosureCertificate C) where
  Divisor : Type u
  PrincipalDivisor :
    Divisor → Prop
  degree :
    Divisor → Int
  degreeZero :
    Divisor → Prop
  degreeZero_iff_degree_eq_zero :
    ∀ D : Divisor, degreeZero D ↔ degree D = 0
  PicardZeroClass : Type u
  zeroClass : PicardZeroClass
  classOfDivisor :
    Divisor → PicardZeroClass
  principalDivisor_class_zero :
    ∀ D : Divisor,
      PrincipalDivisor D →
        classOfDivisor D = zeroClass
  pointDivisor :
    Point C.E → Divisor
  pointClass :
    Point C.E → PicardZeroClass
  pointClass_eq_classOfDivisor :
    ∀ Q : Point C.E,
      pointClass Q = classOfDivisor (pointDivisor Q)
  pointDivisor_degreeZero :
    ∀ Q : Point C.E,
      degreeZero (pointDivisor Q)
  pointAtInfinityClass_eq_zero :
    pointClass Point.infinity = zeroClass
  smoothPointClass_degreeZero :
    ∀ Q : Point C.E,
      OnCurve C.E Q →
        degreeZero (pointDivisor Q)
  boundary : List String

structure DegreeZeroDivisorClassCertificate
    (C : LawfulShortWeierstrass.{u})
    (P : ProjectiveWeierstrassClosureCertificate C) where
  projectiveClosureCertified :
    P.certifiedForBSD
  divisorClassData :
    DegreeZeroDivisorClassData C P
  boundary : List String

/--
Divisor-class quality required by theorem-facing chord-tangent group-law input.
-/
def DegreeZeroDivisorClassCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (D : DegreeZeroDivisorClassCertificate C P) :
    Prop :=
  P.certifiedForBSD ∧
  (∀ X : D.divisorClassData.Divisor,
    D.divisorClassData.PrincipalDivisor X →
      D.divisorClassData.classOfDivisor X =
        D.divisorClassData.zeroClass) ∧
  (∀ Q : Point C.E,
    D.divisorClassData.pointClass Q =
      D.divisorClassData.classOfDivisor
        (D.divisorClassData.pointDivisor Q)) ∧
  (∀ Q : Point C.E,
    D.divisorClassData.degreeZero
      (D.divisorClassData.pointDivisor Q)) ∧
  D.divisorClassData.pointClass Point.infinity =
    D.divisorClassData.zeroClass ∧
  (∀ Q : Point C.E,
    OnCurve C.E Q →
      D.divisorClassData.degreeZero
        (D.divisorClassData.pointDivisor Q))

theorem DegreeZeroDivisorClassCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (D : DegreeZeroDivisorClassCertificate C P) :
    D.certifiedForBSD := by
  constructor
  · exact D.projectiveClosureCertified
  · constructor
    · exact D.divisorClassData.principalDivisor_class_zero
    · constructor
      · exact D.divisorClassData.pointClass_eq_classOfDivisor
      · constructor
        · exact D.divisorClassData.pointDivisor_degreeZero
        · constructor
          · exact D.divisorClassData.pointAtInfinityClass_eq_zero
          · exact D.divisorClassData.smoothPointClass_degreeZero

theorem DegreeZeroDivisorClassCertificate.principalDivisor_class_zero
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (D : DegreeZeroDivisorClassCertificate C P)
    (X : D.divisorClassData.Divisor)
    (hX : D.divisorClassData.PrincipalDivisor X) :
    D.divisorClassData.classOfDivisor X =
      D.divisorClassData.zeroClass :=
  D.divisorClassData.principalDivisor_class_zero X hX

theorem DegreeZeroDivisorClassCertificate.pointClass_eq_classOfDivisor
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (D : DegreeZeroDivisorClassCertificate C P)
    (Q : Point C.E) :
    D.divisorClassData.pointClass Q =
      D.divisorClassData.classOfDivisor
        (D.divisorClassData.pointDivisor Q) :=
  D.divisorClassData.pointClass_eq_classOfDivisor Q

theorem DegreeZeroDivisorClassCertificate.pointDivisor_degreeZero
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (D : DegreeZeroDivisorClassCertificate C P)
    (Q : Point C.E) :
    D.divisorClassData.degreeZero
      (D.divisorClassData.pointDivisor Q) :=
  D.divisorClassData.pointDivisor_degreeZero Q

theorem DegreeZeroDivisorClassCertificate.pointAtInfinityClass_eq_zero
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (D : DegreeZeroDivisorClassCertificate C P) :
    D.divisorClassData.pointClass Point.infinity =
      D.divisorClassData.zeroClass :=
  D.divisorClassData.pointAtInfinityClass_eq_zero

/--
Picard/divisor-class provenance for the chord-tangent group law.

This is still an interface certificate. It does not prove the Picard group law,
Abel's theorem, Riemann-Roch, or the divisor-class construction of the elliptic
curve group law.
-/
structure ChordTangentPicardProvenanceCertificate
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E)
    (P : ProjectiveWeierstrassClosureCertificate C)
    (I : ProjectiveLineCubicIntersectionCertificate C P) where
  projectiveClosureCertified :
    P.certifiedForBSD
  intersectionTheoryCertified :
    I.certifiedForBSD
  divisorClasses :
    DegreeZeroDivisorClassCertificate C P
  divisorClassesCertified :
    divisorClasses.certifiedForBSD
  linePrincipalDivisorCompatibility : Prop
  linePrincipalDivisorCompatibilityCertified :
    linePrincipalDivisorCompatibility
  tangentPrincipalDivisorCompatibility : Prop
  tangentPrincipalDivisorCompatibilityCertified :
    tangentPrincipalDivisorCompatibility
  chordTangentAdditionMatchesPicardAddition : Prop
  chordTangentAdditionMatchesPicardAdditionCertified :
    chordTangentAdditionMatchesPicardAddition
  inverseMatchesNegationInPicardZero : Prop
  inverseMatchesNegationInPicardZeroCertified :
    inverseMatchesNegationInPicardZero
  suppliedGroupLawMatchesPicardTransport : Prop
  suppliedGroupLawMatchesPicardTransportCertified :
    suppliedGroupLawMatchesPicardTransport
  exceptionalPicardCasesCovered : Prop
  exceptionalPicardCasesCoveredCertified :
    exceptionalPicardCasesCovered
  boundary : List String

/--
Picard provenance quality required by theorem-facing chord-tangent group-law input.
-/
def ChordTangentPicardProvenanceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (Q : ChordTangentPicardProvenanceCertificate C G P I) :
    Prop :=
  P.certifiedForBSD ∧
  I.certifiedForBSD ∧
  Q.divisorClasses.certifiedForBSD ∧
  Q.linePrincipalDivisorCompatibility ∧
  Q.tangentPrincipalDivisorCompatibility ∧
  Q.chordTangentAdditionMatchesPicardAddition ∧
  Q.inverseMatchesNegationInPicardZero ∧
  Q.suppliedGroupLawMatchesPicardTransport ∧
  Q.exceptionalPicardCasesCovered

theorem ChordTangentPicardProvenanceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (Q : ChordTangentPicardProvenanceCertificate C G P I) :
    Q.certifiedForBSD := by
  constructor
  · exact Q.projectiveClosureCertified
  · constructor
    · exact Q.intersectionTheoryCertified
    · constructor
      · exact Q.divisorClassesCertified
      · constructor
        · exact Q.linePrincipalDivisorCompatibilityCertified
        · constructor
          · exact Q.tangentPrincipalDivisorCompatibilityCertified
          · constructor
            · exact Q.chordTangentAdditionMatchesPicardAdditionCertified
            · constructor
              · exact Q.inverseMatchesNegationInPicardZeroCertified
              · constructor
                · exact Q.suppliedGroupLawMatchesPicardTransportCertified
                · exact Q.exceptionalPicardCasesCoveredCertified

/--
Typed operation data for the chord-tangent construction.

This is still an interface certificate. It does not prove existence or
uniqueness of the third intersection or reflection from first principles. It
does, however, expose the actual line, tangent, intersection, and reflection
objects used by the theorem-facing group-law gate.
-/
structure ChordTangentOperationData
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E)
    (P : ProjectiveWeierstrassClosureCertificate C)
    (I : ProjectiveLineCubicIntersectionCertificate C P) where
  chordLine :
    Point C.E → Point C.E → I.intersectionData.Line
  chordLine_contains_left :
    ∀ Q R : Point C.E,
      I.intersectionData.lineContains
        (chordLine Q R)
        (P.projectiveModel.fromCurvePoint Q)
  chordLine_contains_right :
    ∀ Q R : Point C.E,
      I.intersectionData.lineContains
        (chordLine Q R)
        (P.projectiveModel.fromCurvePoint R)
  tangentLine :
    Point C.E → I.intersectionData.Line
  tangentLine_tangentAt :
    ∀ Q : Point C.E,
      I.intersectionData.tangentAt Q (tangentLine Q)
  thirdIntersection :
    I.intersectionData.Line → I.intersectionData.IntersectionPoint
  thirdIntersection_line_eq :
    ∀ L : I.intersectionData.Line,
      I.intersectionData.intersectionLine (thirdIntersection L) = L
  thirdIntersection_on_cubic :
    ∀ L : I.intersectionData.Line,
      P.projectiveModel.projectiveEquation
        (I.intersectionData.toProjectivePoint (thirdIntersection L))
  reflection :
    Point C.E → Point C.E
  reflection_onCurve :
    ∀ Q : Point C.E,
      OnCurve C.E (reflection Q)
  reflection_eq_negPoint :
    ∀ Q : Point C.E,
      reflection Q = G.negPoint Q
  reflectedThirdIntersection :
    I.intersectionData.IntersectionPoint → Point C.E
  reflectedThirdIntersection_onCurve :
    ∀ X : I.intersectionData.IntersectionPoint,
      OnCurve C.E (reflectedThirdIntersection X)
  add_eq_reflected_chord_third :
    ∀ Q R : Point C.E,
      G.addPoint Q R =
        reflectedThirdIntersection
          (thirdIntersection (chordLine Q R))
  tangent_add_eq_reflected_tangent_third :
    ∀ Q : Point C.E,
      G.addPoint Q Q =
        reflectedThirdIntersection
          (thirdIntersection (tangentLine Q))
  boundary : List String

/--
Chord-tangent provenance for the supplied group-law certificate.

This is still an interface certificate. It does not prove Bezout, construct
intersection multiplicities, or derive associativity of the elliptic-curve group
law.
-/
structure ChordTangentGroupLawCertificate
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E) where
  projectiveClosure :
    ProjectiveWeierstrassClosureCertificate C
  projectiveClosureCertified :
    projectiveClosure.certifiedForBSD
  intersectionTheory :
    ProjectiveLineCubicIntersectionCertificate C projectiveClosure
  intersectionTheoryCertified :
    intersectionTheory.certifiedForBSD
  associativityGeometry :
    ChordTangentAssociativityCertificate
      C G projectiveClosure intersectionTheory
  associativityGeometryCertified :
    associativityGeometry.certifiedForBSD
  identityInverseCommutativityGeometry :
    ChordTangentIdentityInverseCommutativityCertificate
      C G projectiveClosure intersectionTheory
  identityInverseCommutativityGeometryCertified :
    identityInverseCommutativityGeometry.certifiedForBSD
  picardProvenance :
    ChordTangentPicardProvenanceCertificate
      C G projectiveClosure intersectionTheory
  picardProvenanceCertified :
    picardProvenance.certifiedForBSD
  operationData :
    ChordTangentOperationData
      C G projectiveClosure intersectionTheory
  addMatchesChordTangent : Prop
  addMatchesChordTangentCertified :
    addMatchesChordTangent
  negMatchesGeometricReflection : Prop
  negMatchesGeometricReflectionCertified :
    negMatchesGeometricReflection
  zeroMatchesPointAtInfinity : Prop
  zeroMatchesPointAtInfinityCertified :
    zeroMatchesPointAtInfinity
  closureOnSmoothCurve : Prop
  closureOnSmoothCurveCertified :
    closureOnSmoothCurve
  boundary : List String

/-- Chord-tangent quality required by theorem-facing group-law input. -/
def ChordTangentGroupLawCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    (T : ChordTangentGroupLawCertificate C G) :
    Prop :=
  T.projectiveClosure.certifiedForBSD ∧
  T.intersectionTheory.certifiedForBSD ∧
  T.associativityGeometry.certifiedForBSD ∧
  T.identityInverseCommutativityGeometry.certifiedForBSD ∧
  T.picardProvenance.certifiedForBSD ∧
  (∀ Q R : Point C.E,
    T.intersectionTheory.intersectionData.lineContains
      (T.operationData.chordLine Q R)
      (T.projectiveClosure.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q R : Point C.E,
    T.intersectionTheory.intersectionData.lineContains
      (T.operationData.chordLine Q R)
      (T.projectiveClosure.projectiveModel.fromCurvePoint R)) ∧
  (∀ Q : Point C.E,
    T.intersectionTheory.intersectionData.tangentAt Q
      (T.operationData.tangentLine Q)) ∧
  (∀ L : T.intersectionTheory.intersectionData.Line,
    T.intersectionTheory.intersectionData.intersectionLine
      (T.operationData.thirdIntersection L) = L) ∧
  (∀ L : T.intersectionTheory.intersectionData.Line,
    T.projectiveClosure.projectiveModel.projectiveEquation
      (T.intersectionTheory.intersectionData.toProjectivePoint
        (T.operationData.thirdIntersection L))) ∧
  (∀ Q : Point C.E,
    OnCurve C.E (T.operationData.reflection Q)) ∧
  (∀ Q : Point C.E,
    T.operationData.reflection Q = G.negPoint Q) ∧
  (∀ X : T.intersectionTheory.intersectionData.IntersectionPoint,
    OnCurve C.E (T.operationData.reflectedThirdIntersection X)) ∧
  (∀ Q R : Point C.E,
    G.addPoint Q R =
      T.operationData.reflectedThirdIntersection
        (T.operationData.thirdIntersection
          (T.operationData.chordLine Q R))) ∧
  (∀ Q : Point C.E,
    G.addPoint Q Q =
      T.operationData.reflectedThirdIntersection
        (T.operationData.thirdIntersection
          (T.operationData.tangentLine Q))) ∧
  T.addMatchesChordTangent ∧
  T.negMatchesGeometricReflection ∧
  T.zeroMatchesPointAtInfinity ∧
  T.closureOnSmoothCurve

theorem ChordTangentGroupLawCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    (T : ChordTangentGroupLawCertificate C G) :
    T.certifiedForBSD := by
  constructor
  · exact T.projectiveClosureCertified
  · constructor
    · exact T.intersectionTheoryCertified
    · constructor
      · exact T.associativityGeometryCertified
      · constructor
        · exact T.identityInverseCommutativityGeometryCertified
        · constructor
          · exact T.picardProvenanceCertified
          · constructor
            · exact T.operationData.chordLine_contains_left
            · constructor
              · exact T.operationData.chordLine_contains_right
              · constructor
                · exact T.operationData.tangentLine_tangentAt
                · constructor
                  · exact T.operationData.thirdIntersection_line_eq
                  · constructor
                    · exact T.operationData.thirdIntersection_on_cubic
                    · constructor
                      · exact T.operationData.reflection_onCurve
                      · constructor
                        · exact T.operationData.reflection_eq_negPoint
                        · constructor
                          · exact T.operationData.reflectedThirdIntersection_onCurve
                          · constructor
                            · exact T.operationData.add_eq_reflected_chord_third
                            · constructor
                              · exact T.operationData.tangent_add_eq_reflected_tangent_third
                              · constructor
                                · exact T.addMatchesChordTangentCertified
                                · constructor
                                  · exact T.negMatchesGeometricReflectionCertified
                                  · constructor
                                    · exact T.zeroMatchesPointAtInfinityCertified
                                    · exact T.closureOnSmoothCurveCertified

theorem ChordTangentGroupLawCertificate.chordLine_contains_left
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    (T : ChordTangentGroupLawCertificate C G)
    (Q R : Point C.E) :
    T.intersectionTheory.intersectionData.lineContains
      (T.operationData.chordLine Q R)
      (T.projectiveClosure.projectiveModel.fromCurvePoint Q) :=
  T.operationData.chordLine_contains_left Q R

theorem ChordTangentGroupLawCertificate.tangentLine_tangentAt
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    (T : ChordTangentGroupLawCertificate C G)
    (Q : Point C.E) :
    T.intersectionTheory.intersectionData.tangentAt Q
      (T.operationData.tangentLine Q) :=
  T.operationData.tangentLine_tangentAt Q

theorem ChordTangentGroupLawCertificate.add_eq_reflected_chord_third
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    (T : ChordTangentGroupLawCertificate C G)
    (Q R : Point C.E) :
    G.addPoint Q R =
      T.operationData.reflectedThirdIntersection
        (T.operationData.thirdIntersection
          (T.operationData.chordLine Q R)) :=
  T.operationData.add_eq_reflected_chord_third Q R

theorem ChordTangentGroupLawCertificate.reflection_eq_negPoint
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    (T : ChordTangentGroupLawCertificate C G)
    (Q : Point C.E) :
    T.operationData.reflection Q = G.negPoint Q :=
  T.operationData.reflection_eq_negPoint Q

/-- The chord-tangent package carries projective line/cubic intersection data. -/
theorem ChordTangentGroupLawCertificate.intersectionTheory_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {T : ChordTangentGroupLawCertificate C G}
    (h : T.certifiedForBSD) :
    T.intersectionTheory.certifiedForBSD :=
  h.2.1

/-- The chord-tangent package carries geometric associativity provenance. -/
theorem ChordTangentGroupLawCertificate.associativityGeometry_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {T : ChordTangentGroupLawCertificate C G}
    (h : T.certifiedForBSD) :
    T.associativityGeometry.certifiedForBSD :=
  h.2.2.1

/-- The chord-tangent package carries identity/inverse/commutativity provenance. -/
theorem ChordTangentGroupLawCertificate.identityInverseCommutativityGeometry_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {T : ChordTangentGroupLawCertificate C G}
    (h : T.certifiedForBSD) :
    T.identityInverseCommutativityGeometry.certifiedForBSD :=
  h.2.2.2.1

/-- The chord-tangent package carries Picard/divisor-class provenance. -/
theorem ChordTangentGroupLawCertificate.picardProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {T : ChordTangentGroupLawCertificate C G}
    (h : T.certifiedForBSD) :
    T.picardProvenance.certifiedForBSD :=
  h.2.2.2.2.1

/--
A theorem-facing group-law certificate for a smooth lawful short-Weierstrass curve.

This still does not construct the chord-tangent law. It ensures that any
theorem-facing use of the existing `GroupLawCertificate` also carries the
smoothness gate introduced in `SmoothShortWeierstrassCertificate` and explicit
chord-tangent/projective-closure provenance.
-/
structure SmoothGroupLawCertificate
    (C : LawfulShortWeierstrass.{u}) where
  smooth : SmoothShortWeierstrassCertificate C
  groupLaw : GroupLawCertificate C.E
  chordTangent :
    ChordTangentGroupLawCertificate C groupLaw
  chordTangentCertified :
    chordTangent.certifiedForBSD
  boundary : List String

/-- The smooth group-law package carries chord-tangent provenance. -/
theorem SmoothGroupLawCertificate.chordTangent_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    G.chordTangent.certifiedForBSD :=
  G.chordTangentCertified

/-- The smooth group-law package carries projective line/cubic intersection data. -/
theorem SmoothGroupLawCertificate.intersectionTheory_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    G.chordTangent.intersectionTheory.certifiedForBSD :=
  ChordTangentGroupLawCertificate.intersectionTheory_certifiedForBSD
    (T := G.chordTangent)
    G.chordTangentCertified

/-- The smooth group-law package carries geometric associativity provenance. -/
theorem SmoothGroupLawCertificate.associativityGeometry_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    G.chordTangent.associativityGeometry.certifiedForBSD :=
  ChordTangentGroupLawCertificate.associativityGeometry_certifiedForBSD
    (T := G.chordTangent)
    G.chordTangentCertified

/-- The smooth group-law package carries identity/inverse/commutativity provenance. -/
theorem SmoothGroupLawCertificate.identityInverseCommutativityGeometry_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    G.chordTangent.identityInverseCommutativityGeometry.certifiedForBSD :=
  ChordTangentGroupLawCertificate.identityInverseCommutativityGeometry_certifiedForBSD
      (T := G.chordTangent)
      G.chordTangentCertified

/-- The smooth group-law package carries Picard/divisor-class provenance. -/
theorem SmoothGroupLawCertificate.picardProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    G.chordTangent.picardProvenance.certifiedForBSD :=
  ChordTangentGroupLawCertificate.picardProvenance_certifiedForBSD
    (T := G.chordTangent)
    G.chordTangentCertified

/-- The supplied group law is certified as matching the Picard transport package. -/
theorem SmoothGroupLawCertificate.groupLaw_matches_picard_transport
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    ChordTangentPicardProvenanceCertificate.suppliedGroupLawMatchesPicardTransport
      G.chordTangent.picardProvenance :=
  ChordTangentPicardProvenanceCertificate.suppliedGroupLawMatchesPicardTransportCertified
    G.chordTangent.picardProvenance

/-- Chord-tangent addition is certified as matching Picard addition. -/
theorem SmoothGroupLawCertificate.chordTangent_matches_picard_addition
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    ChordTangentPicardProvenanceCertificate.chordTangentAdditionMatchesPicardAddition
      G.chordTangent.picardProvenance :=
  ChordTangentPicardProvenanceCertificate.chordTangentAdditionMatchesPicardAdditionCertified
    G.chordTangent.picardProvenance

/--
The supplied algebraic associativity is certified as matching the geometric
chord-tangent associativity package.
-/
theorem SmoothGroupLawCertificate.add_assoc_matches_geometric_associativity
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    ChordTangentAssociativityCertificate.geometricAssociativityMatchesSuppliedAddAssoc
      G.chordTangent.associativityGeometry :=
  ChordTangentAssociativityCertificate.geometricAssociativityMatchesSuppliedAddAssocCertified
      G.chordTangent.associativityGeometry

/-- The supplied commutativity law is certified as matching chord symmetry. -/
theorem SmoothGroupLawCertificate.add_comm_matches_chord_symmetry
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    ChordTangentIdentityInverseCommutativityCertificate.commutativityMatchesSuppliedAddComm
        G.chordTangent.identityInverseCommutativityGeometry :=
  ChordTangentIdentityInverseCommutativityCertificate.commutativityMatchesSuppliedAddCommCertified
      G.chordTangent.identityInverseCommutativityGeometry

/-- The supplied inverse operation is certified as matching geometric reflection. -/
theorem SmoothGroupLawCertificate.neg_matches_geometric_inverse
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    ChordTangentIdentityInverseCommutativityCertificate.inverseMatchesSuppliedNegation
        G.chordTangent.identityInverseCommutativityGeometry :=
  ChordTangentIdentityInverseCommutativityCertificate.inverseMatchesSuppliedNegationCertified
      G.chordTangent.identityInverseCommutativityGeometry

/-- The supplied zero laws are certified as matching the point at infinity. -/
theorem SmoothGroupLawCertificate.zero_laws_match_point_at_infinity
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    ChordTangentIdentityInverseCommutativityCertificate.leftIdentityMatchesSuppliedZeroAdd
        G.chordTangent.identityInverseCommutativityGeometry ∧
    ChordTangentIdentityInverseCommutativityCertificate.rightIdentityMatchesSuppliedAddZero
        G.chordTangent.identityInverseCommutativityGeometry :=
  ⟨
    ChordTangentIdentityInverseCommutativityCertificate.leftIdentityMatchesSuppliedZeroAddCertified
        G.chordTangent.identityInverseCommutativityGeometry,
    ChordTangentIdentityInverseCommutativityCertificate.rightIdentityMatchesSuppliedAddZeroCertified
        G.chordTangent.identityInverseCommutativityGeometry
  ⟩

/-- The supplied addition operation is certified as the chord-tangent operation. -/
theorem SmoothGroupLawCertificate.add_matches_chord_tangent
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    G.chordTangent.addMatchesChordTangent :=
  G.chordTangent.addMatchesChordTangentCertified

/-- The supplied zero is certified as the projective point at infinity. -/
theorem SmoothGroupLawCertificate.zero_matches_point_at_infinity
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    G.chordTangent.zeroMatchesPointAtInfinity :=
  G.chordTangent.zeroMatchesPointAtInfinityCertified

/-- The smooth group-law package carries nonzero discriminant. -/
theorem SmoothGroupLawCertificate.discriminant_ne_zero
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    C.E.discriminant ≠ C.K.field.zero :=
  G.smooth.discriminant_ne_zero

/-- The smooth group-law package carries absence of affine singular points. -/
theorem SmoothGroupLawCertificate.no_affine_singular_point
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    ¬ Nonempty (AffineSingularPoint C) :=
  G.smooth.no_affine_singular_point

/-- The smooth group-law package carries the characteristic gate. -/
theorem SmoothGroupLawCertificate.charNeTwoThree
    {C : LawfulShortWeierstrass.{u}}
    (_G : SmoothGroupLawCertificate C) :
    C.E.charNeTwoThree :=
  C.charNeTwoThreeCertified

/-- Addition exposed from a smooth group-law certificate. -/
def SmoothGroupLawCertificate.add
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C) :
    Point C.E → Point C.E → Point C.E :=
  G.groupLaw.addPoint

/-- Commutativity exposed from a smooth group-law certificate. -/
theorem SmoothGroupLawCertificate.add_comm
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C)
    (P Q : Point C.E) :
    G.add P Q = G.add Q P :=
  G.groupLaw.add_comm P Q

/-- Associativity exposed from a smooth group-law certificate. -/
theorem SmoothGroupLawCertificate.add_assoc
    {C : LawfulShortWeierstrass.{u}}
    (G : SmoothGroupLawCertificate C)
    (P Q R : Point C.E) :
    G.add (G.add P Q) R = G.add P (G.add Q R) :=
  G.groupLaw.add_assoc P Q R

end EllipticCurve
end Surface.Arithmetic
