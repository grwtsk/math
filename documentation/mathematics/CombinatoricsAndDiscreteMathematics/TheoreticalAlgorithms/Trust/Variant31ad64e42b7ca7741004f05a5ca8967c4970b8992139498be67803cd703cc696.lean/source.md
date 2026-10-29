# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trust.Variant31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `290b8af50c1c824fb583c1104231222b2ed53a41` · SHA-256 `31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Dependency

/-!
# Explicit trust and axiom closure
-/

namespace Mathematics.Extractor

open Mathematics

structure TrustAssumption where
  declaration : Lean.Name
  kind : TrustAssumptionKind
  authority : ExtractionAuthority
  deriving DecidableEq, Repr, Inhabited

structure TrustClosure where
  closureId : TrustClosureId
  declarationId : DeclarationId
  declaration : Lean.Name
  assumptions : Array TrustAssumption
  unsafeDependencies : Array Lean.Name
  partialDependencies : Array Lean.Name
  unresolvedDependencies : Array Lean.Name
  closureDigest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace TrustClosure

/-- A closure with no unresolved dependencies is exact relative to its policy. -/
def Resolved (closure : TrustClosure) : Prop :=
  closure.unresolvedDependencies.isEmpty = true

end TrustClosure

end Mathematics.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45b88e038bf0be5f62c7c2a68515c3bbe7cf1c08570a909c6ad4624060a1b961 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trust/Variant31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
