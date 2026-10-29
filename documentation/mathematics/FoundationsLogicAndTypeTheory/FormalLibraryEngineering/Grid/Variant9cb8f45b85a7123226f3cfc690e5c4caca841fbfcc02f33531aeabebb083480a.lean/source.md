# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grid.Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5d0195522868e79d85820904df9f10e4082b375` · SHA-256 `9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Carrier.Grid

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.grid
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier

structure GridShape where
  rows : Nat
  cols : Nat
deriving DecidableEq

abbrev Cell (s : GridShape) := Fin s.rows × Fin s.cols

def EdgeAdjacent {s : GridShape} (a b : Cell s) : Prop :=
  (a.1 = b.1 ∧
    ((a.2.val + 1 = b.2.val) ∨ (b.2.val + 1 = a.2.val))) ∨
  (a.2 = b.2 ∧
    ((a.1.val + 1 = b.1.val) ∨ (b.1.val + 1 = a.1.val)))

theorem edgeAdjacent_symm {s : GridShape} {a b : Cell s} :
    EdgeAdjacent a b → EdgeAdjacent b a := by
  intro h
  rcases h with ⟨hr, hc⟩ | ⟨hc, hr⟩
  · left
    refine ⟨hr.symm, ?_⟩
    exact hc.symm
  · right
    refine ⟨hc.symm, ?_⟩
    exact hr.symm

theorem edgeAdjacent_irrefl {s : GridShape} (a : Cell s) :
    ¬ EdgeAdjacent a a := by
  intro h
  rcases h with ⟨_, hcol⟩ | ⟨_, hrow⟩
  · rcases hcol with h | h <;> omega
  · rcases hrow with h | h <;> omega

end Carrier
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78ac9a69e68a53dd2a7c9c19b1bf6ae673fc1767f3a77e5d6cece9e8988c5591 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
