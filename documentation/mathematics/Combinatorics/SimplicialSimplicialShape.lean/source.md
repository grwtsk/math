# Simplicial Simplicial Shape — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e09bc8f64700939d2136fa0b043b797d3caac054` · SHA-256 `edbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity
import Mathlib.Data.Finset.Basic

/-! # Simplicial presentation fabric -/

namespace Mathematics.Fabric

universe u

/-- A finite abstract simplicial shape with explicit downward closure. -/
structure SimplicialShape (Vertex : Type u) where
  simplices : List (Finset Vertex)
  downwardClosed :
    ∀ simplex face,
      simplex ∈ simplices → face ⊆ simplex → face ∈ simplices

/-- A semantic carrier and a presentation shape remain separate data. -/
structure Presentation (Vertex : Type u) where
  carrier : ElementRef
  shape : SimplicialShape Vertex
  presentationDigest : Digest

end Mathematics.Fabric
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a05d6adc4d35bd831816d74d015e67c182d05dabcee6623ec8ea19aacc9c05fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Simplicial/Variantedbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
