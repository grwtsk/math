# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Checks.Negative.OutsideScopeV2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78eeff5e16ee118f0083957e01288b8a16c8e695` · SHA-256 `6ac24c14b838c717018e2a15920df1095b6ac47a2be48e27c15063cdc9bbe792`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct True True (fun (_ : Unit) => False) () := by
  unfold GRWTSK.Genesis.MayAct
  decide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49f872a84afaad3bf79b4ff8bc75b7306fdf55d2f5a7b6a6c01684fac71e0ed9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Checks/Negative/OutsideScopeV2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
