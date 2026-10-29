# Verification target: Set Semiring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87758fd08c290dced41812b80bd380c6e7b59b9f",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87758fd08c290dced41812b80bd380c6e7b59b9f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean.json)

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
| 1 | `structure` | [IsSetSemiring](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/issetsemiring.md) | 71 | `declaration-track:450af70444a3fa6b4e77114cd78580c632e4f96f5cda093ebdddd69101e15832` |
| 2 | `structure` | [IsSetRing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/issetring.md) | 79 | `declaration-track:ad75bb69eb7697c7b81ae83bc91a4ecac557fdb065fea167c150991ea42e8cd1` |
| 3 | `lemma` | [inter_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/inter-mem.md) | 86 | `result-track:d4433cfbd31f7b91b73ecdb15ae12bf280df1e70896e35897a42461abfc7f0f0` |
| 4 | `lemma` | [isSetSemiring](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/issetsemiring-source-edition-2.md) | 89 | `result-track:7696d6cceb3ee8818602eb3df801b249ab419aa5af13135606ca41750b8d9050` |
| 5 | `lemma` | [biUnion_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/biunion-mem.md) | 99 | `result-track:3e3ad5cd9f3ad324adc98286fbe1ece1da0e369a43c9656562fa2a17757109b7` |
| 6 | `lemma` | [biInter_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/biinter-mem.md) | 110 | `result-track:85ffbc53f42f667a1be7fc793b374221693073d06ebc42e952dbe8ccd73cd380` |
| 7 | `lemma` | [finsetSup_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/finsetsup-mem.md) | 122 | `result-track:7a71f7ccc0d4f251c486f7ae2b0ebb31c0e3aadade895b8fcd8d944246a4d2b8` |
| 8 | `lemma` | [partialSups_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/partialsups-mem.md) | 127 | `result-track:43de30d850feaee666c3bd70b997e4293fdee43cdfdf1278ff2c3f992e7431f7` |
| 9 | `lemma` | [disjointed_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointed-mem.md) | 132 | `result-track:618a9b5beadf1ff3e8989bdbeac49e780a5441b2346f92b4698357f9e8227638` |
| 10 | `theorem` | [iUnion_le_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/iunion-le-mem.md) | 137 | `result-track:87bb65a4d0e21def9e2ef8127df642eda03037a00adf1c7335f7f2be04fcf028` |
| 11 | `theorem` | [iInter_le_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/iinter-le-mem.md) | 143 | `result-track:898ae3174add5259af802d5bfcbf87c60eee9e0c6038a8cd7c4a7d85c2b6836b` |
| 12 | `theorem` | [accumulate_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/accumulate-mem.md) | 149 | `result-track:28f092e14a28dc5046c2bcb2a6cf540a431ec92b93d67210f0b730d6c14d27ae` |
| 13 | `lemma` | [isPiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/ispisystem.md) | 159 | `result-track:20074f31f1c2631738bba981cd451cf355dfd1dbe8b4858dec21df5ce243c7fd` |
| 14 | `theorem` | [exists_finpartition_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/exists-finpartition-sdiff.md) | 161 | `result-track:932432446a285932a279337fc271a970122fefb4db4a823c85a96caf1d176338` |
| 15 | `theorem` | [mem_supClosure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/mem-supclosure-iff.md) | 170 | `result-track:c80d7e8576b932e420aa258011e6fb7a5d3ba0bf27de4d8f2c0e085a02312ce7` |
| 16 | `theorem` | [sdiff_mem_supClosure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sdiff-mem-supclosure.md) | 203 | `result-track:9cecf1d743302e3bee19be41d62635e842f383886585653cd10617e0ce448911` |
| 17 | `theorem` | [isSetRing_supClosure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/issetring-supclosure.md) | 209 | `result-track:d409c1ad56fd6823768524788d0b0076ab12d0dd3dd87b4c26e801ecf7f0da0e` |
| 18 | `def` | [disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofdiff.md) | 235 | `declaration-track:d413a76d6ee1af79b5f519f85e1059145111d6d39a07bf9dbb9f964e2a4faab2` |
| 19 | `lemma` | [empty_notMem_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/empty-notmem-disjointofdiff.md) | 239 | `result-track:1fbd7b113b58e0f382a875efc009f1a82e9784348b2020d1d75808345607f6f3` |
| 20 | `lemma` | [subset_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/subset-disjointofdiff.md) | 243 | `result-track:520c04ca1194c72cf38ebf6bd2d9ef0f8c3aa4d4f0f63eee8d52ea567a21d3bc` |
| 21 | `lemma` | [pairwiseDisjoint_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/pairwisedisjoint-disjointofdiff.md) | 247 | `result-track:5fa5b3281759d0c0ceef9bf0e2ba58b6821d1045dc1b014e80f0265f7505ad2b` |
| 22 | `lemma` | [sUnion_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sunion-disjointofdiff.md) | 251 | `result-track:bbe513f42b1cc9bbe8a8cc8b809477aea7991e7f49ad4b11cc347ea1a0e2624a` |
| 23 | `lemma` | [notMem_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/notmem-disjointofdiff.md) | 255 | `result-track:b3de1c71d2ca629de05076f47cde2f9765ffeedd0581ce8c06bc0d01dfa3481e` |
| 24 | `lemma` | [sUnion_insert_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sunion-insert-disjointofdiff.md) | 261 | `result-track:7aba930da04fcb5a65719250c2dfc242dba6d2981979a9e09c161f5266373a27` |
| 25 | `lemma` | [disjoint_sUnion_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjoint-sunion-disjointofdiff.md) | 267 | `result-track:88b9e17115c751670fee60c5ec3eb3d8a831add4b80e5c44e056826a5af7d17e` |
| 26 | `lemma` | [pairwiseDisjoint_insert_disjointOfDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/pairwisedisjoint-insert-disjointofdiff.md) | 272 | `result-track:2c150bf2f6ffe27b1da404b6b29a905fcbd61eed7487c5113a4d1f02323170f0` |
| 27 | `theorem` | [exists_finpartition_sdiff_sUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/exists-finpartition-sdiff-sunion.md) | 287 | `result-track:dc73ffdd2d57b0a521b3af0c5d57f632b4ff10f3177671965f73ada3ed6e032d` |
| 28 | `def` | [disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofdiffunion.md) | 298 | `declaration-track:68c66741480cecceda178d2a351e10f1b0ac58aa970d902ef836816a0e6d4b9d` |
| 29 | `lemma` | [empty_notMem_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/empty-notmem-disjointofdiffunion.md) | 302 | `result-track:d2e2d93e27ffb40845df6c5566d1ad0682a1fb312a2dfb5dece154b1422673c8` |
| 30 | `lemma` | [disjointOfDiffUnion_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofdiffunion-subset.md) | 307 | `result-track:c8d72b86a8392ae029fd3ba7ad1daa55f22e89f6a5e93149c5d2156f177aa232` |
| 31 | `lemma` | [pairwiseDisjoint_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/pairwisedisjoint-disjointofdiffunion.md) | 311 | `result-track:7ed4994ad925a790e06642b5996bb4ec4e2452decd1e2c1fc0ee7c2c9e82803c` |
| 32 | `lemma` | [sdiff_sUnion_eq_sUnion_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sdiff-sunion-eq-sunion-disjointofdiffunion.md) | 315 | `result-track:df60933798b3ca1fbd79c462ca7f8cc3d389114bca676a9e5f3bae77aea46387` |
| 33 | `lemma` | [exists_disjoint_finset_sdiff_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/exists-disjoint-finset-sdiff-eq.md) | 325 | `result-track:b80835bb2f8ecf6291f1d764640914bd4c91250f18469bb8162f7c22644a8bd2` |
| 34 | `lemma` | [sUnion_disjointOfDiffUnion_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sunion-disjointofdiffunion-subset.md) | 336 | `result-track:393c5e31e0beaf0b35b627ceb5e15c95d887ad8c091f8f190c4e6222ef42bfaf` |
| 35 | `lemma` | [subset_of_diffUnion_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/subset-of-diffunion-disjointofdiffunion.md) | 341 | `result-track:6f1c567b2407b181d6cff9b3c32bfd27d5c21b44ff2614d790d94ec2f5d406bb` |
| 36 | `lemma` | [subset_of_mem_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/subset-of-mem-disjointofdiffunion.md) | 347 | `result-track:7f474634283e9f00f3a42c98dc3ea4ce5a77bc682eab82ba48099f31eb9738ea` |
| 37 | `lemma` | [disjoint_sUnion_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjoint-sunion-disjointofdiffunion.md) | 354 | `result-track:22e8b12c5c4946b38909376987f0c8ce6a0e5d1b7f3938313e6aefb4da6e2272` |
| 38 | `lemma` | [disjoint_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjoint-disjointofdiffunion.md) | 359 | `result-track:c6026040afe9dfdc7623d474951f170b15a41edf687f99721c10beb8689c09cc` |
| 39 | `lemma` | [pairwiseDisjoint_union_disjointOfDiffUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/pairwisedisjoint-union-disjointofdiffunion.md) | 371 | `result-track:b98f1b5eafa03a9c904384525eabb3d680c283336d782cce6a30e3c6541f8121` |
| 40 | `lemma` | [sUnion_union_sUnion_disjointOfDiffUnion_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sunion-union-sunion-disjointofdiffunion-of-subset.md) | 380 | `result-track:c0f04057780b130b496755520891e6e3db34cababd899cbd1b6461b4ab92abf6` |
| 41 | `lemma` | [sUnion_union_disjointOfDiffUnion_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sunion-union-disjointofdiffunion-of-subset.md) | 386 | `result-track:f221ad4e5a254b23ce86632508525ff1abe1d071d769abb9b4073fb718b74937` |
| 42 | `theorem` | [exists_partition_disjointed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/exists-partition-disjointed.md) | 402 | `result-track:6e98a5eafb8b7423fc482e0e51176450d92bb3478bc0c4ac762e9052479624c9` |
| 43 | `def` | [disjointOfUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofunion.md) | 413 | `declaration-track:b4f9b0462af49ee42841d809e076960a9507b80888c20e6a6f484deb7229cdf2` |
| 44 | `theorem` | [disjointOfUnion_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofunion-coe.md) | 417 | `result-track:e50f48f54d70f0257ca4f4b6833f7ad2b9c4852402ac42c9fda47d6c09a5267f` |
| 45 | `lemma` | [pairwiseDisjoint_disjointOfUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/pairwisedisjoint-disjointofunion.md) | 421 | `result-track:27a63c8a27c1b5ad7c8899e84cb829379eb0cdc6dc86a5a330343f41bb47dc55` |
| 46 | `lemma` | [disjointOfUnion_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofunion-subset.md) | 429 | `result-track:580e8aec7932976c095d344e825394e4e2817862421a3c85ba35106f46ffa727` |
| 47 | `lemma` | [pairwiseDisjoint_disjointOfUnion_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/pairwisedisjoint-disjointofunion-of-mem.md) | 435 | `result-track:43f3a9094783f429386d16659c6c7cbe9da058fa7b13ca096833350e450a1555` |
| 48 | `lemma` | [pairwiseDisjoint_biUnion_disjointOfUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/pairwisedisjoint-biunion-disjointofunion.md) | 441 | `result-track:75426e4b0c1ec12e0a84f0e84ea3a27a58e56d5c2dd8cba5da343578dca8fc81` |
| 49 | `lemma` | [disjointOfUnion_subset_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofunion-subset-of-mem.md) | 451 | `result-track:f308fb19d6dd25fb76f5969b98d0e806f69b8baca480b7bcaa5a17ab67774563` |
| 50 | `lemma` | [subset_of_mem_disjointOfUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/subset-of-mem-disjointofunion.md) | 457 | `result-track:b1693e856ad9561a514e9faa3b9654fb8528258399825c81f790d3c287921dd9` |
| 51 | `lemma` | [empty_notMem_disjointOfUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/empty-notmem-disjointofunion.md) | 461 | `result-track:3acb34a9e48430aa7580f6351aebd793a2b4c11974cb79d8e4b54f595c47daba` |
| 52 | `lemma` | [sUnion_disjointOfUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/sunion-disjointofunion.md) | 467 | `result-track:79739f494995f82c23e08d0a7bbdfe3475d61898443a42037d12a05c04ea6859` |
| 53 | `theorem` | [disjointOfUnion_props](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/disjointofunion-props.md) | 473 | `result-track:b9cf958c5020fbb6d10d7bd176a1ed01121fbc91a0cb52171526f19ad1dce83a` |
| 54 | `lemma` | [Set Semiring Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/ioc-mem-ofpred-ioc-le.md) | 491 | `result-track:4b1af1f8bb63a74136a8c1cfe7e760d43ba5ad7f99f5e7eea3d6a2737ce1e04f` |
| 55 | `lemma` | [Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SetSemiringNamespacedPublic.lean/declarations/ioc.md) | 496 | `result-track:34d9ae3b95d58f258f5270acb151b06b9f7c5d11a6d2797f76b8c34ffe56e73c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35428f483aab156a0c633a3e95dd0cbea127793a1adee2446d8caba233bf2b95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
