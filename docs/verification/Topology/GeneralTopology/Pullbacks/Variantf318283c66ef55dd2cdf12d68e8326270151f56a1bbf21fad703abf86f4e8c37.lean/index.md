# Verification target: GRWTSK.Topology.GeneralTopology.Pullbacks.Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "367d7864bfcf0f8c68f9edfb33aa7e2066c11321",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `367d7864bfcf0f8c68f9edfb33aa7e2066c11321`.

Source path: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackfst--9a5f1fac82567eaaae776ee3.md) | 33 | `declaration-track:9a5f1fac82567eaaae776ee33699969807e9f33882b706b102f8ae87c9ce6997` |
| 2 | `lemma` | [pullbackFst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackfst-apply--e4f58e1fab76389373651dd5.md) | 36 | `result-track:e4f58e1fab76389373651dd5f17830653d68ad01cf2426973eb6aa691739623e` |
| 3 | `abbrev` | [pullbackSnd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbacksnd--fb7e11387b6ad30873dba779.md) | 39 | `declaration-track:fb7e11387b6ad30873dba77972c38d35e4dd1302af37c744cb60772a8d910ce9` |
| 4 | `lemma` | [pullbackSnd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbacksnd-apply--ad3f63e48dd4fc3d809d5688.md) | 42 | `result-track:ad3f63e48dd4fc3d809d56881aab0cda5548aae1127a9bbbfc2511e416329335` |
| 5 | `def` | [pullbackCone](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackcone--089ebbc680909ee915057f50.md) | 45 | `declaration-track:089ebbc680909ee915057f50684e18a39d56d3aa459496b6ff59ede8a7f64f6a` |
| 6 | `def` | [pullbackConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackconeislimit--881878522664785a8cfd1f51.md) | 54 | `declaration-track:881878522664785a8cfd1f51903b560daea6edff5d9cd5cd8977487b993b2275` |
| 7 | `def` | [pullbackIsoProdSubtype](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype--b1a469c1f755612798c711d1.md) | 79 | `declaration-track:b1a469c1f755612798c711d1ff19f4dbfea75be5cc60ab015aabf7bc6176ce73` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype-inv-fst--9f5332abffb119839f4f800a.md) | 85 | `result-track:9f5332abffb119839f4f800acac69fbe8c81db93fb62d19cc33b9cac60794bfb` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype-inv-fst-apply--2ccbaab33de5986e8b883263.md) | 89 | `result-track:2ccbaab33de5986e8b883263484e3de06cb999498b049adfb63337e822459053` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype-inv-snd--0f364a767434e5ce38ed223c.md) | 96 | `result-track:0f364a767434e5ce38ed223ce01717410f49935e6dcd111e08502d95aafd4064` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype-inv-snd-apply--4411b40021036cf1adf98ccf.md) | 100 | `result-track:4411b40021036cf1adf98ccf181e63fb3262120141b795e6a6da7640c30eddef` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype-hom-fst--c508dbfd11b6ca8e2cca3502.md) | 105 | `result-track:c508dbfd11b6ca8e2cca35020b6ebecd06979473dbe5d42056854d83056c849d` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype-hom-snd--330e7991f5df16b65ca7736b.md) | 109 | `result-track:330e7991f5df16b65ca7736b4f0eef83d2f2f08affa75284b130a424223da6be` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackisoprodsubtype-hom-apply--afdb5e612f8c5acc78e79f93.md) | 113 | `result-track:afdb5e612f8c5acc78e79f936f906e6eb7b536db90d8eb318a55ac50abc6d652` |
| 15 | `theorem` | [pullback_topology](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullback-topology--758823c46184b1439d0316eb.md) | 119 | `result-track:758823c46184b1439d0316ebdbd37c85b449ff36227e85d90c5dfdf2fd6537da` |
| 16 | `theorem` | [range_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/range-pullback-to-prod--40ffd6824cb516cdc35d4607.md) | 129 | `result-track:40ffd6824cb516cdc35d4607d675d12d550b7f4200bd03cf0513246aa7a661a7` |
| 17 | `def` | [pullbackHomeoPreimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullbackhomeopreimage--2a81dd583936efb294a4c044.md) | 147 | `declaration-track:2a81dd583936efb294a4c044c34c0862d3b139d0b8b6fababd83c3a51ce518c1` |
| 18 | `theorem` | [isInducing_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/isinducing-pullback-to-prod--aeca02d33283d4ae0a6f85c9.md) | 167 | `result-track:aeca02d33283d4ae0a6f85c9f061812cda6b201dc74e1636ed360e1039d05538` |
| 19 | `theorem` | [isEmbedding_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/isembedding-pullback-to-prod--6fd887b3f2a56cafb2378bdd.md) | 171 | `result-track:6fd887b3f2a56cafb2378bddaaeef9852362e006ef2a7f5226372489316499a3` |
| 20 | `theorem` | [range_pullback_map](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/range-pullback-map--7ea54002f37621e0b2e4361e.md) | 177 | `result-track:7ea54002f37621e0b2e4361e9b81bee08408d09df72610f1049a8e3640f76766` |
| 21 | `theorem` | [pullback_fst_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullback-fst-range--1d121ee2e7bc6da60a55af8e.md) | 203 | `result-track:1d121ee2e7bc6da60a55af8e36c4c44597a1f2799eaba2e4ebbfdd431eca7375` |
| 22 | `theorem` | [pullback_snd_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullback-snd-range--a7485ba036594fee6f5280cd.md) | 214 | `result-track:a7485ba036594fee6f5280cd3a6b73533fb592192b2969e183e89393067f2ef4` |
| 23 | `theorem` | [pullback_map_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullback-map-isembedding--052d3a133ba35da92400608c.md) | 237 | `result-track:052d3a133ba35da92400608c5f7d2c695ba566cd64ec82d25fc3d98a286b9b64` |
| 24 | `theorem` | [pullback_map_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullback-map-isopenembedding--61be30669f52ea3c3e2efd0b.md) | 262 | `result-track:61be30669f52ea3c3e2efd0bd48ceb83bb62f5cf8b89e6e83bc4d5e0e9e84ee7` |
| 25 | `lemma` | [snd_isEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/snd-isembedding-of-left--ea328905cde2d31842e9c9df.md) | 278 | `result-track:ea328905cde2d31842e9c9df5162509af9a67c3ecebd6f4d8a5c8e28e46a033b` |
| 26 | `theorem` | [fst_isEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/fst-isembedding-of-right--8c88dac2cd00f2d0dbcf00db.md) | 287 | `result-track:8c88dac2cd00f2d0dbcf00dba6b9aa043437f331487517090aa9f5b8e8b08b80` |
| 27 | `theorem` | [isEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/isembedding-of-pullback--456702b401df1b57e56522ed.md) | 295 | `result-track:456702b401df1b57e56522eda645e29488a75fb74e55997561e8057c9585c72e` |
| 28 | `theorem` | [snd_isOpenEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/snd-isopenembedding-of-left--8b483f096e2d4e22543c7c86.md) | 302 | `result-track:8b483f096e2d4e22543c7c868a6543c8fb321937b1ee77bc8ecc9ce4a35e14d0` |
| 29 | `theorem` | [fst_isOpenEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/fst-isopenembedding-of-right--bb61cd7f40a4d29101d519ff.md) | 311 | `result-track:bb61cd7f40a4d29101d519ff0fddd8ad79a3491ebf94d0103de1d1cd15fdcbec` |
| 30 | `theorem` | [isOpenEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/isopenembedding-of-pullback--c3ddd813056866f32da88827.md) | 320 | `result-track:c3ddd813056866f32da8882751ac0595e4f8a11f613cea158c16a64d45f95c07` |
| 31 | `theorem` | [fst_iso_of_right_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/fst-iso-of-right-embedding-range-subset--4158d9eca1cb90525c83495b.md) | 327 | `result-track:4158d9eca1cb90525c83495bbe740455eb20ba683a21d93983e296a91fa7de73` |
| 32 | `theorem` | [snd_iso_of_left_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/snd-iso-of-left-embedding-range-subset--0c264f0802cbdb980cf55f95.md) | 339 | `result-track:0c264f0802cbdb980cf55f952132afb7ac5dacd9ee9b019b42cff08ed33b1fe8` |
| 33 | `theorem` | [pullback_snd_image_fst_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullback-snd-image-fst-preimage--e0766a26c65ccc90f11ccacf.md) | 350 | `result-track:e0766a26c65ccc90f11ccacf06997b3ab0cae8a1d64d31d0f0f3418993bca948` |
| 34 | `theorem` | [pullback_fst_image_snd_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/pullback-fst-image-snd-preimage--91637cbc8bea7a18eb7acde7.md) | 367 | `result-track:91637cbc8bea7a18eb7acde76965c926d9dd0d85e6f1537f01ab3a38fd289a68` |
| 35 | `lemma` | [isOpen_iff_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/isopen-iff-of-iscolimit-cofork--aa801f08f5e4b065176758fa.md) | 392 | `result-track:aa801f08f5e4b065176758fa3170c3029d2f9427111d07c94e43bf53597cbaf3` |
| 36 | `lemma` | [isQuotientMap_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/isquotientmap-of-iscolimit-cofork--e0bb75e74f8cf72763d3653b.md) | 403 | `result-track:e0bb75e74f8cf72763d3653b109c3c8a0f4ccb3e03a643ded1f26dfc59530b5e` |
| 37 | `theorem` | [coequalizer_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/declarations/coequalizer-isopen-iff--b544edb916c2ea2d9d9274a3.md) | 410 | `result-track:b544edb916c2ea2d9d9274a34d653240174661892b1eb31b46ddfe0871dd8778` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
