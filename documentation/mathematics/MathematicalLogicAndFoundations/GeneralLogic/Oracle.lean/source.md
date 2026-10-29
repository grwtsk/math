# Oracle — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4d444ca9e9143b2340d22812f8a15cda5e52bfd` · SHA-256 `7f4007b7d0e8433527d6d14509cc65441857df51514d908715a86d1ace8ad9b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure Oracle (Query Answer : Type) where
  answer : Query -> Answer

structure EvaluationOracle (α β : Type) (f : α -> β) where
  oracle : Oracle α β
  evaluates : ∀ x, oracle.answer x = f x

def OracleComputableRelativeTo
    {Query Answer α β : Type}
    (_oracle : Oracle Query Answer) (_f : α -> β) : Prop :=
  True

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce4f95c6d99be2c5b53f05f428c5b944a57a69ca08d1dde225d6f86d8b38b3b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Oracle/Variant7f4007b7d0e8433527d6d14509cc65441857df51514d908715a86d1ace8ad9b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
