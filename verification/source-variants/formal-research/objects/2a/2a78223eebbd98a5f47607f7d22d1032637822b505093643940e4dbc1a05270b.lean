import Mathematics.Homology.CohomologyLattice
import Mathematics.Homology.GramField

/-!
# Rank-two elliptic level enrichment

An oriented rank-two lattice with compatible complex and positive metric data
defines an elliptic moduli point after choosing scale normalization.  A
modular form is additional automorphic, holomorphic, and growth data.
-/

namespace Mathematics.Homology

universe u v

noncomputable section

inductive EllipticLevelMarkingKind
  | markedPoint
  | cyclicSubgroup
  | fullBasis
  deriving DecidableEq, Repr

/-- Certified elliptic specialization of one free cohomology lattice. -/
structure EllipticLevelEnrichment
    (IntegralCohomology : Type u)
    (V : Type v)
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V]
    (lattice : FreeCohomologyLattice IntegralCohomology V)
    (gram : PositiveGram V) where
  rank_two : Module.finrank ℝ V = 2
  orientationDigest : Digest
  complexStructure : V →ₗ[ℝ] V
  complex_squared :
    complexStructure.comp complexStructure = -LinearMap.id
  gramCompatible :
    ∀ left right,
      gram.form
          (complexStructure left)
          (complexStructure right) =
        gram.form left right
  positiveAreaCertificate : ObjectAddress
  covolume : ℝ
  covolume_positive : 0 < covolume
  shapeNormalizationCertificate : ObjectAddress
  level : Nat
  level_positive : 0 < level
  markingKind : EllipticLevelMarkingKind
  markedTorsionDigest : Digest
  levelCertificate : ObjectAddress
  lattice_bound : Digest
  lattice_bound_eq : lattice_bound = lattice.latticeDigest

/-- Data required in addition to an elliptic lattice to claim a modular form. -/
structure EllipticModularFormDatum where
  weight : Int
  automorphyLawCertificate : ObjectAddress
  holomorphyCertificate : ObjectAddress
  cuspOrGrowthCertificate : ObjectAddress

end

end Mathematics.Homology
