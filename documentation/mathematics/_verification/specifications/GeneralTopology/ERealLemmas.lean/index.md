# Verification target: EReal Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a402a99dd47976e23cb9e470534e91059ba0f4cf",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ERealLemmas.lean/index.md) · [Full source](../../../../GeneralTopology/ERealLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a402a99dd47976e23cb9e470534e91059ba0f4cf`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Inv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEmbedding_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/isembedding-coe.md) | 37 | `result-track:f646ed2e5a5f20c3a529d44fea868f23fe6be7c5eabca7540f02f7a2b8848a17` |
| 2 | `theorem` | [isOpenEmbedding_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/isopenembedding-coe.md) | 43 | `result-track:5fb7030711807e44c95acef91839a8b021d08ed4d1603e62efe1d622d001ae15` |
| 3 | `theorem` | [tendsto_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/tendsto-coe.md) | 47 | `result-track:d4e7c76baea3fee18e4d4c40c03ce7d518cb28a02eb36dc2495799c3b3927480` |
| 4 | `theorem` | [_root_.continuous_coe_real_ereal](../../../../GeneralTopology/ERealLemmas.lean/declarations/root-continuous-coe-real-ereal.md) | 51 | `result-track:eb5fda27d4549fc4f639771b67724a83dd1ea10de3096978c68d7d4fa8e28561` |
| 5 | `theorem` | [continuous_coe_iff](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuous-coe-iff.md) | 54 | `result-track:9ce7946222b79f2d089f6176c0cf09c1c26c630e39b01c76b8df821dfee371de` |
| 6 | `theorem` | [nhds_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-coe.md) | 57 | `result-track:87dd7dfe226d662f82ae5eb4e0a57ff2336c8868ae25e3230a7a05921d8b2272` |
| 7 | `theorem` | [nhds_coe_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-coe-coe.md) | 60 | `result-track:50c762b743a15d9cd9c1b55633b56cf70f1ffa3f5d752ca9ee5c08a53269682e` |
| 8 | `theorem` | [tendsto_toReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/tendsto-toreal.md) | 64 | `result-track:300f0aae94d157c253277ef0cf200baa9f12f829f1f78b7e74618462be3eac4f` |
| 9 | `theorem` | [continuousOn_toReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuouson-toreal.md) | 70 | `result-track:94fb1d3b9d3e960b54c21f5ab6943184c2f10b2cab219c18935b358ddb8c3530` |
| 10 | `def` | [neBotTopHomeomorphReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/nebottophomeomorphreal.md) | 74 | `declaration-track:dd5f386d67ec161f73b30feddb532859d1501fed57a2dd98787600aa606ec472` |
| 11 | `theorem` | [isEmbedding_coe_ennreal](../../../../GeneralTopology/ERealLemmas.lean/declarations/isembedding-coe-ennreal.md) | 81 | `result-track:adfeed38dc824e87291fe41cb7dd7a19c26722334d05b432e6c67ceb9fff1579` |
| 12 | `theorem` | [isClosedEmbedding_coe_ennreal](../../../../GeneralTopology/ERealLemmas.lean/declarations/isclosedembedding-coe-ennreal.md) | 88 | `result-track:3ab05085b77b524bee97f153a5a41459c20e1bb2052a127767e98c7c527b793d` |
| 13 | `theorem` | [tendsto_coe_ennreal](../../../../GeneralTopology/ERealLemmas.lean/declarations/tendsto-coe-ennreal.md) | 92 | `result-track:9a51511d2e23d4b9243d477871ebf8a59023bf8609123cc8f727858d5a5e335c` |
| 14 | `theorem` | [_root_.continuous_coe_ennreal_ereal](../../../../GeneralTopology/ERealLemmas.lean/declarations/root-continuous-coe-ennreal-ereal.md) | 96 | `result-track:9a6e10144ae6b6645fad7f9cedf534dbab123512abc019040a97419d05fb41f7` |
| 15 | `theorem` | [continuous_coe_ennreal_iff](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuous-coe-ennreal-iff.md) | 99 | `result-track:6106e610b6a770f23c189a256789b32194bf51f8f77f117a0c7533ea3a0241d9` |
| 16 | `theorem` | [nhds_top](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-top.md) | 105 | `result-track:458bfdc5c5688f506bf09619e7c62c58f981ecc1d6dc0995475769c59a36e152` |
| 17 | `theorem` | [nhds_top_basis](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-top-basis.md) | 108 | `result-track:6525d722d8020ca53b465636c666a2ad109ee183286b48e45631ad3e9324e74c` |
| 18 | `theorem` | [nhds_top'](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-top-source-edition-2.md) | 114 | `result-track:b72d993395b5c1580f9e80057cbb3a75a0bf7d4732c99fe8dfc72120b7bd2930` |
| 19 | `theorem` | [mem_nhds_top_iff](../../../../GeneralTopology/ERealLemmas.lean/declarations/mem-nhds-top-iff.md) | 116 | `result-track:5afc764b472202df9046731492ffc15cc82123ebad59801e2ec3c0b3a73ae4cc` |
| 20 | `theorem` | [tendsto_nhds_top_iff_real](../../../../GeneralTopology/ERealLemmas.lean/declarations/tendsto-nhds-top-iff-real.md) | 119 | `result-track:73f8cf2e0c11a244d3255bd079765ddb428b6c522f0329c1a23a693be4e97c58` |
| 21 | `theorem` | [nhds_bot](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-bot.md) | 123 | `result-track:3de6dd0665f3e5d44adabb7c47c64af594706bd616d4cbe1c020bcce6d500984` |
| 22 | `theorem` | [nhds_bot_basis](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-bot-basis.md) | 126 | `result-track:ca2436469f8b59342d6cef7031b9bc71036cd9abeaf4fa9d40bcc90cad59323b` |
| 23 | `theorem` | [nhds_bot'](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhds-bot-source-edition-2.md) | 132 | `result-track:d08730ba9301c48d70cea00e2c05489290dc88dd6e309adf5d37533e5ec75f4a` |
| 24 | `theorem` | [mem_nhds_bot_iff](../../../../GeneralTopology/ERealLemmas.lean/declarations/mem-nhds-bot-iff.md) | 135 | `result-track:c7ee51ecfa0d33085f21f2f9bc3abdbbe7eb91b6c684da6dd952bdc917b07f3e` |
| 25 | `theorem` | [tendsto_nhds_bot_iff_real](../../../../GeneralTopology/ERealLemmas.lean/declarations/tendsto-nhds-bot-iff-real.md) | 138 | `result-track:9890b4f82fcc8366020fc95b2a78864d99ecf2a15fa21f0da7c4edb03b02ea88` |
| 26 | `lemma` | [nhdsWithin_top](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhdswithin-top.md) | 142 | `result-track:24affcdddbda1005c36cb3cf29cb149cc05a7205f948cf68ede54120865ded1a` |
| 27 | `lemma` | [nhdsWithin_bot](../../../../GeneralTopology/ERealLemmas.lean/declarations/nhdswithin-bot.md) | 155 | `result-track:7ca35fe0b7704635c609b75d1d840bea266781edbd6c0f1c93c4e123cfc357b9` |
| 28 | `lemma` | [tendsto_toReal_atTop](../../../../GeneralTopology/ERealLemmas.lean/declarations/tendsto-toreal-attop.md) | 169 | `result-track:f3a3f4d83f2e427627e8673e654935e30f640a5f14d61448c6ec5476a6338116` |
| 29 | `lemma` | [tendsto_toReal_atBot](../../../../GeneralTopology/ERealLemmas.lean/declarations/tendsto-toreal-atbot.md) | 173 | `result-track:8eb5e90aee037106c0308a52440fb869cf081ca563c1be7659c233313f2ec182` |
| 30 | `lemma` | [continuous_toENNReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuous-toennreal.md) | 179 | `result-track:f5ebbf6a30e0cbee462bf3de46c3ddd7641cbb33c243a84b6e85fae59b6b18b1` |
| 31 | `lemma` | [_root_.Continuous.ereal_toENNReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/root-continuous-ereal-toennreal.md) | 198 | `result-track:7e64662d72a2511a1a4632b978b18186c39f48a9876f154f0fc35f8e19fa50d8` |
| 32 | `lemma` | [_root_.ContinuousOn.ereal_toENNReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/root-continuouson-ereal-toennreal.md) | 207 | `result-track:444887770446f817afebdf7e4606a8ad59c2df3da7d8c288a8addd29d422c3f0` |
| 33 | `lemma` | [_root_.ContinuousWithinAt.ereal_toENNReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/root-continuouswithinat-ereal-toennreal.md) | 213 | `result-track:8371e64849e38897eed9aa94c9cef09bac7f1db115711a9d9d5ba0cbdba9f676` |
| 34 | `lemma` | [_root_.ContinuousAt.ereal_toENNReal](../../../../GeneralTopology/ERealLemmas.lean/declarations/root-continuousat-ereal-toennreal.md) | 219 | `result-track:152831b3aeb17c73c0f09709b75b1a1d2ba6be46c075a831ccdabaedee236ce0` |
| 35 | `lemma` | [add_iInf_le_iInf_add](../../../../GeneralTopology/ERealLemmas.lean/declarations/add-iinf-le-iinf-add.md) | 228 | `result-track:540f10be03a248cd7c7f893397e3938fe1f7ee69178617dbf3216e3a9d380fc3` |
| 36 | `lemma` | [iSup_add_le_add_iSup](../../../../GeneralTopology/ERealLemmas.lean/declarations/isup-add-le-add-isup.md) | 231 | `result-track:932f4b5ddd2aff70e45543f850e7fd247938f4143d51824bbf86d4810454605a` |
| 37 | `lemma` | [liminf_neg](../../../../GeneralTopology/ERealLemmas.lean/declarations/liminf-neg.md) | 240 | `result-track:91f2a18ec0e2c537f90fe068ea9a1fc379bdbe6f83b409b4bc6449f869a10c83` |
| 38 | `lemma` | [limsup_neg](../../../../GeneralTopology/ERealLemmas.lean/declarations/limsup-neg.md) | 243 | `result-track:923027d5bff9ea7919c0d8a1326a21a6e3851348e1c7880406ea1661a41211c3` |
| 39 | `lemma` | [le_liminf_add](../../../../GeneralTopology/ERealLemmas.lean/declarations/le-liminf-add.md) | 246 | `result-track:4859c5bef5a1fa6998a65b581eb5c0803a8f8f5092381a2b17c5916030ece433` |
| 40 | `lemma` | [limsup_add_le](../../../../GeneralTopology/ERealLemmas.lean/declarations/limsup-add-le.md) | 251 | `result-track:f7286dfc37400a26d3a83073e0f6dc283b7619782f941bb819be30ba1018deb5` |
| 41 | `lemma` | [le_limsup_add](../../../../GeneralTopology/ERealLemmas.lean/declarations/le-limsup-add.md) | 257 | `result-track:b65e5cf7043c023893ea27992fd13c27f675698e7b7d341989703b97d812f619` |
| 42 | `lemma` | [liminf_add_le](../../../../GeneralTopology/ERealLemmas.lean/declarations/liminf-add-le.md) | 262 | `result-track:1512ae3ccde68809945816057f92e18f78d8e7c791a43888edf27702f256b66b` |
| 43 | `lemma` | [limsup_add_bot_of_ne_top](../../../../GeneralTopology/ERealLemmas.lean/declarations/limsup-add-bot-of-ne-top.md) | 273 | `result-track:db9ec545d43adae2804a884f0806ff39897afde70a63af34eb77ad03489edd11` |
| 44 | `lemma` | [limsup_add_le_of_le](../../../../GeneralTopology/ERealLemmas.lean/declarations/limsup-add-le-of-le.md) | 279 | `result-track:90206d7def1823338d7ad85d34a18b057f45648299d3d98e0cd6e68c2cc99cef` |
| 45 | `lemma` | [liminf_add_gt_of_gt](../../../../GeneralTopology/ERealLemmas.lean/declarations/liminf-add-gt-of-gt.md) | 285 | `result-track:7a1e2f0eec21783a6416ab46dd87733ca9f61ebba1950bef712a839f24794284` |
| 46 | `lemma` | [liminf_add_top_of_ne_bot](../../../../GeneralTopology/ERealLemmas.lean/declarations/liminf-add-top-of-ne-bot.md) | 289 | `result-track:4ef37f03e0e012a1456931905c9bfa16bc4c541080284c2cee48d3f52dafe298` |
| 47 | `lemma` | [le_limsup_mul](../../../../GeneralTopology/ERealLemmas.lean/declarations/le-limsup-mul.md) | 294 | `result-track:2599e45d431836aa6069d3ae8312057eec0bef6c277ac66cd44628e9eb1a1598` |
| 48 | `lemma` | [limsup_mul_le](../../../../GeneralTopology/ERealLemmas.lean/declarations/limsup-mul-le.md) | 307 | `result-track:9f5a53653643d6f916d73dc1c93c4ab32cd4ce737acea580249e59bcedfc4998` |
| 49 | `lemma` | [le_liminf_mul](../../../../GeneralTopology/ERealLemmas.lean/declarations/le-liminf-mul.md) | 325 | `result-track:e9c100d0f1d0d38b03c0684357a1fcfb9f851e42b4a2ae1c4974527385e907c7` |
| 50 | `lemma` | [liminf_mul_le](../../../../GeneralTopology/ERealLemmas.lean/declarations/liminf-mul-le.md) | 334 | `result-track:1adad527a4a2030ab28b20a80441bcf0364ed0a72bc410f307d9b3b87a5cdb0c` |
| 51 | `theorem` | [continuousAt_add_coe_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add-coe-coe.md) | 352 | `result-track:ac48afd1bf724d74bfd6fc0d2422bacd6ff403a9aa8778ef6777c8b2816d7956` |
| 52 | `theorem` | [continuousAt_add_top_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add-top-coe.md) | 357 | `result-track:3a41ff97db4301c9940c46886dc63d242a643799266fb31c447c7930c8d2342f` |
| 53 | `theorem` | [continuousAt_add_coe_top](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add-coe-top.md) | 364 | `result-track:92f6873e0789dca7f81f58c1a2bf2dc5c6eac9a7c3d9e0188b79a5dae283362a` |
| 54 | `theorem` | [continuousAt_add_top_top](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add-top-top.md) | 369 | `result-track:e52429f8ec33134f735693d6da16570a892c55311c660bac31ae232c894fadf8` |
| 55 | `theorem` | [continuousAt_add_bot_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add-bot-coe.md) | 375 | `result-track:8bfb1584b77c7b9040e0e1d2e433d0ea7e41a3fc813538df92980efa20a1ce04` |
| 56 | `theorem` | [continuousAt_add_coe_bot](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add-coe-bot.md) | 382 | `result-track:d06cf14074289f182a503e7470cb9e3ae59a397b0c77ead6bcb5d6399b92b106` |
| 57 | `theorem` | [continuousAt_add_bot_bot](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add-bot-bot.md) | 387 | `result-track:1f2ab7954df3ca3e4159afbb14cef39a1d08e57e861837a2d1a86ea93190a18b` |
| 58 | `theorem` | [continuousAt_add](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-add.md) | 395 | `result-track:7d8d8c99c9577eb8a71dfed5f4c5903ac3c798013c10256aebeba89d19ee1858` |
| 59 | `lemma` | [continuousAt_mul_swap](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-swap.md) | 415 | `result-track:f236899a3fb4b50a262eca343c393716f6abb6eabc2559d42e7591b2ecd2b001` |
| 60 | `lemma` | [continuousAt_mul_symm1](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-symm1.md) | 421 | `result-track:aaf2258fddd1aa3c401910fb9dababe3c2e65d8e2c2debb2f3b6790559f06727` |
| 61 | `lemma` | [continuousAt_mul_symm2](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-symm2.md) | 434 | `result-track:32c23b0984489ce886ce2c2abec30fd03e9b1ad0f90eb5186e5ef4ad2f35d1a6` |
| 62 | `lemma` | [continuousAt_mul_symm3](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-symm3.md) | 439 | `result-track:2224bc3afff17f79aded4df957876cd423e647bffdbf24808de47b8cd4a100d2` |
| 63 | `lemma` | [continuousAt_mul_coe_coe](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-coe-coe.md) | 444 | `result-track:691b24f5011762328a8a62e235691cd0247aa2fe52954fda272c285dc6ddd37b` |
| 64 | `lemma` | [continuousAt_mul_top_top](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-top-top.md) | 449 | `result-track:262fa9bfca554111730ebb87b4882ba77607c6aa6aa084f18a7a8fb90079ebc2` |
| 65 | `lemma` | [continuousAt_mul_top_pos](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-top-pos.md) | 466 | `result-track:bf46cc9b90c362cc13bfd02b26dd600c0271b17019799639e92d607f211430bf` |
| 66 | `lemma` | [continuousAt_mul_top_ne_zero](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul-top-ne-zero.md) | 494 | `result-track:c9d9b2f474677ee886a2c49408944da07694b85a24e4495fe6679a56ab1d3e7c` |
| 67 | `theorem` | [continuousAt_mul](../../../../GeneralTopology/ERealLemmas.lean/declarations/continuousat-mul.md) | 502 | `result-track:380672052f3cb2d5f29e4d69b5bf61ad7223683ed6240024acd9ae4b7e1a12b3` |
| 68 | `lemma` | [lowerSemicontinuous_add](../../../../GeneralTopology/ERealLemmas.lean/declarations/lowersemicontinuous-add.md) | 521 | `result-track:6116a47bbde97471dc7354409362656e5b4e06c44389611c7d7a5ffe288a896d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39967e85e56dde927585eddbfadd38c7a70c47c86ea5b337279a728d5f802a3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
