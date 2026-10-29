# Cubic Semantics — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `636e7e69ebcb6620b45dbf6d055d0e4355388c26` · SHA-256 `063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Analysis.CubicIntegration

/-!
# Folder.Analysis.CubicSemantics

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic_semantics
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Analysis

structure CubicCellSemantics where
  cubic : Cubic
  lo : ℝ
  hi : ℝ
  value : ℝ
  value_eq_integral : value = cubic.integral lo hi

theorem CubicCellSemantics.correct
    (S : CubicCellSemantics) :
    S.value = S.cubic.integral S.lo S.hi :=
  S.value_eq_integral

end Analysis
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1769c52a9f514520afbe664cb6b9e055efcdb1395cea6c26b076bd090f5a6769 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CubicSemantics/Variant063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
