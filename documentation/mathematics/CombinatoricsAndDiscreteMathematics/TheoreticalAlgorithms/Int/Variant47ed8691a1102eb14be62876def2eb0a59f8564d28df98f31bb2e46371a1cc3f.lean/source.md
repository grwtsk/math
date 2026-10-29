# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eee63bd591eccf5894e6a88bc5b5c75328e077f9` · SHA-256 `47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Data.Int.Basic
import Std.Tactic.GuardExpr

-- complement
#guard ~~~(-1:Int) = 0
#guard ~~~(0:Int) = -1
#guard ~~~(1:Int) = -2
#guard ~~~(-2:Int) = 1

-- shiftRight
#guard (2:Int) >>> 1 = 1
#guard (0:Int) >>> 1 = 0
#guard ~~~(1:Int) >>> 1 = ~~~0
#guard ~~~(0:Int) >>> 1 = ~~~0
#guard ~~~(2:Int) >>> 1 = ~~~1
#guard ~~~(4:Int) >>> 1 = ~~~2
#guard ~~~(4:Int) >>> 2 = ~~~1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22cf79d569186129b12064b4357c7437e6f2d895752c05d43cc77b695c1f2727 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
