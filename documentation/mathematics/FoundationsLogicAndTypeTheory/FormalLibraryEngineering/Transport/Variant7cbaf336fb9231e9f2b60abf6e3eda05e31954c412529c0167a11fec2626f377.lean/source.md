# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transport.Variant7cbaf336fb9231e9f2b60abf6e3eda05e31954c412529c0167a11fec2626f377

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a55771d3251c19c5ac406ac492ba7ae974d68088` · SHA-256 `7cbaf336fb9231e9f2b60abf6e3eda05e31954c412529c0167a11fec2626f377`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.Transport.Model
public import Presentation.Transport.Projection
public import Presentation.Transport.SelfAnneal
public import Presentation.Transport.Network
public import Presentation.Transport.Audit

/-!
# Generic admitted-publication presentation adapter

The adapter consumes exact transport state and emits derived views. It never
creates a second revision, payload, hash, or theorem authority.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=044fe03d4c758429df6177cce93c8d44ec1ba7d141c1c0c33f8951b767c31909 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant7cbaf336fb9231e9f2b60abf6e3eda05e31954c412529c0167a11fec2626f377.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
