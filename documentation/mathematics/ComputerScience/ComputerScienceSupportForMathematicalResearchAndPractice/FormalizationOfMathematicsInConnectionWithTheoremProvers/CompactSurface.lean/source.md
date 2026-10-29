# Compact Surface — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0358e1b85ffd9dee7bc5843e73e037839d68e65c` · SHA-256 `b01349c2acabd14c602d96cee5bfae067422b471a6471690c39b80432711eead`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=1011100|role=proof_code_atom|slug=sourcetree-compactsurface|owner=canonical_owner|core=SourceTree/CompactSurface.lean|leaf=M536f75726365547265652f436f6d70616374537572666163652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

inductive SourceTreeSurface where
  | node
  | weight
  | placement
  | poleAssignment
  | coverage
  | noDup
  | importClosure
deriving DecidableEq, Repr

def SourceTreeSurface.compactModule :
    SourceTreeSurface → String
  | SourceTreeSurface.node => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.weight => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.placement => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.poleAssignment => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.coverage => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.noDup => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.importClosure => "Think.SourceTree.CompactSurface"

theorem sourceTreeSurfaces_contract
    (s : SourceTreeSurface) :
    ∃ m : String, s.compactModule = m := by
  exact ⟨s.compactModule, rfl⟩

end Think.Compact
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc21fc2f4636b96667e7f162b83554954d72001717337074d7ab8937dfa9885a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f436f6d70616374537572666163652e6c65616e/Variantb01349c2acabd14c602d96cee5bfae067422b471a6471690c39b80432711eead.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
