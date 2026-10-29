# Red — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c35cf8f95718484b6f2f67deb732de176ddfbd21` · SHA-256 `df20cadc22a5af668ee02577f9495960d06c27a2f876839c09f331c91ff2888d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Admissibility

namespace Color

namespace Red

def band : Band :=
  { name := "red",
    namespaceName := "Color.Red",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := redCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.red

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Red" := rfl

end Red

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77a2a8ea2e445eaecda3c0e65e0bc7ddb21ac2e352f33334dea49d5b37cc3802 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Red/Variantdf20cadc22a5af668ee02577f9495960d06c27a2f876839c09f331c91ff2888d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
