# Source Contracts — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbc641c17ecfd7a2883c51598d76d82f2f434546` · SHA-256 `a992ab7399267445d6b9197c755baf5b0c5358ca5c19a2bc3781c3f5ae2ae5b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Noeoueue.Profile

namespace Noeoueue

inductive AdmissionStatus | accepted | rejected | unresolved
  deriving DecidableEq, Repr

inductive Authority | source | retrieval | projection | leanKernel | filesystem
  deriving DecidableEq, Repr

/-- `type-memory://noeoueue/source-view-authority@1` -/
theorem projection_has_no_source_authority : Authority.projection != Authority.source := by decide

/-- `type-memory://noeoueue/filesystem-nonauthority@1` -/
theorem filesystem_has_no_kernel_authority : Authority.filesystem != Authority.leanKernel := by decide

end Noeoueue
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dbb2eb7a4b68d3a89b8b32edeb81e46b03d781f4ce9e9a18f4bdc6e92c920ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceContracts/Varianta992ab7399267445d6b9197c755baf5b0c5358ca5c19a2bc3781c3f5ae2ae5b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
