# Complete source: GRWTSK.Algebra.LinearAlgebra.TopologyPrime.Variant0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `560ac9634c76dbb2f7fe9466f141fb31c7fe0ea2` · SHA-256 `0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.OrderedPrimeNormalForm

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def topologyPrimeIdentity
    (R : NormalizationRules)
    (T : BinaryLogicTree) : PrimeLabel :=
  (normalize R T).rootTopologyPrime

theorem topologyPrimeIdentity_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    topologyPrimeIdentity R T =
      topologyPrime R.pairing R.primeEnumerator (normalizeCore R T) := rfl

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f26372595f15dca1f76f99009108a2411cff1b07c879d3fefd55f71e0418083c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TopologyPrime/Variant0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
