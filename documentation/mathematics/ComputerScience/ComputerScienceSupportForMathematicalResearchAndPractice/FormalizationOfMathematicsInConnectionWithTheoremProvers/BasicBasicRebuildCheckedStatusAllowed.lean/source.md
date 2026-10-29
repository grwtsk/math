# Basic Basic Rebuild Checked Status Allowed — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd236b29d2dbdffc27494b07d6a243b3dd24fef7` · SHA-256 `68138d6b9490041ef6b950022ae4a8aac1843cdca93ff10ed509dbba873cc937`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.ProofStatus
import Folder.Rebuild.ClassicalAnchor

/-!
# Folder.Rebuild.Basic

Umbrella basics for the classical rebuild branch.
-/

namespace Folder
namespace Rebuild

theorem rebuild_checked_status_allowed :
    RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.checkedByLean :=
  trivial

theorem rebuild_mathlib_status_allowed :
    RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.mathlibInternal :=
  trivial

end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=472cc3c79b49be080b330515e0e342c3692150669b009714f6ef235ec852a637 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant68138d6b9490041ef6b950022ae4a8aac1843cdca93ff10ed509dbba873cc937.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
