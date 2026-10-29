# Spin — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed54c57d5828bc751b01abd86bbefe9a7a6f790a` · SHA-256 `4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Archive.Spin

Radiation role: archive-symmetry
BinaryMatrix spine: This module names finite matrix spins used by symbolic BinaryMatrix archive references.
Ontology: archive.spin
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

inductive RectSpin where
  | id
  | flipRows
  | flipCols
  | rotate180
deriving DecidableEq, Repr

namespace RectSpin

def render : RectSpin → String
  | id => "id"
  | flipRows => "flipRows"
  | flipCols => "flipCols"
  | rotate180 => "rotate180"

def parse? : String → Option RectSpin
  | "id" => some id
  | "flipRows" => some flipRows
  | "flipCols" => some flipCols
  | "rotate180" => some rotate180
  | _ => none

theorem parse?_render
    (s : RectSpin) :
    parse? (render s) = some s := by
  cases s <;> rfl

theorem render_injective
    {a b : RectSpin}
    (h : render a = render b) :
    a = b := by
  cases a <;> cases b <;> simp [render] at h ⊢

def inverse : RectSpin → RectSpin
  | id => id
  | flipRows => flipRows
  | flipCols => flipCols
  | rotate180 => rotate180

end RectSpin
end Archive
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f0afc01b1a5d452021029a41643b7a271e2387fd32d3366f09552954a0c9fc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
