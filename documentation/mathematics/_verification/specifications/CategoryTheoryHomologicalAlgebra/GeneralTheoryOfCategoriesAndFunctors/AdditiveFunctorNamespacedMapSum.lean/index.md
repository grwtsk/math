# Verification target: Additive Functor Namespaced Map Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07bb905051cd698a3876ce4fb19453914e7d8fc3",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07bb905051cd698a3876ce4fb19453914e7d8fc3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ExactFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.Additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/functor-additive.md) | 47 | `declaration-track:d0fc1b6ccc7521bfb294e1dc62e6c079b2bd17765c278a4733da4126498330f6` |
| 2 | `theorem` | [map_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/map-add.md) | 63 | `result-track:fd261f999171aafa865ea621b0a9eb8a082d63aa767de99b4579cffbad1af224` |
| 3 | `def` | [mapAddHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/mapaddhom.md) | 70 | `declaration-track:7006ab25349fa71ddeed26ac25b75d63b40ca70d5be6443e3356791c3813b789` |
| 4 | `theorem` | [coe_mapAddHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/coe-mapaddhom.md) | 74 | `result-track:af12c115b9e8f89d48afd72de3f4c9715d86fabad98518171c3b6e6c273f7119` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:21eb46e9bdc7d2f82ba92aeaa490529e775639daa12f766a951457a83f3002e1` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-10.md) | 82 | `declaration-track:844ead0833eb2b299e0d8489a919bb36759164e73361fa826c8d25ee49aa91a1` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-14.md) | 84 | `declaration-track:ab4f5ef7535d14d31f6bed9ebb0031c7d355b9c0aeecb220a0ffa10991a5bd6f` |
| 8 | `theorem` | [map_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/map-neg.md) | 88 | `result-track:fcfa43eac854498729f2e77ea2b2a7a236477d7ed7de3f1b2e3619bbfcc0115b` |
| 9 | `theorem` | [map_sub](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/map-sub.md) | 93 | `result-track:e2db83c7c54b1b3556b2a3afdcd764fbab1c972dd7d1480a3c2ef95029a49372` |
| 10 | `theorem` | [map_nsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/map-nsmul.md) | 97 | `result-track:7f5992f3c1d0d39e1d871942e82254eefc3a19f9f1230f07be22b82a04d81656` |
| 11 | `theorem` | [map_zsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/map-zsmul.md) | 102 | `result-track:ba91351989f6368076a1a2ec6098dc8180d7c36cdf5cddae894c45bbf90afa52` |
| 12 | `theorem` | [map_sum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/map-sum.md) | 109 | `result-track:3fe64b963e6cd10517b5f9deb5061e4883f22fd76606c1a87ae1353d9e9925bc` |
| 13 | `instance` | [inducedFunctor_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/inducedfunctor-additive.md) | 120 | `declaration-track:af2fb22dab0a38529e4f2bca411fd4dcd70cae264d6fa3f196011546b916e12a` |
| 14 | `instance` | [fullSubcategoryInclusion_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/fullsubcategoryinclusion-additive.md) | 125 | `declaration-track:6dc88be0ddf45e7c845ebc3d5f7bd1057cea42d9c51802f3aaab8f1014ce6f88` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-9.md) | 141 | `declaration-track:7e88ec8541c16b9bc04037fdb2437877118caa9d32959ea7d844beee7038bd5e` |
| 16 | `theorem` | [additive_of_preservesBinaryBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additive-of-preservesbinarybiproducts.md) | 151 | `result-track:015e22043c904508a731d733f1499d15989f21307a140093483994a6ebd5302c` |
| 17 | `instance` | [inverse_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/inverse-additive.md) | 169 | `declaration-track:bae6f4bfd80ff568a61f7b210488bbd4bf7ef419e78da06d3b88239322bb0459` |
| 18 | `def` | [AdditiveFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor.md) | 181 | `declaration-track:6c3294f424f72fc1ce4a4927530acd054169116fb7d638ff7bf8f0f23f8e9ce5` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-4.md) | 186 | `declaration-track:3ab9c8fa89fde49f2923b8663a65bca185f6b1c6c0e990c3ba346cfcb945c055` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-12.md) | 192 | `declaration-track:9be86832c3ffa03c01ada08e73668b798b3c516df70d43c11531c7e5a04fedaa` |
| 21 | `def` | [AdditiveFunctor.forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-forget.md) | 196 | `declaration-track:dfb4df9606739561d93c5ba287f499bf5fc8669395d1118716581e29ff4ab9b3` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-11.md) | 201 | `declaration-track:868eed90739eaab57b0c19c87f8d78410ad127eeac73bc6ea8e930dddeaaeac0` |
| 23 | `def` | [AdditiveFunctor.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-of.md) | 207 | `declaration-track:99efd602479a7a3d2a286a315d06ac9970d842323a8e4dc588342c6099c83748` |
| 24 | `theorem` | [AdditiveFunctor.of_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-of-fst.md) | 213 | `result-track:56ccb16fd7fe958bb0f3354cfb8800aba881945bc93fcb9c1f98e57497819289` |
| 25 | `theorem` | [AdditiveFunctor.forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-forget-obj.md) | 219 | `result-track:c20a30575adf22b77a2ed866a254e660cb3f737bda5f3c5a01cbf8198f270e0d` |
| 26 | `theorem` | [AdditiveFunctor.forget_obj_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-forget-obj-of.md) | 224 | `result-track:3747bf46c968c02b1a14d0dd5712b0b972c14f03ea303e9c803259fb4fc63ec0` |
| 27 | `theorem` | [AdditiveFunctor.forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-forget-map.md) | 231 | `result-track:b7fc2d87129ed43f6e3808c950c15d251f7a23d849dd78f5ecae7a5b64ffc861` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-7.md) | 237 | `declaration-track:67359f068e4edcdaea2de9438ac8d4d8374646dfce3dfa2b4f11f82c6b95580b` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-13.md) | 239 | `declaration-track:a0e3f34dc80b5450b9ab29ff5c9ffd943c9038277e7cc27ac70947ac3ec3d0b2` |
| 30 | `def` | [AdditiveFunctor.ofLeftExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofleftexact.md) | 259 | `declaration-track:a3d4f32b2ff990ef9f79846f1002f71017ece73c953473dfbea1544864b406e4` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-5.md) | 265 | `declaration-track:559446d637b7ba7e4833b055e0799830a53993915e92e80ae398d21fbe09f6ef` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-8.md) | 266 | `declaration-track:7e0a5c3dc754b9f5d8ad4f0043e4d8e925d5e8589c5ab94153ce917201d29d9d` |
| 33 | `def` | [AdditiveFunctor.ofRightExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofrightexact.md) | 269 | `declaration-track:0f13601b59989b84098352b2fb062164bb4274b52b885de1fd3545fec58cf53e` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-15.md) | 275 | `declaration-track:f9b893ffc652f344e44983629b2e7aa9816cca541fce03bf9e9867d347ff61ac` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance.md) | 276 | `declaration-track:0b5779f99c6b9ce865070c7dcc3f6a68506c815060c4a8cfd6824fc109fac594` |
| 36 | `def` | [AdditiveFunctor.ofExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofexact.md) | 279 | `declaration-track:2eaf97c98bc44188cfb3f05017f662c1b7dfced1dd82adbfd9f3acb1d05e4393` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-6.md) | 285 | `declaration-track:5b3d48b36fcf3830118650ab8e7a13f19bf082ed9d9fb11345146a9c734ced76` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/instance-source-edition-3.md) | 286 | `declaration-track:29f56f706e50f29aa4f118cc32825bb7e6e5f2f31eeeba610a2753c05234359c` |
| 39 | `theorem` | [AdditiveFunctor.ofLeftExact_obj_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofleftexact-obj-fst.md) | 293 | `result-track:16d8021b1bacef9ba2b639df87089f6309ff4f615a81e49d46eddb837533a870` |
| 40 | `theorem` | [AdditiveFunctor.ofRightExact_obj_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofrightexact-obj-fst.md) | 300 | `result-track:1fbce77ebc0185f9e8169c8052f9b5e030fc8a0878ed9a7f783fce5160957c78` |
| 41 | `theorem` | [AdditiveFunctor.ofExact_obj_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofexact-obj-fst.md) | 307 | `result-track:1275788fefc0031140c458c6d05a42b89b1a1e8e914883e2fc9463972325a79d` |
| 42 | `theorem` | [AdditiveFunctor.ofLeftExact_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofleftexact-map.md) | 314 | `result-track:8a9e06b44f8d71a420baaa76e36e66e5c1b9a638cc2409eabad52e3c5f859a55` |
| 43 | `theorem` | [AdditiveFunctor.ofRightExact_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofrightexact-map.md) | 321 | `result-track:9aacb58a2a8285daf6a81ec8e67203da240bebaf2b2a984cf4955876cf312922` |
| 44 | `theorem` | [AdditiveFunctor.ofExact_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdditiveFunctorNamespacedMapSum.lean/declarations/additivefunctor-ofexact-map.md) | 328 | `result-track:a63ba73ccb4900a8db7ce43f5d0ed4b2d3b78b94b1e95e48a6019e78053d4767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d969750e774db7be61ed24fca63cddfd065b2a2e26ca3f514d7c23aa32d281f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
