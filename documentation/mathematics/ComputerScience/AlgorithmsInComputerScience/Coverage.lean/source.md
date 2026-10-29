# Coverage — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b22af90187613db68079de37981481abf46b222` · SHA-256 `b8e003dc227fdfbd13f34a2659d23c04f5f2d7faecb321fd26ea8cf2d4815b60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e


/- source-tree-label: STL1|L|addr=0001111|role=proof_code_atom|slug=sourcetree-coverage|owner=canonical_owner|core=SourceTree/Coverage.lean|leaf=M536f75726365547265652f436f7665726167652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

def coveredPhases : List Think.PhaseId :=
  allPhasePlacements.map (fun q => q.phase)

theorem coveredPhases_eq_centerSpine :
    coveredPhases = Think.centerSpine := by
  rfl

theorem every_center_phase_covered (p : Think.PhaseId) :
    p ∈ coveredPhases := by
  rw [coveredPhases_eq_centerSpine]
  exact Think.centerSpine_complete p

end Think.SourceTree
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92a0454ab88cba6df6e92efc110050e27bda2fd8274a10e04077b659ad5cab3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f436f7665726167652e6c65616e/Variantb8e003dc227fdfbd13f34a2659d23c04f5f2d7faecb321fd26ea8cf2d4815b60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
