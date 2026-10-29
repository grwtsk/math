# Verification target: Additive Functor Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a46a2de0806d05f40929a497d339f8c23e2404f",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7fd726d06fdffa09b499c5cf930bc40840543794962ace7b5b72acc66afde7ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a46a2de0806d05f40929a497d339f8c23e2404f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7fd726d06fdffa09b499c5cf930bc40840543794962ace7b5b72acc66afde7ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7fd726d06fdffa09b499c5cf930bc40840543794962ace7b5b72acc66afde7ab.lean.json)

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
| 1 | `class` | [Functor.Additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/functor-additive.md) | 42 | `declaration-track:e14042a46a7601f7865f9d573629c35e5a5e64a6b5d7b8441e17af5ded2e2a28` |
| 2 | `theorem` | [map_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/map-add.md) | 57 | `result-track:cebf12c05fb2c74e3e5b6ffd515d026168dc2fb9b015934d04b093c34a3a3a83` |
| 3 | `def` | [mapAddHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/mapaddhom.md) | 62 | `declaration-track:033fc113f45e3332b467ca67d5ba275d6d9a48c70e2d192e98eeffa3118b7b0d` |
| 4 | `theorem` | [coe_mapAddHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/coe-mapaddhom.md) | 65 | `result-track:f34617c0e28d479453ee2e0c7feff2b62972d08214b1a64e5893b11a2c4ecc81` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-17.md) | 68 | `declaration-track:d7620359629d8933abfc3a0b721806b46c0296e8892ca186edf140e52b12698d` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-14.md) | 71 | `declaration-track:af6912ab40b860744e672f78aa387f28b684c9ad0f3a8eb3b8efe81ae1e14c6e` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-4.md) | 73 | `declaration-track:24bdfbb98fcb09e64dd68830362210227a81ae1b833c5668178c79540971f1d1` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-8.md) | 76 | `declaration-track:4f0bfcaf4cea8d20a2c45b43363a9b7672cbae993dbec252e7bd11bdd46c4ed4` |
| 9 | `theorem` | [map_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/map-neg.md) | 79 | `result-track:a7fc92f6a9886c8a7020d63ec9b04dc7df66c54f29c65033e6893af71d3461d0` |
| 10 | `theorem` | [map_sub](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/map-sub.md) | 83 | `result-track:41cad1b50903b0d089dbf59f4d0d6e91e050d9a02f49dbb76e6dec20791edc2f` |
| 11 | `theorem` | [map_nsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/map-nsmul.md) | 86 | `result-track:8ee4b1aab2773e8cc4cf0e655e8fbf5d056e8e2029a989d6328c801fbc6492d1` |
| 12 | `theorem` | [map_zsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/map-zsmul.md) | 90 | `result-track:154265337e2c4bdcbfa651a4fd29663ce80d2738944d452577a37796a2b3a892` |
| 13 | `theorem` | [map_sum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/map-sum.md) | 94 | `result-track:aab4ae6a1fe25cabaa0790291094b43739c7f043760571ed51d9afe1d07f615b` |
| 14 | `lemma` | [additive_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additive-of-iso.md) | 100 | `result-track:45c12f4b9552e61bf6b6cc093f6f8bb5665e3a10925d3b2fb6f927069a099cb1` |
| 15 | `lemma` | [additive_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additive-iff-of-iso.md) | 107 | `result-track:114819184c23691f1066f40680d03a081430b5850f155664a467be3f0d527fed` |
| 16 | `lemma` | [additive_of_full_essSurj_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additive-of-full-esssurj-comp.md) | 112 | `result-track:089a3fb3cefcf0fa8ecf61a0283bef49451b8da05cb7f806b9c00c4b0a7857b2` |
| 17 | `lemma` | [additive_of_comp_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additive-of-comp-faithful.md) | 126 | `result-track:c9e2043eb496f825910983a3ad2a5c2ff2e50fcf34b485e049e0b11cdc38b4f6` |
| 18 | `lemma` | [hasZeroObject_of_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/haszeroobject-of-additive.md) | 134 | `result-track:eba6f647a7bbcb6df1d35935e3eb94b9f219dc9a844f600008552b066be3d7db` |
| 19 | `lemma` | [Additive.of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additive-of-iszero.md) | 140 | `result-track:ea028807741ae844387ba28be7233ca7021ccb463ece317103e16971e2867638` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-3.md) | 147 | `declaration-track:1c3695bec5f459f7dab35d94ea7366d97ca74f894b31124e89f6cdeea7aa9316` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:1b5bf0b81acc9505ecdd580a74d89d5b13f42ddef4977d3fbaa07e96df1c2094` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-10.md) | 154 | `declaration-track:90db9e6752572f5621ff45666fd538ab5dcc0a2f9f2b0c6e9a83d8ba0aa29419` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-7.md) | 157 | `declaration-track:45a6136ac1fb91f758c6c51f697588eed92ef42aa132de61a6f179114f537da7` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-5.md) | 161 | `declaration-track:2a5e5e08c742b437a052a2709703d209b3cacc0fb9b63bb9fed0cc806d1e9ad7` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-12.md) | 168 | `declaration-track:9dca85154c511a763627ec820427d590148cdad71d65f9304b4bbe4e124845d4` |
| 26 | `instance` | [inducedFunctor_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/inducedfunctor-additive.md) | 176 | `declaration-track:31c6724736958ebe35ed5edbbbd7da28f8fd2d7da9243554631bf306c9600f57` |
| 27 | `instance` | [fullSubcategoryInclusion_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/fullsubcategoryinclusion-additive.md) | 180 | `declaration-track:317598663b133eeae1c612ca09183e49309a29a6995b73cca5abe8e5819a5e7a` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-11.md) | 183 | `declaration-track:9a92e9a2bc827b3c142a0274eea7d557028fd3b783dff86d92b22589ab2d52d9` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-13.md) | 201 | `declaration-track:a1573e8304a8f96692201e47bfc00a62c8189b38f70e9de6b9bca384a7e90604` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-15.md) | 211 | `declaration-track:b1ad6b044a9259760a6a66e2d06cce56a3b684447edcc882596c1ecbb0cb11c7` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-16.md) | 215 | `declaration-track:d4c984bf5ca916baf748b081dd0cafa1ba1face0d2ecc3b4bb922b549e071bdf` |
| 32 | `lemma` | [hasFiniteProducts_of_additive_of_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/hasfiniteproducts-of-additive-of-esssurj.md) | 219 | `result-track:298a3f9b3d6dabd584ed87f8fdd79f27ca59e138a87c59b748320b48a34aa5e7` |
| 33 | `theorem` | [additive_of_preservesBinaryBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additive-of-preservesbinarybiproducts.md) | 225 | `result-track:af424277859953d879dd2f79bbdcc8d9b8b899f37e5ea230485bfcb599207e47` |
| 34 | `lemma` | [additive_of_preserves_binary_products](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additive-of-preserves-binary-products.md) | 232 | `result-track:4f73287b79e65d55d0880629e50ad9055ce5bcc5a07468de76bc3700e38368c6` |
| 35 | `instance` | [inverse_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/inverse-additive.md) | 250 | `declaration-track:9e9fbe09f0b614324c338636707238b2b4fe3776adfb5b44a573af147d76a118` |
| 36 | `def` | [additiveFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor.md) | 260 | `declaration-track:4b79f92ae96c30982716e5702e2bcc7441e0fa99c71000a97825a1b26eca3b07` |
| 37 | `lemma` | [additiveFunctor_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-iff.md) | 263 | `result-track:7765f4abb474647ea3a505ebfbd55059694617bc91f2ef3e9db4b07a7fd0588f` |
| 38 | `abbrev` | [AdditiveFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-source-edition-2.md) | 267 | `declaration-track:63023083df4482316f225f6e6055c98f3f8239b23f4204937c6f73e44f6767b6` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-9.md) | 269 | `declaration-track:5fbcb0c085066eed3ba5dc0154080a44cf0119c2879f5b08752106168f57eb1b` |
| 40 | `abbrev` | [AdditiveFunctor.forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-forget.md) | 275 | `declaration-track:514e76782ebc6ffb859132986a495d39702b4cc7fb6be74f585e6b37e08b40d5` |
| 41 | `def` | [AdditiveFunctor.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-of.md) | 282 | `declaration-track:e21e4e9dfcdac9f87e24caf8a7024342aab3fa18c6ccadb3f71794166e6e64db` |
| 42 | `theorem` | [AdditiveFunctor.of_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-of-fst.md) | 286 | `result-track:c33a20073971ebbea0395bdf422e4cf96a15ee2306548314829f5a68668d6413` |
| 43 | `theorem` | [AdditiveFunctor.forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-forget-obj.md) | 290 | `result-track:6b71fd43855b97d52bd8e5255684f5aa93f21d8a0e0519cebe692644994b57ec` |
| 44 | `theorem` | [AdditiveFunctor.forget_obj_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-forget-obj-of.md) | 293 | `result-track:9d61283e666c012f23a2573be9e849a403ecf77f7c9ecf2b806348035c9da6c1` |
| 45 | `theorem` | [AdditiveFunctor.forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-forget-map.md) | 298 | `result-track:a34d805da1e839c618e9d35f07dfd215037eca4771bb6e9d0146888b59738cb4` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance-source-edition-6.md) | 302 | `declaration-track:33591df939abbf6fda72722117f841eb14f6a85161676effece5bc2a6b003efe` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/instance.md) | 304 | `declaration-track:041fe72b7dd5f177e0b2859abb1a53a4eff68cf98a473af5b43d4320ed83ee8f` |
| 48 | `lemma` | [leftExactFunctor_le_additiveFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/leftexactfunctor-le-additivefunctor.md) | 322 | `result-track:09db165df05d1fda3ae4c1366714e423f5b65fe7af6955382cd006d40ad3cbff` |
| 49 | `lemma` | [rightExactFunctor_le_additiveFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/rightexactfunctor-le-additivefunctor.md) | 328 | `result-track:9f02df11ddc4186db5ade3eb512c20d7dbad8afab79ef345b8a6e01ea7e49013` |
| 50 | `lemma` | [exactFunctor_le_additiveFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/exactfunctor-le-additivefunctor.md) | 334 | `result-track:145c4d897a8bda53f85e17391681db556bd58a807ab5e5c5df42fb768b664c43` |
| 51 | `abbrev` | [AdditiveFunctor.ofLeftExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofleftexact.md) | 340 | `declaration-track:383b506bd9c8be49be73f2dcbbee11d4a92523b15b0f73d8aadd5c6c47e0a477` |
| 52 | `abbrev` | [AdditiveFunctor.ofRightExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofrightexact.md) | 344 | `declaration-track:36ae17540d859a9f8c8f5268fc55e72bc33b8355e0daf7c947a96891729777f0` |
| 53 | `abbrev` | [AdditiveFunctor.ofExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofexact.md) | 348 | `declaration-track:065f0d4909f8f7e3cb2562e76ffb30e6f800606a0935a53e5c60086ce29efcec` |
| 54 | `theorem` | [AdditiveFunctor.ofLeftExact_obj_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofleftexact-obj-fst.md) | 356 | `result-track:7ca347318a4f3d6ba56ed59943c22ed37efbd7167c18eed62afa9d76a0e9a3fd` |
| 55 | `theorem` | [AdditiveFunctor.ofRightExact_obj_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofrightexact-obj-fst.md) | 361 | `result-track:1adbee8c4b1e6f61beb189ae4ed1bba4d1efff0333af54c1b4a594b69e4e9049` |
| 56 | `theorem` | [AdditiveFunctor.ofExact_obj_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofexact-obj-fst.md) | 366 | `result-track:ec8a93421eeabc2dd2403caa01105d095a01b5d939110b78aaa3819b73346d28` |
| 57 | `theorem` | [AdditiveFunctor.ofLeftExact_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofleftexact-map-hom.md) | 371 | `result-track:7cb4579d2d11f0c80c59e0cd9fa56c48e9c97a95999ae121fb8b49051c44c632` |
| 58 | `theorem` | [AdditiveFunctor.ofRightExact_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofrightexact-map-hom.md) | 376 | `result-track:587987b7428a82c4fbfcbfc504b183c876a4492640e80de28c93043a6a8eb76a` |
| 59 | `theorem` | [AdditiveFunctor.ofExact_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorPublic.lean/declarations/additivefunctor-ofexact-map-hom.md) | 381 | `result-track:33808e3a2dc687462dba77c811e6f7564025c1cf9e4b428b771f5c2ed3130d1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d7fa8e6571821df5f6438eba01e0a56b775beb6af34daf9bb845d034e2678b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7fd726d06fdffa09b499c5cf930bc40840543794962ace7b5b72acc66afde7ab.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7fd726d06fdffa09b499c5cf930bc40840543794962ace7b5b72acc66afde7ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
