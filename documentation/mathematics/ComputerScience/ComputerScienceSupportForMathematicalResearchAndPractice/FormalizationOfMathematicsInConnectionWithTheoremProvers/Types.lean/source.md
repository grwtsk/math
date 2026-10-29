# Types — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22dce2f89cc61bb35130ce0852740886c51db37b` · SHA-256 `628f9b8bc7de2c4c0e92e298c236328c52fdd65944428788788947438bf68c1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Types

/-!
# Discovery Types (Re-export)

This module re-exports `LeanCert.Validity.Types` for backward compatibility.
The certificate types have been moved to the Validity layer to reflect
the LeanCert philosophy of separating Engine (computation) from
Validity (certification).

## Migration

Old import: `import LeanCert.Discovery.Types`
New import: `import LeanCert.Validity.Types`

Both continue to work.
-/

namespace LeanCert.Discovery

-- Re-export all certificate types from Validity
export LeanCert.Validity (
  DiscoveryConfig
  VerifiedGlobalMin
  VerifiedGlobalMax
  VerifiedRoot
  UniqueVerifiedRoot
  VerifiedIntegral
  VerifiedUpperBound
  VerifiedLowerBound
  VerifiedBoxBound
)

end LeanCert.Discovery
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50a9a3ad586b8e2648c6ef2065a9b360e1f5b68d60e6cb7b84eb0a503dd7cb23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant628f9b8bc7de2c4c0e92e298c236328c52fdd65944428788788947438bf68c1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
