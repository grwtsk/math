# Verification target: Is Base Change Free Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2793106359ae617f8600e0fee78e5b8ee0ed4271",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2793106359ae617f8600e0fee78e5b8ee0ed4271`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basis](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/basis.md) | 42 | `declaration-track:562a1d58d13ea458bb2d254a7f4a2dcc465a13c3edb92b10dfd7c2cafbd58e7e` |
| 2 | `theorem` | [basis_apply](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/basis-apply.md) | 47 | `result-track:4569ebdd87c947c5dc61660a1101262ca6b692bd9011fa9eb87e816ff724b3f0` |
| 3 | `theorem` | [basis_repr_comp_apply](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/basis-repr-comp-apply.md) | 55 | `result-track:74c6921eb2c688df5f8ff3ee0764594ae86ac077a04c3b1a0b1c5797665e7540` |
| 4 | `theorem` | [basis_repr_comp](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/basis-repr-comp.md) | 70 | `result-track:46dc3f6355a833dcd444ed3506f114ec6542d1d212c6365c3645f4e39be79009` |
| 5 | `theorem` | [free](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/free.md) | 77 | `result-track:e6ab0f9c584b58e47941c7d93f4f43710091b8af2f9b54715d6a957fe907296b` |
| 6 | `theorem` | [of_basis](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/of-basis.md) | 97 | `result-track:1940a7a64923cdbf3cd6589eab3855d1b85e96a79912649d6824ed9d55d446cb` |
| 7 | `theorem` | [of_fintype_basis](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/of-fintype-basis.md) | 116 | `result-track:14841ee1e3b311093c7d41310fb0ff2be282f397b4b3152d72c8245c26b4f1e8` |
| 8 | `theorem` | [of_fintype_basis_eq](../../../../CommutativeAlgebra/IsBaseChangeFreeNamespacedPublic.lean/declarations/of-fintype-basis-eq.md) | 137 | `result-track:c80f74593c4e240eb57a14e4f9036886dd73248c91d5ca6020a9f45ca18f5d58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b70c1cf694844db0b419dde5630b341a8fd1ac8efdba1bdd8f63078014ae3f9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/IsBaseChangeFree/Variant0565704347e8a375908189cb103901f1dd80ef407751fcd64f4da5f8b7ec3e00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
