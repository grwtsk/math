# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.05HiddenAxiomMutation.Variant995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54dcd7a85aae69035b12b2f3e7d17a53357a767a` · SHA-256 `995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS

open Lean Elab Command

elab "cycle3_add_hidden" : command => do
  liftCoreM <| addDecl <| Declaration.axiomDecl {
    name := `cycle3Hidden
    levelParams := []
    isUnsafe := false
    type := mkConst ``False
  }

cycle3_add_hidden

theorem cycle3DerivedFalse : False := cycle3Hidden

#check cycle3DerivedFalse
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f033c0d39910dcbfbb257abfccde3d5451a46a0919be8d92c3dfc28daeb3024 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/05HiddenAxiomMutation/Variant995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
