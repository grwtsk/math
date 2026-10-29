# Archive Imports Archive Corpus — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c12d65013ea3d174aa9d8fb5591d819d438e78f5` · SHA-256 `43d90239a22b4403df944fee527f04d8ef01608096113bb5e17200c3c9a035e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Archive

/-!
Archive surface marker.

This root surfaces archive metadata only. Archive files are never imported into
the checked kernel.
-/

namespace Formal.Surface.Archive

def importsArchiveCorpus : Bool := false

theorem archive_corpus_not_imported : importsArchiveCorpus = false := by
  rfl

end Formal.Surface.Archive
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=201dd9e521f352c9342097d71a3f2eaf3c3c87547e5e4efcd16dc07a14dd1e12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Archive/Variant43d90239a22b4403df944fee527f04d8ef01608096113bb5e17200c3c9a035e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
