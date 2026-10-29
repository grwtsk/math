# Verification target: Filter Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cab43e5f81febcbdccad8fb172d6685a91db5551",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Filter/Variant70f1d2bd96949f6f7ef7a8df4b82cce965fdb52a9d96956f1020fe4c25b014eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cab43e5f81febcbdccad8fb172d6685a91db5551`.

Source path: `GRWTSK/Analysis/MeasureTheory/Filter/Variant70f1d2bd96949f6f7ef7a8df4b82cce965fdb52a9d96956f1020fe4c25b014eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Filter/Variant70f1d2bd96949f6f7ef7a8df4b82cce965fdb52a9d96956f1020fe4c25b014eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_eq_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/ae-eq-bot.md) | 40 | `result-track:88f5b94055c7672207a8f9089de97486ac9ee1ab4b6a16c77c92e836cf54d955` |
| 2 | `theorem` | [ae_neBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/ae-nebot.md) | 44 | `result-track:667a10dd9b93ac4322e57e3af38fa3d09184dda13a13dfb42b88c425426e9f16` |
| 3 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:4abee4295cf239f981eefc1f082bb2a65abd21686cd903488704e7821a2df4f2` |
| 4 | `theorem` | [ae_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/ae-zero.md) | 50 | `result-track:ee1b3156d7c2818f1a29f74f613a2b79484d3680b97cc1fba19d1d93d8d15953` |
| 5 | `theorem` | [ae_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/ae-mono.md) | 54 | `result-track:ceb9febd0a6d7173e2be9cbb70983a812991119574c954aeb9ac5d8753d1a0d9` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:87d6abd5fd712e1cef34328a4dd797e694c6d3fb17944621d1d3b34748be595c` |
| 7 | `theorem` | [AEDisjoint.of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/aedisjoint-of-le.md) | 62 | `result-track:49e979b481e61877dc90a87268a492422f1f05a114db1370ed660f12707ba9d6` |
| 8 | `theorem` | [NullMeasurableSet.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/nullmeasurableset-mono.md) | 66 | `result-track:7b5506b25b9f9befd1d73bdf8bbec46c705cbac18997c2edc2d9ef9b7d58c627` |
| 9 | `lemma` | [NullMeasurableSet.smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/nullmeasurableset-smul-measure.md) | 71 | `result-track:e56dad048d5cc75eee5a14733b832f3a0f0f6ae3e7750c09b7b991e729a85894` |
| 10 | `lemma` | [nullMeasurableSet_smul_measure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/nullmeasurableset-smul-measure-iff.md) | 76 | `result-track:c83b6dc12df31f8a270d1070dcc8818e2fb419f6f905f8491bc7d8caced2af60` |
| 11 | `theorem` | [_root_.AEMeasurable.mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/root-aemeasurable-mono-measure.md) | 80 | `result-track:a45bf205758763e47e1f7a97cb4476dfa4c134cab46e260533facef2c854bcbd` |
| 12 | `theorem` | [Measure.measure_support_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/measure-measure-support-eq-zero-iff.md) | 85 | `result-track:b4b94a5f2ada51a130a8cc0fa99d8fb2842ce3008c430851ed192bd844ee7730` |
| 13 | `def` | [cofinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/cofinite.md) | 99 | `declaration-track:58b9f9e8f579ae1bb7874a638f880187e2842ba7ab211c088c7b9f5d88c8f4ad` |
| 14 | `theorem` | [mem_cofinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/mem-cofinite.md) | 103 | `result-track:583fca81bd706bce543ba1dee93183c7a12b2b02a3610aa0a10cdec36a6b8513` |
| 15 | `theorem` | [compl_mem_cofinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/compl-mem-cofinite.md) | 106 | `result-track:cacacf20ad0e373318ac695fef9a8137e1cac14dfddab05f5cf377d7ef16e48b` |
| 16 | `theorem` | [eventually_cofinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/eventually-cofinite.md) | 108 | `result-track:9aa45b256b58d83a066f9e3321a93151106ee67ee2b8f958616e45074c597d98` |
| 17 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/instance.md) | 111 | `declaration-track:49ec8c0e6d7ebccd6c81285b2a70d99954cbaef39f1b467da69e8708eb0029da` |
| 18 | `theorem` | [cofinite_le_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FilterPublic.lean/declarations/cofinite-le-ae.md) | 118 | `result-track:eb6c29610f09b02ccad587c88e9fb0d9dddc60be5df20148c32175614035c136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8b19ea314a73b25a2b2de7bf5a3f405387aeb14d74bdfefe5bbcf9d69052557 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Filter/Variant70f1d2bd96949f6f7ef7a8df4b82cce965fdb52a9d96956f1020fe4c25b014eb.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Filter/Variant70f1d2bd96949f6f7ef7a8df4b82cce965fdb52a9d96956f1020fe4c25b014eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
