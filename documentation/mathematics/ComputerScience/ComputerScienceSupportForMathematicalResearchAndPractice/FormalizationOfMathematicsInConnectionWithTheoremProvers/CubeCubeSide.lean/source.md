# Cube Cube Side — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ba8eaeb80366b18f22cdebf0c01f99fe246a139` · SHA-256 `745aa34baa5761eb7609cfecee85a891ef8b18208e8d3a6a0bf4e947c5c38b1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Cellular.Cube

Radiation role: cube-address
BinaryMatrix spine: This module generalizes BinaryMatrix indexing into finite cubical address spaces or adjacency data.
Ontology: cellular.cube
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def cubeSide (k : Nat) : Nat :=
  2 ^ k

theorem cubeSide_succ
    (k : Nat) :
    cubeSide (k + 1) = 2 * cubeSide k := by
  unfold cubeSide
  rw [pow_succ']

abbrev CubeAddress (d k : Nat) :=
  Fin d → Fin (cubeSide k)

def appendBits
    {d k : Nat}
    (x : CubeAddress d k)
    (b : Fin d → Fin 2) :
    CubeAddress d (k + 1) :=
  fun i =>
    ⟨2 * (x i).val + (b i).val, by
      have hx := (x i).isLt
      have hb := (b i).isLt
      rw [cubeSide_succ]
      omega⟩

def embedLow
    {d k : Nat}
    (x : CubeAddress d k) :
    CubeAddress d (k + 1) :=
  appendBits x (fun _ => 0)

theorem appendBits_coord_val
    {d k : Nat}
    (x : CubeAddress d k)
    (b : Fin d → Fin 2)
    (i : Fin d) :
    (appendBits x b i).val = 2 * (x i).val + (b i).val :=
  rfl

theorem embedLow_coord_val
    {d k : Nat}
    (x : CubeAddress d k)
    (i : Fin d) :
    (embedLow x i).val = 2 * (x i).val := by
  simp [embedLow, appendBits]

end Cellular
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78df632af82ab655da6a1ade1c2150163a09b82292424bd56f4eb8f4eb90e774 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cube/Variant745aa34baa5761eb7609cfecee85a891ef8b18208e8d3a6a0bf4e947c5c38b1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
