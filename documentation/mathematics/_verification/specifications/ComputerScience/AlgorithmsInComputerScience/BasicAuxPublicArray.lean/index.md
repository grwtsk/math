# Verification target: Basic Aux Public Array

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f016d43b3bd4f1dad75b10659d9cb87b7e5cf40",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantcba992da0b3fef6e73d2b67439dd9aa10aaf3854563f2cd3307db3c895f84c31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f016d43b3bd4f1dad75b10659d9cb87b7e5cf40`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantcba992da0b3fef6e73d2b67439dd9aa10aaf3854563f2cd3307db3c895f84c31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantcba992da0b3fef6e73d2b67439dd9aa10aaf3854563f2cd3307db3c895f84c31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.of_push_eq_push](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/array-of-push-eq-push.md) | 19 | `result-track:08b0fc5556ea7de284324f4bda520c546a9191fef2e62f0f217a81b4260dfe65` |
| 2 | `theorem` | [List.size_toArrayAux](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/list-size-toarrayaux.md) | 25 | `result-track:57f399cda2e92871c959bb9c301604f6b11f1f61a7789319b6ecf143b08e1184` |
| 3 | `theorem` | [List.of_toArrayAux_eq_toArrayAux](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/list-of-toarrayaux-eq-toarrayaux.md) | 30 | `result-track:e6328d243ee9280f93ba306e286007bbb0decfac226a0fccba1f82d3ba6aa4e2` |
| 4 | `theorem` | [List.toArray_eq_toArray_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/list-toarray-eq-toarray-eq.md) | 43 | `result-track:2d48e173da396a0b4c0d2ba31045ab1baa043727d1b65e7c6fc6e3597a876680` |
| 5 | `def` | [Array.mapM'](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/array-mapm.md) | 51 | `declaration-track:91b47334f5c8446f8cd19efa8c9bf98c9926b905d8c05d4a0633046296599d99` |
| 6 | `def` | [mapMonoMImp](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/mapmonomimp.md) | 64 | `declaration-track:feec67cb969e87fc4e431ee9c4f92ecf867e700a583e455561a878f9d3a20a20` |
| 7 | `def` | [Array.mapMonoM](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/array-mapmonom.md) | 84 | `declaration-track:a0f73ea5bbc5e8e1651fca85b92f69ae8466b889ba91f011dc89ed1dbffd6ab7` |
| 8 | `def` | [Array.mapMono](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicAuxPublicArray.lean/declarations/array-mapmono.md) | 93 | `declaration-track:ba00b55c890d95e7358191f2351872f57d82a20dad6000387b599a4dca63340b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d5500bd0569a40ed83a11104484c50b2610cbe59cff184c9c00d70e3f37fc56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantcba992da0b3fef6e73d2b67439dd9aa10aaf3854563f2cd3307db3c895f84c31.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantcba992da0b3fef6e73d2b67439dd9aa10aaf3854563f2cd3307db3c895f84c31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
