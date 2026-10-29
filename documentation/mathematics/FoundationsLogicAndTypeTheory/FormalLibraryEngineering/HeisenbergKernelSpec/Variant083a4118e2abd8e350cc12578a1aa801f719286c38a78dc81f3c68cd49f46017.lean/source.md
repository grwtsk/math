# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeisenbergKernelSpec.Variant083a4118e2abd8e350cc12578a1aa801f719286c38a78dc81f3c68cd49f46017

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `def7075493a221089bb05fcff01c92449703cb05` · SHA-256 `083a4118e2abd8e350cc12578a1aa801f719286c38a78dc81f3c68cd49f46017`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Shader.PhaseSweeperSpec
import Folder.Arithmetic.HeisenbergExtension

/-!
# Folder.Shader.HeisenbergKernelSpec

Radiation role: shader-spec
BinaryMatrix spine: This module records a shader-side Heisenberg phase witness without proving Weil pairing or arithmetic geometry.
Ontology: shader.heisenberg_kernel_spec
Pivot role: none
Zero typology: shell
Contract boundary: witness
Composite stack role: torsion
-/

namespace Folder
namespace Shader

structure HeisenbergKernelWitness (m : Nat) where
  P : Vec2Mod m
  Q : Vec2Mod m
  phase : ZMod m
  phase_eq : phase = symplecticPhase P Q

theorem heisenberg_kernel_phase_correct
    (W : HeisenbergKernelWitness m) :
    W.phase = symplecticPhase W.P W.Q :=
  W.phase_eq

end Shader
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=639f19198108a2590a48e5c4b38edbcbdf75eb81cf1ea24f6ba2ac53c1e15a69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeisenbergKernelSpec/Variant083a4118e2abd8e350cc12578a1aa801f719286c38a78dc81f3c68cd49f46017.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
