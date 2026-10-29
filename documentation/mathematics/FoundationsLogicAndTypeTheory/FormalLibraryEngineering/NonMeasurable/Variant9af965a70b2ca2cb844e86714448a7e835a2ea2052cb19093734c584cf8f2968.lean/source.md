# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonMeasurable.Variant9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69c1809a8358dbcc244f2ce03aa7eceb59a5e506` · SHA-256 `9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Choice.Vitali

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

inductive MeasurableSetStatus where
  | certified
  | notYetFormalized
  | choiceDependent
deriving DecidableEq, Repr

def vitali_nonmeasurable_status : MeasurableSetStatus :=
  MeasurableSetStatus.notYetFormalized

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34a56cec8e42002322c20456cf421b41e859d1a9ffe675f8f3b680e01d553bf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonMeasurable/Variant9af965a70b2ca2cb844e86714448a7e835a2ea2052cb19093734c584cf8f2968.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
