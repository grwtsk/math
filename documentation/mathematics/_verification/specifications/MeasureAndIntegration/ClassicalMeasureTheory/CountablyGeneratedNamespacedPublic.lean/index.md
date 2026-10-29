# Verification target: Countably Generated Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac0bd980ce8cc705b8545067c50c1179c151a466",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac0bd980ce8cc705b8545067c50c1179c151a466`.

Source path: `GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean.json)

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
| 1 | `class` | [CountablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablygenerated.md) | 65 | `declaration-track:26d30e02ddbb40f3645d43da7363898a53326b3634c1684d1336ab0f1a8b681b` |
| 2 | `def` | [countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablegeneratingset.md) | 73 | `declaration-track:1f84972d6417eadcebd71280230adcba4290ebc43be656ada0f6be0dd44820f6` |
| 3 | `lemma` | [countable_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countable-countablegeneratingset.md) | 77 | `result-track:5962996239ccb68b15d1c538c64a2cd0d335650a7321245ff0a75fe2b4003a2c` |
| 4 | `lemma` | [generateFrom_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-countablegeneratingset.md) | 81 | `result-track:8293838a9e2b65a5cbb0c44f0b06f5c804a413add96f77c376178c95dfe0edd6` |
| 5 | `lemma` | [empty_mem_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/empty-mem-countablegeneratingset.md) | 85 | `result-track:d8e2bf9a0b5fab4c658023ae0f3bdc60a082dc71d1ceb735adab485bd71e5887` |
| 6 | `lemma` | [nonempty_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/nonempty-countablegeneratingset.md) | 88 | `result-track:c1f79d779b34faf9aeda84d5e728a1412c4869707251cfd1f6329ff1954b8025` |
| 7 | `lemma` | [measurableSet_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-countablegeneratingset.md) | 92 | `result-track:8b5707b67b768e891ec83270ad2f242214397fc35d17df406ea7ffcacf78ad4a` |
| 8 | `def` | [natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/natgeneratingsequence.md) | 102 | `declaration-track:787766e86217d10b1c16ed861ad960c926d2989b76e16e9aa59c1742a1b9d0c9` |
| 9 | `lemma` | [generateFrom_natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-natgeneratingsequence.md) | 105 | `result-track:e7908eb29fa2dce19698535bc8756358cad176f695adc1506fdb797a7dcac41a` |
| 10 | `lemma` | [measurableSet_natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-natgeneratingsequence.md) | 110 | `result-track:adb5d7082cba426c72d851d090a2bce4a5bde8c8183f04005f4201aeee1ab5c3` |
| 11 | `theorem` | [CountablyGenerated.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablygenerated-comap.md) | 115 | `result-track:8e979baf66a4edc68d0c7107ea663ffce80a31d9a72c5233616ed7018c6fb8ab` |
| 12 | `theorem` | [CountablyGenerated.sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablygenerated-sup.md) | 122 | `result-track:fca6b58184c7cae0aebaf8fbacbde98a7572cdab59f534d04ec15f39f2a090c2` |
| 13 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 129 | `declaration-track:95b8534e7ecbd74c91b1a1640d362d8a1b2decd6afa619551de1099205ab1725` |
| 14 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 146 | `declaration-track:ede65e5ab4ea388465f761147a941c30d80412657b807c219409a888a2782e2f` |
| 15 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 149 | `declaration-track:a412e3690461bafca252d2c9b3628b5bae76e376beb3f0c3131bfcc7577f7751` |
| 16 | `def` | [countablyGeneratedAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablygeneratedatom.md) | 165 | `declaration-track:5af1c0465eff8e021e37ba223ca36e28fbf4684bcc29d5a301412667d47eecd1` |
| 17 | `lemma` | [measurableSet_countablyGeneratedAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-countablygeneratedatom.md) | 169 | `result-track:0da9e9cf9dab7c4ddca18461a99aecd7448db39e481d406bddbf08312362d046` |
| 18 | `lemma` | [disjoint_countablyGeneratedAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/disjoint-countablygeneratedatom.md) | 175 | `result-track:451faade3255e0a952cbefbce9e0f9ab1265fdfa25c90ab0a36f1ca38a397f05` |
| 19 | `lemma` | [iUnion_countablyGeneratedAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/iunion-countablygeneratedatom.md) | 188 | `result-track:03bf906bb402bc3cfb370a375d04ad1b194b4a61ec40ff8b8f21614f58ee37c8` |
| 20 | `lemma` | [mem_countablyGeneratedAtom_natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/mem-countablygeneratedatom-natgeneratingsequence.md) | 193 | `result-track:6a6e0b1d35b3f1b7680f735bc961301814eab6f50ad2d99f487d73974b65a338` |
| 21 | `lemma` | [exists_eq_iUnion_countablyGeneratedAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/exists-eq-iunion-countablygeneratedatom.md) | 200 | `result-track:435ad699940744e46dc25ba85e363266d6fbd0b8824bfa5d444d984bdb176534` |
| 22 | `lemma` | [measurableAtom_eq_countablyGeneratedAtom_natGeneratingSequence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableatom-eq-countablygeneratedatom-natgeneratingsequence.md) | 241 | `result-track:ff5a6b1739e2492da0060c043e6c47f903e7ac217eb92c07f062cca98a9bd39c` |
| 23 | `lemma` | [measurableSet_measurableAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-measurableatom.md) | 272 | `result-track:40a88e5882184e2e43fbaa25d91015f889c5233773e9159cf587c424256487a1` |
| 24 | `class` | [SeparatesPoints](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/separatespoints.md) | 282 | `declaration-track:a5704e165d506370f8c34e6e9d318a22d2fa8147784f049471cbea1556098c5e` |
| 25 | `theorem` | [separatesPoints_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/separatespoints-def.md) | 285 | `result-track:4a96fde2a84d04e03738b220ff30bb42270cb2594cb38608a9fe859f791f40c1` |
| 26 | `theorem` | [exists_measurableSet_of_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/exists-measurableset-of-ne.md) | 288 | `result-track:9c122039f61a4c65d64da0076cff683f17d4e903311c94114802be3ddbdb7612` |
| 27 | `theorem` | [separatesPoints_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/separatespoints-iff.md) | 293 | `result-track:05309a07d1975cdac57d63afa1ec6a99283d29552c7f966874949488a5b76a61` |
| 28 | `theorem` | [separating_of_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/separating-of-generatefrom.md) | 301 | `result-track:21994caf701cc990df02adaf1542ca7ca637277b5ef92762bd6abbfcdaa4c8a2` |
| 29 | `theorem` | [SeparatesPoints.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/separatespoints-mono.md) | 309 | `result-track:e21781b417771b6d6ad196a68ffbae143b75f0f39020312135f9ddff4c002b3e` |
| 30 | `theorem` | [Countably Generated Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/eq-const-of-measurable-bot.md) | 313 | `result-track:10e3037449cc86c588a643f8d8b8e44a976d7c98e08505998c0424b087a0c072` |
| 31 | `class` | [CountablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablyseparated.md) | 330 | `declaration-track:0e970b935a31ec5cfaf25b61ddd73388f11549fd848737ee3390849e20100599` |
| 32 | `instance` | [countablySeparated_of_hasCountableSeparatingOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablyseparated-of-hascountableseparatingon.md) | 333 | `declaration-track:dbe8ece3a3424ad913746627472eeb71a9a7341133c21755b825a53def8ecf7a` |
| 33 | `instance` | [hasCountableSeparatingOn_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/hascountableseparatingon-of-countablyseparated.md) | 336 | `declaration-track:06312e31447f488b3b6ca86aaf9bb418f1530f36889272c3ea8f3b426078e959` |
| 34 | `theorem` | [countablySeparated_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablyseparated-def.md) | 340 | `result-track:3ea81b3070341c6a220ee7fd6da5b54f5aecb0468a8d5e6c929b3d24ef7d2418` |
| 35 | `theorem` | [CountablySeparated.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablyseparated-mono.md) | 344 | `result-track:a81a4053012a1e0db36499d6d3954de56aaf62ca659b9355196ec34c98ae47c7` |
| 36 | `theorem` | [CountablySeparated.subtype_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablyseparated-subtype-iff.md) | 350 | `result-track:9245086be3d2004063ac944dd7c981218aebca22c4bb36bcdc064ca9ee6b2cea` |
| 37 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 355 | `declaration-track:911df49c0181073e724b1c72c7642762298353fa5ff4c56bf11a096e4b7936ec` |
| 38 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 359 | `declaration-track:9f130eb5f9c9c40730101cecabfa037b6626e25eb25a889b2dded2dbfbdcea72` |
| 39 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 364 | `declaration-track:e9539b7bdf6ca77334a2d4814a39b0579186c58bda8422026ce718887c91ab64` |
| 40 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 371 | `declaration-track:fed8a9d96745f210490fb8b21b6b453d0ffc0969c5544a9dd0943d8a6c45b2a3` |
| 41 | `instance` | [hasCountableSeparatingOn_of_countablySeparated_subtype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/hascountableseparatingon-of-countablyseparated-subtype.md) | 382 | `declaration-track:1d395d6c4df97150abfa63b2933072e8876c97715613d78c8b97d600609105b7` |
| 42 | `instance` | [countablySeparated_subtype_of_hasCountableSeparatingOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablyseparated-subtype-of-hascountableseparatingon.md) | 386 | `declaration-track:07014252a037e7dccd3d6a168041eb9c0b75d3e8894a3bf777e0f628b747c15b` |
| 43 | `instance` | [countablySeparated_of_separatesPoints](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablyseparated-of-separatespoints.md) | 390 | `declaration-track:965b433874b00a7a841949da8f64a07668fdd0f341dfab0ae335bdb2b1bf6ceb` |
| 44 | `theorem` | [exists_countablyGenerated_le_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/exists-countablygenerated-le-of-countablyseparated.md) | 402 | `result-track:343e89e1ce30d8eb50f60c7dd9a44e0ea22427d175d3c99c27295a8c762359de` |
| 45 | `def` | [mapNatBool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/mapnatbool.md) | 417 | `declaration-track:975915d492e1d27f2970ac5774657da47e3f79fe0844e55561ee3f6a46bdb822` |
| 46 | `theorem` | [measurable_mapNatBool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurable-mapnatbool.md) | 420 | `result-track:e86cef9b7a34b81f1d634522e60acf2dcec0d0b2ad0a9deffa248c7fe57058e8` |
| 47 | `theorem` | [injective_mapNatBool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/injective-mapnatbool.md) | 428 | `result-track:4c3961ce7eecc6ec146af933a245799dff4dfe0cdd8b9a4db6a08d98b795dcae` |
| 48 | `theorem` | [measurableEquiv_nat_bool_of_countablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableequiv-nat-bool-of-countablygenerated.md) | 441 | `result-track:7df0f3df626aab8de2bb7ebe6101d14090a1e6a0044e56b8720f71386474d839` |
| 49 | `theorem` | [measurable_injection_nat_bool_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurable-injection-nat-bool-of-countablyseparated.md) | 458 | `result-track:6ab67326188c48b6f091ed5ac231bf298ccae7dd67cd923c5c0f61863577fbb5` |
| 50 | `theorem` | [measurableSingletonClass_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurablesingletonclass-of-countablyseparated.md) | 467 | `result-track:ba38ca688c3d2e44cee5efa17fe0e5c69a96e705f617123325218d6e61079d26` |
| 51 | `lemma` | [measurableSet_succ_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-succ-mempartition.md) | 479 | `result-track:e8b83990b6cd1733ca4b85114af21192f109f7733b2288febd395b7c5c94b42f` |
| 52 | `lemma` | [generateFrom_memPartition_le_succ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-mempartition-le-succ.md) | 488 | `result-track:63428df7b3cf439451994467c7add6466ef1f96535d0a3f8ff92d0f1fcdc04a5` |
| 53 | `lemma` | [measurableSet_generateFrom_memPartition_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-generatefrom-mempartition-iff.md) | 492 | `result-track:996d44836cdf4476aab6d8c650cfb626f08427881eb6f72440a33cd784831eec` |
| 54 | `lemma` | [measurableSet_generateFrom_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-generatefrom-mempartition.md) | 528 | `result-track:30709a165376b90c0de4a51e8fac3172f6a22759d01c3c8ad98d7ba3fd9dea8e` |
| 55 | `lemma` | [generateFrom_iUnion_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-iunion-mempartition.md) | 538 | `result-track:c348c0f4dee6105f008b1fa82d31a544eec4e8a4461267ea95177ec76de5bef4` |
| 56 | `lemma` | [generateFrom_memPartition_le_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-mempartition-le-range.md) | 558 | `result-track:eaf590956b724fa5d92f477aeca051a19a41b5d150d76e3244f12c4623c966ee` |
| 57 | `lemma` | [generateFrom_iUnion_memPartition_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-iunion-mempartition-le.md) | 563 | `result-track:b163c55787c19635331e4692002d70bce6e2993f67533aef3e2ca57f68bf1bdf` |
| 58 | `lemma` | [generateFrom_memPartition_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-mempartition-le.md) | 570 | `result-track:b6336b9de6d8c76775695c104a07095ce208cfaf3ad292b93a821954271fd803` |
| 59 | `lemma` | [measurableSet_memPartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-mempartition.md) | 575 | `result-track:6256d3787049db2eb90ade24f84a09b749c1c01357662a6126ce1755757ddd6f` |
| 60 | `lemma` | [measurableSet_memPartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-mempartitionset.md) | 580 | `result-track:acc3fb96e5edcba75bd365ff0c943823b4d05329805ee87ff84cd7f71a995cbc` |
| 61 | `def` | [countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablepartition.md) | 594 | `declaration-track:cb56d20acbfef6a40ff7f976b49362d716f9ab1ed223714c8f3f99d5fb29b641` |
| 62 | `lemma` | [measurableSet_enumerateCountable_countableGeneratingSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-enumeratecountable-countablegeneratingset.md) | 598 | `result-track:e6334a0ddf053aa73d04f80dc6b59e2ea3015fc5266d0ffaf463145773e3205b` |
| 63 | `lemma` | [finite_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/finite-countablepartition.md) | 604 | `result-track:61aca750a1d33c2f3dd3fb8530d65171c5505334bd2b9021552b75200eca8802` |
| 64 | `instance` | [instFinite_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instfinite-countablepartition.md) | 608 | `declaration-track:2b3248ddde8b93e1682572fa6dcaebf406c082cc23a53f8da6a0d04b03762e94` |
| 65 | `lemma` | [disjoint_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/disjoint-countablepartition.md) | 611 | `result-track:e0b70a35eeff28758180f598b1738ca850c76a440a9cc7f69608fc524c462be4` |
| 66 | `lemma` | [sUnion_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/sunion-countablepartition.md) | 616 | `result-track:264e1b6f643e565add56fd34a845802a12949c23f13284d497ba45f5ab6d012a` |
| 67 | `lemma` | [measurableSet_generateFrom_countablePartition_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-generatefrom-countablepartition-iff.md) | 620 | `result-track:ce179d6c89b466d6c782379ee792593a76e39c7d574512e38eb14f996311251e` |
| 68 | `lemma` | [measurableSet_succ_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-succ-countablepartition.md) | 625 | `result-track:45854bcc9840b421300bfe3527fa7304edfae65ac8920a06ded3f0710dd3672b` |
| 69 | `lemma` | [generateFrom_countablePartition_le_succ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-countablepartition-le-succ.md) | 629 | `result-track:59bb367a1f6c6c21e3afece5bc1e09a8ec435fb97789b54903510c23fdb5e01c` |
| 70 | `lemma` | [generateFrom_iUnion_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-iunion-countablepartition.md) | 634 | `result-track:a044239a9afe2a9bbb77f583ba537e47d5d04e2f6fcf12686bdb8dd4e179a27f` |
| 71 | `lemma` | [generateFrom_countablePartition_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/generatefrom-countablepartition-le.md) | 641 | `result-track:2195a3d0f5e482e25d5684fb620f82f4dbd73e5bae4ea970a34a9b35315ccd70` |
| 72 | `lemma` | [measurableSet_countablePartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-countablepartition.md) | 646 | `result-track:40c69e6aac7f6da1c81fb8ec1f6a917cfc20f2ab6a219cb0b880e509397cfc9f` |
| 73 | `def` | [countablePartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablepartitionset.md) | 653 | `declaration-track:c72341f8934174fdcd8229e6f9c5d7e7b94d8e1bc93c385f722e3facf788c189` |
| 74 | `lemma` | [countablePartitionSet_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablepartitionset-mem.md) | 656 | `result-track:92cf979154317bf0b6c34b0974990c4630aac272a5ccd68cca831e9151964be9` |
| 75 | `lemma` | [mem_countablePartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/mem-countablepartitionset.md) | 660 | `result-track:7b8ab55f1b7ee1b8bfeaf71d1232cd41389b14c25102238bbdc86ab50c258999` |
| 76 | `lemma` | [countablePartitionSet_eq_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablepartitionset-eq-iff.md) | 663 | `result-track:eafa2cf984265588217dc456201b8cad79c4482fff22eb23da5ec9417816f98d` |
| 77 | `lemma` | [countablePartitionSet_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countablepartitionset-of-mem.md) | 667 | `result-track:c1327defe42e18bb52118526cae808d7aa6bcb4ce42979fe48b125e04746025e` |
| 78 | `lemma` | [measurableSet_countablePartitionSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/measurableset-countablepartitionset.md) | 673 | `result-track:0a83831d73090a372665f30cf3c13b889c3233a182c436a13e0bc00d39e11ff2` |
| 79 | `class` | [CountableOrCountablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countableorcountablygenerated.md) | 683 | `declaration-track:282488205ad28d6072d4cab12846f31d0a497cebfc15096c18df77957ab32985` |
| 80 | `instance` | [instCountableOrCountablyGeneratedOfCountable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instcountableorcountablygeneratedofcountable.md) | 687 | `declaration-track:a4a1e7a88fcd963906c1c3d6bffc38dc5affa26b113e9b9cf4c4d2f8fe300274` |
| 81 | `instance` | [instCountableOrCountablyGeneratedOfCountablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instcountableorcountablygeneratedofcountablygenerated.md) | 690 | `declaration-track:92ddef3c3d9b74e930b592e397c1797ad8429f42c6696bb1b8b8b3ba288d27d8` |
| 82 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/instance.md) | 694 | `declaration-track:42c7e8fc44cd5d627068de84e8c3366e0a5205ed387bbaabf23d23739159d503` |
| 83 | `lemma` | [countableOrCountablyGenerated_left_of_prod_left_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countableorcountablygenerated-left-of-prod-left-of-nonempty.md) | 698 | `result-track:1c5cabc3d424dad655e6633f2366958c795fe85c940e355cf4194770638d8ff3` |
| 84 | `lemma` | [countableOrCountablyGenerated_right_of_prod_left_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countableorcountablygenerated-right-of-prod-left-of-nonempty.md) | 706 | `result-track:390ac41d85830908f1e88e9397620980ee7ccb7eafe47fda4cbdb78ddaff7069` |
| 85 | `lemma` | [countableOrCountablyGenerated_prod_left_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CountablyGeneratedNamespacedPublic.lean/declarations/countableorcountablygenerated-prod-left-swap.md) | 714 | `result-track:953e615b40f35217c531d27e9b6034e7ad4641d148a4ce585b47b56e5d35b1ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=095a65666a3701bddc29b8e95298b82435afb7089d682f31325125bf714bf976 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
