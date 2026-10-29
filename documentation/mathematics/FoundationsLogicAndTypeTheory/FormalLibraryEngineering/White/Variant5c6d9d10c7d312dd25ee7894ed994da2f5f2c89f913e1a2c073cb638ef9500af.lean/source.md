# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.White.Variant5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fde1497387073ad6388dabba1ba3689687e82ee9` · SHA-256 `5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Admissibility

namespace Color

namespace White

def band : Band :=
  { name := "white",
    namespaceName := "Color.White",
    bitDepth := 8,
    rangeMin := 255,
    rangeMax := 255,
    centroid := whiteCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.white

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.White" := rfl

end White

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca70dd1fbf6f6fe2867f7714f990a84ae3d54b22b34626cd1e19c0d96c780e5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/White/Variant5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
