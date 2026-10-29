import Folder.Arithmetic.BSDTwistWitness
import Folder.Arithmetic.EllipticCurve
import Folder.Arithmetic.ModularWitness
import Folder.Arithmetic.Torsion

/-!
# Folder.Research.ArithmeticBoundary

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.arithmetic_boundary
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace Folder
namespace Research
namespace ArithmeticBoundary

structure BSDContract where
  Curve : Type _
  analyticRank : Nat
  algebraicRank : Nat
  shaOrderAnalytic : Nat
  shaOrderAlgebraic : Nat
  rank_eq : analyticRank = algebraicRank
  sha_eq : shaOrderAnalytic = shaOrderAlgebraic

structure HasseWeilContract where
  Curve : Type _
  LFunction : Type _
  hasEulerProduct : Prop
  hasEulerProduct_certified : hasEulerProduct
  hasAnalyticContinuation : Prop
  hasAnalyticContinuation_certified : hasAnalyticContinuation
  hasFunctionalEquation : Prop
  hasFunctionalEquation_certified : hasFunctionalEquation

structure ShafarevichTateContract where
  Curve : Type _
  Sha : Type _
  finite : Prop
  finite_certified : finite
  order : Nat

structure ModularityContract where
  Curve : Type _
  ModularForm : Type _
  associated : Prop
  associated_certified : associated

structure BSDDataSource where
  sourceLabel : String
  CurveId : Type _
  TwistParam : Type _
  baseCurve : CurveId
  twist : TwistParam → CurveId
  certifiedStrongBSD : TwistParam → Prop
  infiniteFamily : Prop

def AllTwistsCertified (D : BSDDataSource) : Prop :=
  ∀ d : D.TwistParam, D.certifiedStrongBSD d

structure CertifiedBSDDataSource where
  source : BSDDataSource
  infinite_family : source.infiniteFamily
  all_certified : AllTwistsCertified source

structure ArithmeticMonodromyParameterSource
    {K : Type _} [Field K]
    (E : Folder.Arithmetic.ShortWeierstrass K) where
  source : BSDDataSource
  relationName : String
  usableForMonodromy : Prop

theorem bsd_rank_eq
    (B : BSDContract) :
    B.analyticRank = B.algebraicRank :=
  B.rank_eq

theorem bsd_sha_eq
    (B : BSDContract) :
    B.shaOrderAnalytic = B.shaOrderAlgebraic :=
  B.sha_eq

theorem hasse_weil_has_analytic_continuation
    (H : HasseWeilContract) :
    H.hasAnalyticContinuation :=
  H.hasAnalyticContinuation_certified

theorem hasse_weil_has_functional_equation
    (H : HasseWeilContract) :
    H.hasFunctionalEquation :=
  H.hasFunctionalEquation_certified

theorem shafarevich_tate_finite
    (S : ShafarevichTateContract) :
    S.finite :=
  S.finite_certified

theorem modularity_associated
    (M : ModularityContract) :
    M.associated :=
  M.associated_certified

theorem bsd_data_source_certifies
    (D : BSDDataSource)
    (h : ∀ d, D.certifiedStrongBSD d) :
    ∀ d, D.certifiedStrongBSD d :=
  h

theorem certified_bsd_data_source_all_certified
    (D : CertifiedBSDDataSource) :
    AllTwistsCertified D.source :=
  D.all_certified

theorem certified_bsd_data_source_infinite
    (D : CertifiedBSDDataSource) :
    D.source.infiniteFamily :=
  D.infinite_family

end ArithmeticBoundary
end Research
end Folder
