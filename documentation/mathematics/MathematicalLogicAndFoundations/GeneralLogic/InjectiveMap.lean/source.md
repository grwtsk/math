# Injective Map — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fde9f8110a92a33b8d47109af7bd6552acbc01c0` · SHA-256 `4efcb018377eef26eb47f549e5e3192a81d6dd4401ceb61572e3062458d2adea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.GraphRealization
import FCRS.ControlledSpherical.SphereCarriers

universe uA uB

namespace FCRS.ControlledSpherical

/--
A signature-level injective map between opaque point sorts.  This structure
has no topology, continuity, edge-path, or homeomorphism-on-image content.
-/
structure InjectiveMapWitness (A : Type uA) (B : Type uB) where
  map : A → B
  injective : Function.Injective map

end FCRS.ControlledSpherical
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce8892e1f9dcc3cf26f1361d15ad0a50adabb5aaa9fa3b74a11c646f7ff300b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InjectiveMap/Variant4efcb018377eef26eb47f549e5e3192a81d6dd4401ceb61572e3062458d2adea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
