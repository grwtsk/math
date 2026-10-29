# Theorem Seed Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79e58f6c3e1592b72621bd8d98d33f1c1241dadd` · SHA-256 `3e5505c6915b619292d2d8dde01bd7eed58c4d0b430cb6790f24e0c1cc2c9352`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Core

/-!
# Theorem-cell seed emitted from an extracted theorem declaration

A seed records compiled statement, proof, dependency, trust, source, and module
identities.  It is evidence for theorem-cell axes; it is not itself a closed
cell and does not promote an external extraction artifact to theorem authority.
-/

namespace Mathematics.Extractor

open Mathematics

/-- The only authority available to an extracted theorem-cell seed. There is
deliberately no constructor that promotes a seed to a closed theorem cell. -/
inductive TheoremCellSeedAuthority
  | extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

structure TheoremCellSeed where
  declarationId : DeclarationId
  theoremName : Lean.Name
  statementDigest : Digest
  proofDigest : Option Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  sourceDigest : Option Digest
  owningModuleDigest : Digest
  directDependencies : Array Lean.Name
  transitiveConeDigest : Digest
  authorityEvidence : TrustClosure
  authority : TheoremCellSeedAuthority := .extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

namespace TheoremCellSeed

/-- A seed is aligned when its trust record describes the same declaration. -/
def TrustAligned (seed : TheoremCellSeed) : Prop :=
  seed.authorityEvidence.declarationId = seed.declarationId ∧
  seed.authorityEvidence.declaration = seed.theoremName

end TheoremCellSeed

end Mathematics.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=515dd6847e601401ad977ce255b0d51bc90cab727ca2684a5b6be4bb3a05b649 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremSeed/Variant3e5505c6915b619292d2d8dde01bd7eed58c4d0b430cb6790f24e0c1cc2c9352.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
