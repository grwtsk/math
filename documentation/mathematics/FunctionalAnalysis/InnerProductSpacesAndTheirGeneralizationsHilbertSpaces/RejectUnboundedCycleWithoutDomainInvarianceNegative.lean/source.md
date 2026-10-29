# Reject Unbounded Cycle Without Domain Invariance Negative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2a62e4957cd1596182ddc1f36a8a98b24211811` · SHA-256 `9f094d7bec9572b0b9c726d94f143ba04e3417d84188209e76ed734f1b65cab4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Hostile mutation: all other fields are retained, but domain invariance is omitted.
example (X : Cycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  denseDomain := X.denseDomain
  closedGraph := X.closedGraph
  symmetric := X.symmetric
  boundedCommutator := X.boundedCommutator
  boundedCommutator_agrees := X.boundedCommutator_agrees
  resolventParameter := X.resolventParameter
  compactResolvent := X.compactResolvent
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94d8513e05353cfc7c5d1e3d4d2cca9df644a7fdd5b5461d144f7159feea923c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectUnboundedCycleWithoutDomainInvarianceNegative/Variant9f094d7bec9572b0b9c726d94f143ba04e3417d84188209e76ed734f1b65cab4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
