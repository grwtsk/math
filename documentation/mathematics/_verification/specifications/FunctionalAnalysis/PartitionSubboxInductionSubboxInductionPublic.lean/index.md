# Verification target: Partition Subbox Induction Subbox Induction Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b423bb32daf759d0927e5b80b858c13d9b5ea600",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b423bb32daf759d0927e5b80b858c13d9b5ea600`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean.json)

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
| 1 | `def` | [splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/splitcenter.md) | 47 | `declaration-track:02647f1dc350cbbac2bc367e23f2a8ae3c79c60103109824b9bdb86f85972c8f` |
| 2 | `theorem` | [mem_splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/mem-splitcenter.md) | 56 | `result-track:9b377a64d257e65117287948e909d1ee38c92a62ec63941c42eb9b6ac6c42c8c` |
| 3 | `theorem` | [isPartition_splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/ispartition-splitcenter.md) | 58 | `result-track:b18e1bc3c7fe258f263d2ed80c576711f7cc0e11d3200d2f7fb5cf41e8ab27ba` |
| 4 | `theorem` | [upper_sub_lower_of_mem_splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/upper-sub-lower-of-mem-splitcenter.md) | 61 | `result-track:c56e656a939d8dcfb52f0809aef8f34c912ee71f27ad27757d1cfade448b1ca4` |
| 5 | `theorem` | [subbox_induction_on](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/subbox-induction-on.md) | 84 | `result-track:8eb075de42eccd679ecea684dcb87b860019962ec7a0fe46f6a7304d5aacd87e` |
| 6 | `theorem` | [exists_taggedPartition_isHenstock_isSubordinate_homothetic](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/exists-taggedpartition-ishenstock-issubordinate-homothetic.md) | 103 | `result-track:815806a1a2e2c4079422f6909280d6514acee64afe13ce2927703d91e01a8a92` |
| 7 | `theorem` | [exists_tagged_le_isHenstock_isSubordinate_iUnion_eq](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/exists-tagged-le-ishenstock-issubordinate-iunion-eq.md) | 148 | `result-track:7386044f55f1f2717819a9f385187e1353425b32921317c775011a36d82cde4d` |
| 8 | `def` | [toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/tosubordinate.md) | 168 | `declaration-track:2aaadb0bb21df2cf19c0dd91745fb8b04ebf2583fb0b39c169380f3beb374443` |
| 9 | `theorem` | [toSubordinate_toPrepartition_le](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/tosubordinate-toprepartition-le.md) | 171 | `result-track:1c9ac13241771ce94db128cc25a704f09887c05453031c7ebe0c4cf7b1571673` |
| 10 | `theorem` | [isHenstock_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/ishenstock-tosubordinate.md) | 175 | `result-track:155231c52c8ea386faa42f8f0835669d7972702499f47550be60f8803e9d9c57` |
| 11 | `theorem` | [isSubordinate_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/issubordinate-tosubordinate.md) | 179 | `result-track:e7c04d5bed412b28c516edd135cd9b81f188f269a548c23b1eebf5efc8b85472` |
| 12 | `theorem` | [distortion_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/distortion-tosubordinate.md) | 184 | `result-track:757ffae3a551ed260a13e5acdee29863abc898bfb5017d3286c959bfe5e8e3c6` |
| 13 | `theorem` | [iUnion_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/iunion-tosubordinate.md) | 189 | `result-track:bbcaa8c8b072142467633448954dfd21730ee5196d2f990aa2cd9c61a96a05c7` |
| 14 | `def` | [unionComplToSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/unioncompltosubordinate.md) | 208 | `declaration-track:14b369d1ba150cc2a802ecfca8db09d791821cddeece93101d92da82660d1112` |
| 15 | `theorem` | [isPartition_unionComplToSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/ispartition-unioncompltosubordinate.md) | 213 | `result-track:88caee6dbff5323ca15c592fcc3d702759c17ba62c1077f50c81f704b9329353` |
| 16 | `theorem` | [unionComplToSubordinate_boxes](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/unioncompltosubordinate-boxes.md) | 220 | `result-track:f02d227810cb15a473beb4e7294b8377bcfc7dfe4bdf441fa67c061daad25b2c` |
| 17 | `theorem` | [iUnion_unionComplToSubordinate_boxes](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/iunion-unioncompltosubordinate-boxes.md) | 225 | `result-track:06a8cf478c6e3ed0c0c40e6f1f5dbc3add289f5dd45054218c283ad69dd2e6c6` |
| 18 | `theorem` | [distortion_unionComplToSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInductionPublic.lean/declarations/distortion-unioncompltosubordinate.md) | 231 | `result-track:0d585d1e20dc1cde1b05cea4dfb56925b010f1169898893e20189bd5d7780372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8248545c906bef00883d4f12d54daf02e2dc080cbac556839d4db50d7a571843 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
