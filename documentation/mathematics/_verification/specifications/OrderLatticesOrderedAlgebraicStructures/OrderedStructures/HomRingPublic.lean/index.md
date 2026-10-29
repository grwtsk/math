# Verification target: Hom Ring Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87d238125e20fb9ebd7516e0047cb2affe68e7ed",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variante5694b570d7f2717f5cba745344c18bd4b3fe1a0d3e185f97c239083c78d43ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87d238125e20fb9ebd7516e0047cb2affe68e7ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variante5694b570d7f2717f5cba745344c18bd4b3fe1a0d3e185f97c239083c78d43ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variante5694b570d7f2717f5cba745344c18bd4b3fe1a0d3e185f97c239083c78d43ef.lean.json)

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
| 1 | `structure` | [OrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/orderringhom.md) | 53 | `declaration-track:c9c9f3fc20d9f4fb31292bab507f8a4059f5a07919ae08155ac38fb1136209bd` |
| 2 | `structure` | [OrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/orderringiso.md) | 71 | `declaration-track:566a379e79d6200d6620a34f9cf2ebd8461c77a0633648f8c9efc2727b793a0c` |
| 3 | `def` | [OrderRingHomClass.toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/orderringhomclass-toorderringhom.md) | 89 | `declaration-track:1cd522362242ffb8596bcd315563a1122a8155ef0bbce0f80bb34fa93a13cb36` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-3.md) | 95 | `declaration-track:3ee9892f60a7587206796384c403170a95b323179127873b713817291d9218c8` |
| 5 | `def` | [OrderRingIsoClass.toOrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/orderringisoclass-toorderringiso.md) | 109 | `declaration-track:e754c60314cff61ccacc2ea6c8162f2d8bc33e1af4208560b2c8d4ca9b9ab7e2` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-6.md) | 115 | `declaration-track:63432cc9e063297eeb82c3a100765d8ba3d4accce954ca9dfa0cc073dae89e87` |
| 7 | `def` | [toOrderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toorderaddmonoidhom.md) | 133 | `declaration-track:b05a6fe5e6c723ff1429810d70cf0277cea7927330c0ab08fbd696368f12ad04` |
| 8 | `def` | [toOrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toordermonoidwithzerohom.md) | 137 | `declaration-track:19359eca713cbc5188a8dec5e8cb4bfbed64397fd4f0f9e443f68b53541be0e6` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-7.md) | 141 | `declaration-track:8356503c96f528992cb9b3813e7ac055a599634af723ecb49196ba26127bb52c` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance.md) | 147 | `declaration-track:19dde7702a1f6e6592a95dd9edd16bd9ff2aa0f46bc8669e92849cc3cd47fc1a` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-11.md) | 150 | `declaration-track:c9d7c287db19fd873128a3e41363a82306a48e2fd1cf85f368e5bf707fcabebb` |
| 12 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/tofun-eq-coe.md) | 156 | `result-track:677f6078bc3f39b1c66e73aa0830bafc71854e6a1c7b30435be5cb670f261894` |
| 13 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/ext-source-edition-2.md) | 160 | `result-track:8f5ffb84fc13b3c4f15d270975dfdc43498b4cb47336d9a025515234f413f808` |
| 14 | `theorem` | [toRingHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toringhom-eq-coe.md) | 164 | `result-track:e4817df431b7381c0ce1e522d0584679a501ca48538499e5bc975a50d126440d` |
| 15 | `theorem` | [toOrderAddMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toorderaddmonoidhom-eq-coe.md) | 168 | `result-track:e68e7eeafaeb389f0d8bc9af4094e5a0c4b4bb986e4ea0ddc6920ab28f331255` |
| 16 | `theorem` | [toOrderMonoidWithZeroHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toordermonoidwithzerohom-eq-coe.md) | 172 | `result-track:2d3123b3a7a68dd1c8f927ed7db1321e4299d1fd0326f50ceaa83c0d4e6a4525` |
| 17 | `theorem` | [coe_coe_ringHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-coe-ringhom.md) | 176 | `result-track:e1207676d9d0db48c84d6fd3621510a2553e025333b5e73e573995decd04664f` |
| 18 | `theorem` | [coe_coe_orderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-coe-orderaddmonoidhom.md) | 180 | `result-track:b1d9d8f0b8678d172cd4792cb34aa81757d7f0cc9fca2c9d63d056122820a10e` |
| 19 | `theorem` | [coe_coe_orderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-coe-ordermonoidwithzerohom.md) | 184 | `result-track:8524b4af60f556ac32daadf132ef0de7ffee1e5f9f0a991132ad07c7eacab128` |
| 20 | `theorem` | [coe_ringHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-ringhom-apply.md) | 188 | `result-track:027427573f7db0b3ab5de4d8be8069bf48f30e8611516f6251ab741dc2dedaee` |
| 21 | `theorem` | [coe_orderAddMonoidHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-orderaddmonoidhom-apply.md) | 192 | `result-track:1c8a477c82bb52a0db89ed679298e29acb3bb65172a5fc16c9106cd6fd7d4a55` |
| 22 | `theorem` | [coe_orderMonoidWithZeroHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-ordermonoidwithzerohom-apply.md) | 196 | `result-track:5d2eae76ded37073c4359da446aa83bacb6ad12a7bf2394f346c5679d3c92364` |
| 23 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/copy.md) | 201 | `declaration-track:2cabf5d48cac13694a7190e7002a3adb9532da446c6503c610fff9672e2af142` |
| 24 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-copy.md) | 205 | `result-track:41e99940a958b41d7313f264d4589844462abef85deaf18d35bd7ab884f74b32` |
| 25 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/copy-eq.md) | 208 | `result-track:bc4aa1d538c9ba3e7bd8e5db182fa42a229d987f1316687965e96c88c6173db5` |
| 26 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/id.md) | 214 | `declaration-track:3ce491f56ef47683c354277d108e617d4a6ee8880d96d954e09031e6f8f2bd30` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-9.md) | 217 | `declaration-track:a3b904cf275a2c63d8094c681b72d416a411cdb6a9c326540942d3c792befc07` |
| 28 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-id.md) | 221 | `result-track:b44a5af2a8bfe747c6c6dc0c6feaabecd9bc307e9c171a3d11c450656ca08dd3` |
| 29 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/id-apply.md) | 227 | `result-track:9761bb0263be99f4e9dc0bfe548f871f665f339ef1019c673ae2c7147f5ccbb2` |
| 30 | `theorem` | [coe_ringHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-ringhom-id.md) | 231 | `result-track:609151ffc876781353ecc92c2206294846742641680cc504be9a6446c0776491` |
| 31 | `theorem` | [coe_orderAddMonoidHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-orderaddmonoidhom-id.md) | 235 | `result-track:b96a4a75777fffa875ccda6c04dc82164cf6fe3ef10941202cd9a9f4b7265351` |
| 32 | `theorem` | [coe_orderMonoidWithZeroHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-ordermonoidwithzerohom-id.md) | 239 | `result-track:e8e8784fc782dab91db94360537ee7da7f3d05c853a5d26cb5f66e1ac46fa6b8` |
| 33 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/comp.md) | 244 | `declaration-track:3fb3eb6b51a16418559e2b335abe712d63df70651a761a6f6a3733167a64a208` |
| 34 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-comp.md) | 248 | `result-track:e33005d8a056954e5b92912c0ad002b37b8031b542895286c1fd8ca3aa5cdce2` |
| 35 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/comp-apply.md) | 252 | `result-track:dc4d6883284c3564505aa4970789ccd9f08ef9da086befb8074ac7a8a8f04271` |
| 36 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/comp-assoc.md) | 255 | `result-track:9150180e752ae6580fbaa58758987c7b86c30864a3ce674574355b91b9ffbe13` |
| 37 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/comp-id.md) | 260 | `result-track:6f2306cae9c667364095bbdf4c91a6ff4796aa6e69ecba0084d01fd88948bc92` |
| 38 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/id-comp.md) | 264 | `result-track:6caf8f038a9b23b3de0e253cb278f02841611debe15f01820f5ed646bbc5743c` |
| 39 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/cancel-right.md) | 268 | `result-track:3f660baeb23bfddaf0d0981687b5b9d6d36358859afe76ef3e4070be6cdabeb9` |
| 40 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/cancel-left.md) | 273 | `result-track:01f777be79bdae66de0eace63de37dea43f8d3c0cf7c35067daa26407b93892e` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-4.md) | 281 | `declaration-track:4b1b8f7c33d1e5c67e48b89786db0c464c833695ba71ddbbf4011b09952d3960` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-8.md) | 284 | `declaration-track:9d3f36ba44e60b21f194a2ccb8e23fa79b12ec10c8e785e0370094a6f8a46b22` |
| 43 | `def` | [toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toorderiso.md) | 300 | `declaration-track:7b7af11b1c46f5e36cca91aae0ae6a35bb94bf17e3397c03c06af0b8d06a1e1b` |
| 44 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-5.md) | 304 | `declaration-track:50d239a594441f06e9cb7d1ced330d01575cfe9bcf046a6b19385da650b948f3` |
| 45 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-2.md) | 314 | `declaration-track:26a1f2ef398c2b238b93ffd3526f0f128227a7cc12168807fbef9218951af431` |
| 46 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-10.md) | 317 | `declaration-track:b4732c4b0532cb5ffc3728f121f12f7ecc7109d86a1da669ca127b3a5dcb781a` |
| 47 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-12.md) | 321 | `declaration-track:d2efcb10ad069822512cf11bd9dade311188f1befa1d59779bfdb83f0ace0cdc` |
| 48 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/tofun-eq-coe-source-edition-2.md) | 323 | `result-track:96e95ee20b98509ccd74a446b48784bf48dc6c5f53cee242b245ff67c04b52a7` |
| 49 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/ext.md) | 327 | `result-track:1a613e621598d58d5c4c4144062d93b5a780a4492303dc4aff31f801c480d689` |
| 50 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-mk.md) | 331 | `result-track:f9dc2d8c5fd85ed3a6e0bd47f2973481e71b3e53af70d5c4f8c9f75f86a63f8e` |
| 51 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/mk-coe.md) | 335 | `result-track:bac83e8c7bb7c24d45cabd3361b8bb7a2e714b2522d73be57425b2b94481fd79` |
| 52 | `theorem` | [toRingEquiv_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toringequiv-eq-coe.md) | 339 | `result-track:0d89a867d022073a0b89a152b013774205c4b9ac681064a43249f91175fd21bc` |
| 53 | `theorem` | [toOrderIso_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toorderiso-eq-coe.md) | 343 | `result-track:7b9569fc0910c8ce63ad6f0414438f62750edac592ee3e3a6b4ff527fe1ee4d8` |
| 54 | `theorem` | [coe_toRingEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-toringequiv.md) | 347 | `result-track:ebc73e064fb7e9962fe141d4165f3b5692cf77e817ccbbb4d0742cdffbcd0d28` |
| 55 | `theorem` | [coe_toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-toorderiso.md) | 351 | `result-track:c14d235f1db21985a3908c3ba303ffc6f01ab24058631557fa51ef8a7ec977a4` |
| 56 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/refl.md) | 358 | `declaration-track:dd3cdb9cd3bd742f4d87780176a83e1bd69d57bfabcab91771c84143293cd66c` |
| 57 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/instance-source-edition-13.md) | 361 | `declaration-track:e79fa7f46f751c0046e0e12ddec41cb9ac521e5219e7fc5323ae93ecbc265b15` |
| 58 | `theorem` | [refl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/refl-apply.md) | 365 | `result-track:ff3df673856621b4c7d94cd336bcf52c77d322728c6b80285276cf8df67cd978` |
| 59 | `theorem` | [coe_ringEquiv_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-ringequiv-refl.md) | 369 | `result-track:c3e64776d288532f329eed8ffbe70ac93b443f8120d4b9573a4011ab192583f1` |
| 60 | `theorem` | [coe_orderIso_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-orderiso-refl.md) | 373 | `result-track:630968a5c6244a228185fd42d5a9d1400e8f3c913c868e9b5bc9c9f822e6fb0e` |
| 61 | `def` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/symm.md) | 380 | `declaration-track:0ad871a903d52495b14272e71bb5cd71a6fd8b79994defc466377bc1d2ade7a4` |
| 62 | `def` | [Simps.symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/simps-symm-apply.md) | 383 | `declaration-track:1d1d3a43271990c2376352a6eee38469e09e3651136f8b4c13afecee1bb90ea3` |
| 63 | `theorem` | [symm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/symm-symm.md) | 387 | `result-track:e435ab5b53e8c131e159541bbb5a05ab8f5aa984d79aa7273fa6c367b023f69e` |
| 64 | `theorem` | [symm_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/symm-bijective.md) | 389 | `result-track:e41c3f0f5a5fd1a9d59957d0e4cc59a2d61166ceefde6c3db3f675e4599d2b3a` |
| 65 | `theorem` | [symm_apply_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/symm-apply-apply.md) | 393 | `result-track:f5b38a8707c78bcccfd0ea45baa92441e17b145ebe133a3f72afd3539cb334f3` |
| 66 | `theorem` | [apply_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/apply-symm-apply.md) | 397 | `result-track:41efffb3a420b304f3c77d13f5e5f67d5a05b5ae0a510c0c10eec8345cb23c7d` |
| 67 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/trans.md) | 402 | `declaration-track:bd7bf639feb3dbb099b7c18974845f45e2ea4604dc3def67dbec73bd7e17fc04` |
| 68 | `theorem` | [trans_toRingEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/trans-toringequiv.md) | 407 | `result-track:e3dbec95a20b5e8dc65fa9f338ab8acff452434dfc70daeeb0e9a07e7f894b5d` |
| 69 | `theorem` | [trans_toRingEquiv_aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/trans-toringequiv-aux.md) | 413 | `result-track:c27fd2e01f5eed6fe7407887d56a7cc22d5c2d113e1eb7137c821ee113829b9e` |
| 70 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/trans-apply.md) | 419 | `result-track:3e1f79d959da747ac1743c2ab254a3acdeaffecaa3203f2717ca13e5be813ece` |
| 71 | `theorem` | [self_trans_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/self-trans-symm.md) | 423 | `result-track:14d97e5f32ac1d675c621a5d75ce29bdf879dbae592bfb7b090974b42b220f85` |
| 72 | `theorem` | [symm_trans_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/symm-trans-self.md) | 427 | `result-track:e5bdb9a4bf8436531ea2d39e1a43d2db61f25447f5ef0de50ef4c6426fd7d2d6` |
| 73 | `theorem` | [lt_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/lt-symm-apply.md) | 436 | `result-track:973db38027a053110ce5fed30bec98d5fa74fc026d6718d65c92ffbde305a81e` |
| 74 | `theorem` | [symm_apply_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/symm-apply-lt.md) | 439 | `result-track:ba3769f65934975029329c29268708a520bff82d9e6ef73eac4e61ee2066f0b7` |
| 75 | `def` | [toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toorderringhom.md) | 449 | `declaration-track:31be8ea2f680994b1b1319ecebd9d4957f7b59d939dc01525c9f644c1e3c6552` |
| 76 | `theorem` | [toOrderRingHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toorderringhom-eq-coe.md) | 453 | `result-track:61c0a551721c7f2833033c9980d4c91cf0f2808a490936354480486cf8c555b3` |
| 77 | `theorem` | [coe_toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-toorderringhom.md) | 457 | `result-track:c6920d2ee9dbea1c79415f29f8fef26dac558394d28e25356203ceb325e70e42` |
| 78 | `theorem` | [coe_toOrderRingHom_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/coe-toorderringhom-refl.md) | 461 | `result-track:db8b6338f75e328d338aabd9ff930a9929cbb504376295cd3be2b60192c5645a` |
| 79 | `theorem` | [toOrderRingHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/declarations/toorderringhom-injective.md) | 464 | `result-track:50638910a1eda45ba02102fad7f4275ebeeeb0859880158a11127592257d9585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc1049f5d257d38dcd0144ee93653aba8992ed8b69378c6eb98fb21fa87ab2cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variante5694b570d7f2717f5cba745344c18bd4b3fe1a0d3e185f97c239083c78d43ef.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variante5694b570d7f2717f5cba745344c18bd4b3fe1a0d3e185f97c239083c78d43ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
