# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Black.Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f0de016a14ab7583859c77bf1da73653fad89d3` · SHA-256 `acc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Admissibility

namespace Color

namespace Black

def band : Band :=
  { name := "black",
    namespaceName := "Color.Black",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 0,
    centroid := blackCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.black

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Black" := rfl

end Black

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88c6c7119e3fceb71d416ab418778eb067bb4e1e6b2e42c0707a8cb8455598f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Black/Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
