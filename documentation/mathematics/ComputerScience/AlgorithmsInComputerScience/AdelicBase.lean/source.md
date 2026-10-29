# Adelic Base — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed775aa4c0c3ae8c2f0f906a89f09049eec37a5a` · SHA-256 `8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.Place

/-!
# Folder.AdelicInfinityTopos.AdelicBase

Radiation role: research-boundary
BinaryMatrix spine: This module defines the place-indexing base for adelic spectral fibers.
Ontology: adelic.base
Pivot role: dual
Zero typology: mixed
Contract boundary: definition
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure AdelicBase where
  archimedean : Place
  finitePlaces : List Place
  includesArchimedean : archimedean = Place.archimedean
  finitePlaceSound : ∀ v ∈ finitePlaces, ∃ p, v = Place.finite p

def defaultAdelicBase : AdelicBase where
  archimedean := Place.archimedean
  finitePlaces := []
  includesArchimedean := rfl
  finitePlaceSound := by
    intro v hv
    cases hv

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5249a0dd2bf54157f9d029f7ccbb578ea59081059abbabcbd343ae8d6cc9ccd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AdelicBase/Variant8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
