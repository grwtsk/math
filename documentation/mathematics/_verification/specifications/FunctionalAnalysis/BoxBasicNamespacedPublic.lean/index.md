# Verification target: Box Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e5a9ada63881290200dc28f89489e5e8251589e",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e5a9ada63881290200dc28f89489e5e8251589e`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean.json)

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
| 1 | `structure` | [Box](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/box.md) | 84 | `declaration-track:6d4aa149ea65e704d5895163a65ee6808f0f356aacb30e114ad48c9fc98b4a65` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/instance.md) | 96 | `declaration-track:131e97554926afe7308dfc9ff861e064503cdd7d25b13e5c77fa11bb693d9687` |
| 3 | `theorem` | [lower_le_upper](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/lower-le-upper.md) | 99 | `result-track:bb304bea7cfe6531fb33007d6e8e9eaf357f2dc7a4962953a4942cddefedba9f` |
| 4 | `theorem` | [lower_ne_upper](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/lower-ne-upper.md) | 102 | `result-track:81dbb5cacaaac680ceea295f3cb2e2b2c5ca427c053e65947c4563ad74106c84` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 105 | `declaration-track:3e1bb0d76ba16b4eac7c0048cf682e080b8a13207cd04a3bd5fce149073e3bd2` |
| 6 | `def` | [toSet](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/toset.md) | 111 | `declaration-track:00a3f330b943a69bd1e8d7f85f5426861eba603018589349652bea2859c123d3` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 113 | `declaration-track:cdfb832696a0e17b3a9d038b899b3638ead9033830dc1e0d323d2b32109aa283` |
| 8 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mem-mk.md) | 117 | `result-track:d9e841427f98e6d6bb170fd3072dd45a6ec95fa0413f7ab452a506aa250589ec` |
| 9 | `theorem` | [mem_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mem-coe.md) | 120 | `result-track:909c2edfe857cc0505ffc77da035bcbf9ce3b7b99bff1421f2781af8c5cb7d57` |
| 10 | `theorem` | [mem_def](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mem-def.md) | 122 | `result-track:086f9d9ac08a54e31eb8666c49ddd42b665b0de810bd93729cc99b5bc63a9d1b` |
| 11 | `theorem` | [mem_univ_Ioc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mem-univ-ioc.md) | 124 | `result-track:a108e2c9f5baf2922c0dd0a75aeede24229e4b942df55e3de0854baf5767430f` |
| 12 | `theorem` | [coe_eq_pi](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-eq-pi.md) | 127 | `result-track:1db5829b6f1d67655e5eb5909179a9e8bad6e28fcdc354068d0edfbaa976107d` |
| 13 | `theorem` | [upper_mem](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/upper-mem.md) | 131 | `result-track:9269b9394cb8f7a0b22b48aea3d234d6a99e92e492e84d7183a52485aea15d27` |
| 14 | `theorem` | [exists_mem](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/exists-mem.md) | 134 | `result-track:5ebfc7d9f4bcd2d0a0774f9bbbd10f03de9efda03e0c4de85205e89f4d93720f` |
| 15 | `theorem` | [nonempty_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/nonempty-coe.md) | 137 | `result-track:ab1419ddb15f7d2e596d5e4ab96bdd0449ce1e790ded16ee579a559d4bbf2ec5` |
| 16 | `theorem` | [coe_ne_empty](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-ne-empty.md) | 141 | `result-track:72b133455656f1b6a7b1ae39511c979a674cfa724241157b00c2b87861b9ea03` |
| 17 | `theorem` | [empty_ne_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/empty-ne-coe.md) | 145 | `result-track:60307b09938fc1380973c6a58ecac51ba367b650ba1297a0826fcd1093b18586` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 148 | `declaration-track:53110242d86ee35117669b22ed243c32acb4c16a784dd56501d4aaa4fc55f499` |
| 19 | `theorem` | [le_def](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/le-def.md) | 151 | `result-track:e7c397c546d4d0f498c697e0cec547fb94b96c5921d55753e91a5532451c4f97` |
| 20 | `theorem` | [le_TFAE](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/le-tfae.md) | 153 | `result-track:3cb081b79df74fae3653842d933029645584fd66e5557567372b17948d93e66b` |
| 21 | `theorem` | [coe_subset_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-subset-coe.md) | 166 | `result-track:1a5a698a2d9cd768b704e919ed0d1f2624a47830d23cd63566b9b203646d4ad2` |
| 22 | `theorem` | [le_iff_bounds](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/le-iff-bounds.md) | 168 | `result-track:0e7ab6e9b8dc0d4aa0b61da8578da482f4aa9a4be1e14bc222480f5c9e004f3b` |
| 23 | `theorem` | [injective_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/injective-coe.md) | 171 | `result-track:b3dc32c82d686f365eebb7997cb5a1ad160c5be617cfc7364aca2bb6a1effe62` |
| 24 | `theorem` | [coe_inj](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-inj.md) | 178 | `result-track:75beb789e5951cc7c743fc39627ff4d37932338d4dfcc96408c5c5404257ebbf` |
| 25 | `theorem` | [ext](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/ext.md) | 182 | `result-track:6e30d97726b493ebe0318973218b4af07ee8718b458bc19f7ba08ca8818b3614` |
| 26 | `theorem` | [ne_of_disjoint_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/ne-of-disjoint-coe.md) | 185 | `result-track:f714953e9f36be0e95af8a9fcb6c09963d7222fc120363110bec904c30eb5b02` |
| 27 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 188 | `declaration-track:19ae7849d6c2e8ecc9ecee303a6274ce3b5d63e0f883425aaa286541274c73fa` |
| 28 | `def` | [Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/icc.md) | 192 | `declaration-track:442bf113ee87d70ada6b1b2748ae016ab8a8986cb606c4d701d3b5f3ea56c000` |
| 29 | `theorem` | [Icc_def](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/icc-def.md) | 195 | `result-track:8caa7fd0e9272276a67882e177818bbf0fa2aa2d94dbcec5374f01c14daa1200` |
| 30 | `theorem` | [upper_mem_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/upper-mem-icc.md) | 198 | `result-track:b0d9ee053206c12c422c1a51de332f9ef48081795411651d6ad18e92ccc5665a` |
| 31 | `theorem` | [lower_mem_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/lower-mem-icc.md) | 202 | `result-track:68da695761f9eee5c7de9514b9b1d890b063d119f4e50ba7df7d7a6b07366511` |
| 32 | `theorem` | [isCompact_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/iscompact-icc.md) | 205 | `result-track:e01c1514adb799c8dd9bd1c3b25d762dde552ca638b5869cd4781fe2ed6de856` |
| 33 | `theorem` | [Icc_eq_pi](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/icc-eq-pi.md) | 208 | `result-track:c08184b8a40d6d78f6cce41b521b400f8805593b32e35927bfe5e08f14fed371` |
| 34 | `theorem` | [le_iff_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/le-iff-icc.md) | 211 | `result-track:9d4b57d3f5cd342d0af0ea48ee4a8ccf83b85f2f896962d40510b8bf0d8e434b` |
| 35 | `theorem` | [antitone_lower](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/antitone-lower.md) | 214 | `result-track:72241a4c57ea9276b2014fec304388c913e23910ebadcd4c6acf83b14706602a` |
| 36 | `theorem` | [monotone_upper](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/monotone-upper.md) | 217 | `result-track:8ca50ac7c1d96c61c6fbd41822a46bb6b6f285807d6a0346055e359c3f163a75` |
| 37 | `theorem` | [coe_subset_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-subset-icc.md) | 220 | `result-track:a3bf459b13aca4020652aa54e11e88a7196fbb500f61b4cc7744ac5f402caee2` |
| 38 | `theorem` | [isBounded_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/isbounded-icc.md) | 223 | `result-track:4bb0ef1ba21929e0a8a312f6292a8f428e109db240d331dad1b14f253da60f1f` |
| 39 | `theorem` | [isBounded](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/isbounded.md) | 227 | `result-track:452107c227ecb3e5dc70ca377974a6d5d2e57d95cbc435d12b69350c9436ee98` |
| 40 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 237 | `declaration-track:cde2181bcb46e35850ee97cd6fb61ae0eef2c978f9bab903a3b0dd6b4306c0cf` |
| 41 | `def` | [withBotToSet](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/withbottoset.md) | 254 | `declaration-track:75b58c5dffad7f2712d371f21274ca0d589a4c5099cd97ccb3480b3cdc0f064d` |
| 42 | `instance` | [withBotCoe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/withbotcoe.md) | 256 | `declaration-track:b0df9a75cda03a71780b7ab50146ee851ea90b7d14803177914b7126c18d2c0b` |
| 43 | `theorem` | [coe_bot](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-bot.md) | 260 | `result-track:fba0543094dfa8030f9ac0dd235ce2417b4e12a121189501af8c150abdaba460` |
| 44 | `theorem` | [coe_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-coe.md) | 263 | `result-track:7b1342f8c4a34f1e92fa0c89dd8f527636d0f319618f028b2268ce8bbabf8f1f` |
| 45 | `theorem` | [isSome_iff](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/issome-iff.md) | 265 | `result-track:e5e7b783b3dbb9f825768dab2004e7c49596d1c9895b452707c932c67f42daeb` |
| 46 | `theorem` | [biUnion_coe_eq_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/biunion-coe-eq-coe.md) | 273 | `result-track:0911302e747085ce05dc55debbf4a38c5762863c07e3b7a55d70d296add9f98f` |
| 47 | `theorem` | [withBotCoe_subset_iff](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/withbotcoe-subset-iff.md) | 278 | `result-track:29c895f3414fbd4b86d2b313faf60395707b4497f193a1892dd5aa2a615a359c` |
| 48 | `theorem` | [withBotCoe_inj](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/withbotcoe-inj.md) | 284 | `result-track:db0432a422d7dbc4c25c36ae40d05f7e8e070196f3d3b3229943605487f4dd74` |
| 49 | `def` | [mk'](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mk.md) | 291 | `declaration-track:e5dae58afb6198f46f504dc34bdaa529c8f4d385187f224124a553427924eab4` |
| 50 | `theorem` | [mk'_eq_bot](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mk-eq-bot.md) | 295 | `result-track:ca9f38d3136d9ab2ee12a4be7c48e8c73cac055d269958a764c082cf394eebee` |
| 51 | `theorem` | [mk'_eq_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mk-eq-coe.md) | 300 | `result-track:a489f7a74fe60fba51e075dafb2448458df519a246c8a0af737627b18a2acbed` |
| 52 | `theorem` | [coe_mk'](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-mk.md) | 308 | `result-track:46ab4abe557577b4f73d71f5d0640c8e7381e2bfa1a6ab4532bc0f01ec65c10d` |
| 53 | `instance` | [WithBot.inf](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/withbot-inf.md) | 315 | `declaration-track:e8557d8daf8dc5732534d646d064ccfd40809e985c74d1961dfd593dbc57ab54` |
| 54 | `theorem` | [coe_inf](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/coe-inf.md) | 321 | `result-track:72f1e9c680c39bbaadaf4fc5596a4bca93e9957b095c107e956bf08e1fcfcc8d` |
| 55 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 332 | `declaration-track:f5c214d6db053069a88aef93a22f4ad3637bfafad53583529c2fc2bd196e190b` |
| 56 | `theorem` | [disjoint_withBotCoe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/disjoint-withbotcoe.md) | 345 | `result-track:3305aaa50086a65e448b708bb39490269a4359e071ed46a13e7eb463cf0bac6f` |
| 57 | `theorem` | [disjoint_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/disjoint-coe.md) | 350 | `result-track:b9df555425dceead1b8fa1fb6536a7c344a17f11118a33e2e1122d9da23217c6` |
| 58 | `theorem` | [not_disjoint_coe_iff_nonempty_inter](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/not-disjoint-coe-iff-nonempty-inter.md) | 353 | `result-track:9b53dc6eeaf88e65c9b9effb1835059b672aa772e1496b7ede7f0dced216c342` |
| 59 | `def` | [face](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/face.md) | 365 | `declaration-track:b0ee610a651d9964cdcb40c51e1ae6a4212c70c9617caf9b6191346a00bbd42e` |
| 60 | `theorem` | [face_mk](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/face-mk.md) | 369 | `result-track:296e06bd41f57f611388590177fb255bbe76df6559b6697de028c58a2ec0ff58` |
| 61 | `theorem` | [face_mono](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/face-mono.md) | 373 | `result-track:645bd4b611da4430b93e8d937ceca0333dbe8e585589e1b420b210da87ea10d2` |
| 62 | `theorem` | [monotone_face](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/monotone-face.md) | 377 | `result-track:3f7a807746993267cd633e0c832046e3567867b5bbbdb3d0af09128f10faa2f7` |
| 63 | `theorem` | [mapsTo_insertNth_face_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mapsto-insertnth-face-icc.md) | 380 | `result-track:720c2a1fb81163ba734741e249c122581b47e7506fd423e1e56553e5fa8cecd9` |
| 64 | `theorem` | [mapsTo_insertNth_face](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/mapsto-insertnth-face.md) | 385 | `result-track:89419f29960046a21c97191b893e234fba4059ca659075c0bcb8854b15cb7b4a` |
| 65 | `theorem` | [continuousOn_face_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/continuouson-face-icc.md) | 393 | `result-track:51bc0bfa486474317eb1a368863ee2e5fe9ab7a06f6fe4bef45886c767f12663` |
| 66 | `def` | [Ioo](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/ioo.md) | 405 | `declaration-track:6086a909f02269805013bf603562a7f5bb0c31dec060aa81bc18ff89c6731990` |
| 67 | `theorem` | [Ioo_subset_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/ioo-subset-coe.md) | 410 | `result-track:c039c80bb37463189e768841e8cca7b1ac3cb260b2e114afc4c9461a43672136` |
| 68 | `theorem` | [Ioo_subset_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/ioo-subset-icc.md) | 413 | `result-track:ba12606c335ad49fc0230955d1db8762b1ca36b73bb44b1731e45b4f2185ae66` |
| 69 | `theorem` | [iUnion_Ioo_of_tendsto](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/iunion-ioo-of-tendsto.md) | 416 | `result-track:72dbc98ae88b684a005dcc88717e986103f44ec5f3379ffef03d9bcc002224c1` |
| 70 | `theorem` | [exists_seq_mono_tendsto](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/exists-seq-mono-tendsto.md) | 432 | `result-track:be6433e95169d66e1c4c8b87b87312af1785eed6a03b06bd15baa5d030e2e513` |
| 71 | `def` | [distortion](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/distortion.md) | 451 | `declaration-track:adc4ce5aa20f3a1bd77903d14feccc0bbfa892f78c8de4ed0618a353081313a6` |
| 72 | `theorem` | [distortion_eq_of_sub_eq_div](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/distortion-eq-of-sub-eq-div.md) | 454 | `result-track:bf9ffb26b114a7cc5d3a51b1762d8b4bed80910f2be7e8aeeca8326d42d34f4a` |
| 73 | `theorem` | [nndist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/nndist-le-distortion-mul.md) | 467 | `result-track:6b19eb085ef45de31e5e3936d052ed7b4aca42091c90356d9c637923a45e7efd` |
| 74 | `theorem` | [dist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/dist-le-distortion-mul.md) | 476 | `result-track:5c02e6ba3163ca9f955af764e5a9a45147779cdade3d6b64ac9bc9c232fab9e6` |
| 75 | `theorem` | [diam_Icc_le_of_distortion_le](../../../../FunctionalAnalysis/BoxBasicNamespacedPublic.lean/declarations/diam-icc-le-of-distortion-le.md) | 482 | `result-track:ec5a0610b5cca9574b32ed0f6dc050d98972670d07e689265b793c3d78afe74f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44fb226a0739dc065951785d3d63153dc70ff6be8120ddd56df489ce6a72cc4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
