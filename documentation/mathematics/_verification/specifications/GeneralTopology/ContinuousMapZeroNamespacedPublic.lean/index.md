# Verification target: Continuous Map Zero Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "245b94a27b25ea886c0522611dd3ed88cdfe04d9",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `245b94a27b25ea886c0522611dd3ed88cdfe04d9`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean.json)

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
| 1 | `structure` | [ContinuousMapZero](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/continuousmapzero.md) | 43 | `declaration-track:37764c03daee5e83002d158fb7d33dfa605c87436c59f80275ad5131dbd61fa3` |
| 2 | `instance` | [instFunLike](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instfunlike.md) | 58 | `declaration-track:0468cb1e77f5e266895c0fcc0652de635881fb9d64d4b2be6bb003413cf2ca09` |
| 3 | `instance` | [instContinuousMapClass](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instcontinuousmapclass.md) | 62 | `declaration-track:5ac9fcec1389df032dd080538e93296f0328de0ebf9f05674fddfbd09d7dd10a` |
| 4 | `instance` | [instZeroHomClass](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instzerohomclass.md) | 65 | `declaration-track:240f88a907232beff978f9382a38c8ca9824c39b607ae23540ca209ae22784ee` |
| 5 | `def` | [Continuous Map Zero Namespaced Public](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/zerooffactmem.md) | 72 | `declaration-track:9ad2f36d190f8dc27b846b852942d8b8eb24c25f19f3cb813397d72d75114a46` |
| 6 | `lemma` | [ext](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/ext.md) | 79 | `result-track:5ecdf2e5987766c143b97d946fe4a1e4d27b86e6c8434f4567a70e1f8de25867` |
| 7 | `lemma` | [coe_mk](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-mk.md) | 82 | `result-track:373579a344d27138f446425320e9c5f335759f02346b53edd31d4951bab97e1c` |
| 8 | `lemma` | [toContinuousMap_injective](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/tocontinuousmap-injective.md) | 84 | `result-track:a8a2ea51d42e8eaddfc7d045a6b5a8d228d4f9707595bd782df2c23ad71f6da2` |
| 9 | `lemma` | [range_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/range-tocontinuousmap.md) | 87 | `result-track:9591ac2154731160a7766d7959e14aaaef529585421b0ee27a4b1470dba9a08a` |
| 10 | `def` | [comp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/comp.md) | 91 | `declaration-track:826f2386905dd2565e39d1bd154317ed7738982684fee397312b7f83ed9abbc8` |
| 11 | `lemma` | [comp_apply](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/comp-apply.md) | 96 | `result-track:0b875409b50504a7f61949603141ca5f9b500dd65ccaf967d4fde617768bc802` |
| 12 | `theorem` | [coe_comp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-comp.md) | 99 | `result-track:e08cfad9fa1c9d8f8ac631ca5df0f712ad2731f2165aa0ba15e52bcdddca78e2` |
| 13 | `instance` | [instPartialOrder](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instpartialorder.md) | 101 | `declaration-track:3ec94f3d29d400e7c41033cc9e0dc1104e0f0cf587a414a6c5378105f1fa5004` |
| 14 | `lemma` | [le_def](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/le-def.md) | 104 | `result-track:77447ed9da92d5e74d904e77ed7eeeeee399960571a28ac427345b96cfba4a31` |
| 15 | `instance` | [instTopologicalSpace](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/insttopologicalspace.md) | 106 | `declaration-track:ca13a91a2bf1b7b9832691fce83609aecec4de9c171f7ad2d352fbd377a7c9dd` |
| 16 | `lemma` | [isEmbedding_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/isembedding-tocontinuousmap.md) | 109 | `result-track:b8a654752239462048ed6913ccbf209e68cb2da01409cc40f67196da05ea3a54` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 113 | `declaration-track:a4f1611dbacc1575c852f5aa622bc8ae048b3299539669e6304472d152710d87` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 114 | `declaration-track:db25e9bab04695cda4fcb244522cc94ac4f11cdb343c304cb315296a17f908cd` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:13946a620cf4202261ed8890ba0edf3670a2ee8c867e34833f1a81e28fbcbea0` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 116 | `declaration-track:a98513b87da413667a4d570c5d389d57d9f66e75f1a38a7bbb4bc04e408dc6e6` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 117 | `declaration-track:42c99d1429220d0ba6e856ab20357641fff724cc6c2b135cf76c902d119ad78d` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance.md) | 118 | `declaration-track:1168b082a865b4a861e69ff98ba0e64bba43c8cdbbc4f98d4e655d4f975468c0` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 119 | `declaration-track:7aa384921f0d8005986727e2ee52c7c19d4844d5ba3e4573d7704fc2484aeb22` |
| 24 | `instance` | [instContinuousEvalConst](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instcontinuousevalconst.md) | 121 | `declaration-track:81ff768556104cf34326f525f092c1f2149298991ce5ef6286c55868d68fb77e` |
| 25 | `instance` | [instContinuousEval](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instcontinuouseval.md) | 124 | `declaration-track:81b73567c0fb72068f62fb4e5d45406bb1795f394498d652c1414ae542574520` |
| 26 | `lemma` | [isClosedEmbedding_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/isclosedembedding-tocontinuousmap.md) | 127 | `result-track:e860efa5a9d4eab0ca36d4380c735e270f83dc91f647d5476bd711eef8f6b358` |
| 27 | `lemma` | [continuous_precomp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/continuous-precomp.md) | 135 | `result-track:66383a8b8462f9a89006be548e25664c5484ddcbd10714f21b54d04800b5a1f6` |
| 28 | `theorem` | [postcomp_injective](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/postcomp-injective.md) | 140 | `result-track:412ee169e6ed68bf2e9099fe74a042595bb5656791251ce6dcf845ef800e13d8` |
| 29 | `theorem` | [continuous_postcomp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/continuous-postcomp.md) | 145 | `result-track:2a0c32b6d78bd53e2e1a9da5267bfe4879eebcc4ce03fa8087bdf0923dbb7c03` |
| 30 | `def` | [id](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/id.md) | 152 | `declaration-track:e4959dbe08b7de8255183100ce42e7e1414b24b237be059d0c11abac78379fe6` |
| 31 | `lemma` | [toContinuousMap_id](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/tocontinuousmap-id.md) | 156 | `result-track:b319edad2109f34b240e0f87b96374739e80c5bab0a86bf7fd7e99eccb4f9cea` |
| 32 | `def` | [mkD](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd.md) | 176 | `declaration-track:fd9b0490865f60cc41e42b609562f5809930656a78ddd3bd415738c1525d0d96` |
| 33 | `lemma` | [mkD_of_continuous](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-of-continuous.md) | 179 | `result-track:4e56cf78e123ffad7eab1e81bb3b141fbc67790fed2a6669eac13f14c7921a55` |
| 34 | `lemma` | [mkD_of_not_continuous](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-of-not-continuous.md) | 183 | `result-track:6938346c4c25f601c510144d7611517e6731969890bca3a01f0cbd495366e316` |
| 35 | `lemma` | [mkD_of_not_zero](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-of-not-zero.md) | 187 | `result-track:440bfdffc95c1ff502e518871a35e81d7668130a9d56f837f42746e15cb14c16` |
| 36 | `lemma` | [mkD_apply_of_continuous](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-apply-of-continuous.md) | 191 | `result-track:82f9e91d1768d73d401a5ee9035c2b7f775f748279cc22ec01a4c79c5ddff66d` |
| 37 | `lemma` | [mkD_of_continuousOn](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-of-continuouson.md) | 196 | `result-track:f6f82be4386e9e9830531dd0c0581ee22e2cec8bfdcfe44e8aca786f01c22771` |
| 38 | `lemma` | [mkD_of_not_continuousOn](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-of-not-continuouson.md) | 201 | `result-track:d8eb98c6373a9ef68c6142f3c5b77ae255b103ac4fc3fabc5bf23f083b15236a` |
| 39 | `lemma` | [mkD_apply_of_continuousOn](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-apply-of-continuouson.md) | 208 | `result-track:a4ff969098ffb960332aa8e5eb7efe0f86277e924d6f77797244af76cc7d13be` |
| 40 | `lemma` | [mkD_eq_mkD_of_map_zero](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-eq-mkd-of-map-zero.md) | 215 | `result-track:e232da49f1ac44fb5395ee9edeefcd7476a1e583d51e096ccbac916ede8ad53a` |
| 41 | `lemma` | [mkD_eq_self](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/mkd-eq-self.md) | 222 | `result-track:8f7b869d5027a3edd13a0a1f50e32d9222fc759e6f6a1523f07bcf7a51902857` |
| 42 | `instance` | [instZero](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instzero.md) | 232 | `declaration-track:2dccc6979856f42516e6d6069111e7bd2c455fd2b35294918341ade9020743f3` |
| 43 | `lemma` | [coe_zero](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-zero.md) | 235 | `result-track:7bd49efe3fa195294728888faa2d026014e569bc00541fb358d8357756a42159` |
| 44 | `instance` | [instAdd](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instadd.md) | 237 | `declaration-track:f4cefa3ec031ea6735903cb4d2c9c6d59290b94907fee7d16821bf293b08c7ff` |
| 45 | `lemma` | [coe_add](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-add.md) | 240 | `result-track:52ffc18ffcd085e7e0e06e4f1f16759cacad8ff959aa355c9c6e1f0977f4ac16` |
| 46 | `instance` | [instNeg](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instneg.md) | 242 | `declaration-track:bdfd3a790496e6a256ba36bae2b4c9be02c8503df8796f10795eb6fbaa00f785` |
| 47 | `lemma` | [coe_neg](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-neg.md) | 245 | `result-track:5143be9548b5ed963a1aa5cb09cb60e73439df03bca6bf903cda26fdb24fbf5f` |
| 48 | `instance` | [instSub](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instsub.md) | 247 | `declaration-track:1b3dc4924c949b5c4e5490cf77bce915a1205c51ec1c03395ab108ea9842d92b` |
| 49 | `lemma` | [coe_sub](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-sub.md) | 250 | `result-track:4c3886034022e4ac42ebf211a171fc6592699bf8bb1c02502c1bf4927d598602` |
| 50 | `instance` | [instMul](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instmul.md) | 253 | `declaration-track:eb10f287a350c291aa11d60d361aad9da28dd1927e40c9ba49aea4442127eaf5` |
| 51 | `lemma` | [coe_mul](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-mul.md) | 256 | `result-track:753a4f4d6e725abed1d14b00239645275f43ba52925ba15dcd7aeb57895c1390` |
| 52 | `instance` | [instSMul](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instsmul.md) | 258 | `declaration-track:d09fb4fc7eebea8e550781416227d8c26e6f0ca6f0d53e9bfc8ced4d18ca70df` |
| 53 | `lemma` | [coe_smul](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-smul.md) | 262 | `result-track:ec9881f64ce3d5e3a20256e2d581435b634a333abb8fbc9e1a782a286364b723` |
| 54 | `instance` | [instAddCommMonoid](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instaddcommmonoid.md) | 269 | `declaration-track:d6cb6817757cca92db6a5daf117e3bc035de54f855847bcba64286c12c8ec26e` |
| 55 | `instance` | [instModule](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instmodule.md) | 272 | `declaration-track:e1df7b0ac6efc0cb272309b57e9cdc5e3468e7974c2411a08a14389f2afdba16` |
| 56 | `instance` | [instSMulCommClass](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instsmulcommclass.md) | 277 | `declaration-track:84dc6a7cf53d564b83cbb925b4c5e2bbafb522c1a11b7f63a6282e42b95b822a` |
| 57 | `instance` | [instIsScalarTower](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instisscalartower.md) | 282 | `declaration-track:8df03d00e147e01549064342149d86cfa00d2bfe2f3bf3a23d152421fe5db007` |
| 58 | `instance` | [instAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instaddcommgroup.md) | 293 | `declaration-track:ef9a2261a3c0eaa0a35a4bc4c9556334df2eb8a5c809e82f89a873af43ef10d8` |
| 59 | `instance` | [instNonUnitalCommSemiring](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instnonunitalcommsemiring.md) | 303 | `declaration-track:67cdded89499c111126868306ad57e82af880456908cee0da39e2dfefcb220c3` |
| 60 | `instance` | [instSMulCommClass'](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instsmulcommclass-source-edition-2.md) | 307 | `declaration-track:ef6cf68d5d32a10800c2c7747902817edbdb19ba78e480da95891331e66ef64b` |
| 61 | `instance` | [instIsScalarTower'](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instisscalartower-source-edition-2.md) | 311 | `declaration-track:a121eca4beb268414ed992bff38752cf78f01d6035549b491bb11852ad23a3da` |
| 62 | `instance` | [instStarRing](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/inststarring.md) | 315 | `declaration-track:240097e349f735e9b4097e3672d1fc51d72aa1453c0c1857f6b4dc1efcaea8bf` |
| 63 | `instance` | [instStarModule](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/inststarmodule.md) | 321 | `declaration-track:6b4569c251d23f51a688ffe5639660dd042a03a23de837db2335c392afbaf893` |
| 64 | `lemma` | [coe_star](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-star.md) | 325 | `result-track:f4bf10b10411a1452c811b20d3b04dc30e95b74b948f7e93bbe0f028db35dde9` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 327 | `declaration-track:742423bfe34928795a85db5589c07b5e38cbe5413630dbdb91aa3a2fed1b61ab` |
| 66 | `instance` | [instCanLift](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instcanlift.md) | 330 | `declaration-track:04cb8f9af026062708a1ba37033f1a3b2d95d493a2ffd82ecc205e179b9cfc97` |
| 67 | `def` | [toContinuousMapHom](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/tocontinuousmaphom.md) | 335 | `declaration-track:005713a2bf68cd8ccba1f1daf9b3828323bf5f11e5fddd3b53a8c42cdb359749` |
| 68 | `lemma` | [coe_toContinuousMapHom](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-tocontinuousmaphom.md) | 343 | `result-track:cc7d3ca90a7260adc41e4ab7cea2b1f16f1bd9c2d3b584ca75f15ad14cf03a3d` |
| 69 | `def` | [toContinuousMapCLM](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/tocontinuousmapclm.md) | 349 | `declaration-track:1e0c4c91ab6e15ba6453b13bc0ee396809934c8ea1671ebc47f522581da23acb` |
| 70 | `def` | [evalCLM](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/evalclm.md) | 356 | `declaration-track:d8477eaee2c43e62ff6ab71e43e855b8de88e6361d89c101a40bc277a04c2a4e` |
| 71 | `lemma` | [evalCLM_apply](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/evalclm-apply.md) | 361 | `result-track:68c440ac3c8b9148cf9f6fa0ec3cd14960924b15be74f3f7a0ce03ae96615a78` |
| 72 | `def` | [coeFnAddMonoidHom](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coefnaddmonoidhom.md) | 365 | `declaration-track:f48790a2e61464aef5429fb7d7987ea89c16a366feef5b8d0b24e679a15ded65` |
| 73 | `lemma` | [coeFnAddMonoidHom_apply](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coefnaddmonoidhom-apply.md) | 371 | `result-track:f0500e0a0fa167e22998165cc40a694485ea4e173bd57750ad3fa156b6fc41cb` |
| 74 | `lemma` | [coe_sum](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/coe-sum.md) | 373 | `result-track:060401bf426b1e8fce6c80ee60dad2f7e6f100a767688bc0aa16c1008d5a6c65` |
| 75 | `instance` | [instNonUnitalCommRing](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instnonunitalcommring.md) | 384 | `declaration-track:050db6ea1d5d281e50c8221d90113a2d484f724243e3c80489c957bd50fb1149` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 388 | `declaration-track:c1b51f4749ce96970c481d0e45bef2c66a6c950c7cd583488970bc38d3abf906` |
| 77 | `instance` | [instUniformSpace](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instuniformspace.md) | 402 | `declaration-track:0de502d1704b3e47e524e7c9e8d5d4cebe4de537a7c6ecf1d72bee9cd691aae3` |
| 78 | `lemma` | [isUniformEmbedding_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/isuniformembedding-tocontinuousmap.md) | 405 | `result-track:1e145c1959efd220aeccb7728cf41b9b50e2821f5f5005e512bf698415a8e4a5` |
| 79 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 410 | `declaration-track:94a1dd778f90b67d517d62d6c31b24e1d5b730b6cef4c16b2b0efcec9fada832` |
| 80 | `lemma` | [isUniformEmbedding_comp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/isuniformembedding-comp.md) | 414 | `result-track:d8a2642f1ab011d61206616acff3de0f80f2b292372c6af7a105aae8f7decd0d` |
| 81 | `def` | [Continuous Map Zero Namespaced Public](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/arrowcongrleft.md) | 422 | `declaration-track:b4424cc9b3f2dfae97a717ef020ab62bcc2e890255ee4824c27eb3a32fcf61b7` |
| 82 | `def` | [nonUnitalStarAlgHom_precomp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/nonunitalstaralghom-precomp.md) | 449 | `declaration-track:d47d0626ed1fd8f60442d6b9f0e7339631efad93f106851faa968fe9bede8676` |
| 83 | `def` | [nonUnitalStarAlgHom_postcomp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/nonunitalstaralghom-postcomp.md) | 461 | `declaration-track:192bbf3a28583ca4f5e9e94af10398149134f4b5dac80b6b553f67039c4eb6b8` |
| 84 | `def` | [starAlgEquivPrecomp](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/staralgequivprecomp.md) | 474 | `declaration-track:7b2b796a1d8f9817f7d8226aac30c3220cb75dacf82cb6e3ce7874a3aa8cd605` |
| 85 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 487 | `declaration-track:e1c88ab9f79b621f1fe2bb2e148b5f0731ea043c0ea18dd86575afb4de0d7e8e` |
| 86 | `lemma` | [isometry_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/isometry-tocontinuousmap.md) | 490 | `result-track:de989f701b4c114d0dab639f43a13dad9beed67bcf875d34a7f35144ba70e5f6` |
| 87 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 494 | `declaration-track:dfceee4277d08a63df164b4e9241cac1e455a0c426ba697b4267c0d03cfee562` |
| 88 | `lemma` | [norm_def](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/norm-def.md) | 497 | `result-track:fbb13e28f8b978f48b8db0698d457a77629eb8285338c5ddb8c9cde854578c8f` |
| 89 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 500 | `declaration-track:1e4a5ff12fce27ba6007f22d0e61d29374ba59627d8a76effc34b77e3f8886bb` |
| 90 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 503 | `declaration-track:f08e4c11a205e7a475e7fe0c12a2dd0b45daac6ced19a5fb6455dd9b049ca8aa` |
| 91 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 508 | `declaration-track:3e2ce9b3ffd227f629b2db1726d1dfd1a010ae1c21b358b970e2ffb73e829d60` |
| 92 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 512 | `declaration-track:207b852208bcbd77284de434d47eb1a267862b71afe66df96b3fd47d71a0e223` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8edb4d073f9ad82ab133defdbc97ddf4402abc28e0e559a17d27d934240c69d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
