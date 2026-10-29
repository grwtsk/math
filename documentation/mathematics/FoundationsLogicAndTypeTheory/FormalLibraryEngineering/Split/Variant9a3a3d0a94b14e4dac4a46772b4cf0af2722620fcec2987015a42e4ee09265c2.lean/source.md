# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variant9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b48b0d7d01fcfe89252e88097a3108ba5241cef` · SHA-256 `9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Basic

example : (α : Type) × List α := by
  constructor
  · exact [0,1]

-- example : (α : Type) × List α := by
--   fsplit
--   - exact ℕ
--   - exact [0,1]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eabf8582a3a637656dca2d703475439eebe9f98321d653fd96016b889c8b6c73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
