# Green — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02825d320dbe5cb00abd7e6596c1dd54e928377e` · SHA-256 `03202bba0f8f5a8b875bad1efe83bbfe1c38e030ee9d732cfd2e9fa0b9096745`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Admissibility

namespace Color

namespace Green

def band : Band :=
  { name := "green",
    namespaceName := "Color.Green",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := greenCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.green

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Green" := rfl

end Green

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcf85cb5a3e0db66cf4f4685c6ad8038d4a98dc68d6ff4f4d2663aaf17372766 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Green/Variant03202bba0f8f5a8b875bad1efe83bbfe1c38e030ee9d732cfd2e9fa0b9096745.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
