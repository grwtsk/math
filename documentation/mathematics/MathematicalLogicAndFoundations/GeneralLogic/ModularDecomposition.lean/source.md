# Modular Decomposition — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `759a9d4a92939608522762f628904a74616be029` · SHA-256 `a4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.FrameCommutation

namespace Surface

structure ModularDecompositionCertificate where
  structuredPart : Prop
  errorPart : Prop
  recomposes : Prop

theorem heatFlow_decomposition_sound
    (cert : ModularDecompositionCertificate) :
    cert.structuredPart ->
      cert.errorPart ->
        cert.recomposes ->
          cert.structuredPart ∧ cert.errorPart ∧ cert.recomposes := by
  intro hstruct herror hrecompose
  exact ⟨hstruct, herror, hrecompose⟩

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75258308b1e373eee78efd9ec2de307105ad27e2a60f83bd13fff6437907c210 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularDecomposition/Varianta4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
