# Foundation Semi Local Defect Foundation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a82a06e1f536808cce4974ad703471c9901039b` · SHA-256 `27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Noninterference

/-!
# Semi-local defect foundation
-/

namespace Mathematics.SemiLocalDefect

structure SemiLocalDefectFoundation
    (primeUniverse : FinitePrimeUniverse)
    (model : OperatorModel) where
  capacity :
    PrimeCutDefectCapacity
      model primeUniverse.Prime
  graph :
    PrimeCutGraphAdapter primeUniverse
  ledger : SemiLocalUnknownLedger
  immutableCut : Prop
  immutableCutProof : immutableCut

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17e3aaa48bf5911d77ead2f955333ecbf0bc035c1b4017a771841554cba748f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
