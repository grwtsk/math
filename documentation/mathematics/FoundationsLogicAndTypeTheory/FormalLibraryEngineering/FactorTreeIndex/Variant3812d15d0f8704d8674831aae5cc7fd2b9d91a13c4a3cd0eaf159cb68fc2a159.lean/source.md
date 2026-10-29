# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorTreeIndex.Variant3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be8685718325ba9f6377af2f1c95488d41c24b90` · SHA-256 `3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Archive.FactorTreeIndex

Radiation role: archive-indexing
BinaryMatrix spine: This module labels logical payload BinaryMatrixStream layers by prime-factor arithmetic indices.
Ontology: archive.factor_tree_index
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace Archive

structure FactorTreeLayerIndex where
  logicalLayer : Nat
  positive : 0 < logicalLayer

def FactorTreeLayerIndex.asPositiveNat
    (i : FactorTreeLayerIndex) :
    NumberTheory.PositiveNat :=
  ⟨i.logicalLayer, i.positive⟩

def FactorTreeLayerIndex.factorMap
    (i : FactorTreeLayerIndex) : Nat →₀ Nat :=
  NumberTheory.FactorizationMap i.asPositiveNat

def FactorTreeLayerIndex.factorLabel
    (_i : FactorTreeLayerIndex) : String :=
  "Nat.factorization label"

theorem factorTreeLayerIndex_decodes
    (i : FactorTreeLayerIndex) :
    NumberTheory.factorProduct i.factorMap = i.logicalLayer :=
  NumberTheory.factorProduct_factorization i.asPositiveNat

end Archive
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe94b6b8a5a7d87749aae80b854159983a9ec5e4d020334f083452878e55ab5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactorTreeIndex/Variant3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
