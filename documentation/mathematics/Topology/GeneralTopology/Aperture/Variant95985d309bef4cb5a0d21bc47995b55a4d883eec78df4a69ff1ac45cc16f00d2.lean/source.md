# Complete source: GRWTSK.Topology.GeneralTopology.Aperture.Variant95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18bc4684ef92c03f7315fa0213327e475607e9a1` · SHA-256 `95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Centroid

namespace Color

namespace Aperture

def closed : Byte := 0

def fullyOpen : Byte := 255

def isClosed (value : Byte) : Prop := value = closed

def isOpen (value : Byte) : Prop := value = fullyOpen

theorem closed_eq_zero : closed = 0 := rfl

theorem fullyOpen_eq_255 : fullyOpen = 255 := rfl

end Aperture

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7912a0e774de6fd2ac579d10635597fe285df20d33d9204088cd46aa6c0fd6e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Aperture/Variant95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
