# Verification target: Algebra Instances Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "656e2b3108f297edc4e27a897ce39dc1d16bbde0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `656e2b3108f297edc4e27a897ce39dc1d16bbde0`.

Source path: `GRWTSK/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/instance-source-edition-2.md) | 42 | `declaration-track:734dc6cf52906f6c3210601a6095e23f29005975ed9ba53eb28d947add900b8c` |
| 2 | `theorem` | [algebraMap_injective](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/algebramap-injective.md) | 44 | `result-track:b2975f6448a8302a2a4a623d1275932cfe6b67edc96b81be465c0d80a134bde3` |
| 3 | `theorem` | [isIntegral_of_mem_ringOfIntegers](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/isintegral-of-mem-ringofintegers.md) | 47 | `result-track:d37137507f623a33fdec2edb3ccfc37f8629b1fd19d73924b951bd4de280415e` |
| 4 | `theorem` | [isIntegral_of_mem_ringOfIntegers'](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/isintegral-of-mem-ringofintegers-source-edition-2.md) | 54 | `result-track:f1dbc5cd1642814250308168095c17ac0043a1e4d174ff69d934381301f0f130` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/instance.md) | 60 | `declaration-track:050969dd4ade6289a112905c0cc3083c318a2e3161b6164fd2a03162902a8e51` |
| 6 | `instance` | [algebra](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/algebra.md) | 64 | `declaration-track:1f2b1a75aaaa5f9a32c39afa4799bc00838ed1aa3d1268cbb02fa64567f70e2e` |
| 7 | `def` | [equiv](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/equiv.md) | 78 | `declaration-track:bd4b22afdd217ed97900dacb7e6c4b5d621ebec91d099d5ff2b7a79bcf21c55c` |
| 8 | `theorem` | [integralClosure_algebraMap_injective](../../../../CommutativeAlgebra/AlgebraInstancesNamespaced.lean/declarations/integralclosure-algebramap-injective.md) | 86 | `result-track:9490e33db7884f8ab7cb2beae4c792928cccf157cfcd27fd51dcb69a3b9c5717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3df4e1ee8617bbb6402c060bc24af0dfabe1add7719dd1a4e3e1a0ee4366260a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean","GRWTSK/_verification/specifications/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
