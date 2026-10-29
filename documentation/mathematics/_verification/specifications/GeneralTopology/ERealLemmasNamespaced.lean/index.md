# Verification target: EReal Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c00484f3925be25ea323aa0909f4bbacfa75b383",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ERealLemmasNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ERealLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c00484f3925be25ea323aa0909f4bbacfa75b383`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEmbedding_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/isembedding-coe.md) | 45 | `result-track:ea6293dbf74a54fafd111780217f112d8e3bd1377d4f69f2bc68f82af90aaa40` |
| 2 | `theorem` | [isOpenEmbedding_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/isopenembedding-coe.md) | 51 | `result-track:9b166d157062d714718738a1463bd3e2e0f3b098b9180b597c1a8bd2badac507` |
| 3 | `theorem` | [tendsto_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/tendsto-coe.md) | 55 | `result-track:dbf1754ff26d1bb06ced4292b340d5736648abd8698b2d5379f786833edafa24` |
| 4 | `theorem` | [EReal Lemmas Namespaced](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuous-coe-real-ereal.md) | 59 | `result-track:da9833c1ac31fdf21ee862b056f6bb631294a98b37ff062ea2adacff73787f5c` |
| 5 | `theorem` | [continuous_coe_iff](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuous-coe-iff.md) | 62 | `result-track:475fe92a4b76acf80d5ce464e10898e3be400ab062259a579e08f01507552e09` |
| 6 | `theorem` | [nhds_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-coe.md) | 65 | `result-track:13137912b76bc21d3c5ade1504d2fd8fe0f08ef633394ef1d9e6e1c69b8a9cbb` |
| 7 | `theorem` | [nhds_coe_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-coe-coe.md) | 68 | `result-track:07bce563cd4a3855d21f413cafa0cb57c9fa9f36fb7526c3731fbd557c8f6553` |
| 8 | `theorem` | [tendsto_toReal](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/tendsto-toreal.md) | 72 | `result-track:38e46f7a225499c86933a44f04c1540c34e4508a27eaab30aced49374a413dd9` |
| 9 | `theorem` | [continuousOn_toReal](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuouson-toreal.md) | 78 | `result-track:e10d7329793952bf82b4cf253c8144f1bfdb171075b98a53f07cfa17989ca545` |
| 10 | `def` | [neBotTopHomeomorphReal](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nebottophomeomorphreal.md) | 82 | `declaration-track:1b72b25eb9fdfc5bcf1185d69abb429e9a02b7bb0cfd18b2c9450b56f7c0a910` |
| 11 | `theorem` | [isEmbedding_coe_ennreal](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/isembedding-coe-ennreal.md) | 89 | `result-track:635c3bd395730fe8a10908c49abc8b886f6c6be807dcd855864b2f188747ec00` |
| 12 | `theorem` | [isClosedEmbedding_coe_ennreal](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/isclosedembedding-coe-ennreal.md) | 96 | `result-track:81f12d58c2c28a403321f688eb196becef8f82b93a3e18224251e3cb3e6c8f02` |
| 13 | `theorem` | [tendsto_coe_ennreal](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/tendsto-coe-ennreal.md) | 100 | `result-track:d7308187abc831f46be287dad2afdded1e5fc6eba1d45180b476ef517dee1a0c` |
| 14 | `theorem` | [EReal Lemmas Namespaced](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuous-coe-ennreal-ereal.md) | 104 | `result-track:f2e216e3bf1d9ca41a2d3947e9a591d14bf282493b3e5ccff69c045e3b98578c` |
| 15 | `theorem` | [continuous_coe_ennreal_iff](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuous-coe-ennreal-iff.md) | 107 | `result-track:1e1b529ff97837f16ea3b5593b9579526edadeb9781c649e8342148beccc3d56` |
| 16 | `theorem` | [nhds_top](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-top.md) | 113 | `result-track:6273cd925efb392353a9901d78db8ccd3f69d6bc912fd043d8604ea24dac9360` |
| 17 | `theorem` | [nhds_top_basis](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-top-basis.md) | 116 | `result-track:a8c4ed687fea46a42732eaee9f36090541895651e71a574a1c68a0c7d4daf9c1` |
| 18 | `theorem` | [nhds_top'](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-top-source-edition-2.md) | 122 | `result-track:e4ea21fe471a6c05212fef59475c8b67f3919897995a9852a48095d3d1ae30e6` |
| 19 | `theorem` | [mem_nhds_top_iff](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/mem-nhds-top-iff.md) | 124 | `result-track:b8ffe2b5e45d4703cdc2e1428e343f739086f2989a73219809a62a931b471c68` |
| 20 | `theorem` | [tendsto_nhds_top_iff_real](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/tendsto-nhds-top-iff-real.md) | 127 | `result-track:758dcc686b5238321d040b9fc822c772126c2e87818af7ed56d8a543d8d27516` |
| 21 | `theorem` | [nhds_bot](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-bot-source-edition-2.md) | 131 | `result-track:a8d6dcd7c0a8644bae55aca9f773dd64bf3fb393256671cbef84b3355693990c` |
| 22 | `theorem` | [nhds_bot_basis](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-bot-basis.md) | 134 | `result-track:b680c42fcd769e4a4ed711f72643fb2c8f1eaed47d72ca80a5c6e6178dc7aad7` |
| 23 | `theorem` | [nhds_bot'](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhds-bot.md) | 140 | `result-track:3b14606b0ef998356eb0c054e2ece14aa1e2152bc33af69de8abe693b8a6bddb` |
| 24 | `theorem` | [mem_nhds_bot_iff](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/mem-nhds-bot-iff.md) | 143 | `result-track:544ab8a7d0e98ae911f7c8a60fd4a9284fc2e8471ed949a22b19034fa750b4c0` |
| 25 | `theorem` | [tendsto_nhds_bot_iff_real](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/tendsto-nhds-bot-iff-real.md) | 146 | `result-track:3d3d17646198bd67cd604348d81e0879d021c3bf6ccfc4946b4cc89e603fa3ce` |
| 26 | `lemma` | [nhdsWithin_top](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhdswithin-top.md) | 150 | `result-track:516a626061b7cb30bcd1255320a587b0b667452b967dadcbcb9f3902e15c206b` |
| 27 | `lemma` | [nhdsWithin_bot](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/nhdswithin-bot.md) | 163 | `result-track:54a34a71203ccfa5bbafdde54825a614970b17d2c20e8dae8e9e66046b28588b` |
| 28 | `lemma` | [tendsto_toReal_atTop](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/tendsto-toreal-attop.md) | 177 | `result-track:07c60828b32c74531f1fdcd4bdf1db09995aa80df376cfcd0d77e50800397e12` |
| 29 | `lemma` | [tendsto_toReal_atBot](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/tendsto-toreal-atbot.md) | 181 | `result-track:8e05cd0854a5461157b99af1556d2473df07f2234a8a7b023338b46843f5e9c5` |
| 30 | `lemma` | [continuous_toENNReal](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuous-toennreal.md) | 187 | `result-track:ad50e27406b24231a17c0d44a7bb4b08acb8263b1a958f581c2d2e456409a265` |
| 31 | `lemma` | [EReal Lemmas Namespaced](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/ereal-toennreal-source-line-206-occurrence-2.md) | 206 | `result-track:84efd2340d1be70960cff787ce3a69d4cfcc9bfb83fdb3bd99beaa94f969fde7` |
| 32 | `lemma` | [EReal Lemmas Namespaced](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/ereal-toennreal.md) | 215 | `result-track:36df6d7dcbf60ee9881e0e6d9c57924b2500571b86381c917cd0802a2d04b500` |
| 33 | `lemma` | [EReal Lemmas Namespaced](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/ereal-toennreal-source-line-221-occurrence-2.md) | 221 | `result-track:384a5b75540e0910ea8386b29605de28479e33c105bff07e5b5cd738081c87c0` |
| 34 | `lemma` | [EReal Lemmas Namespaced](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/ereal-toennreal-source-line-227-occurrence-2.md) | 227 | `result-track:ae528a9454066c5e8eeba1c3ebfb52d4a007098bb3d65462ddc0811079b4d89e` |
| 35 | `lemma` | [add_iInf_le_iInf_add](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/add-iinf-le-iinf-add.md) | 236 | `result-track:03e56400868a4d9a9b22307c6f0f5db99823556dc8373fbd0ee787b5c7c45238` |
| 36 | `lemma` | [iSup_add_le_add_iSup](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/isup-add-le-add-isup.md) | 239 | `result-track:c04d0a8bc23eb30d88fe2c16eb75a07c2afc44bb4baaa5943de3553051ba7430` |
| 37 | `lemma` | [liminf_neg](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/liminf-neg.md) | 248 | `result-track:6fe2339903cbd8c1cf6e97f93c3774198ea1f7e5921b60d16bc48cb0fdbd5d00` |
| 38 | `lemma` | [limsup_neg](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/limsup-neg.md) | 251 | `result-track:0acfb7f075c980b80401ac94fc356ae626d277f2e210a58bae1404c7393be10a` |
| 39 | `lemma` | [le_liminf_add](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/le-liminf-add.md) | 254 | `result-track:1a31013ee87ab741081fa8d729222356049ec07fd182a1740220f95c6bf824d1` |
| 40 | `lemma` | [limsup_add_le](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/limsup-add-le.md) | 259 | `result-track:79402a796f2608ddf0ea134d3f1b37cb6faeef095e8e64a448014d6613008c7c` |
| 41 | `lemma` | [le_limsup_add](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/le-limsup-add.md) | 265 | `result-track:81aff1f188337389ceccf4d4d661635df4564c5df7a1a58793c10dcd9742dbe0` |
| 42 | `lemma` | [liminf_add_le](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/liminf-add-le.md) | 270 | `result-track:224853320c2c841aa7b155e380d89686e4cfd2ce5e3a3eddf91dc7d83c76e743` |
| 43 | `lemma` | [limsup_add_bot_of_ne_top](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/limsup-add-bot-of-ne-top.md) | 281 | `result-track:3788d893ddd8123629e87f6ebf3255a416749c28b30e3cdee74aad64689c56b3` |
| 44 | `lemma` | [limsup_add_le_of_le](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/limsup-add-le-of-le.md) | 287 | `result-track:8479ac32aa9c3b30f9819154734df8dc45c2d040a04b83a5fdd8cfaadea29558` |
| 45 | `lemma` | [liminf_add_gt_of_gt](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/liminf-add-gt-of-gt.md) | 293 | `result-track:5cd90d1c1c8b1f487fdfa99b6fa0718d943aa089ecb0e6811775604bc66f8d5d` |
| 46 | `lemma` | [liminf_add_top_of_ne_bot](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/liminf-add-top-of-ne-bot.md) | 297 | `result-track:fab75c1950519b69afa764d45002b704ab64bfe021fe090544872872de4a5062` |
| 47 | `lemma` | [le_limsup_mul](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/le-limsup-mul.md) | 302 | `result-track:28f72efa41d2e4fadef08a12e2e4ac41ce9612675eb82bd076e2160164812164` |
| 48 | `lemma` | [limsup_mul_le](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/limsup-mul-le.md) | 315 | `result-track:5099724b891d9f6a0acfac38e768acd7f101c1eb5de5c071a74da7ed5c29e354` |
| 49 | `lemma` | [le_liminf_mul](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/le-liminf-mul.md) | 333 | `result-track:5894469dbd6fede5f42f58522c1998708911d27fc62a4987cefdae3cfc301992` |
| 50 | `lemma` | [liminf_mul_le](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/liminf-mul-le.md) | 342 | `result-track:c0bc4ef096a6c9d73b2615440115a42636eec7f197388ec64cce9a20513fadf0` |
| 51 | `theorem` | [continuousAt_add_coe_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add-coe-coe.md) | 360 | `result-track:4299d7ea8dbf589a33bba3e4f9ebceca19b2dc822840fa91ebb5301789d6ba10` |
| 52 | `theorem` | [continuousAt_add_top_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add-top-coe.md) | 365 | `result-track:cccbaadb8c4839dc9a557ea4a52a2f21a277f729c106e816d8a545b2e544da49` |
| 53 | `theorem` | [continuousAt_add_coe_top](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add-coe-top.md) | 372 | `result-track:31599a286bef2e34884abeb932fa5989415a0100de61f5b342796643b13faea0` |
| 54 | `theorem` | [continuousAt_add_top_top](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add-top-top.md) | 377 | `result-track:a5e667a6c1e29ed33c2c3196f798a872b505ca1cd19af97ec61d3b4fb8bee2cb` |
| 55 | `theorem` | [continuousAt_add_bot_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add-bot-coe.md) | 383 | `result-track:f73f2122904bba38595f077eb735bc7a469ceb4738759dc89701cef041e1295d` |
| 56 | `theorem` | [continuousAt_add_coe_bot](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add-coe-bot.md) | 390 | `result-track:693e29617f44865e614ad830506d5150646fca54768b8f9aee39cad1087f875b` |
| 57 | `theorem` | [continuousAt_add_bot_bot](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add-bot-bot.md) | 395 | `result-track:4eab8d6a1423d3bc46796b4884f3d7e5b40f2ed65582d306eba1f8fa1780055e` |
| 58 | `theorem` | [continuousAt_add](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-add.md) | 403 | `result-track:ea3b899693924d722c102c3416db7e95a1d59f0da9d3428a61ae5ba52c10d854` |
| 59 | `lemma` | [continuousAt_mul_swap](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-swap.md) | 423 | `result-track:965cb8d41bf64e42373d11ffea708be4b1edbf3036cc1ed90d34187131a87c7a` |
| 60 | `lemma` | [continuousAt_mul_symm1](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-symm1.md) | 429 | `result-track:abc212103b8c0b315c32815b3e639f502be015802163d3a447dc374286488f53` |
| 61 | `lemma` | [continuousAt_mul_symm2](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-symm2.md) | 442 | `result-track:f94bf7d18542099858b6ef5fab6dd77d20c2a3bdc58e74375517049d9a8b5b72` |
| 62 | `lemma` | [continuousAt_mul_symm3](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-symm3.md) | 447 | `result-track:070bddc42ce0e9f920e7d8a9293cc6f2c1bfe2d72a378ecbedf5d33c2e9b5507` |
| 63 | `lemma` | [continuousAt_mul_coe_coe](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-coe-coe.md) | 452 | `result-track:0e7c2acdb45aa94183fdf0259b4d5e56768a2bd0557844a102497834cac9c382` |
| 64 | `lemma` | [continuousAt_mul_top_top](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-top-top.md) | 457 | `result-track:2f8492428de8d539c95666cac5a45eaa08064c498b16e561fe28bdbd2d676642` |
| 65 | `lemma` | [continuousAt_mul_top_pos](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-top-pos.md) | 474 | `result-track:1a0eca5e2025b45639c3ce42274ecdc1ade0ee1c5680210bda3fe8e895a17551` |
| 66 | `lemma` | [continuousAt_mul_top_ne_zero](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul-top-ne-zero.md) | 502 | `result-track:53b7c196ab7702bbb276b588e8cf2d6b822b5d2ff7b9dbc8d65e112b12564bf8` |
| 67 | `theorem` | [continuousAt_mul](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/continuousat-mul.md) | 510 | `result-track:f359b370e90e6a04355e70db0409d649dfaf9a6bb55a0fbc9395fd34efe124d5` |
| 68 | `lemma` | [lowerSemicontinuous_add](../../../../GeneralTopology/ERealLemmasNamespaced.lean/declarations/lowersemicontinuous-add.md) | 529 | `result-track:2f443f29b44c0f63332e8cfddf3a5cb61e1adc677cf736e6ee45c4c7c558e7eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9edeeb94f339ab834deb00bf8174ea13461066cc992c7f60e0af7e6c1fe5d7cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
