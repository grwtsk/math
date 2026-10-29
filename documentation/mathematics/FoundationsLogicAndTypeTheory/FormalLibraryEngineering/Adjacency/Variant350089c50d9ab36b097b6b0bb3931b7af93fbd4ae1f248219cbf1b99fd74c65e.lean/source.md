# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Adjacency.Variant350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc476256c4553ca364538c51642c2362d01196bf` · SHA-256 `350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.Cube

/-!
# Folder.Cellular.Adjacency

Radiation role: cube-address
BinaryMatrix spine: This module generalizes BinaryMatrix indexing into finite cubical address spaces or adjacency data.
Ontology: cellular.adjacency
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def CoordDiffOne
    {d k : Nat}
    (x y : CubeAddress d k)
    (i : Fin d) : Prop :=
  ((x i).val + 1 = (y i).val) ∨
  ((y i).val + 1 = (x i).val)

def SameExcept
    {d k : Nat}
    (x y : CubeAddress d k)
    (i : Fin d) : Prop :=
  ∀ j : Fin d, j ≠ i → x j = y j

def CubeAdjacent
    {d k : Nat}
    (x y : CubeAddress d k) : Prop :=
  ∃ i : Fin d, CoordDiffOne x y i ∧ SameExcept x y i

theorem cubeAdjacent_symm
    {d k : Nat}
    {x y : CubeAddress d k} :
    CubeAdjacent x y → CubeAdjacent y x := by
  intro h
  rcases h with ⟨i, hdiff, hsame⟩
  refine ⟨i, ?_, ?_⟩
  · exact hdiff.symm
  · intro j hj
    exact (hsame j hj).symm

theorem cubeAdjacent_irrefl
    {d k : Nat}
    (x : CubeAddress d k) :
    ¬ CubeAdjacent x x := by
  intro h
  rcases h with ⟨i, hdiff, _⟩
  rcases hdiff with h | h <;> omega

end Cellular
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4da0e6c3512fb7a5529bcfaa17a7ebf73b798d801e7da9e06a5086a49d34603b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Adjacency/Variant350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
