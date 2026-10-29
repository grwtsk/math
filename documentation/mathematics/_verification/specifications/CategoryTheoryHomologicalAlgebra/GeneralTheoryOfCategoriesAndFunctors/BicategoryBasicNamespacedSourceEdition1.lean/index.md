# Verification target: Bicategory Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a9f86efaa399fdce9b5a1b8d0fc350a5ba61d78",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9e85859d9dc6212763f96c774b2fe4821f89f67b4c718fe254022cde90a430e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a9f86efaa399fdce9b5a1b8d0fc350a5ba61d78`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9e85859d9dc6212763f96c774b2fe4821f89f67b4c718fe254022cde90a430e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9e85859d9dc6212763f96c774b2fe4821f89f67b4c718fe254022cde90a430e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/bicategory.md) | 67 | `declaration-track:2356f16bfcac1eede07e8cfa780f34b6b125388d63504c19397b8aab5e537a5e` |
| 2 | `theorem` | [hom_inv_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/hom-inv-whiskerleft.md) | 204 | `result-track:31c610b5ed331efe9f4c0de83f625973f52eb61999a9a64cd136a45eb8a0e7e1` |
| 3 | `theorem` | [hom_inv_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/hom-inv-whiskerright.md) | 209 | `result-track:e84a4f6a8ac9ae2a581960551e23765cf46f912c2ff3b894d415f31f67b64704` |
| 4 | `theorem` | [inv_hom_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/inv-hom-whiskerleft.md) | 214 | `result-track:7986a35137952046ee2b82da49cf33b7339ee4af47e01ed3d8b2f68a5154495d` |
| 5 | `theorem` | [inv_hom_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/inv-hom-whiskerright.md) | 219 | `result-track:aef066efb684cc6cfd94fa1325fe051b9703be0223a1140e5524b933265523a6` |
| 6 | `def` | [whiskerLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerleftiso.md) | 225 | `declaration-track:7dd72fdf4cc17d2b22cd267f5b33f41b085a99779497b76a34aa99771fbf5e0d` |
| 7 | `instance` | [whiskerLeft_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerleft-isiso.md) | 231 | `declaration-track:2f8a517102172a5c804d033db8b4d777f5b6f917232229129e293a4a5b9540ed` |
| 8 | `theorem` | [inv_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/inv-whiskerleft.md) | 236 | `result-track:745c50cf5fd0ef3fce0c589bb11ce450ffd3fb6423ea08f4333b622263c0c5af` |
| 9 | `def` | [whiskerRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerrightiso.md) | 244 | `declaration-track:7d80b08c137baa4e2bf904df38ad3089683e848d916a17b0210342021ba88464` |
| 10 | `instance` | [whiskerRight_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerright-isiso.md) | 250 | `declaration-track:0543bf65acbef2e56cd092da1c5f61805f3199e790579f235c17c35d492b34ea` |
| 11 | `theorem` | [inv_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/inv-whiskerright.md) | 255 | `result-track:b6458a96eaaf57ba5e63eb7118ffbeb5ed13fbc75ba71d9e32d86ec13f2bdf50` |
| 12 | `theorem` | [pentagon_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-inv.md) | 262 | `result-track:df07241f36d212adfc3863cde698bbd1b4791236d14d2aedeb7f34df5f538773` |
| 13 | `theorem` | [pentagon_inv_inv_hom_hom_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-inv-inv-hom-hom-inv.md) | 269 | `result-track:c4b4fac42472299e1bf4e6f42bdce51cf47a531dd3ad5d6656dd61edca2e12c8` |
| 14 | `theorem` | [pentagon_inv_hom_hom_hom_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-inv-hom-hom-hom-inv.md) | 277 | `result-track:4f04e9341d327c5de560571fa9655e1bf062283215e79aa4aa9d5ffc8560d472` |
| 15 | `theorem` | [pentagon_hom_inv_inv_inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-hom-inv-inv-inv-inv.md) | 284 | `result-track:0b6ac68980a5ec216bd71d212391cbf0ae0f8a4dc0cc3a5dcec83d099a1239b8` |
| 16 | `theorem` | [pentagon_hom_hom_inv_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-hom-hom-inv-hom-hom.md) | 291 | `result-track:560882c9d79fa4c9b2589b0eb2a1bb457a7bb41d9479d545eee1aad4e47f8775` |
| 17 | `theorem` | [pentagon_hom_inv_inv_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-hom-inv-inv-inv-hom.md) | 298 | `result-track:b0775079af7dd2717dfc040f9616d97e428e8857f38482850e4015262241f031` |
| 18 | `theorem` | [pentagon_hom_hom_inv_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-hom-hom-inv-inv-hom.md) | 306 | `result-track:e2ad713dfcf61ba5f49875cc944f451365139329a51188e8e69da1dc06609991` |
| 19 | `theorem` | [pentagon_inv_hom_hom_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-inv-hom-hom-hom-hom.md) | 313 | `result-track:bcef3ddaeefd7e1d1e162ab8ad7b0d0d07ef5b90fc08c5939868de4dfacde3cc` |
| 20 | `theorem` | [pentagon_inv_inv_hom_inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/pentagon-inv-inv-hom-inv-inv.md) | 320 | `result-track:6a87da37432f4f07ae148d95b037020fa8733ce2e3131eea8432f76ae7fc7366` |
| 21 | `theorem` | [triangle_assoc_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/triangle-assoc-comp-left.md) | 326 | `result-track:68a28549047098155457e8850912f53bbc09457afec3741858da9db39de7cc80` |
| 22 | `theorem` | [triangle_assoc_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/triangle-assoc-comp-right.md) | 332 | `result-track:3080846c23546ad36d7dcb3e03b2e66c64bb214f6e6b362c9cd83fac667416c2` |
| 23 | `theorem` | [triangle_assoc_comp_right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/triangle-assoc-comp-right-inv.md) | 337 | `result-track:fab8bb08df3a9ad51302606c9e891efa22661474f698137ed8e7c490b55e7fb0` |
| 24 | `theorem` | [triangle_assoc_comp_left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/triangle-assoc-comp-left-inv.md) | 343 | `result-track:17520d07761ee1f274958a0705e5a9778e791d23fcefb894d71d2923bce4b512` |
| 25 | `theorem` | [associator_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associator-naturality-left.md) | 349 | `result-track:5eb121810113ab260868b362fb4bfd82539f965d213b76718b32575102e769a2` |
| 26 | `theorem` | [associator_inv_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associator-inv-naturality-left.md) | 354 | `result-track:77ba98de1b345f246292877599563f9d8e82183816a6900f2343ff45375b7a09` |
| 27 | `theorem` | [whiskerRight_comp_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerright-comp-symm.md) | 359 | `result-track:949c1082846e66aa53424e7de945d6453de00abb34300caa6a8f17f193159ac3` |
| 28 | `theorem` | [associator_naturality_middle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associator-naturality-middle.md) | 364 | `result-track:50f3e11f7df62359c3a4c1621a436251a9ab1c736c0857e84663c24b26b2799d` |
| 29 | `theorem` | [associator_inv_naturality_middle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associator-inv-naturality-middle.md) | 369 | `result-track:2c0f5bfa0d22071b8c8b162902c3171a478ee02bf7320be29a198318f15f65da` |
| 30 | `theorem` | [whisker_assoc_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whisker-assoc-symm.md) | 374 | `result-track:4ba6532226d188a052e6e8ea6f3e6770ba376eddbe0859aeda24dab6ada13bd9` |
| 31 | `theorem` | [associator_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associator-naturality-right.md) | 379 | `result-track:5e1a322bcf52aee767dff4c30dd5a54d6511ba4abc6e98b1b776c078c0d05af1` |
| 32 | `theorem` | [associator_inv_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associator-inv-naturality-right.md) | 384 | `result-track:479bd4655572d0f5718362749b27b0c0b4a807041bdeceaa3c8ec17895258e8b` |
| 33 | `theorem` | [comp_whiskerLeft_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/comp-whiskerleft-symm.md) | 389 | `result-track:e0fc204ed412026f4b59eed161c6366c851a385d18ee463829dc041178d04924` |
| 34 | `theorem` | [leftUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/leftunitor-naturality.md) | 394 | `result-track:5e92dd9e29df49fa5aa4b21d15caea090bb3a0374b8d503b84a33f5389eba87d` |
| 35 | `theorem` | [leftUnitor_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/leftunitor-inv-naturality.md) | 400 | `result-track:8e94e7ff03d8b8093a6db4ad61331dbccb85db26c65fbef9a2d7ded8f8bb6e23` |
| 36 | `theorem` | [id_whiskerLeft_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/id-whiskerleft-symm.md) | 404 | `result-track:c9db2910e9fec6079501e68d0912c8ac531f0fbfbb8bc21c04ef93c23ea1cf99` |
| 37 | `theorem` | [rightUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/rightunitor-naturality.md) | 409 | `result-track:df6d5a4845adaebad624bbddbbfc30faaa53df8e5fc5090680881da4ad85eb24` |
| 38 | `theorem` | [rightUnitor_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/rightunitor-inv-naturality.md) | 414 | `result-track:387f0bb98b3db76024849e2f9823fc8eb7a757744ef5488b5c2912ad9288067a` |
| 39 | `theorem` | [whiskerRight_id_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerright-id-symm.md) | 418 | `result-track:479a44cf282fea8d795a5ca41b437614f324349957384d472b88e86bbece0888` |
| 40 | `theorem` | [whiskerLeft_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerleft-iff.md) | 422 | `result-track:f786b2f0d73e0ad05c1bc97a227ffe4b37dbdaef578635df0fcbd80ddc3df2a0` |
| 41 | `theorem` | [whiskerRight_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerright-iff.md) | 425 | `result-track:8206f067aefc02f1b0ef6514b29c18a590df653056dab889f135d90956d80569` |
| 42 | `theorem` | [leftUnitor_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/leftunitor-whiskerright.md) | 432 | `result-track:ed5c0fb6a8e8c0a41810f75eef573943b1f2bd18841572d34ca953a3293b18cd` |
| 43 | `theorem` | [leftUnitor_inv_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/leftunitor-inv-whiskerright.md) | 440 | `result-track:ad576629a783039013efc5151ac37aafd6132d855569b8f88aba5a6119d03019` |
| 44 | `theorem` | [whiskerLeft_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerleft-rightunitor.md) | 446 | `result-track:c1e33066e1e9a1cd6da7be7a3132c046736885f6e058fcaa284cdf3ba5ffda1e` |
| 45 | `theorem` | [whiskerLeft_rightUnitor_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/whiskerleft-rightunitor-inv.md) | 455 | `result-track:11a090424ef74b669cd723c7022f18e6b4975218bafe9435eefc67f030df8506` |
| 46 | `theorem` | [leftUnitor_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/leftunitor-comp.md) | 469 | `result-track:57f9d878dfbf33ea74908cc81ea2cb7664a1be76baf9a7c1ef2c2f79faa6e1d0` |
| 47 | `theorem` | [leftUnitor_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/leftunitor-comp-inv.md) | 474 | `result-track:23abe91f785e5d1aa18f96eab39318938b110bedb10d2cc846ecf03553fc0f6c` |
| 48 | `theorem` | [rightUnitor_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/rightunitor-comp.md) | 479 | `result-track:0204dffde6ff45b929c2cdf7f2c0c93ee1c6f44dcc08cb3bf3ac63cb0c23a3f6` |
| 49 | `theorem` | [rightUnitor_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/rightunitor-comp-inv.md) | 484 | `result-track:ac5d28cab42457abff3f8c6ffcc53784faef3669a3d1cce2f6b84e65e9e6f16e` |
| 50 | `theorem` | [unitors_equal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/unitors-equal.md) | 489 | `result-track:7bf47bd4be3f5251576ef4356fd75d9521a2a928a78fd75d7dfed848e511c281` |
| 51 | `theorem` | [unitors_inv_equal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/unitors-inv-equal.md) | 495 | `result-track:57faca50846a4f247b7ee2f595cb98e12b7f509f8076aa378b075bdeee3cb9d8` |
| 52 | `def` | [precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/precomp.md) | 504 | `declaration-track:1642ae215e43e963c00176e2f4126983bff6b50d9e269b001ec3a1342b93e6b2` |
| 53 | `def` | [precomposing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/precomposing.md) | 511 | `declaration-track:fee6afcb4217264be2fdf149cd36050226892f9c5e670cd353b44d17d2cc3ba8` |
| 54 | `def` | [postcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/postcomp.md) | 517 | `declaration-track:2b7f8e2802c6da10a6bbd3d84f3c690a31b5f66759c18e6d9357f1e4392f59d8` |
| 55 | `def` | [postcomposing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/postcomposing.md) | 524 | `declaration-track:87aaa6ea87997472f94fa3259736789dda09156031a7983078ba18ed89d8f22b` |
| 56 | `def` | [associatorNatIsoLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associatornatisoleft.md) | 530 | `declaration-track:0d04c6ad7efc5ab375946079ebf5d5c6ca39da5f48a0ba7d18581a70da03e7ab` |
| 57 | `def` | [associatorNatIsoMiddle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associatornatisomiddle.md) | 536 | `declaration-track:8f12de5aec38db04bf62af041e910d77a8206ce5bac2c6cf7a52310747debd42` |
| 58 | `def` | [associatorNatIsoRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/associatornatisoright.md) | 543 | `declaration-track:cfba87809cb54185b2995ac040f360ab49b2bf70eaf7a233490d128d55af91b3` |
| 59 | `def` | [leftUnitorNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/leftunitornatiso.md) | 549 | `declaration-track:6a54108ed55633d9521f978c90e837962ecf46780f87967fff2f8d5b8b58a6ce` |
| 60 | `def` | [rightUnitorNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryBasicNamespacedSourceEdition1.lean/declarations/rightunitornatiso.md) | 554 | `declaration-track:483295774ada6543910f4f4d0c1119b24142b0ab61d866251ae157cb76b731c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=480d689b7ae4c9382e346a06391f1e039d50dcc79fbc09ae2936bfbf2e3a25c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9e85859d9dc6212763f96c774b2fe4821f89f67b4c718fe254022cde90a430e8.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9e85859d9dc6212763f96c774b2fe4821f89f67b4c718fe254022cde90a430e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
