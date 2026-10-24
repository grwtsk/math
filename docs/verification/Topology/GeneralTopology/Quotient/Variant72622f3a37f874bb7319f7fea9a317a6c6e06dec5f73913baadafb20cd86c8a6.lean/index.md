# Verification target: GRWTSK.Topology.GeneralTopology.Quotient.Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c82fdbbdefcc9d0ccaa3c8de9fe4e783a1916150",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c82fdbbdefcc9d0ccaa3c8de9fe4e783a1916150`.

Source path: `GRWTSK/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean.json)

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
| 1 | `structure` | [IsAddQuotientCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isaddquotientcoveringmap--c8b65b2e01691bb2b266dabe.md) | 28 | `declaration-track:c8b65b2e01691bb2b266dabef494b48f35b5ccd8583c073e7a04ad716292fa16` |
| 2 | `structure` | [IsQuotientCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isquotientcoveringmap--dd829daa23af8ca760de1f20.md) | 38 | `declaration-track:dd829daa23af8ca760de1f208d7806a4ded8317f5b7ad7f0f871f7042f6555a0` |
| 3 | `lemma` | [IsAddQuotientCoveringMap.toMultiplicative](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isaddquotientcoveringmap-tomultiplicative--8c7cbd711398c43f10749f3f.md) | 44 | `result-track:8c7cbd711398c43f10749f3f437104818f7073757a11c47fb732123482e5574a` |
| 4 | `lemma` | [IsQuotientCoveringMap.toAdditive](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isquotientcoveringmap-toadditive--969c66c7f74b503bb38c7aa7.md) | 54 | `result-track:969c66c7f74b503bb38c7aa7e0b7fd008efbd5413ad5715636a74188b94a61ce` |
| 5 | `theorem` | [subgroup_congr](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/subgroup-congr--eae5b729643ed5f424665033.md) | 66 | `result-track:eae5b729643ed5f42466503388d54d47f69ef3d2230467e246d216b03931810d` |
| 6 | `theorem` | [map_smul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/map-smul--d91aad99f256d0f6fb98d9de.md) | 72 | `result-track:d91aad99f256d0f6fb98d9de6e9dd5c024537b0bdcd24a86c8d811ba5342cdf8` |
| 7 | `theorem` | [isCancelSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/iscancelsmul--27f749f9cc65eb1a7afec3c8.md) | 77 | `result-track:27f749f9cc65eb1a7afec3c868b75cc6abb1afc7c61af3dddc555ada9a177124` |
| 8 | `theorem` | [homeomorph_comp](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/homeomorph-comp--30a6f627478cd793e4687c0e.md) | 83 | `result-track:30a6f627478cd793e4687c0e2d9fb005b52f1328c4fb4f08a32d4c45321e4951` |
| 9 | `theorem` | [homeomorph_comp_iff](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/homeomorph-comp-iff--584528ce4929850d36e5e117.md) | 91 | `result-track:584528ce4929850d36e5e117444d0fc4062d92b8327e637a45ec33772f3da843` |
| 10 | `def` | [fiberEquivGroup](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/fiberequivgroup--613adb2e180f3eb619c30afc.md) | 98 | `declaration-track:613adb2e180f3eb619c30afc745e395870a0f2221eff7c347f511cdccbabbc55` |
| 11 | `theorem` | [fiberEquivGroup_self](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/fiberequivgroup-self--bcf110fdf68d15f344b334fc.md) | 104 | `result-track:bcf110fdf68d15f344b334fcd19f64de6ed63b3e5c5085bc822ffcf8b06fe1b1` |
| 12 | `theorem` | [fiberEquivGroup_eq_iff](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/fiberequivgroup-eq-iff--6b3c54255f5a018bda6a2e54.md) | 108 | `result-track:6b3c54255f5a018bda6a2e54e495eba73a2660eb1bb239f7ed9c1dd77813b492` |
| 13 | `theorem` | [fiberEquivGroup_smul_self](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/fiberequivgroup-smul-self--5b0c1e4292d5abdba06bfde4.md) | 112 | `result-track:5b0c1e4292d5abdba06bfde42fd3a61cb5d435f6fd8be4fc0f8ade9aaf2980fb` |
| 14 | `def` | [mulActionFiber](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/mulactionfiber--d27ae5a82ed35bfe9d2752eb.md) | 117 | `declaration-track:d27ae5a82ed35bfe9d2752eb5a9226fd9b2ccc63d0c8abe1a616624c76a18b12` |
| 15 | `lemma` | [coe_mulActionFiber_smul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/coe-mulactionfiber-smul--4085a8c098c79f7df13b179e.md) | 120 | `result-track:4085a8c098c79f7df13b179e8fc183d1f6a86e3e7a5fc4991ad7e1b3b75a554b` |
| 16 | `lemma` | [mulActionFiber_isPretransitive](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/mulactionfiber-ispretransitive--3e3d67bdff8c1b2e3c8c659e.md) | 125 | `result-track:3e3d67bdff8c1b2e3c8c659e2c41f1741690928698d39f8fc7b50e39d78edb05` |
| 17 | `def` | [toPermFiber](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/topermfiber--512dc6011701e4308d8f9e98.md) | 135 | `declaration-track:512dc6011701e4308d8f9e98938efc9ca970e660818a506b269b67338855bd96` |
| 18 | `theorem` | [toPermFiber_ext](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/topermfiber-ext--3096374efab841ff2ef7cc40.md) | 138 | `result-track:3096374efab841ff2ef7cc4008e43801cbd7a1b74137b0de2e0445420f0e2d85` |
| 19 | `theorem` | [toPermFiber_injective](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/topermfiber-injective--6febf66a7d6f3fe8418106d1.md) | 143 | `result-track:6febf66a7d6f3fe8418106d18e4e5b5c4780596ae867420b2d98cf36434c8828` |
| 20 | `theorem` | [exists_toPermFiber_eq](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/exists-topermfiber-eq--8df9ad44ab929c556909aeb5.md) | 147 | `result-track:8df9ad44ab929c556909aeb5a1545cb50d25e4714301f5b44fb57b2693818fde` |
| 21 | `def` | [trivializationOfSMulDisjoint](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/trivializationofsmuldisjoint--f7c1b89e8ce6e1118ee55ea1.md) | 177 | `declaration-track:f7c1b89e8ce6e1118ee55ea1d9b6c2e1461c01ed1037e1aea2211e513950639e` |
| 22 | `lemma` | [isCoveringMapOn_of_smul_disjoint](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/iscoveringmapon-of-smul-disjoint--f678f9c260ce3debd94ca1ae.md) | 208 | `result-track:f678f9c260ce3debd94ca1ae0fdb63c1e56c0c66a80a8eda4668c978ac40e376` |
| 23 | `lemma` | [isCoveringMapOn_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/iscoveringmapon-of-properlydiscontinuoussmul--851f7bcb61872e208052d212.md) | 225 | `result-track:851f7bcb61872e208052d2126753d1be3c13b12d7d022afcc69a1efc5e56d5ce` |
| 24 | `lemma` | [isQuotientCoveringMap_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isquotientcoveringmap-of-properlydiscontinuoussmul--2ded399f7f9958503363c576.md) | 230 | `result-track:2ded399f7f9958503363c5764a49f2f437044e4feb5abc27cf6217d5ed52e3f8` |
| 25 | `lemma` | [_root_.isCoveringMapOn_quotientMk_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/root-iscoveringmapon-quotientmk-of-properlydiscontinuoussmul--5b3b1b8b962b7ea4a4684589.md) | 240 | `result-track:5b3b1b8b962b7ea4a468458956ab1e6a2c130eb5d3819e0a1a71f62bf71c4729` |
| 26 | `lemma` | [_root_.isQuotientCoveringMap_quotientMk_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/root-isquotientcoveringmap-quotientmk-of-properlydiscontinuoussmul--634bce5d978da807e7afa8bb.md) | 245 | `result-track:634bce5d978da807e7afa8bb5d8ed385c6aea1fa2bf1f8709aa85f0e4bab052a` |
| 27 | `lemma` | [isQuotientCoveringMap_of_subgroup](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isquotientcoveringmap-of-subgroup--16857eba4e8dca9d44813ca6.md) | 253 | `result-track:16857eba4e8dca9d44813ca658851125c910ecadf1fa64c35dd473aca3f09ada` |
| 28 | `lemma` | [isQuotientCoveringMap_of_subgroupOp](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isquotientcoveringmap-of-subgroupop--4df75f48e0a5bbc7c8381044.md) | 263 | `result-track:4df75f48e0a5bbc7c838104418bdf1557f7545bbbbdb68b11ac173e4b1ebf9c8` |
| 29 | `lemma` | [isQuotientCoveringMap_of_isDiscrete_ker_monoidHom](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isquotientcoveringmap-of-isdiscrete-ker-monoidhom--5525b7e0719d2b92e7c15ab5.md) | 275 | `result-track:5525b7e0719d2b92e7c15ab59af7cc62ccc011bf7206da3e5fb221ea70ede162` |
| 30 | `lemma` | [Subgroup.isQuotientCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/subgroup-isquotientcoveringmap--63b622f14c143710cf681bb9.md) | 284 | `result-track:63b622f14c143710cf681bb98c6749809d126db9d3e924bc169d2f04df0f21ae` |
| 31 | `lemma` | [Subgroup.isQuotientCoveringMap_of_comm](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/subgroup-isquotientcoveringmap-of-comm--56ba77d84b3a067de09d6e58.md) | 290 | `result-track:56ba77d84b3a067de09d6e58128c27f9c8a92aff205fbeecbd095db681eaf0b5` |
| 32 | `lemma` | [isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/iscoveringmap--1732bd810d6b2b94342ceed2.md) | 298 | `result-track:1732bd810d6b2b94342ceed2df2054bce978396634406d46a53a75a7bd405d11` |
| 33 | `theorem` | [isOpenQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isopenquotientmap--7d0be20ae07c06693de6049b.md) | 311 | `result-track:7d0be20ae07c06693de6049bd1e3ce861a457dfa73812657655d14705e14f740` |
| 34 | `theorem` | [isQuotientCoveringMap_iff_isCoveringMap_and](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/declarations/isquotientcoveringmap-iff-iscoveringmap-and--e20337639e291ed2c9ef9c06.md) | 319 | `result-track:e20337639e291ed2c9ef9c06cb66d6a975c90cfe6031431ac3fe64531022f021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
