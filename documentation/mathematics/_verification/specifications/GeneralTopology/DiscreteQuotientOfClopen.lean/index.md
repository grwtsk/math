# Verification target: Discrete Quotient Of Clopen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7e75a4555647a415020a6d4dd96ddcebd429269",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/index.md) · [Full source](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7e75a4555647a415020a6d4dd96ddcebd429269`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SubsetProperties` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiscreteQuotient](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/discretequotient.md) | 72 | `declaration-track:d7a009fb5432465e5ddf57cc4a1122baa6f0c34b1bb1b54df13d4166fc583eb1` |
| 2 | `lemma` | [toSetoid_injective](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/tosetoid-injective.md) | 82 | `result-track:fc8ad925332b18d2924c1c6cc0a452566503c12c3ebdbdfa10e4b156c6206180` |
| 3 | `def` | [ofClopen](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofclopen.md) | 86 | `declaration-track:ce5668404b85127f1e6071954c6792c32c0c2dea262145ca687d07445654d685` |
| 4 | `theorem` | [refl](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/refl.md) | 91 | `result-track:2f94ace7b54451e27b4ac67d91d08fb9d0ad487c8abdc3a9e7c082d56e87c332` |
| 5 | `theorem` | [symm](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/symm.md) | 94 | `result-track:6f9a289136390ad65e0d140979442b1ff83e5f8892e2461ea7c83dd0ef3d97b1` |
| 6 | `theorem` | [trans](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/trans.md) | 97 | `result-track:d598b1b705decb3822c76480675f5cb38ea4db2340641e2cd7ef39e34ffb84bc` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-8.md) | 103 | `declaration-track:ad2ce932f2ecbe1151a3435745336b62e52cec5e020177a6f715ddf973cb338e` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-7.md) | 106 | `declaration-track:abae8df12d9e69c9bc3544cdd0a79be0267c6d159e8a80ce5891408198e5dc20` |
| 9 | `def` | [proj](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj.md) | 110 | `declaration-track:8df6d4525035ec1cffd54a4e944d258f5666306c6cd620f6412f0a39418fa60e` |
| 10 | `theorem` | [fiber_eq](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/fiber-eq.md) | 113 | `result-track:bb47ac6c6202c6b9c4cfc4b5101a6d05f76d0dbe8a07e5d904a77fe547c44bf5` |
| 11 | `theorem` | [proj_surjective](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-surjective.md) | 117 | `result-track:48f90f2e5b23ce8f7e4009172ae4fe0390b34084215213a544c5d72546ae0ba3` |
| 12 | `theorem` | [proj_quotientMap](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-quotientmap.md) | 121 | `result-track:a3cd8cb073d9b549b0366192f6b22132a51f0e8f4066df56638c71da186f993f` |
| 13 | `theorem` | [proj_continuous](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-continuous.md) | 125 | `result-track:5dbbb2dcd04dab4ec6ae0a4250f800d6e7d6bbc0a2df653c5ce573e7baea8f04` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-9.md) | 129 | `declaration-track:e2a1e417f525fac48b5cc160498c4c9ff6a0226571b1882bb1d5d059144b9d76` |
| 15 | `theorem` | [proj_isLocallyConstant](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-islocallyconstant.md) | 134 | `result-track:bae3af384b4bb1e067b58e9463eb16efdaf56b5c9684467404f5f7142f44c755` |
| 16 | `theorem` | [isClopen_preimage](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/isclopen-preimage.md) | 138 | `result-track:074abfe4a1259866fc35fb487c81b5fe9e23a524b7c65f0e2f334a21ea7e4837` |
| 17 | `theorem` | [isOpen_preimage](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/isopen-preimage.md) | 142 | `result-track:b88945736fcd41332a14e52ac9b031bb7082d2db323834658bda34d6662504c0` |
| 18 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/isclosed-preimage.md) | 146 | `result-track:892eb2c3c68ec493368e4dbd5a087e5a26126de7190807f74ef870cdd603cd09` |
| 19 | `theorem` | [isClopen_setOf_rel](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/isclopen-setof-rel.md) | 150 | `result-track:5f19e13c2e0a6ac7da4a668fa3d072a554707f3c85ed389d98031e5e77960bdf` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-4.md) | 155 | `declaration-track:76245bc35b6f555bc0c81528083d1c340a7081f0c30117ba404f54a07038ceb3` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-11.md) | 158 | `declaration-track:ecaf9b22adb73f6136152d8273d88babd605412ba69e0f295738966676628f64` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-2.md) | 161 | `declaration-track:2ab3af92f85341007dbbf9c54b3b57a6e6c2c885ea15d9335226b428d6b59317` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance.md) | 165 | `declaration-track:1dd00c2ebda81b9ea37d608724eac2aedb2009807e505c742b5fd64777860d11` |
| 24 | `instance` | [inhabitedQuotient](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/inhabitedquotient.md) | 167 | `declaration-track:0602f04b76029eb412ab622fde2724b8ec8154085d1ea0a590476b0d47bd10df` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-3.md) | 171 | `declaration-track:4d7b43cb8a5cbaf327c9e8779f7c382f73ddc667fd52dbe8180909b8a3cef0b7` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-5.md) | 175 | `declaration-track:79880f39e29128bdc9a831cc184ec091b73b27181fefd8ad7773c2bd49458bc2` |
| 27 | `def` | [comap](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/comap.md) | 183 | `declaration-track:bab3760f67c2af3b634d06235d10c21c194d1de25a0337acb68b14158e431144` |
| 28 | `theorem` | [comap_id](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/comap-id.md) | 189 | `result-track:d99b346872c92bd7aea46a20a447d43a1f314fbf114afde3edf5b83e3d30eb2a` |
| 29 | `theorem` | [comap_comp](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/comap-comp.md) | 193 | `result-track:8a8ba4d783656695cd7931100b0577b459111cd9acba58372d13105e105550e1` |
| 30 | `theorem` | [comap_mono](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/comap-mono.md) | 198 | `result-track:95bfa66f4a8bf3bb35cc50d5fff877c31f68d79d2096cd1603b26511fd0586b3` |
| 31 | `def` | [ofLE](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle.md) | 208 | `declaration-track:d54f90fb4a9074cc5bd98cbe80084be4809214f6d2467ae6be7e18ca2876ace3` |
| 32 | `theorem` | [ofLE_refl](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-refl.md) | 213 | `result-track:1d01842b0c98eb836955650421a53f5fff31b352000f4b13c1fa338dce72b38d` |
| 33 | `theorem` | [ofLE_refl_apply](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-refl-apply.md) | 218 | `result-track:abdb1453ae4f2e22b740553b0d46cd9857f3558efa380546028157175f165f04` |
| 34 | `theorem` | [ofLE_ofLE](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-ofle.md) | 222 | `result-track:58a0bbe94883056be2a03c4566c2649f6776c9cc35eba0f10e606111794dd1da` |
| 35 | `theorem` | [ofLE_comp_ofLE](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-comp-ofle.md) | 229 | `result-track:b17a8f57e75e6b7a42c0927a7a8a685494e5df17a4790de2d70973258bf8ad81` |
| 36 | `theorem` | [ofLE_continuous](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-continuous.md) | 233 | `result-track:96d4b500b2e9583a05662b8a0ae0438d945aaa7831de2a50ef318836cd13e76e` |
| 37 | `theorem` | [ofLE_proj](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-proj.md) | 238 | `result-track:ac8c825784316e7574299c82564fa5bc98d891d8a35c6f621e9d82e3a83b6c5b` |
| 38 | `theorem` | [ofLE_comp_proj](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-comp-proj.md) | 243 | `result-track:61c1f332455f3279a4bbe3bc9bcac7a59b06c99a390d4b460cdc0121068098b1` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-6.md) | 252 | `declaration-track:8a3a0a8aa7703d890f05fd1a0a7e20fea4793b8b4bf77c2559a975eacb17d76e` |
| 40 | `theorem` | [proj_bot_eq](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-bot-eq.md) | 263 | `result-track:5e0890d572bf96f7e890900f44ce342ba047af22bcb0db6ef6b5b98e68ac3cce` |
| 41 | `theorem` | [proj_bot_inj](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-bot-inj.md) | 268 | `result-track:10e20e2140d026a171b388711d1c16b9b56ddc12c45a618bfb5dd54351880ad9` |
| 42 | `theorem` | [proj_bot_injective](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-bot-injective.md) | 271 | `result-track:225f3720fdd3118234ee358bb7876bc2d8520fc7bfa0c97c33c1c212915670f4` |
| 43 | `theorem` | [proj_bot_bijective](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/proj-bot-bijective.md) | 275 | `result-track:11c54e314ac9748b91d5ff91e2ff3eae04b0544f8e27db1e662d16670959a734` |
| 44 | `def` | [LEComap](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/lecomap.md) | 285 | `declaration-track:2c374d0f5994faa4ae005692351eac3fa0a18ad212c6f51f944e56a51bfb6593` |
| 45 | `theorem` | [leComap_id](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/lecomap-id.md) | 289 | `result-track:6cfc2bbc60a8916e0a3190ec250fe5a378a0b4ec5348f5859584ca65d6e1517c` |
| 46 | `theorem` | [leComap_id_iff](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/lecomap-id-iff.md) | 295 | `result-track:d296b0e2b09c09bda7cfa611772f8a7510272c84c1c5fd05255d61ad72fee3c7` |
| 47 | `theorem` | [LEComap.comp](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/lecomap-comp.md) | 299 | `result-track:decee8b2e9f2d4f3daf9f025e48f224778bc6cdb352207509a0bc99b913f8a48` |
| 48 | `theorem` | [LEComap.mono](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/lecomap-mono.md) | 303 | `result-track:7e26ed083a6a969a08d16bb63f8e4bc040ec059631f3755007f18f4eb66239e8` |
| 49 | `def` | [map](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map.md) | 308 | `declaration-track:77e12ffa46176ebc62c5a5321ab53e6a220eae9d6135954d207018a23fba7133` |
| 50 | `theorem` | [map_continuous](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map-continuous.md) | 311 | `result-track:e79a79b722212533af970e6db9b855441acc05a0ab3f553638aad64ba7e41e84` |
| 51 | `theorem` | [map_comp_proj](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map-comp-proj.md) | 316 | `result-track:2ed18f52b49dce459aae8f38e12443460e599f8c8a418f78dd39b58ab0e4c35c` |
| 52 | `theorem` | [map_proj](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map-proj.md) | 321 | `result-track:c054b4850b59061388ef0cc11427509a185ae07cf1dd4ba654ea6d01f59db480` |
| 53 | `theorem` | [map_id](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map-id.md) | 326 | `result-track:651607c3a03a0d2ff4c4c99196f571eeffb1f26c7fba453c8900b7a829745a72` |
| 54 | `theorem` | [map_comp](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map-comp.md) | 330 | `result-track:f702fdd98760feaaa10e2046d3517d9447afe894acaf4701cfaa20482977fdac` |
| 55 | `theorem` | [ofLE_map](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-map.md) | 337 | `result-track:6ffe9bbab82fb1dbd679522ea8aca343d2bf9dd8bfd1608200738c152e471b5e` |
| 56 | `theorem` | [ofLE_comp_map](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/ofle-comp-map.md) | 344 | `result-track:5d082dc47e4074020a8a78ea88fe8f4103f298b6cad7c44c875c2bffd4d095aa` |
| 57 | `theorem` | [map_ofLE](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map-ofle.md) | 350 | `result-track:575d42cb6c814c7f5b40f05162d7840b7c20770484ad8591b6547f2e8452d4dc` |
| 58 | `theorem` | [map_comp_ofLE](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/map-comp-ofle.md) | 357 | `result-track:4c3c739488a87c2d00b20b0af7639d238d238ddb97491c0b06e312dc7a3850b0` |
| 59 | `theorem` | [eq_of_forall_proj_eq](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/eq-of-forall-proj-eq.md) | 364 | `result-track:fa584e0eeba79e4653c008d73ac3ccbe579b8318d75dd7335d5ba3bcd621e07c` |
| 60 | `theorem` | [fiber_subset_ofLE](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/fiber-subset-ofle.md) | 372 | `result-track:7ba78df655dbb5fdea36210d1f8c30b260553ff977bc4a4034851ca5433d79ee` |
| 61 | `theorem` | [exists_of_compat](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/exists-of-compat.md) | 379 | `result-track:0302edb1fa6448c1dcbbdee2c71c422f5189947bd3814742c3efe0b216a099ca` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/instance-source-edition-10.md) | 394 | `declaration-track:e6c0afe93bae4d7c302fe646b076a284bb9941a9c872107048db7750ce28eace` |
| 63 | `def` | [discreteQuotient](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/discretequotient-source-edition-2.md) | 405 | `declaration-track:fe3dd2089727ebc0298613bd4b799090acf2ab7647001370bf14f32d7ae21448` |
| 64 | `def` | [lift](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/lift.md) | 412 | `declaration-track:399c373db94686955fb0843142d1b3f9e7ae5d4f7a54cfc119b04df24e199555` |
| 65 | `theorem` | [lift_comp_proj](../../../../GeneralTopology/DiscreteQuotientOfClopen.lean/declarations/lift-comp-proj.md) | 417 | `result-track:4687f1687a934cbefd3ffe0196ba7828f81e26fa3901303edb1c1e9df7713750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2e9c5af4068ad196d5eccc1a3a44629d18803917db3a28039ee70d7f72a83f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
