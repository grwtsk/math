# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Abs.Variant4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74134a02ca778369a906db95d46bbba227fc7496` · SHA-256 `4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.NormNum

example : |(4 : ℤ)| = 4 := by norm_num1
example : |(4 : ℚ)| = 4 := by norm_num1
example : |(4 : ℝ)| = 4 := by norm_num1
example : |(-11 : ℤ)| = 11 := by norm_num1
example : |(3 : ℚ) / 7| = 3 / 7 := by norm_num1
example : |(1 : ℚ) / 5| < 1 / 3 := by norm_num1
example : |-(2 : ℚ) / 7| = 2 / 7 := by norm_num1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed26f5f9d3cdeb55bc97d2b1edf4f890f4735fdeae67a1c18d0ae5585f98f6a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abs/Variant4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
