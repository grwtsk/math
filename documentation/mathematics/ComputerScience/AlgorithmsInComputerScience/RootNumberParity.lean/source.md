# Root Number Parity — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67074c67bbe60cd8af6bc0b6f547005d635edd45` · SHA-256 `90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.BSD.Statement

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD RootNumberParity

What is formalized:
Root-number and central-order parity compatibility interfaces.

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
Compatibility between the completed functional-equation root number and the
parity of the central order of vanishing.

This is an interface certificate. It records that the root-number sign supplied
by the completed functional-equation package is compatible with the central
zero order used in the BSD first part. It does not prove analytic continuation,
the functional equation, the parity theorem, modularity, automorphy, local
Langlands compatibility, or BSD.
-/
structure BSDRootNumberParityData
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    (F : FirstPartStatement L M.MW) where
  rootNumberSign : Int
  centralOrderParity : Nat
  parity_eq_order_mod_two :
    centralOrderParity = F.orderCertificate.order % 2
  signIsPlusOrMinusOne : Prop
  signIsPlusOrMinusOneCertified :
    signIsPlusOrMinusOne
  boundary : List String

structure BSDRootNumberParityCompatibilityCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (F : FirstPartStatement L M.MW) where
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquationCertified :
    completedFunctionalEquation.certifiedForBSD
  orderCertificateCertified :
    F.orderCertificate.certifiedForBSD
  completedCentralPointMatchesOrderPoint : Prop
  completedCentralPointMatchesOrderPointCertified :
    completedCentralPointMatchesOrderPoint
  parityData :
    BSDRootNumberParityData F
  orderParityMatchesRootNumberSign : Prop
  orderParityMatchesRootNumberSignCertified :
    orderParityMatchesRootNumberSign
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for root-number/order-parity compatibility. -/
def BSDRootNumberParityCompatibilityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {F : FirstPartStatement L M.MW}
    (R : BSDRootNumberParityCompatibilityCertificate L M N P F) :
    Prop :=
  R.completedFunctionalEquation.certifiedForBSD ∧
  F.orderCertificate.certifiedForBSD ∧
  R.completedFunctionalEquation.centralPointIsSEqOne ∧
  R.completedFunctionalEquation.rootNumber.sign =
    R.completedFunctionalEquation.functionalEquation.sign ∧
  R.completedFunctionalEquation.rootNumber.unitNorm ∧
  R.completedCentralPointMatchesOrderPoint ∧
  R.parityData.signIsPlusOrMinusOne ∧
  R.parityData.centralOrderParity = F.orderCertificate.order % 2 ∧
  R.orderParityMatchesRootNumberSign ∧
  R.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {F : FirstPartStatement L M.MW}
    (R : BSDRootNumberParityCompatibilityCertificate L M N P F)
    (hsource :
      R.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    R.certifiedForBSD := by
  exact
    ⟨R.completedFunctionalEquationCertified,
      R.orderCertificateCertified,
      R.completedFunctionalEquation.centralPointIsSEqOneCertified,
      R.completedFunctionalEquation.rootNumber.sign_eq_functionalEquation,
      R.completedFunctionalEquation.rootNumber.unitNormCertified,
      R.completedCentralPointMatchesOrderPointCertified,
      R.parityData.signIsPlusOrMinusOneCertified,
      R.parityData.parity_eq_order_mod_two,
      R.orderParityMatchesRootNumberSignCertified,
      hsource⟩

end BSD
end EllipticCurve
end Surface.Arithmetic

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b098aca829a7cf5ed8a9b6c09246b00dcb5212d6190d4f5236a6328cf406f28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
