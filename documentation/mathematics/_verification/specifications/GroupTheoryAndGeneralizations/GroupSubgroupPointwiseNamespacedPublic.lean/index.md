# Verification target: Group Subgroup Pointwise Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "059b519bd990107b2b66e16b82b5faa132809f04",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Varianta38a80599e8f5d05586a5366471decd83cd384053cf1d8103329f904132c2c0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `059b519bd990107b2b66e16b82b5faa132809f04`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Varianta38a80599e8f5d05586a5366471decd83cd384053cf1d8103329f904132c2c0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Varianta38a80599e8f5d05586a5366471decd83cd384053cf1d8103329f904132c2c0c.lean.json)

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
| 1 | `theorem` | [inv_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/inv-coe-set.md) | 51 | `result-track:b4fd04866cf5901d8579c95764891ee0200177bba14eac88f1e56a85384bd76a` |
| 2 | `theorem` | [IsSelfInv.of_invMemClass](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/isselfinv-of-invmemclass.md) | 55 | `result-track:1dbec70e3306b02f65b7f463947151fc4eb9ea8050401c1d698b96847ecaa80a` |
| 3 | `lemma` | [smul_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-coe-set.md) | 60 | `result-track:dc8c9f466131cd49d14b3ea08239355de3d7dbb658a4bc28237e0242b9f33e2d` |
| 4 | `lemma` | [coe_set_eq_one](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/coe-set-eq-one.md) | 65 | `result-track:4cb716b3590fbae8858ffc3ffaaaadfdbd864135edafa0e9fa27ae1fcd595676` |
| 5 | `lemma` | [op_smul_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/op-smul-coe-set.md) | 69 | `result-track:c0cc4a6cf4ed62f5ed5415186f5413efeb575d52218d509f0d27ae85520f61b1` |
| 6 | `lemma` | [coe_div_coe](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/coe-div-coe.md) | 74 | `result-track:30f5dd7bdcabb18f8e00428baf362b37ce881ed9781bff287efab9dd59a08b7b` |
| 7 | `lemma` | [mul_subgroupClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/mul-subgroupclosure.md) | 84 | `result-track:1ed4673c7c33a82222ed4d04482b3b9d5c417b479eeb2dc04ce0f9bbe9c4cb72` |
| 8 | `lemma` | [subgroupClosure_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/subgroupclosure-mul.md) | 92 | `result-track:52056bdbff4c28c41790248ca8776ce24d75314b73779a6e8e8b9b26c6e50cd8` |
| 9 | `lemma` | [pow_mul_subgroupClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pow-mul-subgroupclosure.md) | 99 | `result-track:42056e52fb4b015d6e88be23a9811b9d5885394bcab91a357bd61160fa747dff` |
| 10 | `lemma` | [subgroupClosure_mul_pow](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/subgroupclosure-mul-pow.md) | 104 | `result-track:7bfbd7867fd5d3f88f313f230d11e7113265e7f2d3f987aea550a99950d94444` |
| 11 | `theorem` | [inv_subset_closure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/inv-subset-closure.md) | 113 | `result-track:e54222140104593d83bd9132db15ce1de7b76619077b63c4846ee563cd087203` |
| 12 | `theorem` | [closure_toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-tosubmonoid.md) | 118 | `result-track:08ee8bd1abd3abb74180b6fd6a3f234ca658a99ecdaae51a328dcd8729156d37` |
| 13 | `lemma` | [toSubmonoid_zpowers](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/tosubmonoid-zpowers.md) | 129 | `result-track:63984454f6e3585ecba8ea862698ca190d5abe612b766d80cfd3d2cb3d464a5f` |
| 14 | `lemma` | [Group Subgroup Pointwise Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/powers-le-zpowers.md) | 135 | `result-track:593703118e97b7f2199faf31de35c10fa8d4e52ae94554a643056c0418640261` |
| 15 | `theorem` | [closure_induction_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-induction-left.md) | 144 | `result-track:29cf219ce8b08eaa1bdd0841c96455c8146678d06fbd61494ceed3d654f59a99` |
| 16 | `theorem` | [closure_induction_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-induction-right.md) | 163 | `result-track:72760c4c03ec568cc73a4af470f4d109f720f7ab16445b6e48e9ba4551070b75` |
| 17 | `theorem` | [closure_inv](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-inv.md) | 176 | `result-track:e7440221485d85d089bb35bb0cbc589ce53bce2407979c8e5d4c9208725d9c7d` |
| 18 | `lemma` | [closure_singleton_inv](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-singleton-inv.md) | 180 | `result-track:e3bd2c7e1aa4b053abefb85b50c06200c6765d6ebb55a1e67982e00c1d28ef0d` |
| 19 | `theorem` | [closure_induction''](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-induction.md) | 190 | `result-track:aad29445a482d25cd48cd5a62e393d561c6a6ecaa5ca889d5ee655d854e0bce4` |
| 20 | `theorem` | [iSup_induction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/isup-induction-source-edition-2.md) | 205 | `result-track:2f3ff79f1f80eecd58f54c26f99f2de2427f1bd56fc7e0dd6f94557620751fec` |
| 21 | `theorem` | [iSup_induction'](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/isup-induction.md) | 220 | `result-track:2cfea708a8703c638d4593a3c27a2093e656fa5a04ae3764058285e715a8353c` |
| 22 | `theorem` | [mul_subset](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/mul-subset.md) | 232 | `result-track:6e7191dbe01b4ed36b2a930d9e939229db204cff8906efb64ee621bb5b027d23` |
| 23 | `lemma` | [pow_subset](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pow-subset.md) | 236 | `result-track:e66e375272eac1ca8616e946f42696c945f8af5485a2896893bba86e8af068cb` |
| 24 | `theorem` | [closure_mul_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-mul-le.md) | 240 | `result-track:1afd652596a4c1a64b7fee669bd576c9b9dc9b919696994f4477a11bed4e9f94` |
| 25 | `lemma` | [closure_pow_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-pow-le.md) | 246 | `result-track:5646a3789d6317b0c1d291ece556239c3555ac6d4dac89f5c0ced0a4c9a91eff` |
| 26 | `lemma` | [closure_pow_anti](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-pow-anti.md) | 249 | `result-track:7c7c0ab4f431e7829c15ef5977345fa630f7a65a16349b3e31bf4bb796bb6a76` |
| 27 | `lemma` | [closure_pow](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/closure-pow.md) | 254 | `result-track:4bb83d29f09c7791cd8a531b5dd9effddd644e1f4df91e8e5713e003b7e0f0e7` |
| 28 | `theorem` | [sup_eq_closure_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/sup-eq-closure-mul.md) | 258 | `result-track:45feb29b9a4278b1220026bfb5de776c536f28f167c4adfc3f3b5c485ec6f009` |
| 29 | `theorem` | [set_mul_normalizer_comm](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/set-mul-normalizer-comm.md) | 265 | `result-track:49f9122dfb84fdbbfdbea6ab24b8a8ad7119fbe5ae39f30d7de269006eb9456d` |
| 30 | `theorem` | [set_mul_normal_comm](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/set-mul-normal-comm.md) | 273 | `result-track:b494cf78480b6fca90258c0f770b48980dcfbe64c873baf0d46b965903b458ff` |
| 31 | `theorem` | [coe_mul_of_left_le_normalizer_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/coe-mul-of-left-le-normalizer-right.md) | 280 | `result-track:eb524ddf04f852f1aad3f158650248a4e575fb59422dc8a17270291fd86cee44` |
| 32 | `theorem` | [coe_mul_of_right_le_normalizer_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/coe-mul-of-right-le-normalizer-left.md) | 302 | `result-track:6dfee772cd734581fdc5292825470101d8e9ffe417a5a8bea932df13dc4a30bc` |
| 33 | `theorem` | [mul_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/mul-normal.md) | 309 | `result-track:e92924daccb9b83c87a740168fbdc582ad7b463fffd99bfbe06d3fd50e48fb9b` |
| 34 | `theorem` | [normal_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normal-mul.md) | 315 | `result-track:fccd9c841de1a8a6f9d8fa831b19a01ef0473c694ae6887df0fe35283bf775b1` |
| 35 | `theorem` | [mul_inf_assoc](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/mul-inf-assoc.md) | 319 | `result-track:ff74902e0fce3e287b4de7783f716c3d39871b011371aa3d0c2b07780012c88d` |
| 36 | `theorem` | [inf_mul_assoc](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/inf-mul-assoc.md) | 333 | `result-track:0d02098262d1d41de7c5d17b118c0a9ac995c2aecfaf8bf61cb32bd655ecbc4f` |
| 37 | `theorem` | [iInf_normalizer_le_normalizer_iSup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/iinf-normalizer-le-normalizer-isup.md) | 347 | `result-track:313b1c5aca087a789d4d46e6b2fba81dfd3e0433a16234c5d7508c4310c27ff7` |
| 38 | `lemma` | [conj_mem_sup_of_mem_inf_normalizer_of_mem_inf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/conj-mem-sup-of-mem-inf-normalizer-of-mem-inf.md) | 353 | `result-track:4818086456c79627a207feb1688a105d4495bf8132495d4d01d10f08593f2976` |
| 39 | `lemma` | [normalizer_le_normalizer_sup_of_normalizer_le_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normalizer-le-normalizer-sup-of-normalizer-le-left.md) | 359 | `result-track:aaed65d67206cdf6dfd8ec86c6030d6b54e36e247b14866d063f98353a8be404` |
| 40 | `lemma` | [normalizer_le_normalizer_sup_of_normalizer_le_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normalizer-le-normalizer-sup-of-normalizer-le-right.md) | 365 | `result-track:b7010871d0405bc83041f7ff3793e89ce39231bbf511e9cda00bafb297246ac6` |
| 41 | `lemma` | [normalizer_le_normalizer_sup_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normalizer-le-normalizer-sup-normal.md) | 372 | `result-track:0d2d6432377a75c8e9a181c444232e437a5091c240423b26454ab68c70722c58` |
| 42 | `instance` | [sup_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/sup-normal.md) | 377 | `declaration-track:f8f276dd1f1c1d73d48503cbd045d71d7e9306364c1a27b5b8555cc97c774ec8` |
| 43 | `instance` | [iSup_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/isup-normal.md) | 385 | `declaration-track:547328c165682d84abec81e7383ea549386e7e98119b75d86830d44233daba9b` |
| 44 | `theorem` | [biSup_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/bisup-normal.md) | 391 | `result-track:a26fab867ea8f5f119612ab61937751266b8d1897634c37c3ff82fc92d234acb` |
| 45 | `theorem` | [sSup_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/ssup-normal.md) | 398 | `result-track:182861179bef5b075c29024d346498e6d79644e10987aac51172c11e125e9997` |
| 46 | `theorem` | [smul_mem_of_mem_closure_of_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-mem-of-mem-closure-of-mem.md) | 403 | `result-track:90fdf8735ba8e6d424007846780ea2f98c8b1093118b9541aea17bf02dc20242` |
| 47 | `theorem` | [smul_opposite_image_mul_preimage'](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-opposite-image-mul-preimage.md) | 413 | `result-track:0020be87eaac773b84d6d39d2308fab2fba57c761b872e80ad106c6061babc70` |
| 48 | `theorem` | [smul_opposite_image_mul_preimage](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-opposite-image-mul-preimage-source-edition-2.md) | 419 | `result-track:795522ebbf5fd0c04a74ce87049fd57e232bd4c661624f90b675ded8b6a6bd1f` |
| 49 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pointwisemulaction.md) | 434 | `declaration-track:6872644774414f85435079076f4e65804e87cf2885da1437577360830c5901bc` |
| 50 | `theorem` | [pointwise_smul_def](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pointwise-smul-def.md) | 445 | `result-track:a6865888a855ac2ad7b34d69990a82f1790fc086c918effb23e4cb10ed3d42b2` |
| 51 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/coe-pointwise-smul.md) | 450 | `result-track:c7f004d4c978b32e178d6e5e2264e6189b00e4d78dd16ff4f82408d522a86618` |
| 52 | `theorem` | [pointwise_smul_toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pointwise-smul-tosubmonoid.md) | 454 | `result-track:cc846612c60d649f0381deb2f556ca80e441dbfc9249a0e1fb72d5199df95987` |
| 53 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-mem-pointwise-smul.md) | 458 | `result-track:669133b50920025dd72d6b672c68afba0b5490e3ed34e217fb45d0a912a64130` |
| 54 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/instance.md) | 461 | `declaration-track:d61d236725b35144316a9330bc0aee08b2b5c25a1d020b7f482d6c604bbbc048` |
| 55 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/mem-smul-pointwise-iff-exists.md) | 464 | `result-track:a45d4e7776415960611ae15bad5cbc1e68cc8245102854c3efb327ee26ae3894` |
| 56 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-bot.md) | 469 | `result-track:616324c292e6f61e47fd1ecc51dc62e7bb7c6216ad1e4ea9001ed43c1dcafd03` |
| 57 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-sup.md) | 472 | `result-track:13e7eeb1c298fd59e460b710ce1ed4a78552dc76861cf0c385aea9e980fe43f8` |
| 58 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-closure.md) | 475 | `result-track:964004705c468662c6d1afc5bc6328ebdba0b5ec342bec8d6c7c3f7514db6c3e` |
| 59 | `instance` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pointwise-iscentralscalar.md) | 478 | `declaration-track:5e817e38827d7178e1f41597c11d432bec58e1911e1187be31b25cd8a19b685f` |
| 60 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-mem-pointwise-smul-iff.md) | 489 | `result-track:898c0c6375911e232f93d70a66dc433984325d8f536363589cead99b3ccbb456` |
| 61 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 492 | `result-track:743cc2b7db7a28711b3cc55a398b95f5e801817f71e947eef877ab940a6314eb` |
| 62 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/mem-inv-pointwise-smul-iff.md) | 496 | `result-track:1907053242a32198aca45b053bfe3ddad8f430e8c44d249b3d3f6c184d486d72` |
| 63 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 500 | `result-track:1a331ca2d758c493f64ce9ec1b92ef25b2c100328a527107e61b7f5972863673` |
| 64 | `theorem` | [pointwise_smul_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/pointwise-smul-subset-iff.md) | 503 | `result-track:f724422621428402abce146aca1cf08e0fb7b86d0050bbdd6061ba4117328b86` |
| 65 | `theorem` | [subset_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/subset-pointwise-smul-iff.md) | 506 | `result-track:6024b946cdc7e89eca078a2be6e26da01c31ab9653086322a9e3e686ad9f3577` |
| 66 | `theorem` | [conj_smul_le_of_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/conj-smul-le-of-le.md) | 509 | `result-track:0f4a6fb1843e576e87d59ceb48cb99c0f1495670e6aca6f82a833e9e761daf7a` |
| 67 | `theorem` | [conj_smul_eq_self_of_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/conj-smul-eq-self-of-mem.md) | 514 | `result-track:b03cdb5690f788a1490c9e340d7baf6b5c18e730615ee5d81d0dfcf0733997c6` |
| 68 | `theorem` | [conj_smul_subgroupOf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/conj-smul-subgroupof.md) | 521 | `result-track:e3211414ec15e2ebeefe599c9422d6f72f0ff9544c78306b28974dc21b974aa9` |
| 69 | `theorem` | [smul_inf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/smul-inf.md) | 530 | `result-track:07fbb3cbaea22106450c8a439878b06feb988f5fc675c4d224895ecb63c67da7` |
| 70 | `def` | [equivSMul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/equivsmul.md) | 535 | `declaration-track:55c23a1be4b569a33839fbf90512c7bd74922d084fc947a71bf5fc9bf65a909d` |
| 71 | `theorem` | [subgroup_mul_singleton](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/subgroup-mul-singleton.md) | 538 | `result-track:40582f8abb49e8721759a8bc2ef0d80a92c5a4ccd582b9a4588ad90080fa29df` |
| 72 | `theorem` | [singleton_mul_subgroup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/singleton-mul-subgroup.md) | 541 | `result-track:2173e6700a0f8cda86cf7ba023e082e0c1dbfe52cd90f5858d29819c08103bc0` |
| 73 | `theorem` | [Normal.conjAct](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normal-conjact.md) | 544 | `result-track:5b90c9b8ccb0d89c7d964c8918e92020f2a3d1b9eeafdbb9cf8c99821c7c8e86` |
| 74 | `theorem` | [Normal.conj_smul_eq_self](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normal-conj-smul-eq-self.md) | 550 | `result-track:fd1b1a285550d4282db8a9d401596448a3189a5ca77e3e55f2941de7ca4bac8c` |
| 75 | `theorem` | [Normal.of_conjugate_fixed](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normal-of-conjugate-fixed.md) | 553 | `result-track:69f4914354d185d222cbcea1961f370a3bd3f13c5b27e0960010b9f8384de3ca` |
| 76 | `theorem` | [normalCore_eq_iInf_conjAct](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/normalcore-eq-iinf-conjact.md) | 563 | `result-track:1847448373d28e620e92ca68ae357121fd22e30383afd58ec188c7fab9b36408` |
| 77 | `lemma` | [conjAct_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/conjact-pointwise-smul-iff.md) | 570 | `result-track:cac2d476bba7792c8e88cb06a340f6084f204b8d4a44287f530ebda41bf84fa0` |
| 78 | `lemma` | [conjAct_pointwise_smul_eq_self](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespacedPublic.lean/declarations/conjact-pointwise-smul-eq-self.md) | 576 | `result-track:e61cb9b01af1d2772c4f73bf54a7195698b8848d964c90a20aae006d050104bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04b1129cbda5b90228b63c693448449a224805bea2774193037c968bebc0aca2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Varianta38a80599e8f5d05586a5366471decd83cd384053cf1d8103329f904132c2c0c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pointwise/Varianta38a80599e8f5d05586a5366471decd83cd384053cf1d8103329f904132c2c0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
