# No Dup — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9daa523ce9eb8bd9d52bc25a9e5428c7776d957` · SHA-256 `d78177d2947143b173d1f2a613e909c6fd1d08c1ab1ed4a80c745caf7d3d1bb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f436f7665726167652e6c65616e


/- source-tree-label: STL1|L|addr=00000000|role=proof_code_atom|slug=sourcetree-nodup|owner=canonical_owner|core=SourceTree/NoDup.lean|leaf=M536f75726365547265652f4e6f4475702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

theorem coveredPhases_nodup :
    coveredPhases.Nodup := by
  rw [coveredPhases_eq_centerSpine]
  exact Think.centerSpine_nodup

end Think.SourceTree
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=707d8aa5e84b50c10891ce8d9d5b4dbe69b5541c226cdcdcee8722e4cec1be8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4e6f4475702e6c65616e/Variantd78177d2947143b173d1f2a613e909c6fd1d08c1ab1ed4a80c745caf7d3d1bb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
