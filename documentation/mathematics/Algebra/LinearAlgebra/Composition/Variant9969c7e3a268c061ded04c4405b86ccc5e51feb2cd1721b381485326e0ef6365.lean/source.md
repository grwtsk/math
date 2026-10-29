# Complete source: GRWTSK.Algebra.LinearAlgebra.Composition.Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1806aa3e1f3eff8fdb1b34f619a0603e05829cb` · SHA-256 `9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.Counting

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def compose (a b : BinaryLogicTree) : BinaryLogicTree :=
  BinaryLogicTree.compose a b

theorem compose_eq_node (a b : BinaryLogicTree) :
    compose a b = BinaryLogicTree.node a b := rfl

theorem raw_node_left_right_visible
    {A B C D : BinaryLogicTree}
    (h : BinaryLogicTree.node A B = BinaryLogicTree.node C D) :
    A = C ∧ B = D :=
  BinaryLogicTree.raw_node_left_right_visible h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=477e0e8e73eb0a31509c8aa3138abb78ef40d96bd18ab51b550e1b420c43ebef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Composition/Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
