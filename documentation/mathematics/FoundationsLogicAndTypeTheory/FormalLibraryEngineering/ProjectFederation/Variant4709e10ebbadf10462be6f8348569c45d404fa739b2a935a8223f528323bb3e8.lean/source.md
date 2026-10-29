# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectFederation.Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04eb86439afe410202d2236af968012eec41681c` · SHA-256 `4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.Operator

/-!
# Project-federated relaxation invariants

Relaxation may change the overlay, but it cannot rewrite, reorder, merge, or
drop the immutable project snapshots that define its work package.
-/

namespace Mathematics.Relaxation

namespace Operator

theorem preserves_source_snapshots
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceSnapshots =
      state.workPackage.sourceSnapshots := by
  exact congrArg WorkPackage.sourceSnapshots
    (operator.source_preserved state).2

theorem preserves_project_snapshot_keys
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.projectSnapshots =
      state.workPackage.projectSnapshots := by
  exact congrArg WorkPackage.projectSnapshots
    (operator.source_preserved state).2

theorem preserves_source_object_scope
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceObjectIds =
      state.workPackage.sourceObjectIds := by
  exact congrArg WorkPackage.sourceObjectIds
    (operator.source_preserved state).2

end Operator

end Mathematics.Relaxation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=770d7f494268598864f57170699955ea767f87bd06ab832bf7f7b2705244a781 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectFederation/Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
