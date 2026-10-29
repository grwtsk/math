# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestExpBound.Variantcae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eab0c2e9941434fb1fc4484f0662f238ed597d55` · SHA-256 `cae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert

example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718282 := by
  interval_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c621aace10066c7d07b33fd866cb625f6d929a8a925d27d40779be8d29e244b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestExpBound/Variantcae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
