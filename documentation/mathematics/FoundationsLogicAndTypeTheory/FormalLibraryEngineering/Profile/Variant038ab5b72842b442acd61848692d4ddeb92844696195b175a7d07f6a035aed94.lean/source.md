# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Profile.Variant038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e5356e6eee1c464e2b71568f946627d3f302962` · SHA-256 `038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Atom.All

/-! # Governed refactoring profiles -/

namespace MathDiscovery.Refactor

open MathDiscovery

inductive ImplementationPolicy
  | exact
  | relocationMap
  deriving DecidableEq, Repr, Inhabited

structure Profile where
  id : RefactorProfileId
  implementationPolicy : ImplementationPolicy := .exact
  preservePublicNames : Bool := true
  preserveStatements : Bool := true
  preserveTrustClosures : Bool := true
  preserveSafety : Bool := true
  preserveProofText : Bool := true
  learnedEvidenceEnabled : Bool := false
  requireCleanTree : Bool := true
  profileDigest : Digest
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15a04a0059dd722d79d4901bd99dd123beac0bc742f3973ab157c4c7fec2f76f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Variant038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
