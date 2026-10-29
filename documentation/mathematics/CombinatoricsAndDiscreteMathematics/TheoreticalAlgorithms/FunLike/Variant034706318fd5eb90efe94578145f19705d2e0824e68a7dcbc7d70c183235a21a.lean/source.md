# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FunLike.Variant034706318fd5eb90efe94578145f19705d2e0824e68a7dcbc7d70c183235a21a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abc1d15eae4138f0be89295cebc310651909cf29` · SHA-256 `034706318fd5eb90efe94578145f19705d2e0824e68a7dcbc7d70c183235a21a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.FunLike.Basic

variable {F α β : Sort*} [i : FunLike F α β] (f : F) (a : α)

/-- info: f a : β -/
#guard_msgs in #check f a
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d130620318e80dcdc4ccad12e1c70e6fde87db3bc1843b4e1e466cf0bb63d263 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FunLike/Variant034706318fd5eb90efe94578145f19705d2e0824e68a7dcbc7d70c183235a21a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
