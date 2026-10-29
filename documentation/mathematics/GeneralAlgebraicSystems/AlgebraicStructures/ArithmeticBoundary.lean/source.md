# Arithmetic Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f35a6966ad66a67a057434ec88fed5a911344cda` · SHA-256 `bb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f0737fcc163a35c17a12c0abd11edab46ff159ab19f6a275945181abe870ad8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
