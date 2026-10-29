# Exact LDL — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ebe907bc8839746846c66e614109563c8a4da44` · SHA-256 `84d32b869f47bec27d7c1e44567cf6644a0325ee132266d80e15b6a089abb74d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.JacobiCompression

/-!
# Exact finite LDL certificates

The factorization identity and the induced quadratic-form inequality are both
carried explicitly.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure ExactLDLCertificate
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    (compression :
      JacobiCompression system rank) where
  lower : RationalMatrix rank
  diagonal : Fin rank → ℚ
  lowerTriangular :
    ∀ row column,
      row < column →
      lower row column = 0
  diagonal_nonnegative :
    ∀ index,
      0 ≤ diagonal index
  factorization : Prop
  factorizationProof : factorization
  quadraticSound :
    ∀ vector,
      0 ≤
        rationalQuadraticForm
          compression.defect vector

theorem exactLDL_nonnegative
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    {compression :
      JacobiCompression system rank}
    (certificate :
      ExactLDLCertificate compression)
    (vector : Fin rank → ℚ) :
    0 ≤ rationalQuadraticForm
      compression.defect vector :=
  certificate.quadraticSound vector

structure NegativeCompressionWitness
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    (compression :
      JacobiCompression system rank) where
  vector : Fin rank → ℚ
  value : ℚ
  value_eq :
    value =
    rationalQuadraticForm
      compression.defect vector
  value_negative : value < 0
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c34f1dc47245033d2d773ed9d56922fce1df8853dda63f1486cf8891f5be77c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExactLDL/Variant84d32b869f47bec27d7c1e44567cf6644a0325ee132266d80e15b6a089abb74d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
