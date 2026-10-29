# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExecutableRefinement.Variantdd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5b8a0096dde77b79e2c1304d38c5aa6faccc920` · SHA-256 `dd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix.Quantization
import Surface.ContinuousAssurance.Refinement

/-!
# Array-backed observational bridge

The prototype executable relation reuses `BinMat.Quantizer.ofMut`.  It proves
only that the array-backed encoder is observed through `BinMatMut.toDecl`.
No transition-level runtime refinement is inferred from this equation.
-/

universe u

namespace DAF.Integration.WorldModelPrototype

/-- The declarative quantizer induced by one mutable matrix encoder. -/
def mutQuantizer
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n) :
    BinMat.Quantizer Cfg m n :=
  BinMat.Quantizer.ofMut encodeMut

/-- The executable observation is exactly its declarative `toDecl` image. -/
@[simp]
theorem mutQuantizer_encode
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n)
    (configuration : Cfg) :
    (mutQuantizer encodeMut).encode configuration =
      (encodeMut configuration).toDecl :=
  rfl

/-- Indistinguishability remains observational, not raw-structure equality. -/
theorem mutQuantizer_indistinguishable_iff
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n)
    (left right : Cfg) :
    (mutQuantizer encodeMut).Indistinguishable left right ↔
      (encodeMut left).toDecl = (encodeMut right).toDecl :=
  Iff.rfl

/-- No full executable transition refinement is submitted by this adapter. -/
def executableWorldModelRefinementStatus :
    Surface.ContinuousAssurance.RuntimeRefinementSubmissionStatus :=
  .notSubmitted

@[simp]
theorem executableWorldModelRefinement_notSubmitted :
    executableWorldModelRefinementStatus = .notSubmitted :=
  rfl

end DAF.Integration.WorldModelPrototype
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b269c9bb0fab80179fb0490cd51d716b5cdd1cbc0cbf3580e76464157c6744ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Variantdd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
