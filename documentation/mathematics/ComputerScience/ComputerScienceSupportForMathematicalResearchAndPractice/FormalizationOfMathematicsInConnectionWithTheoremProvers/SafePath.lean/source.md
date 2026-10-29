# Safe Path — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03b1fd580923a8eaa8e8faf33249c5a04090a4c8` · SHA-256 `fb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Archive.SafePath

Radiation role: archive-manifest
BinaryMatrix spine: This module constrains archive paths before payloads are materialized as BinaryMatrix layers.
Ontology: archive.safe_path
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

structure SafeRelPath where
  value : String
  not_empty : value ≠ ""
  no_dotdot : ¬ ".." ∈ value.splitOn "/"
  not_absolute : ¬ value.startsWith "/"
  no_empty_components : ∀ c ∈ value.splitOn "/", c ≠ ""

theorem safeRelPath_no_dotdot
    (p : SafeRelPath) :
    ¬ ".." ∈ p.value.splitOn "/" :=
  p.no_dotdot

theorem safeRelPath_not_empty
    (p : SafeRelPath) :
    p.value ≠ "" :=
  p.not_empty

end Archive
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c46a384bf7b94377d5ecf025881f7430cca8d1f8a6145823836205051f1841eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafePath/Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
