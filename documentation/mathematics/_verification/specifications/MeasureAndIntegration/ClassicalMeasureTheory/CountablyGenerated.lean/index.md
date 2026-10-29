# Verification target: Countably Generated

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0395b56ee9675553e0ef9df1c6f8f254d8a6810e",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0395b56ee9675553e0ef9df1c6f8f254d8a6810e`.

Source path: `GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.MemPartition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableSeparatingOn` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CountablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablygenerated.md) | 51 | `declaration-track:995a47b89bb9a4c538405313f091cc2fcb3364eb7a1ada2496bcbfcef1d6a790` |
| 2 | `def` | [countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablegeneratingset.md) | 56 | `declaration-track:0ee0277c007e18ce558fdc9dff97716859e600d45a30865f929b7d4f27fc4804` |
| 3 | `lemma` | [countable_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countable-countablegeneratingset.md) | 60 | `result-track:1e106a0a28a0db66c9d4e99eda8bdf71f72630bc70b49eadb00add4f4c2208c8` |
| 4 | `lemma` | [generateFrom_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-countablegeneratingset.md) | 64 | `result-track:8eb8351b4cc6347c563c547c3a5eca049ad10459960520f0a2dbd2bec4a571ec` |
| 5 | `lemma` | [empty_mem_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/empty-mem-countablegeneratingset.md) | 68 | `result-track:0cd5034bd1e7230f26039f56b08944d365a58479b68dff63ce130542e4ec223c` |
| 6 | `lemma` | [nonempty_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/nonempty-countablegeneratingset.md) | 71 | `result-track:0734d7b210952a2bf3be58efb3a23559cd4575d74f4ccf70b47fb6545ba13a99` |
| 7 | `lemma` | [measurableSet_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-countablegeneratingset.md) | 75 | `result-track:0b3a2faa60088c436bb136c5839fa3b58cc7d5bfbd765fd88587ec9f1f72a866` |
| 8 | `def` | [natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/natgeneratingsequence.md) | 82 | `declaration-track:c874c8aab1d23d1d67321d5084f1f0cfa450b40ffef7be71a84d326a4bf011ec` |
| 9 | `lemma` | [generateFrom_natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-natgeneratingsequence.md) | 85 | `result-track:25107bf8e295eb4a4ebd1e59031ad75c18d430f1e9032039ca3278b08b19dede` |
| 10 | `lemma` | [measurableSet_natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-natgeneratingsequence.md) | 90 | `result-track:f41e38cba1f9b5eaa12dd694742fca370dfdc89e557a598186b14484798a6b6b` |
| 11 | `theorem` | [CountablyGenerated.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablygenerated-comap.md) | 95 | `result-track:33ebdcfcb5b4dc8f00ce8c21154ecb02845fe157abce9597b2207cbf33e7d1f0` |
| 12 | `theorem` | [CountablyGenerated.sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablygenerated-sup.md) | 102 | `result-track:30f9d6f5ed2288a87e456bec56bc260f1afcdb8807fcef0fa865306f99ef35db` |
| 13 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance-source-edition-3.md) | 109 | `declaration-track:940e14b4daff43e16a1f4d771fb1591e1941200210a02ee7ea9c745999c79374` |
| 14 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance-source-edition-2.md) | 126 | `declaration-track:7b91897c576bf8d0ebca2bb2008d33213bf9ca378a4257187946be277f187ab7` |
| 15 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance-source-edition-6.md) | 129 | `declaration-track:bf89bd888444d273e6838d89615df7149375e4a497f0ffd759807670d9bf4d81` |
| 16 | `class` | [SeparatesPoints](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/separatespoints.md) | 137 | `declaration-track:30b2a4f1e1888714e25a038ea2a7377f9f1a7b31aa04fe36554d3a663525e2be` |
| 17 | `theorem` | [separatesPoints_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/separatespoints-def.md) | 140 | `result-track:13d60614be752b6ff907041e98f1f9359c84ad24b72859ba1184af27ce0f59e0` |
| 18 | `theorem` | [exists_measurableSet_of_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/exists-measurableset-of-ne.md) | 143 | `result-track:3494841ea0c97116d824bef56a3eb9a2fae740146386b6c329a4b2e09ae23a39` |
| 19 | `theorem` | [separatesPoints_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/separatespoints-iff.md) | 148 | `result-track:1b251c58ed39c382d1d5774907bb1e49b39bf2720e65bd2446159af70d7af827` |
| 20 | `theorem` | [separating_of_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/separating-of-generatefrom.md) | 156 | `result-track:2b81eb8cad01c715240b450f6df4dedcdce0efaca6777bee8830a5c54c4f10b5` |
| 21 | `theorem` | [SeparatesPoints.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/separatespoints-mono.md) | 164 | `result-track:4b8353e332590fe4dad67e18193efb2b956d51254c97aafa0ff0ea2bb60cddb4` |
| 22 | `class` | [CountablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablyseparated.md) | 170 | `declaration-track:17055255348a8e36fdfbf64186ace925df11dcb66bbfe0c47cb94633026215c2` |
| 23 | `instance` | [countablySeparated_of_hasCountableSeparatingOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablyseparated-of-hascountableseparatingon.md) | 173 | `declaration-track:4643afaf8179be48cba13c7599f3d317cd0fdeb9030e29e030c2d0714a125adf` |
| 24 | `instance` | [hasCountableSeparatingOn_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/hascountableseparatingon-of-countablyseparated.md) | 176 | `declaration-track:3e8a04e7ed2c0bb311b905a7059a49cb0729def65d7d7db2ef30292a428b101a` |
| 25 | `theorem` | [countablySeparated_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablyseparated-def.md) | 180 | `result-track:82b9a292ee062547827af46e7f67a9e283f43ef8d963450858922baf0c066755` |
| 26 | `theorem` | [CountablySeparated.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablyseparated-mono.md) | 184 | `result-track:9124a207a16e0f828f0ff37fbb6c06a5fa67b24d608f5073034eb21a893a9c17` |
| 27 | `theorem` | [CountablySeparated.subtype_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablyseparated-subtype-iff.md) | 190 | `result-track:b5158cd447798cb9a6a433fddc7cfc793c13ecde01d37ba37da39395996af2c7` |
| 28 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance-source-edition-4.md) | 195 | `declaration-track:a5b6a06cdcb0b774f11be045474fb20277602f615d811742ea6cea2c3e3f7d59` |
| 29 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance-source-edition-8.md) | 199 | `declaration-track:e8e5d2a92caf1b6154261d0a161cdacba06f161b9db2fb35741a58bec121c53f` |
| 30 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance.md) | 204 | `declaration-track:5e4b97b70058120e61dc2b884a1b0089bde76099f93b636589ee81b50d9d2c07` |
| 31 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance-source-edition-7.md) | 211 | `declaration-track:dbec1d4702c8b4f000fde89fc731095954deb69a5f1eca5b727b91a815316b98` |
| 32 | `instance` | [hasCountableSeparatingOn_of_countablySeparated_subtype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/hascountableseparatingon-of-countablyseparated-subtype.md) | 222 | `declaration-track:bb9b494aec935442d2a76be88a707fab85913de9c83d4f9510b1b190d63a20c4` |
| 33 | `instance` | [countablySeparated_subtype_of_hasCountableSeparatingOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablyseparated-subtype-of-hascountableseparatingon.md) | 226 | `declaration-track:2dfd84e28a9d6d907ffcbb86d099dc051bb248bbaccc5c5d843cf77d10d9e7cb` |
| 34 | `instance` | [countablySeparated_of_separatesPoints](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablyseparated-of-separatespoints.md) | 230 | `declaration-track:e45479d79956b11e19dd2d5a5cede011c0869f5c50e71d09a7557dd5759a8f0b` |
| 35 | `theorem` | [exists_countablyGenerated_le_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/exists-countablygenerated-le-of-countablyseparated.md) | 242 | `result-track:c76ff801bc5cae2e3f6d41d490ec3015d0bd15fabcf82e5ec01ed5ed56d4c278` |
| 36 | `def` | [mapNatBool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/mapnatbool.md) | 257 | `declaration-track:e639d99cb87802c09f0ed9dc1a4ad2a3bb36696cfdf4498483240957bec83f0b` |
| 37 | `theorem` | [measurable_mapNatBool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurable-mapnatbool.md) | 260 | `result-track:76e5ba77e35793a89b2d61850ce1e72f0430e27aa147d75b016663eb40399c99` |
| 38 | `theorem` | [injective_mapNatBool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/injective-mapnatbool.md) | 268 | `result-track:0fccc522a0b538178be6f61dc043637651ef57a7814416a0b4963cfb82d97b09` |
| 39 | `theorem` | [measurableEquiv_nat_bool_of_countablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableequiv-nat-bool-of-countablygenerated.md) | 281 | `result-track:24adefa020571f5d873948744dcc092088025ec7b6d3ef4df33265bc7485074a` |
| 40 | `theorem` | [measurable_injection_nat_bool_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurable-injection-nat-bool-of-countablyseparated.md) | 298 | `result-track:26b7e0d1ebcbf2e7d5ad1bd598674fa38b211df8953d54b3151d1bcdb862ce95` |
| 41 | `theorem` | [measurableSingletonClass_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurablesingletonclass-of-countablyseparated.md) | 307 | `result-track:a138c85697cc63514520a76ab4ef1fddc00deebb4e253b6c0f0434e535c32ab1` |
| 42 | `lemma` | [measurableSet_succ_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-succ-mempartition.md) | 319 | `result-track:3654b44a8be1009f32c8eb8825cb123592eb8fcc594f616779e5448dccf68dd1` |
| 43 | `lemma` | [generateFrom_memPartition_le_succ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-mempartition-le-succ.md) | 328 | `result-track:7ea105e0c5d2cff064859e7e3ed7fec66582692f64583be6c655a729f1c97c51` |
| 44 | `lemma` | [measurableSet_generateFrom_memPartition_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-generatefrom-mempartition-iff.md) | 332 | `result-track:7ab938d24864be4a2a3424eaf3befecc51c320b753c19457e0089a8b7e057397` |
| 45 | `lemma` | [measurableSet_generateFrom_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-generatefrom-mempartition.md) | 369 | `result-track:bead0e3655c4e7da63e43032aa177404c955d189316dd3cb3a862527f1aa3c46` |
| 46 | `lemma` | [generateFrom_iUnion_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-iunion-mempartition.md) | 379 | `result-track:6fad4be680dc7808148620666def554e3d270660b7667ddc1f8ead3c0be0c3c1` |
| 47 | `lemma` | [generateFrom_memPartition_le_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-mempartition-le-range.md) | 399 | `result-track:9ed000522ad283efdd85713462aaec9fe3a02a0147f223d0386d9a5f7d9eea23` |
| 48 | `lemma` | [generateFrom_iUnion_memPartition_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-iunion-mempartition-le.md) | 404 | `result-track:b4a2445f91676244d256f2fa6e5f9b62cf22749f66ad3a62e0c0c3695be48182` |
| 49 | `lemma` | [generateFrom_memPartition_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-mempartition-le.md) | 411 | `result-track:ecc4241fba65ed576a84d2e5fb22f56e9ee9f3dcd8e7daaf4faec191c796a63e` |
| 50 | `lemma` | [measurableSet_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-mempartition.md) | 416 | `result-track:0dae6db72e1fa3fd6622635119ccba444f234deaffa54e94758f70afd65443c7` |
| 51 | `lemma` | [measurableSet_memPartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-mempartitionset.md) | 421 | `result-track:ad3dcbae7d9980913b0e77ca359e5f0ffbb3e0337a4368eafc33b1701da0afcf` |
| 52 | `def` | [countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablepartition.md) | 433 | `declaration-track:1a260d94a0d90d6b8d9518576e4910e7fa69f90bdd53837b4a24f5bcfc87f088` |
| 53 | `lemma` | [measurableSet_enumerateCountable_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-enumeratecountable-countablegeneratingset.md) | 436 | `result-track:6a03e37a992d3abc194b7f06f2bb4d308329d591f9333d0bd3b9b1f021a98820` |
| 54 | `lemma` | [finite_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/finite-countablepartition.md) | 442 | `result-track:cc69a44b3514c26ef63ec76c52f9b8d5a6830e7efa26c73c35dc3d60a4e6c293` |
| 55 | `instance` | [instFinite_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instfinite-countablepartition.md) | 446 | `declaration-track:5de04c27754a3c048dfc72d2782341e555c4f026a6f4fb90b9f10b2ee34180f1` |
| 56 | `lemma` | [disjoint_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/disjoint-countablepartition.md) | 449 | `result-track:d830f41fec2e76615fb2afe99e7e56cdb9b4b133a7e8107da49144630199336b` |
| 57 | `lemma` | [sUnion_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/sunion-countablepartition.md) | 454 | `result-track:3a27614d930bbcc220d4d21ccc9042b9f6355d2b82e48ca7a6dcc7a8474a2fe7` |
| 58 | `lemma` | [measurableSet_generateFrom_countablePartition_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-generatefrom-countablepartition-iff.md) | 458 | `result-track:fcb42790fa65c3f12019916ab7d02c87da8b04f1d2e44e7d2809d050bb23be69` |
| 59 | `lemma` | [measurableSet_succ_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-succ-countablepartition.md) | 463 | `result-track:40e3e633c2b3a5eebd67efbddf37fde34cfc6dec8bd7416ea8d196e8393f4a9d` |
| 60 | `lemma` | [generateFrom_countablePartition_le_succ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-countablepartition-le-succ.md) | 467 | `result-track:616d5fb8c792316d5967a3f129c812b6cab5ef7b43b42e8fdd24b67afdebeaff` |
| 61 | `lemma` | [generateFrom_iUnion_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-iunion-countablepartition.md) | 472 | `result-track:a667766980c513827c924b6a825026819542177631b249aa2f8af68169f9cb10` |
| 62 | `lemma` | [generateFrom_countablePartition_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/generatefrom-countablepartition-le.md) | 479 | `result-track:44656c0bac9c5beece51200f0319e9edd4c827b242353e4e0670f08c12e17ac3` |
| 63 | `lemma` | [measurableSet_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-countablepartition.md) | 484 | `result-track:0d123da9319910ed6d20297719aa1002c0ef70edd4a16021d7c3991164a863c4` |
| 64 | `def` | [countablePartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablepartitionset.md) | 489 | `declaration-track:66d4890515306d4fe049ddd3c8f7f3a5c46aa6783c4b631339a4a424e72b8447` |
| 65 | `lemma` | [countablePartitionSet_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablepartitionset-mem.md) | 492 | `result-track:dd9eaa2dbc4eb651c0defaa059e05f3d546abdbc5684cb89f237871bf398eacb` |
| 66 | `lemma` | [mem_countablePartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/mem-countablepartitionset.md) | 496 | `result-track:1cd951df1375a33a1d3db48749a5a74317b06922ca3860b10026cb435b3528ed` |
| 67 | `lemma` | [countablePartitionSet_eq_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablepartitionset-eq-iff.md) | 499 | `result-track:2c24caa206f04c88d59303239f3b91481d8931b338a0328d8d5684376d052d5d` |
| 68 | `lemma` | [countablePartitionSet_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countablepartitionset-of-mem.md) | 503 | `result-track:f75e544a125285e788bef9ff467547109ba717011e43554e7e2a9863454d88ce` |
| 69 | `lemma` | [measurableSet_countablePartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/measurableset-countablepartitionset.md) | 509 | `result-track:ff4d322239b95fc87e1f1c625284bf822f27876bd5a2b8ce8d8433778da776a8` |
| 70 | `class` | [CountableOrCountablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countableorcountablygenerated.md) | 519 | `declaration-track:3e7733a5b060721f341df4d3bcd5f28b37bd9ced6516abc5d900c3e225969232` |
| 71 | `instance` | [instCountableOrCountablyGeneratedOfCountable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instcountableorcountablygeneratedofcountable.md) | 523 | `declaration-track:54117602e806f80966c8c7a178b9520c01a8d03d691a461303d7a7338cffc2de` |
| 72 | `instance` | [instCountableOrCountablyGeneratedOfCountablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instcountableorcountablygeneratedofcountablygenerated.md) | 526 | `declaration-track:a4fc39953476c2706b786b731b3aed410f1df5245b8f534a13e7bfc6e978bf23` |
| 73 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/instance-source-edition-5.md) | 529 | `declaration-track:bf4120f821e24ace7761113c2fe176d9b7a3e1e374ba9c36b879381224a42d9c` |
| 74 | `lemma` | [countableOrCountablyGenerated_left_of_prod_left_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countableorcountablygenerated-left-of-prod-left-of-nonempty.md) | 533 | `result-track:486ac015dd2a6cb4f0a81fb81f349127ca526390b1fe9f7c36a7ad699aabcfbb` |
| 75 | `lemma` | [countableOrCountablyGenerated_right_of_prod_left_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countableorcountablygenerated-right-of-prod-left-of-nonempty.md) | 541 | `result-track:6ade9c2ebd2d60aab0978c799c133f08dd00ecee994d4aff8f83fc2354f70e89` |
| 76 | `lemma` | [countableOrCountablyGenerated_prod_left_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGenerated.lean/declarations/countableorcountablygenerated-prod-left-swap.md) | 549 | `result-track:085be5e1ff7f7f7518a7079f4e91ef97e2e50b0b2c08e171669bd0944fca4aae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c26c8f577d96e3d1ffcdeff7fc5153ef39201682f340f62d1bce2c4c9d3da42e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
