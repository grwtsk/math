# Verification target: List Min Max Namespaced Maximum Eq None

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b53ca8167c6249dced0a2ce247ce3e59f9452cb6",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b53ca8167c6249dced0a2ce247ce3e59f9452cb6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argaux.md) | 45 | `declaration-track:66ac034329053d161eae56a0c1ede26a7210cab05127864693f62859d8c5369a` |
| 2 | `theorem` | [foldl_argAux_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/foldl-argaux-eq-none.md) | 50 | `result-track:38a1f0c6c3545f45355bb05f4a098ec298d517e9f19f02af4c84001f0a0de206` |
| 3 | `theorem` | [foldl_argAux_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/foldl-argaux-mem.md) | 55 | `result-track:917222360fc7b23e54a743d5398478f7b224a0a02054d158f78001c17b62dcb2` |
| 4 | `theorem` | [argAux_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argaux-self.md) | 73 | `result-track:af40738f54147e85a7a69de441307bb4dd9aa03b4c8a7214295ffbaf974074ae` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/not-of-mem-foldl-argaux.md) | 77 | `result-track:93fe1a191f0f5cc2a437e48ecb7f7301df44003587c614f977041e543f1d4f9f` |
| 6 | `def` | [argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax.md) | 106 | `declaration-track:7c2078d9415bb848b7f070520b2cf5138a69a246d983c672b540c95be5150512` |
| 7 | `def` | [argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin.md) | 113 | `declaration-track:84cd9407f21eec7e04462f667bf1039198e957d9e01b8fe9c9dae04401e2386f` |
| 8 | `theorem` | [argmax_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax-nil.md) | 118 | `result-track:9f6d4b8f0ae527fad23eaace52de904f048f2d5eab30e22332d0cbf90a2be646` |
| 9 | `theorem` | [argmin_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin-nil.md) | 123 | `result-track:74f3bd94a93a95881bc8617e60793437a034d6dccd0880b961e922ddbf11557f` |
| 10 | `theorem` | [argmax_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax-singleton.md) | 128 | `result-track:bdb401f7d8973e2418515d2d4a7c784ec0ace78369c0bb9574c1013bad75a28d` |
| 11 | `theorem` | [argmin_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin-singleton.md) | 133 | `result-track:59da6092c410f546d43262e4e0903ef706da718a93730c291b792b365df023f6` |
| 12 | `theorem` | [not_lt_of_mem_argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/not-lt-of-mem-argmax.md) | 137 | `result-track:d532f7dfa3bf1cb3e92db56b55845389982388d4d7fee3bb3ce6602724270767` |
| 13 | `theorem` | [not_lt_of_mem_argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/not-lt-of-mem-argmin.md) | 142 | `result-track:66b93980dd8a61e59cc9d98742e7fc8bf09f984b537545f11976456bc4f144af` |
| 14 | `theorem` | [argmax_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax-concat.md) | 147 | `result-track:57356da8621142ae945c44a0d86b3842f90513b35525ca72ed80621ebb9ff0bd` |
| 15 | `theorem` | [argmin_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin-concat.md) | 153 | `result-track:682f291a79a559f82156831422dbca281f604570c90714b3cce9f81fe0ffed6c` |
| 16 | `theorem` | [argmax_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax-mem.md) | 159 | `result-track:d0b528d225ed767de8c21921dd996db6b32a534453d9e0b740ef296939a18d8f` |
| 17 | `theorem` | [argmin_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin-mem.md) | 164 | `result-track:ad8e20cb297cc64a80ef0484d5476870267ef366935ed69d1c864f0d9f05d24c` |
| 18 | `theorem` | [argmax_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax-eq-none.md) | 169 | `result-track:656200a4f55e88f99c7d73e8a4f84e7a39b4cf526c26ae0ffc0f6b4dd95ee3d6` |
| 19 | `theorem` | [argmin_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin-eq-none.md) | 173 | `result-track:4d72f5b39f093908c7eb736b02bce8787a4d2ebc5a11c1d0b0d2346bdca3a7c3` |
| 20 | `theorem` | [le_of_mem_argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-of-mem-argmax.md) | 183 | `result-track:ccf6cd8b852903610a58f130143a46d25a64ac35e7e8c32b423c952f8fc5abbb` |
| 21 | `theorem` | [le_of_mem_argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-of-mem-argmin.md) | 187 | `result-track:4a1cb365c10c0c860a14d928f310cdb663d50383d304dac2ea958204d00e6847` |
| 22 | `theorem` | [argmax_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax-cons.md) | 191 | `result-track:9a2a411abbe613d6913324c64fcc63e70cb4e453780611221a26f520b3201814` |
| 23 | `theorem` | [argmin_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin-cons.md) | 206 | `result-track:1983713135252fcddc55770c00ec0a7919090d8f2768d9869c537942d47dcfe7` |
| 24 | `theorem` | [index_of_argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/index-of-argmax.md) | 214 | `result-track:72dec43ac17b3942ac0f86cbcd689409428c58629da3ad619c901010a400f092` |
| 25 | `theorem` | [index_of_argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/index-of-argmin.md) | 235 | `result-track:8939ae58e42868b7bdb06080b2b8effc88374b5303a2e2cc0c2da1e82b5166bd` |
| 26 | `theorem` | [mem_argmax_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/mem-argmax-iff.md) | 240 | `result-track:8eda73e7d043ac067873ed12944cad29266b4841d70edbdcee93884339d998a2` |
| 27 | `theorem` | [argmax_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmax-eq-some-iff.md) | 254 | `result-track:7ceefc0566595b12be0fb9ee83b0687b3d88d572371626577fcfdf5801752c76` |
| 28 | `theorem` | [mem_argmin_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/mem-argmin-iff.md) | 260 | `result-track:eb7eaaf267cf7cf19aa0d5828d5c54d9899b0e81af6bf53791ff0c6463a8a32b` |
| 29 | `theorem` | [argmin_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/argmin-eq-some-iff.md) | 266 | `result-track:e915aab93afde72fe8e7216944b12bc7d85a9816287e9f47a0e975e0921c5b55` |
| 30 | `def` | [maximum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum.md) | 282 | `declaration-track:835078040b41796470476e49d48ba48752cd026fa3a4418834dbbfc33f837574` |
| 31 | `def` | [minimum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum.md) | 288 | `declaration-track:71d97f7947a2481cd0c6ff4bb6c4135db9c93d40165fc53edf8fc943d4472d5f` |
| 32 | `theorem` | [maximum_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-nil.md) | 293 | `result-track:71326429dc371a0467ff1db8aa8569f5307aa9787af7db7d6605666a6f12f9ea` |
| 33 | `theorem` | [minimum_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-nil.md) | 298 | `result-track:8c6ffd2277587133576d8c5890c9a423596919167189089207bbd32f4d4a039f` |
| 34 | `theorem` | [maximum_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-singleton.md) | 303 | `result-track:ce8cd56bfc84848e25d5a769270beee27b3129c52532dbb660eb1e25655b31fd` |
| 35 | `theorem` | [minimum_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-singleton.md) | 308 | `result-track:4a5b30f15c64a5632146c529459c745a4c60478e5aaddb5a0152cba988266161` |
| 36 | `theorem` | [maximum_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-mem.md) | 312 | `result-track:226fecb786630cd5fa29b9b32f4b75e1a24009552f78393d76e3f775d1932741` |
| 37 | `theorem` | [minimum_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-mem.md) | 316 | `result-track:3e18c61e5b3171e5a63704845abe2be499b4ca955652d8b86c937cf1f05084b6` |
| 38 | `theorem` | [maximum_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-eq-none.md) | 321 | `result-track:4768fbe592551ba1f7f3fb3443fcebbe23378c808d0e8fb5d38f46541b26c48d` |
| 39 | `theorem` | [minimum_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-eq-none.md) | 326 | `result-track:54ec84023427c8d6f9759fc8218202446127f5164265d13d693f209bbd98be30` |
| 40 | `theorem` | [not_lt_maximum_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/not-lt-maximum-of-mem-source-edition-2.md) | 330 | `result-track:9a56db2187f3dcb38e59da8ae5aa985e4b491b60ff270a3ca43147e12437dd97` |
| 41 | `theorem` | [minimum_not_lt_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-not-lt-of-mem.md) | 334 | `result-track:9f638cd12885dc57c66df2916eb6ac1b3b2eeb0be0abf2ac3053779655d9e749` |
| 42 | `theorem` | [not_lt_maximum_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/not-lt-maximum-of-mem.md) | 338 | `result-track:0145f46456edd52b2ac07b8e0faf057ac0603d10e66df5393ad4c43417e15120` |
| 43 | `theorem` | [not_lt_minimum_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/not-lt-minimum-of-mem.md) | 344 | `result-track:42639d4cb8b85a42544541059fc1b8e2ce799a66a9de4f6fa948bcf9de6ec234` |
| 44 | `theorem` | [maximum_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-concat.md) | 354 | `result-track:80861fa5e0b5eae58955c4255352fdc7f39629d1ae18b2abb63cf0602f4fb42c` |
| 45 | `theorem` | [le_maximum_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-maximum-of-mem-source-edition-2.md) | 361 | `result-track:94c1a6eff975d8be8743d68d1ecdd41ae9ae4c31fa0bad74272ab7c4fc222758` |
| 46 | `theorem` | [minimum_le_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-le-of-mem-source-edition-2.md) | 365 | `result-track:784443b5024ce1deaeaea928da1a4543dc3633efc45071af5e4602e594e9cd69` |
| 47 | `theorem` | [le_maximum_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-maximum-of-mem.md) | 369 | `result-track:765e5d316dc5697e0c9cfcc064cd29648492d60ab8b39828781e676db2a9c747` |
| 48 | `theorem` | [minimum_le_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-le-of-mem.md) | 373 | `result-track:1223d0baad880f5e5f9ff22d6935d4c875e9a24072ca3b13401e658c9a9c68cb` |
| 49 | `theorem` | [minimum_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-concat.md) | 377 | `result-track:ba1571e19e9a7a4a958bf502a95751fe0cf999370d4ea5b088b13cbb154ea417` |
| 50 | `theorem` | [maximum_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-cons.md) | 381 | `result-track:8656501b62c0c9167e1e2f7c56a0acc824c04f9eb7269a13fe3d15a011db1b9c` |
| 51 | `theorem` | [minimum_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-cons.md) | 386 | `result-track:ce4eec99f5a5bba77114593fc5bafefdca507904df2ccbfc7c444c8bd3c1210a` |
| 52 | `theorem` | [maximum_le_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-le-of-forall-le.md) | 390 | `result-track:11ce04d154962acf74aad8eb2210290703026fd83fd39387ed3f5d2ebbbedd77` |
| 53 | `theorem` | [le_minimum_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-minimum-of-forall-le.md) | 397 | `result-track:1893addf943f03fc72195c2f7bf5506a111f615400e1139e4748708a948c7314` |
| 54 | `theorem` | [maximum_eq_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-eq-coe-iff.md) | 400 | `result-track:73c76f3a48e7188a8cb269896affc6abb5fdab386a75b7e28efb647237dbd0fd` |
| 55 | `theorem` | [minimum_eq_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-eq-coe-iff.md) | 407 | `result-track:0bae3193544b494a1f1b4d84ba644d59ecf5844657eacad0b021ac0ecdbb456d` |
| 56 | `theorem` | [coe_le_maximum_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/coe-le-maximum-iff.md) | 411 | `result-track:c7408f7d45cbe681878fb1e9b04fc8fb1a01fab054f7184f39d653b0f4e4a52a` |
| 57 | `theorem` | [minimum_le_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-le-coe-iff.md) | 417 | `result-track:7089357dc280769b402fdbb0535ba3607ab6310e5bbda0e33f7e72d5f9f5eb78` |
| 58 | `theorem` | [maximum_ne_bot_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-ne-bot-of-ne-nil.md) | 420 | `result-track:cfba5eacc2eef95c47fc3a36450e5cbda098ede8b0321250840474f9f9596896` |
| 59 | `theorem` | [minimum_ne_top_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-ne-top-of-ne-nil.md) | 423 | `result-track:7940d106ff92407683a0503f07962942fb78d0f51cc3f77b4df173c2f513697c` |
| 60 | `theorem` | [maximum_ne_bot_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-ne-bot-of-length-pos.md) | 426 | `result-track:a736cd11f756fa1421f74752df53b93bbbd3c3353e8e350293481c341eaee379` |
| 61 | `theorem` | [minimum_ne_top_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-ne-top-of-length-pos.md) | 429 | `result-track:a63b6bebf1cb7ed6c6bc95873b18dcdddaac414390ec65d8e612ba169305b996` |
| 62 | `def` | [maximum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/maximum-of-length-pos.md) | 433 | `declaration-track:97bb4f6c508ae52848a3f9e35a77ba8efa3812919177794c27439a37cd245ad0` |
| 63 | `def` | [minimum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-of-length-pos.md) | 437 | `declaration-track:ec0e1c9a793aab707e3487cdb6b33c27bde71e4be612831be3a1a8a9df01b149` |
| 64 | `lemma` | [coe_maximum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/coe-maximum-of-length-pos.md) | 441 | `result-track:a07641c8848eb4a667d874d151bde9861a725cff67fabe0878e0c965782f00e7` |
| 65 | `lemma` | [coe_minimum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/coe-minimum-of-length-pos.md) | 446 | `result-track:d64acfbeed62d6cc89d7fee6b28a69c1feaa5ae2a6eb130928294f26fd03c610` |
| 66 | `theorem` | [le_maximum_of_length_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-maximum-of-length-pos-iff.md) | 451 | `result-track:ca46f3c5596b820dcb5ec024c93146222dac1a6863f4ee6a1b12afb2dcac1928` |
| 67 | `theorem` | [minimum_of_length_pos_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-of-length-pos-le-iff.md) | 456 | `result-track:550397e25a502a16fad31146dc9241ff5ad48ae134b5746ba1de3ebb0a9a3177` |
| 68 | `theorem` | [le_maximum_of_length_pos_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-maximum-of-length-pos-of-mem.md) | 460 | `result-track:5c2d65bbfa13725baed129e46b56d6f50180ff589e62c9d9776aeded35f7c3bf` |
| 69 | `theorem` | [minimum_of_length_pos_le_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-of-length-pos-le-of-mem.md) | 465 | `result-track:8831aefdd663fdf542f22509f54c29eccc255e7b69332db514f1f882a0586eac` |
| 70 | `theorem` | [getElem_le_maximum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/getelem-le-maximum-of-length-pos.md) | 469 | `result-track:9527dd70ba50954f5fc8af517922286aecf7e513d2849acebe06093fd6652a8e` |
| 71 | `theorem` | [minimum_of_length_pos_le_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/minimum-of-length-pos-le-getelem.md) | 474 | `result-track:2e24059f9a1345b1f1eb07bceec0eb3074ba435db177c44ddf6811132fdc718f` |
| 72 | `theorem` | [foldr_max_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/foldr-max-of-ne-nil.md) | 491 | `result-track:0bed1930b5a93107aa640278b2ceac8319890d5169e0a7353846a85085398fc7` |
| 73 | `theorem` | [max_le_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/max-le-of-forall-le.md) | 500 | `result-track:9d6a1c4bceaabe5c384bba12f6f491ddabe6b64c698d32a981aea1a5ad5734fc` |
| 74 | `theorem` | [le_max_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-max-of-le.md) | 506 | `result-track:c30d0407c16fea9fb845da8c37043c4923692c058cabb31ce4e7b427a9f6cc08` |
| 75 | `theorem` | [foldr_min_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/foldr-min-of-ne-nil.md) | 522 | `result-track:81122760ee10a84023e54ca42b97f4966ee4840f42b7a91b885a82450a756347` |
| 76 | `theorem` | [le_min_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/le-min-of-forall-le.md) | 526 | `result-track:9e8ee16146ba0d68613731342a938f31d644d25c3f395c59008bc65ebc3070ca` |
| 77 | `theorem` | [min_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/declarations/min-le-of-le.md) | 530 | `result-track:c9560bee13ecce2698a5826b73d8185b476f39650c45513554efbbde317be174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d586ef64c8c8d83ab335124aa0c1c3ce4f0be424d6a18ebe460598055e3c8135 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
