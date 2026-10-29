# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestExpBounds.Variant4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `040e9b0179a31d87f1ea69be8e14c9ad75dd2995` · SHA-256 `4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert

-- e ≈ 2.718281828...

-- This should work (from earlier)
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718282 := by
  interval_bound

-- Tighter bound
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.7182819 := by
  interval_bound

-- Even tighter
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.71828183 := by
  interval_bound

-- Very tight (e ≈ 2.718281828...)
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718281829 := by
  interval_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=427bd2e4908440e65fb00a89bf78b6245d4b57956656672e06d63758d561c546 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestExpBounds/Variant4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
