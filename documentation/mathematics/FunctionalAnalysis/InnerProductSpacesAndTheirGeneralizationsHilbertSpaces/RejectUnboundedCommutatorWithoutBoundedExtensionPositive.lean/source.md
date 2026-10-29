# Reject Unbounded Commutator Without Bounded Extension Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4f0fc44ac34ccf49f31a02d604960edd8079455` · SHA-256 `abd9807a759535b9a0cd9364fbd60bd03b0018fd02eef0662dd678ea1bde1e02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Both the ambient bounded extension and its domain agreement are supplied.
example (X : Cycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  denseDomain := X.denseDomain
  closedGraph := X.closedGraph
  symmetric := X.symmetric
  domainInvariant := X.domainInvariant
  boundedCommutator := X.boundedCommutator
  boundedCommutator_agrees := X.boundedCommutator_agrees
  resolventParameter := X.resolventParameter
  compactResolvent := X.compactResolvent
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e64914d118de9b1c943d9c059d5f83103abea65db080eff6570497f09de4e62e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectUnboundedCommutatorWithoutBoundedExtensionPositive/Variantabd9807a759535b9a0cd9364fbd60bd03b0018fd02eef0662dd678ea1bde1e02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
