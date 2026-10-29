# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CycleRealizationObstruction.Variantb054247ed9f29b7aeae4053e1dfcb655d493df5670736dca4601309b80f33268

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c431006729834289ac3eab5dd89476aa48b8d3e` · SHA-256 `b054247ed9f29b7aeae4053e1dfcb655d493df5670736dca4601309b80f33268`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.Hodge.CycleRealizationObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records Hodge cycle-realization obstruction data.
Ontology: hodge_attachment_atlas
Pivot role: attachment
Zero typology: cycle-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Hodge

structure HodgeClassObject where
  label : String

structure AlgebraicCycleObject where
  label : String

structure CycleRealizationObstruction where
  hodgeClass : HodgeClassObject
  cycle : Option AlgebraicCycleObject
  obstructionNonzeroIfNoCycle : Prop
  obstructionNonzeroIfNoCycle_certified : obstructionNonzeroIfNoCycle
  sourceLabel : String

theorem hodge_cycle_obstruction_if_supplied
    (O : CycleRealizationObstruction) :
    O.obstructionNonzeroIfNoCycle :=
  O.obstructionNonzeroIfNoCycle_certified

end Hodge
end GrandChallenge
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13d340c2ea2a0f09d08f94d10eec5aa887918c7cd3d9af8ecea290d25dc6f419 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CycleRealizationObstruction/Variantb054247ed9f29b7aeae4053e1dfcb655d493df5670736dca4601309b80f33268.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
