# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Centroid.Variant72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fffe69050b1b8b93ed207cecc9623b18d21781d` · SHA-256 `72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.RGB

namespace Color

structure Centroid where
  bitDepth : Nat
  aperture : Byte
  rgb : RGB
  hex : String
deriving Repr, DecidableEq

def blackCentroid : Centroid :=
  { bitDepth := 8, aperture := 0, rgb := RGB.black, hex := "#000000" }

def whiteCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.white, hex := "#FFFFFF" }

def redCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.redPrimary, hex := "#FF0000" }

def greenCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.greenPrimary, hex := "#00FF00" }

def blueCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.bluePrimary, hex := "#0000FF" }

theorem whiteCentroid_hex_eq : whiteCentroid.hex = "#FFFFFF" := rfl

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=462389840fb9014177eeaf8ffcb4df3137ee43cd629eddb3a9c5ccde75ac8940 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Centroid/Variant72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
