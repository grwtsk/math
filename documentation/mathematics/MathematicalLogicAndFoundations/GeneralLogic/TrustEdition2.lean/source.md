# Trust Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `872b98ccddf06fda3f93aedd6f6e45592eb2b6aa` · SHA-256 `5bb2999d2ff88a8fcb4a388597a73752320ceb5d26ac42bc4f509738513b8c91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Dependency

/-!
# Explicit trust and axiom closure
-/

namespace MathDiscovery.Extractor

open MathDiscovery

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

end MathDiscovery.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b88006703bfef1aa072283bd71d0214fa0762f7d6d6911785fd507d6464a64f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trust/Variant5bb2999d2ff88a8fcb4a388597a73752320ceb5d26ac42bc4f509738513b8c91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
