# Verification target: Closeds Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e9bbb6f5bf08053eea492c14c96ac50fdc396ea",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ClosedsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ClosedsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e9bbb6f5bf08053eea492c14c96ac50fdc396ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Opens` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Closeds](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closeds.md) | 41 | `declaration-track:3c55f655c708850dc62b881a2dbd2f1542e83112e50f1c3a19eda607f5363b28` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-5.md) | 48 | `declaration-track:68113f390a660a3e95922fcb929bbaeef762a305b83b81760de539e225a19a36` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-13.md) | 52 | `declaration-track:f7fdd3291f4eefeea320c30544578e8a4b51866c1855a93476878a2863ab027e` |
| 4 | `theorem` | [closed](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closed.md) | 55 | `result-track:eba38c80420e0c74e972f3be2aa683d56ab619d965cbccea9b825c90461b8831` |
| 5 | `def` | [Simps.coe](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/simps-coe-source-edition-2.md) | 60 | `declaration-track:7882ae94e4100ff0c2c6b005e1425d4d68aa67e730bbf79600fefc2323bf10de` |
| 6 | `theorem` | [ext](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/ext.md) | 65 | `result-track:8839ea180bf24369b8d270dd8c3732176ccb5ce5823bded4df33fa6fdf4ce2b8` |
| 7 | `theorem` | [coe_mk](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-mk.md) | 70 | `result-track:41d28e72334388913e014b318c7d13f407b1e2a4ee4b4b098fd60be31424dd89` |
| 8 | `def` | [closure](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closure.md) | 75 | `declaration-track:e694f1e9a0014c5f4d5650e41909760ef5cdb07888b102a045c475bba1f8055c` |
| 9 | `theorem` | [gc](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/gc.md) | 79 | `result-track:f391bb2fcce5d9311e107d32178753a017bcb28da9696dca96d5c5822c87d950` |
| 10 | `def` | [gi](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/gi.md) | 84 | `declaration-track:1f99c9e8b406482b257b312e5a808176bfc4485f006d3aa967fc88e605122b54` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-4.md) | 91 | `declaration-track:5d9e41a77ae969e27c4083b413025304b07fb2cec5db1dc38c14e1cfc015d6cf` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-10.md) | 112 | `declaration-track:a743739d369aeeee69c1ead33149738dc6906db85636c9f28827d6072ec3530c` |
| 13 | `theorem` | [coe_sup](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-sup-source-edition-2.md) | 116 | `result-track:f787bbeedc1bbb0f3f932a934cc92309f4412bae5e7a5bc06664e4274c0276da` |
| 14 | `theorem` | [coe_inf](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-inf.md) | 121 | `result-track:5e1d24838a3695541f69421b91d56b58154db211b398362c4f9a139fa0af468d` |
| 15 | `theorem` | [coe_top](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-top.md) | 126 | `result-track:512230bc7fd5a1a342357f1597a025489620caa88f1637347794ef9aa71c674d` |
| 16 | `theorem` | [coe_eq_univ](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-eq-univ.md) | 131 | `result-track:b59021493db3bbeacfadb6bf8274d8b6277565638611ae22d1b1b39e5318e17e` |
| 17 | `theorem` | [coe_bot](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-bot.md) | 135 | `result-track:32c9cbbfafc42e609c0b2affaf3c4868b5f67e87c923b1663f2e7888bfd94799` |
| 18 | `theorem` | [coe_eq_empty](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-eq-empty.md) | 140 | `result-track:077de4a6f0ad87bcca7f1e190071e30576905c982271458c2e259358051306fb` |
| 19 | `theorem` | [coe_nonempty](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-nonempty.md) | 143 | `result-track:7fc98227bd908c5fbb80001c9aaafb831896165fc39431d92ac78408b5a4987e` |
| 20 | `theorem` | [coe_sInf](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-sinf.md) | 147 | `result-track:f44d7f3f48fbc6eaf501617165939de7d301e713cf2af8a8a097b769555de3aa` |
| 21 | `theorem` | [coe_finset_sup](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-finset-sup.md) | 152 | `result-track:6f799c8274b76378040b5b614fe4cce78a78b5d384afad543aff6683d487df62` |
| 22 | `theorem` | [coe_finset_inf](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-finset-inf.md) | 158 | `result-track:a26f6c24a7cbdb2dae03e236772da7f7d433bbff228bddf72f6bc3fffb75e0e0` |
| 23 | `theorem` | [mem_sInf](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/mem-sinf.md) | 166 | `result-track:2b04805bda5343adeb102e88fa9f88df43a33bbb86f8670e55920b7c3863d44a` |
| 24 | `theorem` | [mem_iInf](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/mem-iinf.md) | 170 | `result-track:3bba962abc2586d3846cfcb44b1ed1bd352cb20ff3dde7dcb84242fdc150e9e7` |
| 25 | `theorem` | [coe_iInf](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-iinf.md) | 174 | `result-track:f52051463e5bd93cf2f660cec018fbcb5257c2070353b2efccf3878f3d17ea90` |
| 26 | `theorem` | [iInf_def](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/iinf-def.md) | 178 | `result-track:aef555ac57466afb66f2286f151d0ff85fbb19b03a84ea7a582e1f05941edf51` |
| 27 | `theorem` | [iInf_mk](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/iinf-mk.md) | 183 | `result-track:56b7fa68f8871c16590d113c2c473817fb71fcd9ca8c7279fb7d40a6e63e5451` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance.md) | 188 | `declaration-track:29c2766ddbbe9f63911d1ece1477c1e37da9885ba538f77ceef6c224f8b20213` |
| 29 | `def` | [singleton](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/singleton.md) | 196 | `declaration-track:691a6f876285f168fad14ca51a24c09f9acd791e386c02ac4e109410c0f5bd3c` |
| 30 | `def` | [Closeds.compl](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closeds-compl.md) | 204 | `declaration-track:1531342854d685549c749491cf3f6e45098f2920039374811456979b9fb259ef` |
| 31 | `def` | [Opens.compl](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/opens-compl.md) | 210 | `declaration-track:5dfd9dc30db9e303100472ef6c6138e63d7ff13cd42d19baeb0125fc9bb24101` |
| 32 | `theorem` | [Closeds.compl_compl](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closeds-compl-compl.md) | 214 | `result-track:e30769d8c2ddf03d02083603990e18637892c0d4bad3f35e5a500a06918706de` |
| 33 | `theorem` | [Opens.compl_compl](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/opens-compl-compl.md) | 218 | `result-track:d1661b6d18a9bd02b7f54d24d3b06d9985002b60394d5953bcdde392d66941db` |
| 34 | `theorem` | [Closeds.compl_bijective](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closeds-compl-bijective.md) | 222 | `result-track:327b0aaba1f14586f3098a874e8bdb28840a865b7af68e441162b19e9a737717` |
| 35 | `theorem` | [Opens.compl_bijective](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/opens-compl-bijective.md) | 226 | `result-track:ae0527a9b3864ce1f0e98783ae7ca260ef18fafdf9915abd4befed3d2ffc2d59` |
| 36 | `def` | [Closeds.complOrderIso](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closeds-complorderiso.md) | 235 | `declaration-track:3a8f00d4f8d7820af8027d7cfa71ae13f9e17c2b979860bd4090e5e56119d893` |
| 37 | `def` | [Opens.complOrderIso](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/opens-complorderiso.md) | 246 | `declaration-track:c107f83a6b21afe4712fc8134b6e16a929d65c1eac88f0454e69417ad74fcff8` |
| 38 | `theorem` | [Closeds.isAtom_iff](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/closeds-isatom-iff.md) | 261 | `result-track:f14040cdf1edf2791e6c5f1b3e55836b81a75946f1d7b54c4c64f795b8412aa8` |
| 39 | `theorem` | [Opens.isCoatom_iff](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/opens-iscoatom-iff.md) | 272 | `result-track:bc38762e0a82f4cc34a7cac4afa53c4f480473454b4e04f3ea2ef54d6705dadd` |
| 40 | `structure` | [Clopens](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/clopens.md) | 284 | `declaration-track:d00592b04a6030271cb910e5d5f5345a7ffe142f5a46d4e07e91e250ed68584e` |
| 41 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-14.md) | 291 | `declaration-track:f855385dbf8945ea64dba164898b87b0518be176b4fbe52c664109530b43ea70` |
| 42 | `theorem` | [clopen](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/clopen.md) | 295 | `result-track:a4c94ad2904ed81678712cf00af2979914fb7b90034d3c2c59f020f23168d5a0` |
| 43 | `def` | [Simps.coe](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/simps-coe.md) | 300 | `declaration-track:69e1dd0003cba9b15179f2978545411b04b67b3a079b5311208e5b1bf781c650` |
| 44 | `def` | [toOpens](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/toopens.md) | 306 | `declaration-track:774b832e5522a0b94b5aad36d0d2556e1d1312d0018562a88cf0ea9f137ab043` |
| 45 | `theorem` | [ext](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/ext-source-edition-2.md) | 311 | `result-track:eaa766b51c443d43308d63da170c97621022b651b2792c43e347bd1e9a943b9b` |
| 46 | `theorem` | [coe_mk](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-mk-source-edition-2.md) | 316 | `result-track:5057fc98d6ba8f47181a6673353b2516ed6ba9fd4e81196d7f7112a5b06715e9` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-11.md) | 320 | `declaration-track:baa1303aa637467e6430efa8498ef9bedcebc9d08da9217129ca5069c71ccdb8` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-8.md) | 321 | `declaration-track:95ceddfa21b8df19ea549e7ff0aa98af89cf5515468ff4455f7bb35ef5a80248` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-3.md) | 322 | `declaration-track:4287efa64ef60384f962c94635c1be0d9c575397850c32ade78d3a75143a3216` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-12.md) | 323 | `declaration-track:cbad6013129a637e92fd2ff0adc90adc6db7035708d3d3ad46f58e093bcb0561` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-6.md) | 324 | `declaration-track:6b6e541cdb8b03debbde04a782d76e33a73b4b7db4069084bb08ccc7335c7aaf` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-9.md) | 325 | `declaration-track:a1678719e2898d11f1593bf9fcaa436f3bb2cf3be2077e543acee3e08c336bcf` |
| 53 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-7.md) | 327 | `declaration-track:78ccc7e57f5950f64e90125d8897e845e524dbd41cb1cb561a67eb872653735c` |
| 54 | `theorem` | [coe_sup](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-sup.md) | 331 | `result-track:d620e42d5ace645a2c8c9464c9a60f085deefddfada4510642b1af7310264e5a` |
| 55 | `theorem` | [coe_inf](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-inf-source-edition-2.md) | 334 | `result-track:6b01a08ca7c4a606ad420b4e6a720560b16d8b809d2d10698052502adcd3004f` |
| 56 | `theorem` | [coe_top](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-top-source-edition-2.md) | 337 | `result-track:859c63cf082c84248d4c9b20021c6ea2d5135f1d9972211445a7eaa28d6d694a` |
| 57 | `theorem` | [coe_bot](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-bot-source-edition-2.md) | 340 | `result-track:7379914e1b21ba98cb23289e33a9b26d64f88efe99cdc9da5476df0af0cdae0a` |
| 58 | `theorem` | [coe_sdiff](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-sdiff.md) | 343 | `result-track:93df0228a2c5ada7cec3946cbdfa90d905fadc50a73d9e973ada731503b44239` |
| 59 | `theorem` | [coe_compl](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/coe-compl.md) | 346 | `result-track:9dfeb1fef62bff7ca063867606ba774cc6b7b3301f90f6090246f6a77cfe62f9` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/ClosedsNamespaced.lean/declarations/instance-source-edition-2.md) | 349 | `declaration-track:2a51b2fbba10136d218afe84340489362c4cdf27ae13b8c2d8b5ac00a5ddc013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75e59e978ef658749c1128b4d9a92415de8e242ec055ad542cc94bf03b3935fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
