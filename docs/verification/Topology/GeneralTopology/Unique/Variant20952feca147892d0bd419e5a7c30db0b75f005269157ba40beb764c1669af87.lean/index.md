# Verification target: GRWTSK.Topology.GeneralTopology.Unique.Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e7bfd83c4905a1bc84df9f52d74ed2b5b78e002",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e7bfd83c4905a1bc84df9f52d74ed2b5b78e002`.

Source path: `GRWTSK/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/instance--e91819afadce21ee001a79a3.md) | 39 | `declaration-track:e91819afadce21ee001a79a3de412b71746176f34d789316f2e4a6ad43028894` |
| 2 | `instance` | [Real.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/real-instcontinuousmapuniquehom--800072e3cbe4eaf9818ceb6e.md) | 47 | `declaration-track:800072e3cbe4eaf9818ceb6e3b4eb18301ac0044b8414677f7e75412ad0063a3` |
| 3 | `instance` | [Complex.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/complex-instcontinuousmapuniquehom--86b8242e115f590116e8176c.md) | 52 | `declaration-track:86b8242e115f590116e8176c9a333ad553fbc5bb7b1a8fd9d41dad413b2f7348` |
| 4 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal--9e9f8cd58f924accd2110b69.md) | 67 | `declaration-track:9e9f8cd58f924accd2110b6998e24d65acfe62ed6b8f88d72aa7668205c2a8d0` |
| 5 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/continuous-tonnreal--19f4104890bb3ef5ba4f7dea.md) | 70 | `result-track:19f4104890bb3ef5ba4f7dea15771172fd81df05a0d16c89052c8cfe726d684e` |
| 6 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-apply--08b46e1dae7ab9330a2bda27.md) | 73 | `result-track:08b46e1dae7ab9330a2bda27ac13bc2089d845e61256963af28ce5a89a09e518` |
| 7 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-add-add-neg-add-neg-eq--fbfe75d5054dfc9de2d8bc73.md) | 75 | `result-track:fbfe75d5054dfc9de2d8bc7316739c57adc9948fbe3b9284097f5d992836729d` |
| 8 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--87226c428bb56ad3c06436e7.md) | 82 | `result-track:87226c428bb56ad3c06436e78132ed9b2fe67cb570904d90c1994886418d6b97` |
| 9 | `lemma` | [toNNReal_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-algebramap--31a1fe354d29eeee8fd13b69.md) | 90 | `result-track:31a1fe354d29eeee8fd13b692f3d0ac6b6a21dfeb19d3101dff600c274b8925e` |
| 10 | `lemma` | [toNNReal_neg_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-neg-algebramap--088f62118c07da60c24b8872.md) | 95 | `result-track:088f62118c07da60c24b88722077b49865f929ee89150acc2c83ce9bad2b73b0` |
| 11 | `lemma` | [toNNReal_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-one--333fe4ebbe36977ad3967fc2.md) | 99 | `result-track:333fe4ebbe36977ad3967fc2e190aa78213c300768f27cafd55599741f048f27` |
| 12 | `lemma` | [toNNReal_neg_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-neg-one--a4b8b9946c3538a128ccacab.md) | 102 | `result-track:a4b8b9946c3538a128ccacab69579be6197f4f75d62a469719438010b52865f2` |
| 13 | `def` | [realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/realcontinuousmapofnnreal--25c5d2f02c2671a07669aba2.md) | 117 | `declaration-track:25c5d2f02c2671a07669aba279cf0101ffb42eb812293265b3ec8a00e3dd2a32` |
| 14 | `lemma` | [continuous_realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/continuous-realcontinuousmapofnnreal--17e46a2667daaa785b945c3e.md) | 147 | `result-track:17e46a2667daaa785b945c3e96d0cf565703a7d8d3baf2adf2179ee9f82b41f4` |
| 15 | `lemma` | [realContinuousMapOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/realcontinuousmapofnnreal-apply-comp-toreal--f834e33549ed4bd5bb1bca11.md) | 155 | `result-track:f834e33549ed4bd5bb1bca111fdda796b313291bccb6086d8dd1cab5a6c8f8a9` |
| 16 | `lemma` | [realContinuousMapOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/realcontinuousmapofnnreal-injective--15e697f4c147c2b4fa43975c.md) | 166 | `result-track:15e697f4c147c2b4fa43975c0cc9a1e93e18b332848c91ee695a79c6bfe16db0` |
| 17 | `instance` | [NNReal.instContinuousMap.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/nnreal-instcontinuousmap-uniquehom--fa80d36944bf6d72b007682a.md) | 176 | `declaration-track:fa80d36944bf6d72b007682a01f7f101b32c4faa68e11aea2729a0ccc8d25357` |
| 18 | `instance` | [RCLike.uniqueNonUnitalContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/rclike-uniquenonunitalcontinuousfunctionalcalculus--16261a7b4ebb082eb861d30b.md) | 211 | `declaration-track:16261a7b4ebb082eb861d30b84c667edbcc4468c51f2837e7b3be7d1277b36f7` |
| 19 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal--2d4350a79a4c4469138441f7.md) | 233 | `declaration-track:2d4350a79a4c4469138441f749cf053db4a23f9eb51ff7ed728eb1ee717b44a5` |
| 20 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-apply--0ccee2017ff2e028e8867ecb.md) | 236 | `result-track:0ccee2017ff2e028e8867ecb8a8800e73116abc3054cae1192d94ed02e222096` |
| 21 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/continuous-tonnreal--cdae2d2786a9b29f07028989.md) | 239 | `result-track:cdae2d2786a9b29f070289899c6cddd0def6615d1c78b7d2ad75f3684a154794` |
| 22 | `lemma` | [toContinuousMapHom_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tocontinuousmaphom-tonnreal--db6f15e0aabcc71fc35d0a6b.md) | 244 | `result-track:db6f15e0aabcc71fc35d0a6b158137dd4a36c99b261c3725aa11efe86a45f3a5` |
| 23 | `lemma` | [toNNReal_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-smul--14b041a46f398f7b26dd967a.md) | 250 | `result-track:14b041a46f398f7b26dd967acc6c01f5ce702d366a3d5699c2cc9b926581ca2a` |
| 24 | `lemma` | [toNNReal_neg_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-neg-smul--291d6b301d467cd8cd8b4ea8.md) | 258 | `result-track:291d6b301d467cd8cd8b4ea8b8e7f3959a138f3cbc2c7a7401870383b33f778f` |
| 25 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--9159e83d87093029a2325ebd.md) | 261 | `result-track:9159e83d87093029a2325ebdaa678d38f2511868f824827f524a338ea962129c` |
| 26 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/tonnreal-add-add-neg-add-neg-eq--b72416f8c58b19d1ad9e6647.md) | 268 | `result-track:b72416f8c58b19d1ad9e66473656877bc8322a7b479ff3d72848f1e6d8d12dff` |
| 27 | `def` | [realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/realcontinuousmapzeroofnnreal--f2d5ecad357592ba95d1cf6b.md) | 291 | `declaration-track:f2d5ecad357592ba95d1cf6b1384ad4966635b4506e2a8a64ec832394fa8671f` |
| 28 | `lemma` | [continuous_realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/continuous-realcontinuousmapzeroofnnreal--1cb257e90b94bfe138e79c68.md) | 323 | `result-track:1cb257e90b94bfe138e79c68932f76ebc9eba1676854d995ffba0447816f600a` |
| 29 | `lemma` | [realContinuousMapZeroOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/realcontinuousmapzeroofnnreal-apply-comp-toreal--27bdb4b68cf6161abe592084.md) | 332 | `result-track:27bdb4b68cf6161abe592084c3b72ba84cca7fab371c7a634f7483172b0757f7` |
| 30 | `lemma` | [realContinuousMapZeroOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/realcontinuousmapzeroofnnreal-injective--0b191782760321399ea6b25f.md) | 344 | `result-track:0b191782760321399ea6b25f2e3b50d800b7c681f363946f99adcb29542ff921` |
| 31 | `instance` | [NNReal.instContinuousMapZero.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/nnreal-instcontinuousmapzero-uniquehom--cc351e748c88cbd841033c13.md) | 354 | `declaration-track:cc351e748c88cbd841033c13c7d0b83534b0cc12ecd4d0ed84f33380c9db8c66` |
| 32 | `lemma` | [NonUnitalStarAlgHomClass.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/nonunitalstaralghomclass-map-cfc--4948c09c14e1d2afd140636b.md) | 412 | `result-track:4948c09c14e1d2afd140636bd6d58081cd24b6db1d8f7287633ac22c659a013d` |
| 33 | `lemma` | [NonUnitalStarAlgHom.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/nonunitalstaralghom-map-cfc--c56b4ede9ffca2e8d2cbfa3c.md) | 438 | `result-track:c56b4ede9ffca2e8d2cbfa3c5ab0728aba662e3a79994e0e7dfde93560f270eb` |
| 34 | `lemma` | [StarAlgHomClass.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/staralghomclass-map-cfc--ad5f71a575c1e53bf7fe522d.md) | 462 | `result-track:ad5f71a575c1e53bf7fe522db41596f11184395202803a8dfb2e84eeafbb4de3` |
| 35 | `lemma` | [StarAlgHom.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/declarations/staralghom-map-cfc--5545a161499b796ecfd4e118.md) | 487 | `result-track:5545a161499b796ecfd4e118b8c366a47d527329f8512450716b4a9289a0a96f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
