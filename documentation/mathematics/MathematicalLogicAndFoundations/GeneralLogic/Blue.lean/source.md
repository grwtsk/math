# Blue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0541774252cd62dcd46104a5e4e981db8618e859` · SHA-256 `dd23e2b7e976dc5891b484d10d5d9dcf7f93544eb5ace4c504c51ed6a9d6de12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Admissibility

namespace Color

namespace Blue

def band : Band :=
  { name := "blue",
    namespaceName := "Color.Blue",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := blueCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.blue

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Blue" := rfl

end Blue

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=052548480b535707d610da90d049c4dfc0c90c06694b813e94bc3128436b4f39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Blue/Variantdd23e2b7e976dc5891b484d10d5d9dcf7f93544eb5ace4c504c51ed6a9d6de12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
