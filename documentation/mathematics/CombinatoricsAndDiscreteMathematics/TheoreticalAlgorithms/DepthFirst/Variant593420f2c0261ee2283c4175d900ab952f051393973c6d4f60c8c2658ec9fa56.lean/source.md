# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3cb16f665295b5bcc50449bfb7f691c4fc92864` · SHA-256 `593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.MLList.DepthFirst

-- We perform a depth first search of the "proper divisors in descending order" tree.
#eval show Lean.MetaM Unit from do
  let r := depthFirstRemovingDuplicates' (fun n => List.range n |>.filter (n % · = 0) |>.reverse) 24
  guard $ r = [24, 12, 6, 3, 1, 2, 4, 8]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8efe9f85715079119a9c1eb2019081af35b9f8110db966027c19771e2d7d71f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DepthFirst/Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
