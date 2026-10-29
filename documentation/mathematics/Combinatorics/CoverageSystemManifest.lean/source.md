# Coverage System Manifest — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fbb6cfae32bd81ac6e047c43f3921e1bb957acc` · SHA-256 `8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Mutation.Event

/-!
# Honest whole-system coverage

A required vertex must be observed, explicitly unsupported, or excluded with a
reason.  The indexed classifier leaves no fourth, silently omitted case.
-/

namespace Mathematics.Mutation

structure SystemManifest where
  manifestId : StableId
  digest : Digest
  requiredVertices : Finset StableId
  requiredEdges : Finset StableId

inductive CoverageDisposition
  | observed (receipt : ObjectAddress)
  | unsupported (reason : String)
  | excluded (reason : String)

structure CoverageCertificate
    (manifest : SystemManifest) where
  classifyVertex :
    ∀ vertex, vertex ∈ manifest.requiredVertices → CoverageDisposition
  observedCount : Nat
  unsupportedCount : Nat
  excludedCount : Nat
  adapterDigest : Digest
  toolchainDigest : Digest

def wholeSystemCovered
    (manifest : SystemManifest) : Prop :=
  Nonempty (CoverageCertificate manifest)

structure WholeSystemClaim
    (manifest : SystemManifest) where
  coverage : CoverageCertificate manifest

theorem whole_system_claim_requires_coverage
    (manifest : SystemManifest)
    (claim : WholeSystemClaim manifest) :
    wholeSystemCovered manifest :=
  ⟨claim.coverage⟩

end Mathematics.Mutation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc44d6d3eaca86d7448858df335309ba62716c07a519824c8fc43f8c70395bec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
