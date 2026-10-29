# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ba1e9821bf9f45a4375830d543d64bb064ff9b3` · SHA-256 `201ae24373b2a9ab782a74e251f0b5929b5c184cee902c3779cde6ee139c45a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDBilinearReindexing
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerBounds

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open GRWTSK.RiemannHypothesis

theorem nonAliasingFejer_two_mul_positiveShift_add_diagonal_eq_bilinear
    {X N m Y : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hY : 1 ≤ Y) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) +
        diagonalCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) =
      centeredLowGCDBilinear X Y
        (nonAliasingFejerPrefixWeight X N m) := by
  exact two_mul_positiveShift_add_diagonal_eq_bilinear
    hreg.1 hY (nonAliasingFejerPrefixWeight X N m)

theorem nonAliasingFejerPrefixWeight_centeredLowGCDBridge
    {X N m Y : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hY : 1 ≤ Y) :
    (∀ n ∈ octaveIndexSet X,
      nonAliasingFejerPrefixWeight X N m n ∈ Set.Icc (0 : ℝ) 1) ∧
    (2 * positiveShiftCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) +
        diagonalCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) =
      centeredLowGCDBilinear X Y
        (nonAliasingFejerPrefixWeight X N m)) := by
  constructor
  · intro n hn
    exact nonAliasingFejerPrefixWeight_mem_Icc
      hreg hm0 hm1 hn
  · exact
      nonAliasingFejer_two_mul_positiveShift_add_diagonal_eq_bilinear
        hreg hY

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51cf21921ea909aa181ba919ad5395ee4853d68a077fd228cbb7b7c6b4103ab7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
