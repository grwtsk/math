# Verification target: Rectangles Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93ce3d2fe049f2afea032130afa83942a49ba77c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant2624ba1eae8b7010f45b4b67a499b86b089e98265fbf8e594e2428d5b95c19ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93ce3d2fe049f2afea032130afa83942a49ba77c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant2624ba1eae8b7010f45b4b67a499b86b089e98265fbf8e594e2428d5b95c19ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant2624ba1eae8b7010f45b4b67a499b86b089e98265fbf8e594e2428d5b95c19ee.lean.json)

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
| 1 | `structure` | [Rectangle](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/rectangle.md) | 23 | `declaration-track:77581cd3923f3f5a00428b5dab130769df394b945ca3ba1ab0700892c9dc938a` |
| 2 | `def` | [width](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/width.md) | 32 | `declaration-track:ca2f4493d9ace55b524117226b84f49e27b9e05c64d375e9a9bc65d11b32360c` |
| 3 | `def` | [height](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/height.md) | 33 | `declaration-track:1607b6a06827a75619c5828c08a34ea9dcdcfa7c65de6f87e4a8bcb3917b2229` |
| 4 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/tostring.md) | 35 | `declaration-track:f30eb09416d2690c6e40051197eb8248eaf9392eaca79594d1902df842dd7b9e` |
| 5 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/instance-source-edition-4.md) | 38 | `declaration-track:f3b224d8799a3b73ca702eb56914d5cb712431775b24d4d902cf0f1ffb4b486d` |
| 6 | `instance` | [instPointMembership](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/instpointmembership.md) | 41 | `declaration-track:f3411420e4803ecd4fa85a81a11ef4dc8528663baa0d6088178fadcf62ffb248` |
| 7 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/instance.md) | 44 | `declaration-track:0b91f97cad0dd56d6ed1ae72d6671aba6fadc885942a6c516a11990a0601c725` |
| 8 | `instance` | [instLE](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/instle.md) | 51 | `declaration-track:da5ae89ad075de6f45b88d80af2c55a82d0d848dee9dc85f48654e4963418811` |
| 9 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/instance-source-edition-3.md) | 54 | `declaration-track:3ea7b8be0e2322f56dc0d33abf5c5bf42ea96cbd8c58073025dbfdcfcba6e7a7` |
| 10 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/instance-source-edition-5.md) | 58 | `declaration-track:ff21136671090199b13bec46647cd2608c36b4904d2ea5a7545de5c0f5cccb93` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:17bb1ca7af7d70960efba7738a226c63995c23fcf2718b77132bba94f90a2cd6` |
| 12 | `def` | [expansions](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/expansions.md) | 70 | `declaration-track:6b260a4b7437770a7209695964859351487ec008fe4fb90de235a69b534aecb0` |
| 13 | `def` | [area](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/area.md) | 75 | `declaration-track:c16560d036caba33417df1d520b427373db582e7da27e74081df4d7127fb2b62` |
| 14 | `def` | [weightedArea](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/weightedarea.md) | 80 | `declaration-track:899836cb3e0222597cc5e68b072b93fde62612160e3c48bfdd8c06e022babfa1` |
| 15 | `def` | [maximalRectangles](../../../../../ComputerScience/AlgorithmsInComputerScience/RectanglesNamespaced.lean/declarations/maximalrectangles.md) | 88 | `declaration-track:5acbd622843217c694f3f8b356355738aa6ed39e095131ec8229ed3ba82dd2b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59b2cdaff82bef93066be1b3f1803d5ab15fe3e4b29dc2d5e46d1b59de6f4654 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant2624ba1eae8b7010f45b4b67a499b86b089e98265fbf8e594e2428d5b95c19ee.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant2624ba1eae8b7010f45b4b67a499b86b089e98265fbf8e594e2428d5b95c19ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
