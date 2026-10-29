# Crossed Product Operator — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97341f262390172b9c2c13f0ed3989f6180ba484` · SHA-256 `f8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.CrossedProduct

/-!
# Self-adjoint crossed-product spectral operator

The full operator acts on the finite supported bitfield Hilbert carrier.  Its
transport coefficients are paired by adjoint, and a unitary involutive
grading supplies the `λ ↔ -λ` symmetry.
-/

namespace Mathematics.ConnesBitfield

open scoped ComplexConjugate

universe u

structure SelfAdjointCrossedProductOperator
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (rank : Nat) where
  fiberContribution :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  transportCoefficient :
    model.Automorphism →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  transportAdjointPairing :
    ∀ automorphism,
      transportCoefficient automorphism⁻¹ =
        (transportCoefficient automorphism)ᴴ
  operator :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  assembledFromFiberAndTransport : Prop
  assembledFromFiberAndTransportProof :
    assembledFromFiberAndTransport
  selfAdjoint :
    operator.IsHermitian
  grading :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  gradingUnitary :
    gradingᴴ * grading = 1
  gradingInvolutive :
    grading * grading = 1
  gradingAnticommutes :
    grading * operator * grading = -operator

structure CrossedProductSemisimplicityCertificate
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (operator :
      SelfAdjointCrossedProductOperator model rank) where
  eigenvalue :
    BitfieldHilbertIndex system rank → ℝ
  diagonalizer :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  diagonalizerUnitary :
    diagonalizerᴴ * diagonalizer = 1
  diagonalizes :
    diagonalizerᴴ * operator.operator *
        diagonalizer =
      Matrix.diagonal
        (fun index => (eigenvalue index : ℂ))
  jordanOrder :
    BitfieldHilbertIndex system rank → Nat
  jordanOrderZero :
    ∀ index,
      jordanOrder index = 0

end Mathematics.ConnesBitfield
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4c7682a5316b4b5aff4a91418f3f5af8605ba00c4cfc2a2c203d8ead05631d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
