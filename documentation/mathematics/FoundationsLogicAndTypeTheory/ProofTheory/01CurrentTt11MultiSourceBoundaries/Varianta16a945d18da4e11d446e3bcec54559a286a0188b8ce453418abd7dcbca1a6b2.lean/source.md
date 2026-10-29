# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.01CurrentTt11MultiSourceBoundaries.Varianta16a945d18da4e11d446e3bcec54559a286a0188b8ce453418abd7dcbca1a6b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99d81d1a87e0627cd5d525cd20859e07d3ba91b3` · SHA-256 `a16a945d18da4e11d446e3bcec54559a286a0188b8ce453418abd7dcbca1a6b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport
import FCRS.TheoremTransfer

namespace FCRS.TheoremTransfer.Cycle9.CurrentBoundaries

open FCRS.Transport
open FCRS.Transport.Theorems
open FCRS.TheoremTransfer.MultiSourceExample

#check ReflectiveRecoveryObservation
#check tt11_reflectiveRecovery
#check MultiSourceInferenceExpression.interpret
#check MultiSourceTheoremTransferDerivation.derivedProofObjectExact
#check MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#check MultiSourceTheoremTransferDerivation.sourceLeafCoverage
#check derivation_has_distinct_fan_in
#check derivation_expression_uses_both_source_leaves

/-- The current concrete aggregate still has two distinct source nodes. -/
example :
    ∃ left right : derivation.SourceIndex,
      left ≠ right ∧
      derivation.sourceNode left ≠ derivation.sourceNode right :=
  derivation_has_distinct_fan_in

/-- Both exact source indices remain leaves of the current proof expression. -/
example :
    derivation.jointInferenceExpression.UsesSource false ∧
      derivation.jointInferenceExpression.UsesSource true :=
  derivation_expression_uses_both_source_leaves

#print axioms tt11_reflectiveRecovery
#print axioms MultiSourceInferenceExpression.interpret
#print axioms MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#print axioms MultiSourceTheoremTransferDerivation.sourceLeafCoverage
#print axioms derivation_has_distinct_fan_in
#print axioms derivation_expression_uses_both_source_leaves
#print axioms derivation

end FCRS.TheoremTransfer.Cycle9.CurrentBoundaries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b99cceb22947dd650d7d9b7106dab49eae8ef88afbeb5ad01b93946a06c1fff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/01CurrentTt11MultiSourceBoundaries/Varianta16a945d18da4e11d446e3bcec54559a286a0188b8ce453418abd7dcbca1a6b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
