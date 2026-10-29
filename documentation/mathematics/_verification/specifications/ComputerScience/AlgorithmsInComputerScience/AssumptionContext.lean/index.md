# Verification target: Assumption Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a483bfab51d870a7cfedcdc96a4dbc8b8f8eb8f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a483bfab51d870a7cfedcdc96a4dbc8b8f8eb8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.FiniteRegistry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssumptionRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/assumptionrecord.md) | 14 | `declaration-track:890018af091c204109117350afbe9a760e675aa38bc1dfce209c021fdf7e35cf` |
| 2 | `structure` | [AssumptionContext](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/assumptioncontext.md) | 23 | `declaration-track:96549b029c3c81b59f115f149ac4395af02fcc0dd092e8915d32202fd5401098` |
| 3 | `def` | [contains](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/contains.md) | 34 | `declaration-track:81489d637fb71754f1f6022dc1b81b1ffdbf3b7cf403ab7404426eab02625687` |
| 4 | `def` | [Subset](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/subset.md) | 38 | `declaration-track:08d195a8d9daa13bd9493dd3d216d0dbfbb814cf255beaedf1ff005e900c8519` |
| 5 | `def` | [Conflict](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/conflict.md) | 42 | `declaration-track:481fe1d06bc8e17cebc2b013d1a4c240b761fc1d9d3b9474d64fe6a4c24a5e32` |
| 6 | `theorem` | [subset_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/subset-refl.md) | 46 | `result-track:504cf63446eacc824fb8d6437319bc97a0b1f5918fc40202628c81693e89a6fb` |
| 7 | `theorem` | [subset_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/subset-trans.md) | 50 | `result-track:e037bf548dd8c505f605a40c1e9d78c927b0919f550757c68fb958505b59feb4` |
| 8 | `theorem` | [conflict_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/conflict-comm.md) | 58 | `result-track:da7ed4e00a9b333509f85c1e49f8c6240b4c7176074417183b85e5867fe15fdc` |
| 9 | `def` | [union](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/union.md) | 67 | `declaration-track:ae1f8b5d6a66195a16759b22e622b50935c27e965cf2dbb3effb0ee44d169a97` |
| 10 | `theorem` | [subset_union_left](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/subset-union-left.md) | 96 | `result-track:2c6230346d9ac082253887834cedb65443c487e15ae6b792aedb20ec905f0cf5` |
| 11 | `def` | [mapping](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionContext.lean/declarations/mapping.md) | 107 | `declaration-track:b5e43b3a5b14921264832359b462186e64a78f85932746ed51d05778b6e9d35c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=615e3f1eb3e0549c34bbd1caf5c459cdecc8ddd7711702b28d4ee1c186523c4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
