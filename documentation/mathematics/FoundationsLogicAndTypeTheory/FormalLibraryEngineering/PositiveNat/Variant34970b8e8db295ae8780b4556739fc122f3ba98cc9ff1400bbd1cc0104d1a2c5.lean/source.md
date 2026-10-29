# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveNat.Variant34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b39819610584d5d5c66355796bd3d0e0ef5e9f28` · SHA-256 `34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.NumberTheory.PositiveNat

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.positive_nat
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

abbrev PositiveNat := { n : Nat // 0 < n }

namespace PositiveNat

def one : PositiveNat := ⟨1, by omega⟩

def val (n : PositiveNat) : Nat := n.1

@[simp]
theorem val_pos (n : PositiveNat) : 0 < n.val := n.2

@[ext]
theorem ext {a b : PositiveNat} (h : a.val = b.val) : a = b := by
  cases a
  cases b
  simp [val] at h
  subst h
  rfl

end PositiveNat
end NumberTheory
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa50b8ccb5a1eba9c63cec84b864d346ec0c4bd4c20e23a4fa837096ecab344f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveNat/Variant34970b8e8db295ae8780b4556739fc122f3ba98cc9ff1400bbd1cc0104d1a2c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
