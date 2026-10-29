# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M56616c69646174696f6e2f42726169645472656546697273742e6c65616e.Variant5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69fabaf7de2499123f02e0df087c95bbe494aaba` · SHA-256 `5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e

/- source-tree-label: STL1|L|addr=010101111|role=proof_code_atom|slug=validation-braidtreefirst|owner=canonical_owner|core=Validation/BraidTreeFirst.lean|leaf=M56616c69646174696f6e2f42726169645472656546697273742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Validation

def treeFirstLocallyGrounded (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, moduleLocallyGrounded m

theorem tree_first_locally_grounded_is_V10
    (v : TreeValidation) :
    treeFirstLocallyGrounded v = V10_not_registry_string_only v := rfl

end Think.Braid.Validation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ff81f58f3b68f575689eb0180c23faf5089ef89f1b091fb9b02d8a9fc6802c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f42726169645472656546697273742e6c65616e/Variant5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
