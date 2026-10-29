# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalTail.Variant33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0767c33e48b20fe17d13675426b21a8fba4ab87e` · SHA-256 `33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.ExactLDL

/-!
# Uniform interval tail certificates

Coefficientwise positivity is not used as a proxy for evaluated matrix
positivity.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure IntervalLDLCertificate
    (rank : Nat)
    (interval : QInterval) where
  evaluatedDefect : ℚ → RationalMatrix rank
  truncationOrder : Nat
  lower : ℚ → RationalMatrix rank
  diagonal : ℚ → Fin rank → ℚ
  pivots_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ index,
        0 ≤ diagonal q index
  tailQuadratic :
    ℚ → (Fin rank → ℚ) → ℚ
  tail_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ tailQuadratic q vector
  exactDecomposition : Prop
  exactDecompositionProof :
    exactDecomposition
  evaluated_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ rationalQuadraticForm
          (evaluatedDefect q) vector

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52b810212e60ead57ef4d0b8c8d86374c69c509644682dd17bd0f54109952bad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalTail/Variant33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
