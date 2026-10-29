# Pole Coverage — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78bc540da113639e4524264fca732c8edadc6682` · SHA-256 `18e45cea1371700ce4b759a6247a60f673bb845392d0027c43b681a32fcf6f74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Validation.ResidueCoverage

set_option autoImplicit false

namespace Think.Validation

theorem poleAssignmentComplete :
    Think.SourceTree.allPhasePlacements.length = 61 := by
  exact Think.SourceTree.pole_assignment_complete

theorem noDuplicatePhasePlacements :
    Think.SourceTree.allPhasePlacements.Nodup := by
  exact Think.SourceTree.no_duplicate_phase_placements

end Think.Validation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e65ce5043ddfc989ed61dc20789686cb92390f4ed3e9cf0bba78ff50d3f7547 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PoleCoverage/Variant18e45cea1371700ce4b759a6247a60f673bb845392d0027c43b681a32fcf6f74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
