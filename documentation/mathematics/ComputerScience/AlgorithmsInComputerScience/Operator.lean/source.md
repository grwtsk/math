# Operator — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b094027b9235987f9964218d13cab98f03415581` · SHA-256 `cfe2944e6bede8cc1d06135547e87160e296d31d6c2a765d5ae0467521e36bbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.Step

/-! # Certified finite relaxation operators -/

namespace Mathematics.Relaxation

/--
The operator is deterministic by being a function.  Every nonfixed step
strictly lowers a natural measure and preserves the immutable source boundary
and all declared hard constraints.
-/
structure Operator where
  operatorId : StableId
  constraints : List HardConstraint
  energy : Energy
  step : State → State
  source_preserved :
    ∀ state,
      (step state).ecosystemDigest = state.ecosystemDigest ∧
      (step state).workPackage = state.workPackage
  constraints_preserved :
    ∀ state,
      SatisfiesAll constraints state →
      SatisfiesAll constraints (step state)
  strict_descent :
    ∀ state,
      step state ≠ state →
      energy.measure (step state) < energy.measure state
  operatorDigest : Digest

namespace Operator

/-- One step cannot modify the source ecosystem or work-package boundary. -/
theorem preserves_scope
    (operator : Operator)
    (state : State) :
    (operator.step state).ecosystemDigest = state.ecosystemDigest ∧
      (operator.step state).workPackage = state.workPackage :=
  operator.source_preserved state

end Operator

end Mathematics.Relaxation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac8392208d47675bea14608291811692e43e91983a46c74522852e1831c7438a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operator/Variantcfe2944e6bede8cc1d06135547e87160e296d31d6c2a765d5ae0467521e36bbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
