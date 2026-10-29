# Verification target: Hom Monoid Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b90c52ba0bf9a6ffd36e81999d187b25dd0b9bb",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b90c52ba0bf9a6ffd36e81999d187b25dd0b9bb`.

Source path: `GRWTSK/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean.json)

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
| 1 | `structure` | [OrderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/orderaddmonoidhom.md) | 86 | `declaration-track:49d3f0a82a0cf6daeafb8bd2c940d3af450739b72e0617955de0849ba90f9c4f` |
| 2 | `structure` | [OrderAddMonoidIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/orderaddmonoidiso.md) | 102 | `declaration-track:ddfff0fc2b747ec5d445fe41048469057d2c4a7c88d18f40c753b992ed6eecbe` |
| 3 | `structure` | [OrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/ordermonoidhom.md) | 123 | `declaration-track:9be3c8730915bab899f629b096d9c9d3fd9095f89d3da541fe7bc6cbd4cc5388` |
| 4 | `def` | [OrderMonoidHomClass.toOrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/ordermonoidhomclass-toordermonoidhom.md) | 139 | `declaration-track:b17297195c3d0141d04ab5fa463667e60ef8706fd3802dbf8e36b7a57787af19` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 147 | `declaration-track:9a4394d27b5d755828c983820120a2dea23eb393d2046637d66db897b54871cb` |
| 6 | `structure` | [OrderMonoidIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/ordermonoidiso.md) | 158 | `declaration-track:13a98fe3e38ab7e9de726e20e40c2c1523e190cb55c8414829f0bb320563ecd6` |
| 7 | `def` | [OrderMonoidIsoClass.toOrderMonoidIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/ordermonoidisoclass-toordermonoidiso.md) | 172 | `declaration-track:65a12466903a34328021a2f617447b8c090a0fa843978fd408fb72e346cb2e80` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 181 | `declaration-track:ee261da30f09566c8d929cbc1ce5b5f7e3369674062c0a3d863e9a159af5407c` |
| 9 | `theorem` | [map_inv_le_map_inv_iff_map_le_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/map-inv-le-map-inv-iff-map-le-map.md) | 192 | `result-track:e848eb753d889852ffc2cf8ebbd0cee972d05ab74f86a9e95a78cc9107b371dc` |
| 10 | `theorem` | [MonoidHomClass.ext_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/monoidhomclass-ext-iff-le.md) | 202 | `result-track:cb9e1c271028ef0d75392c10f89334d50f0423bedd9c28ee5d349e7a59fcd7c6` |
| 11 | `theorem` | [map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/map-nonneg.md) | 217 | `result-track:adc1bd5fefa2eccad304f36a434ddb8a6eb6325a059d26651f3f1e5a7201f8bd` |
| 12 | `theorem` | [map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/map-nonpos.md) | 221 | `result-track:faa0cad04e6dcce111ba3dcd88e65e919c0980536c869f34b038239b8e4a3e00` |
| 13 | `theorem` | [monotone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/monotone-iff-map-nonneg.md) | 233 | `result-track:d00130ffda3cff3a1daf98fe02c729602b5b0325facd5dd87ad4663f6fd004ee` |
| 14 | `theorem` | [antitone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/antitone-iff-map-nonpos.md) | 243 | `result-track:aabd9602b77a72fcb360087c23e509f4f0ddaa333bb8891101a28a81b5f769c4` |
| 15 | `theorem` | [monotone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/monotone-iff-map-nonpos.md) | 246 | `result-track:0bcf6009d1224aaf88df058e1c5787b3424d7289cb52c85b86a3e61846c97591` |
| 16 | `theorem` | [antitone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/antitone-iff-map-nonneg.md) | 249 | `result-track:0b1bf9ea9a8da278373620238dbdbfcac57f748f40d0785f5982bf3c02b23039` |
| 17 | `theorem` | [strictMono_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/strictmono-iff-map-pos.md) | 252 | `result-track:edf07387fda1097e6a292f99825323e7e704a728752982c6ceadd67171e83c92` |
| 18 | `theorem` | [strictAnti_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/strictanti-iff-map-neg.md) | 260 | `result-track:727a9723be1ebd99eb360edef978b1dcb164a03525ee75f046b39c55c3b133fc` |
| 19 | `theorem` | [strictMono_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/strictmono-iff-map-neg.md) | 263 | `result-track:fa9b01bdb061a2b7dd521dd74ff3af9397113f7346a872443c80b14c0c9525ad` |
| 20 | `theorem` | [strictAnti_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/strictanti-iff-map-pos.md) | 266 | `result-track:5b16effa2d0558ec9bf1bf72b47c464350c36726e872548970b7c939c9a8e715` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 279 | `declaration-track:680cd14f80649a78a187c5c71a0799a96f050896eae7e64aa1cd9a75f015041d` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 290 | `declaration-track:a32991139ff9d9b07cc38b71f34b664992ef3d044dde60da1501aa8f6504d86d` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 294 | `declaration-track:f4447c88e14015489969d0c73f4ab37dbdb2564b0c44089bd6698b47516a2aae` |
| 24 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 300 | `result-track:5f0585d6bc8aefb1e23827562ac69ad2d2df628a7c7070b3024161e822bbb8ef` |
| 25 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 304 | `result-track:36402894212c86eb777331e19ff45bcfacff33882c23f647929a7ecbaeff54fb` |
| 26 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-mk.md) | 308 | `result-track:8d9286c2ce3352685bdebc96e312a525c62d8aebd58abb4266847a9cfeb09bba` |
| 27 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/mk-coe.md) | 312 | `result-track:6e153d78003a295d722ba4617e0f68a4d34d0f0aa0d8ef2211985e25ef442f2f` |
| 28 | `def` | [toOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/toorderhom.md) | 318 | `declaration-track:0105e82b0f8a941f050a730648b70f8e9da9275e6737b7d9eeb171a9afe74856` |
| 29 | `theorem` | [coe_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-monoidhom.md) | 322 | `result-track:1033878554173611c17aac1e5a5a9dd727cf2d3b195984efd9439bf32494695b` |
| 30 | `theorem` | [coe_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-orderhom.md) | 326 | `result-track:573600fed00ff8574bae0e27f8cba3a8a8600f74e4ac35282bcbbc3f9101fb33` |
| 31 | `theorem` | [toMonoidHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/tomonoidhom-injective.md) | 330 | `result-track:e91e0b268d50a9afc728edc662ef6971643726f00de4a16651ae77c7cf9b9776` |
| 32 | `theorem` | [toOrderHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/toorderhom-injective.md) | 334 | `result-track:eda9cc84997eb9539b7a49cc39468b8986deb49b91913aa2b1e184bce7177d21` |
| 33 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/copy.md) | 341 | `declaration-track:90d9a95e8bb913994551eade558e83c626c221b6d67225a7a99ad84bb341a502` |
| 34 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-copy.md) | 345 | `result-track:2f20e7b371125d6659cb81b657e885439579a9fb64c3e797c3f029b98696896b` |
| 35 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/copy-eq.md) | 349 | `result-track:3b512b0f98a165fc0c486a9f0f7407d9fb7d9068164937e311b83160b983bcfc` |
| 36 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/id.md) | 356 | `declaration-track:ded3bdbcce1b696f93f60bb6c964117989b1a658ab4aca5012153685e8f525de` |
| 37 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-id.md) | 360 | `result-track:b0ce75b0a96f34d1088bb7223c72f6411e91ca85ab806e394014edd4a0d1ca9e` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 364 | `declaration-track:949253690704f979774b6b7e204787d3d96a8cdbf959bce205afb5ab625e6cf6` |
| 39 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/comp.md) | 371 | `declaration-track:901b65fd563647d8274e1378264ff58917ed0ab08b8da7ea299f82ebb8a4e1b0` |
| 40 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-comp.md) | 375 | `result-track:f9e621f89c514f187cd1f5a87d1b093c6b13a179314d15d9be6782bdbe188b2a` |
| 41 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/comp-apply.md) | 379 | `result-track:bea67436ef39bec3d1fa5a9384db8ae94d2e7d2254dc3b6fec7de08980dbac9a` |
| 42 | `theorem` | [coe_comp_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-comp-monoidhom.md) | 383 | `result-track:8e1f9a1753888e3f984ad8db0f4865da462f9b4cdeb02c45985976087b72206d` |
| 43 | `theorem` | [coe_comp_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-comp-orderhom.md) | 388 | `result-track:ff43759b9bc097b369f39f3c46538436310f6899c685eaa9497251a07e148964` |
| 44 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/comp-assoc.md) | 393 | `result-track:95343f6bac950be6ff219ea7379d705cc47472f909a4543e5c17637693fff817` |
| 45 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/comp-id.md) | 398 | `result-track:889cd00bcef121e790a2b035080b677b49753c27dd80222f06ec63c68a2c6111` |
| 46 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/id-comp.md) | 402 | `result-track:cf254b681eef0d222ffb596a1c0284f928790da3b61ae99eb5935e1b82f606c2` |
| 47 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/cancel-right.md) | 406 | `result-track:7951468bf873fc6d378ad8c6a640748abd4f334c473ff5198165ce1cd2513bfc` |
| 48 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/cancel-left-source-edition-2.md) | 411 | `result-track:a78e33fdc73863ed51645c21b39c341871422587718fb658dcb7c2ef28b4d6f7` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 417 | `declaration-track:16b5105dc96f9992dd460e221411ba30e66fa79a090d9cdb5fcfa6dbcaf82241` |
| 50 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-one.md) | 421 | `result-track:e8a410eb699ead646a3bd5feb2242944b1ddd2015690ba9f222b546c2d6919ab` |
| 51 | `theorem` | [one_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/one-apply.md) | 425 | `result-track:d32c6a41ae60af784f21dcc934d544e94f48b6a96e39a2e4ae45a3edf16e9a99` |
| 52 | `theorem` | [one_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/one-comp.md) | 429 | `result-track:a5e5ca3818e7fdf368a11ea81ce1000e2fb6ed5059719db4dda7d11c1e37f99a` |
| 53 | `theorem` | [comp_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/comp-one.md) | 433 | `result-track:073704ce9f7c860b3c9d7a5f0dde5b565feab08f0126beba9f0f684da4c7ea6a` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 448 | `declaration-track:53c8a7391a137d21dd1fc401db89e1346d072f24b7a715635da88ae8b6fbadcd` |
| 55 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-mul.md) | 452 | `result-track:ab6feb3a76deb664cea6074b69f8d5d45707aa6e94b619be6cb35c76a4f2184a` |
| 56 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/mul-apply.md) | 456 | `result-track:96a0b1f604c68051b8da6453d36b386afd79ea4549ba285933f2de069029acd2` |
| 57 | `theorem` | [mul_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/mul-comp.md) | 460 | `result-track:f4d13e05dc8d89251d4395462eab47a80c65e6a3cc4a31605aaa69c8ea2a3c47` |
| 58 | `theorem` | [comp_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/comp-mul.md) | 465 | `result-track:32865cc1f657dcf85c6155fadee6c2372b3317524ecb9e21d2e17e302d99d1dd` |
| 59 | `theorem` | [toMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/tomonoidhom-eq-coe.md) | 476 | `result-track:11220d03d5f3b68e78726367333f9110e2d8ccf008b5471abe1c2e7f16be64b3` |
| 60 | `theorem` | [toOrderHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/toorderhom-eq-coe.md) | 480 | `result-track:dbddf8d0ace4075e80d50a07cddab30f140b1217f87d2caeb3997721c692ffb1` |
| 61 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/mk.md) | 493 | `declaration-track:c0af9164576acc4ed4450d4d7626d95c6631fbfd37eb43b464e339d8e5098aa7` |
| 62 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 508 | `declaration-track:d7ed4ad571a9aa3d5a0c1bc51d1ccf22fa9ef9cce0db89443848dcd0e211bc11` |
| 63 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 519 | `declaration-track:081292f6bcf088490824ff3761d095c894d3f5eeff40143609fac0cf7040b221` |
| 64 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 523 | `declaration-track:8582b077bc6f3a95879a94d93a8cef4bd780657afa19b1a1c0704bde511762d6` |
| 65 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/ext.md) | 528 | `result-track:3a296fc68bdb365095a128fbb4b451c04ba6e12497360de62f717f6bea4f58ba` |
| 66 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/tofun-eq-coe-source-edition-2.md) | 532 | `result-track:5992e8a21ef37c72aa4efc4440694cc874e54fc003424c6c2bbea6f212c1b41e` |
| 67 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-mk-source-edition-2.md) | 536 | `result-track:9bb54cf565ace9954e8b1d36d7971834a5354d92eba364a399d01949b27451af` |
| 68 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/mk-coe-source-edition-2.md) | 540 | `result-track:9e908802efd61eadfb5028cae5a94f859f6afd92c9f64c945a1b3d66ba14f3de` |
| 69 | `def` | [toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/toorderiso.md) | 545 | `declaration-track:a54bd746fd2b4ea979552b66df924a79e88c8acaf985ec1aaca98c2798a5d116` |
| 70 | `theorem` | [coe_mulEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-mulequiv.md) | 550 | `result-track:75f8e9a952488f5e812bce6aa5a6c438ade233e69c83a66c9f25f9f85a990629` |
| 71 | `theorem` | [coe_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-orderiso.md) | 554 | `result-track:83130d28ba1ed910550a40f2e217639825928c46c927f4e37eeb2e3df572d6ac` |
| 72 | `theorem` | [toMulEquiv_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/tomulequiv-injective.md) | 558 | `result-track:5dafa7d7f621b503f99fde78d3d9ad8e3cac835ea25c68fd3c197edf2d9de945` |
| 73 | `theorem` | [toOrderIso_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/toorderiso-injective.md) | 562 | `result-track:fd5e87e7aa8a609bebb6c7c72ca5e53b046933ff3deb9932c2cedd179be9e19f` |
| 74 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/refl.md) | 569 | `declaration-track:848df9ac88983f2672c301929f532c98c02055c836734b2945c59daa9ab861cc` |
| 75 | `theorem` | [coe_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-refl.md) | 573 | `result-track:c8f3e65b887e7fdbb8f880424f96c5d01519178d51799afc7fbcb5e154e85a52` |
| 76 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/instance.md) | 577 | `declaration-track:004336e8a43dc9d61ead24f4e7a7b294928a3f5e6f62285ea9b710296626cb79` |
| 77 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/trans.md) | 584 | `declaration-track:ac6fcc8ae9421553e6d019a29307723e4c8d770f44051c288c3ad2690c022043` |
| 78 | `theorem` | [coe_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-trans.md) | 588 | `result-track:2817cfed2fe3a88bbf3422bbd4133e79cb8609556d13cbada64b400d6a5dd1c1` |
| 79 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/trans-apply.md) | 592 | `result-track:6360b68566cf56cd3bf30b3012265858fd138c413c5a37efd278c97b999db077` |
| 80 | `theorem` | [coe_trans_mulEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-trans-mulequiv.md) | 596 | `result-track:45bb9757da96d35897af74b906a03431e02e7c06bc37daa7739646946ea99804` |
| 81 | `theorem` | [coe_trans_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-trans-orderiso.md) | 601 | `result-track:282bfbadb1d041e3c59ed8151d23d6ee413f5dbfbf42615f264b5c39505ceaa4` |
| 82 | `theorem` | [trans_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/trans-assoc.md) | 606 | `result-track:dfaeed3858181f74ed8f665497126ad3a5d47c0f80aad0f503b6dceb34151229` |
| 83 | `theorem` | [trans_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/trans-refl.md) | 611 | `result-track:a80fbb38bc878af218ec2b69930de555a53dba0cb4a87701cefa7ad9db240702` |
| 84 | `theorem` | [refl_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/refl-trans.md) | 615 | `result-track:e5908352dcffb19e4327216ba0e3423850db8a9c8b159bfdd333aaeb28bab424` |
| 85 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/cancel-right-source-edition-2.md) | 619 | `result-track:f6b86698fde1732286d411dece7b9508b67c4df813dd5d68ad48707326648e91` |
| 86 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/cancel-left.md) | 624 | `result-track:8041900097629c1e8688cf823bff0c072d753d22f0c3b158e0d6ace240c01fe0` |
| 87 | `theorem` | [toMulEquiv_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/tomulequiv-eq-coe.md) | 629 | `result-track:1f5d5b11a8d69ad46e3bcb986d22f206c3c989cbd06608b412273fad1e4332a2` |
| 88 | `theorem` | [toOrderIso_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/toorderiso-eq-coe.md) | 633 | `result-track:4611d986658e3e8c2e8084d669950b0537709eba37f8b0490f6cc3959c16b14a` |
| 89 | `def` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm.md) | 638 | `declaration-track:d5135cbe447aa5745046abd92662eb9a3c92272674247ce00ba892b1644b5c69` |
| 90 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/simps-apply.md) | 643 | `declaration-track:c21d3ceaa7d9a52878b9cd0c85dd8b82a33a9049c80216f5d4699f1c6fcd06ca` |
| 91 | `def` | [Simps.symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/simps-symm-apply.md) | 648 | `declaration-track:02df6f1e9b1fd896827f981800300d2218113deb4064f505d34cf1347dc1b47d` |
| 92 | `theorem` | [invFun_eq_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/invfun-eq-symm.md) | 655 | `result-track:42f5c6c4ca9f61d1b352d025b531fd6bf9ae836d306813d71f5a4bd4ba497b0e` |
| 93 | `theorem` | [coe_toEquiv_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/coe-toequiv-symm.md) | 659 | `result-track:5e810d004d56d15d7af7e3f01d0ffd2fc0764ccecc7cf01ee40e09d675834fdc` |
| 94 | `theorem` | [equivLike_inv_eq_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/equivlike-inv-eq-symm.md) | 662 | `result-track:0939c47cff8259e0f207ab4a9014fe9fa80a08b3bc25b323a0fe670a4287be23` |
| 95 | `theorem` | [toEquiv_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/toequiv-symm.md) | 665 | `result-track:acd94c369739fb9e531ca05ba3d59a1ad6d43586a0a3bc43d74d31243e10377d` |
| 96 | `theorem` | [symm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm-symm.md) | 668 | `result-track:7a78843e930cf453f4a2efa2c759b2fa0225846e411027a90d37d14cfd3024fe` |
| 97 | `theorem` | [symm_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm-bijective.md) | 671 | `result-track:9f1a1b5550f6dd90bd254ef3ee6e0ec49e61c79d535c69ef72f7e547eaf0b04d` |
| 98 | `theorem` | [refl_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/refl-symm.md) | 675 | `result-track:990806419851686f6752d4d0be102fb351abc6b16b1937ede83848cc241f9124` |
| 99 | `theorem` | [apply_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/apply-symm-apply.md) | 680 | `result-track:e556eddc0936f29a86fc935afa2b8aea4552476065d5d433ced3af21c2ef6027` |
| 100 | `theorem` | [symm_apply_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm-apply-apply.md) | 686 | `result-track:248b003cb537a1f1c6eaa8b20c090bf0933fec0665da336ae06a5664b0c0b451` |
| 101 | `theorem` | [symm_comp_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm-comp-self.md) | 690 | `result-track:50bf8941d7a186ecd5a60ddd1b531f8ef3eeaa6033c49aec201421c6bc4b396c` |
| 102 | `theorem` | [self_comp_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/self-comp-symm.md) | 694 | `result-track:844d51863b9b9fabebf3bc072dfdc4fa6af7a663ec8a75e6d63097ce2a6037c1` |
| 103 | `theorem` | [symm_apply_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm-apply-eq.md) | 698 | `result-track:c27d7871087ad63b2578b8c0a3a6f62b2055bb835c7d78d47370aaf9313b1bea` |
| 104 | `theorem` | [eq_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/eq-symm-apply.md) | 702 | `result-track:3565b655632de5be98a06f5c9298abc95b1b978d38ea716e95f68461fcb5913e` |
| 105 | `theorem` | [apply_eq_iff_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/apply-eq-iff-symm-apply.md) | 706 | `result-track:531c2b4dabb51fc37d0acfd1d7468094812345a3465ac6a8fa56c9123f150a64` |
| 106 | `theorem` | [eq_comp_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/eq-comp-symm.md) | 710 | `result-track:4dfbfca06ad3b2f3ec9d1c6cf11327fd08f326bb526b095159c82a635a01f204` |
| 107 | `theorem` | [comp_symm_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/comp-symm-eq.md) | 715 | `result-track:8f101574290e46d3ea4e69e19906ff9f1b5f090de0fa2999c6020f038fdbd4a0` |
| 108 | `theorem` | [eq_symm_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/eq-symm-comp.md) | 720 | `result-track:60bba15799b67f172549f9d75d14824ae542f2af65f3d17e58cea75e4e55fa41` |
| 109 | `theorem` | [symm_comp_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm-comp-eq.md) | 725 | `result-track:fbfdcb987b2110a952ceb13902d96beb55d15377f6c5ac1058b30982fd12879d` |
| 110 | `lemma` | [lt_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/lt-symm-apply.md) | 730 | `result-track:dcaf0cd018fd844944f0be6e7359baab202cab292b03f7c0097777ce6456b526` |
| 111 | `lemma` | [symm_apply_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/symm-apply-lt.md) | 734 | `result-track:97060ddddb0b86352c70405dd8ec4eba6980faea3ed89ffa3a4337960a118354` |
| 112 | `lemma` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/strictmono.md) | 740 | `result-track:be67318e9fb3b8e24550b6fdf950edcd1fc9fca8871282198499cd02551e6724` |
| 113 | `lemma` | [strictMono_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/strictmono-symm.md) | 744 | `result-track:ed4bf3e4500fa3b79d0d3ffebef8f4847fc247dca9041f23b30da14d3a9d2212` |
| 114 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedPublic.lean/declarations/mk-source-edition-2.md) | 760 | `declaration-track:d490655673c576775f49cd7217918126aa275e3a52176b9541b2eabbb80c6b66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f997c9bbe9d8d33c27a8a77fe8822ec8cf445e4373f8e45ff462bccd4bd89b4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
