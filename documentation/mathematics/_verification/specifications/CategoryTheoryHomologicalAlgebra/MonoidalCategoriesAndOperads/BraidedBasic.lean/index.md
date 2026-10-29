# Verification target: Braided Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f19575808d05d4aa3ccff249a8334127d21abe6c",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f19575808d05d4aa3ccff249a8334127d21abe6c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Discrete` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.NaturalTransformation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CommSq` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BraidedCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braidedcategory.md) | 47 | `declaration-track:d3b0152b53ec6bc7421486595a836556078d32097193ab9c2ae888dd2842327d` |
| 2 | `theorem` | [braiding_tensor_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-tensor-left.md) | 86 | `result-track:ffc733ef77c30baeb4989ec13fc81ac052c258d4089928da3e77b9babc26b3d1` |
| 3 | `theorem` | [braiding_tensor_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-tensor-right.md) | 95 | `result-track:c3f10fe97530ebf0d91d290c609d19665b72ec56f512f4567ef6d132c42a7aae` |
| 4 | `theorem` | [braiding_inv_tensor_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-inv-tensor-left.md) | 104 | `result-track:3e23a9cbb0abfb6c9f9aef99a5c37c24790404c8918fadd219c1d144c6cba735` |
| 5 | `theorem` | [braiding_inv_tensor_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-inv-tensor-right.md) | 111 | `result-track:d601967d002efa53cbdbd2ea21818b3c53c91768d3f035e273df4bd0857c5fde` |
| 6 | `theorem` | [braiding_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-naturality.md) | 118 | `result-track:826311f98c543b03e7af14762f74b07c7520895da7982b07763bc28b21d8a615` |
| 7 | `theorem` | [braiding_inv_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-inv-naturality-right.md) | 124 | `result-track:77bf0f0a70f1561b533a54284e405a934087dbd2d06a8b9be28ed0b03356468c` |
| 8 | `theorem` | [braiding_inv_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-inv-naturality-left.md) | 129 | `result-track:c99c11e5bf3e5fe58a000fa93d707f93468f75aa140ae90dd7a8ccf190939bd9` |
| 9 | `theorem` | [braiding_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-inv-naturality.md) | 134 | `result-track:89635c113aa731c63e5f0d07109ee530858052c4ab3160976ff3b7eeec6bcb2b` |
| 10 | `def` | [tensorLeftIsoTensorRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensorleftisotensorright.md) | 141 | `declaration-track:e8abeaa2d0cd99044e9ad3fdd6fd61b1405654305f51ec164b4fc6cbad040636` |
| 11 | `theorem` | [yang_baxter](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/yang-baxter-source-edition-2.md) | 147 | `result-track:ae274e7760cbbf159f3089da2f822957c1bc45d342582eddc3f3bea439832172` |
| 12 | `theorem` | [yang_baxter'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/yang-baxter.md) | 156 | `result-track:5d14fdf67f98090812ecb509bc07cdac7778ba29a8636a4a7ea47887d5f0a6e5` |
| 13 | `theorem` | [yang_baxter_iso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/yang-baxter-iso.md) | 163 | `result-track:c1669d74c6a98636871536b089209308545ab4841584cc2868a032fbd68ca20f` |
| 14 | `theorem` | [hexagon_forward_iso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/hexagon-forward-iso.md) | 171 | `result-track:f6ab09ebc2a12c65de9db8f3886d88cd19d738d8cb581afc9148407e14c15de7` |
| 15 | `theorem` | [hexagon_reverse_iso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/hexagon-reverse-iso.md) | 176 | `result-track:c7812f32e674a3850f625c201cd858c880c0cda9fcea77db2fc9e529162f33c1` |
| 16 | `theorem` | [hexagon_forward_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/hexagon-forward-inv.md) | 182 | `result-track:cfa009c09ed1ea3c79e260b1210265cc9c4dc446b2abf6ec43e1626ba1ca7d05` |
| 17 | `theorem` | [hexagon_reverse_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/hexagon-reverse-inv.md) | 188 | `result-track:1f70f321538fa7990ecd72fc91041cbab4674f8724b8432748140ea1ec68a74f` |
| 18 | `def` | [braidedCategoryOfFaithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braidedcategoryoffaithful.md) | 199 | `declaration-track:e11fc1b1e59986f14ea6e7a3314a019ade591c242dda4a6cc1dea0201c5d28be` |
| 19 | `def` | [braidedCategoryOfFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braidedcategoryoffullyfaithful.md) | 241 | `declaration-track:afeac83b088a4db379c92e1243b71b65b523958689f470aed87cd203ce9244b8` |
| 20 | `theorem` | [braiding_leftUnitor_aux₁](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-leftunitor-aux-source-edition-2.md) | 266 | `result-track:7ac43f387ede21869a225927733c72903d8aefb2ff45716791a9eec5c7c9fdaa` |
| 21 | `theorem` | [braiding_leftUnitor_aux₂](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-leftunitor-aux.md) | 272 | `result-track:352201b793d735f6ea895fb72c13f37a383ee883669137315d98dcdad51bb730` |
| 22 | `theorem` | [braiding_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-leftunitor.md) | 290 | `result-track:fcdda34de886334083eb73d51793d8e02bdd0fdc8dd57fcd86d2ae3134bdc2c8` |
| 23 | `theorem` | [braiding_rightUnitor_aux₁](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-rightunitor-aux.md) | 293 | `result-track:3dbab197e7b79d7e5724367fbebbcc42516fdb0a43e3971d7ebb2c3fbe901fa8` |
| 24 | `theorem` | [braiding_rightUnitor_aux₂](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-rightunitor-aux-source-edition-2.md) | 299 | `result-track:dbe2dec3ea23ffed100c073b8930e4342fa2dae93421c8009a4c64cd90123a50` |
| 25 | `theorem` | [braiding_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-rightunitor.md) | 318 | `result-track:80e2a879c09787a395777dab56ed5adad18907ede7dec4295773ca27dc6abfe8` |
| 26 | `theorem` | [braiding_tensorUnit_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-tensorunit-left.md) | 322 | `result-track:490471fc7cae9f76c3d0a66c432cf98e9f618c858a656af2f03a356e98cb67c2` |
| 27 | `theorem` | [braiding_inv_tensorUnit_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-inv-tensorunit-left.md) | 326 | `result-track:c2b6b493d68df473d1bb9aba9eb78192ec1d9ac446d8912bcec0cf47efd9a7b5` |
| 28 | `theorem` | [leftUnitor_inv_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/leftunitor-inv-braiding.md) | 332 | `result-track:8d2690b9711836c63d599231ec464d21112c1e4363f63f7d754b7eb7626d3f2f` |
| 29 | `theorem` | [rightUnitor_inv_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/rightunitor-inv-braiding.md) | 336 | `result-track:3d4681e38b2a67efeda0e956fbad7eb21d6370992f3661c0fdeb7c933deee924` |
| 30 | `theorem` | [braiding_tensorUnit_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-tensorunit-right.md) | 341 | `result-track:5475d0cb85af64e0cec39d74dd5b49a1c1fcfcae84261d4254b81c712680504c` |
| 31 | `theorem` | [braiding_inv_tensorUnit_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/braiding-inv-tensorunit-right.md) | 345 | `result-track:821b05be440456e1fe9524936be9713fc7f45b561b3d0df45ac6a6cecf04d2ca` |
| 32 | `class` | [SymmetricCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/symmetriccategory.md) | 355 | `declaration-track:f05784f5a61fe78a4a4b42ead45a9b6d86f85e8a3a0a06f510d1a52906c08bbe` |
| 33 | `lemma` | [SymmetricCategory.braiding_swap_eq_inv_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/symmetriccategory-braiding-swap-eq-inv-braiding.md) | 362 | `result-track:af3c9597c0084c991b7076667fb739be5b4ef71c389e964ba040307321b718eb` |
| 34 | `class` | [Functor.LaxBraided](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/functor-laxbraided.md) | 373 | `declaration-track:16193e08690f185a6f0ed31a2771ae3b6f065cfb6c1e289d3d7e3ef34209099b` |
| 35 | `instance` | [id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/id.md) | 381 | `declaration-track:d500fac4209ec54ef5cd33f20acad7ca8bec2b72aacdc2fe57e29436469da9cc` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-9.md) | 383 | `declaration-track:f92cb5371ad12d5168997e86ec03cf43c19bc48fe3a09bcdd26376593d556a94` |
| 37 | `structure` | [LaxBraidedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/laxbraidedfunctor.md) | 399 | `declaration-track:c5c63d7086be1ac8fbf5b67a4284d61f8a0d02df6c082fdde15dcf78bd05257b` |
| 38 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/of.md) | 410 | `declaration-track:9784d3086ff721b03ee965bb0b4c030fac2cd67e2ea314fba61e76a7cd33fe9f` |
| 39 | `def` | [toLaxMonoidalFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tolaxmonoidalfunctor.md) | 415 | `declaration-track:dbfef704b12352926c17ed3dfcaed4fdad60a7d6698b335cc2095ee54805394c` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-10.md) | 418 | `declaration-track:fe9c5336211d529e6b6ce19fa56af9ac111ba4051604cfeabd6996830853484e` |
| 41 | `lemma` | [id_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/id-hom.md) | 422 | `result-track:b2ec66a9434a5954cbd552d60eecf5098be00a007dba3835fb97c66d49d0a1aa` |
| 42 | `lemma` | [comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/comp-hom.md) | 425 | `result-track:42652fb2c75f0b2c3a6220b033ec18c1d05ea1e762315997da94c63b2dfe5f52` |
| 43 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/hom-ext.md) | 429 | `result-track:35e127e9502fa54942d431dd27a3ed8fac87e8a77300f74c303bdcb787428835` |
| 44 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/hommk.md) | 434 | `declaration-track:a2fb022dc070c289395c8fd5af44f87a08d09d29635803485f5b6031df775c78` |
| 45 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/isomk.md) | 439 | `declaration-track:dda4d45785c8773b07aead2fc2efe8cc502ed07a262067cae72695dd323a47a7` |
| 46 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/forget.md) | 447 | `declaration-track:a6bdfb7407732134b6be1f80726f7797430de8d225af1145108af88a9a8c3a8a` |
| 47 | `def` | [fullyFaithfulForget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/fullyfaithfulforget.md) | 452 | `declaration-track:7b1d960a107f12925142da9c979cdcfb86c8e32f1b5d5e1482ec8be256e4c43a` |
| 48 | `def` | [isoOfComponents](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/isoofcomponents.md) | 465 | `declaration-track:6a97c8f4e9be3897b99ef01899b44c8e8b2263ac607d2584d15ca3848b932948` |
| 49 | `lemma` | [isoOfComponents_hom_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/isoofcomponents-hom-hom-app.md) | 471 | `result-track:87270f373f4aabba8e17c93f40da1941d46e988628803ec75c570d85cca07f40` |
| 50 | `lemma` | [isoOfComponents_inv_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/isoofcomponents-inv-hom-app.md) | 475 | `result-track:5218c3f6301473b5c197fc5248e02e778f15f9280710f31cf7c5a34de7201072` |
| 51 | `class` | [Functor.Braided](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/functor-braided.md) | 488 | `declaration-track:07048c18e3fb8365a84a357cd04f032d76475c705401d705359287ac2b30464c` |
| 52 | `lemma` | [Functor.map_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/functor-map-braiding.md) | 491 | `result-track:db565120f46d4975d3a8d07fa7dbeef3b3f1e0c76eba57319807b9a07ac85029` |
| 53 | `def` | [symmetricCategoryOfFaithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/symmetriccategoryoffaithful.md) | 499 | `declaration-track:541cf8ef09358160bccb9560d329c07006d210a8bb304400d07cf5e46635508e` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance.md) | 506 | `declaration-track:02a25cd9ec31d172213ac2e137f0a9c64cab714f4984a28c0c478013a9eabbca` |
| 55 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-7.md) | 508 | `declaration-track:e10dafa08fb6305210aaf0c4cc7e6659dfa47a0f3fbede177677b4c2581d8d01` |
| 56 | `lemma` | [toMonoidal_injective](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tomonoidal-injective.md) | 510 | `result-track:e0ef53d9510def34fcf609902b4a691307b7afdeb20087f8aa1d5f1f07b47082` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-5.md) | 519 | `declaration-track:cdf53f44669fb8a9271976dbe06aaeed1f8f87e4cc5d5677bc428e458467c8dd` |
| 58 | `instance` | [Discrete.monoidalFunctorBraided](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/discrete-monoidalfunctorbraided.md) | 527 | `declaration-track:3d8dd04fb1c67274eb7f794703b61cdba9316b8f29b1b19d8ec03d374ae62e85` |
| 59 | `def` | [tensorμ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor.md) | 538 | `declaration-track:17c59fad7ae4c46b40275980e6a951f65bdc894522f7e460d15a195347ae3ff3` |
| 60 | `def` | [tensorδ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-source-edition-3.md) | 545 | `declaration-track:8c1ac24b660c3b1f7fbb691a8ce918b93e741f292e245cb8ff1f5a2a88767433` |
| 61 | `lemma` | [tensorμ_tensorδ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-tensor-source-edition-2.md) | 553 | `result-track:e58326498d7de7a07fc2ce4e0794def6b3262aa8d59bfc045ec0bbf1eb50d3a8` |
| 62 | `lemma` | [tensorδ_tensorμ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-tensor.md) | 561 | `result-track:d11e78c3191c3bd36851b7bba6a53b4d84ed1bc8f54b0f01c7b958a612609ab8` |
| 63 | `theorem` | [tensorμ_natural](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-natural.md) | 569 | `result-track:8fb1fbf0682c933fbe511b57850a6f6744ea3ce8874464474796a6767210b7b1` |
| 64 | `theorem` | [tensorμ_natural_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-natural-left.md) | 586 | `result-track:bb1149a5282f2a25b13afd7a0edebceaae66970fce03de5ce7c956f73e56f528` |
| 65 | `theorem` | [tensorμ_natural_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-natural-right.md) | 592 | `result-track:9a40ffaab30eb256edcb786196cdececc0622a377cbd688123e314ce5ba773b0` |
| 66 | `theorem` | [tensor_left_unitality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-left-unitality.md) | 598 | `result-track:65afae7495b98cbc2527b497296f1318c12661516d49013a50091b036e2a4127` |
| 67 | `theorem` | [tensor_right_unitality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-right-unitality.md) | 615 | `result-track:5dec9642eb585733f627fcc01d819af72b620f8dc171d8474c37c42b0329c732` |
| 68 | `theorem` | [tensor_associativity](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-associativity.md) | 632 | `result-track:dc562cac7ba63363bf1b837250194bf749ebed80bea2856f2c9033e91b5325b6` |
| 69 | `instance` | [tensorMonoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensormonoidal.md) | 645 | `declaration-track:dead1f7cc92a8ef85f18768446aa039e9b67f197e4639cf0d951b39777cb4c2b` |
| 70 | `lemma` | [tensor_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-source-edition-2.md) | 657 | `result-track:49d37e7663ffd952dbc31a2cbbafa15fa63fa38fc29699a97c4dce86bc8622d8` |
| 71 | `lemma` | [tensor_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-source-edition-6.md) | 658 | `result-track:faeb9ab81868e046c6f0a5460ece0397bc160124bb72c8eb1676b81e663ce68a` |
| 72 | `lemma` | [tensor_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-source-edition-4.md) | 659 | `result-track:e2b79394d05439fd2717bbe9e68650542b14c5d2b71cb23395d23ebb24b68658` |
| 73 | `lemma` | [tensor_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/tensor-source-edition-5.md) | 660 | `result-track:fa274d37c83eebfbeb3d788d830a812e818f0f337eb3ed0f4d7ae7fc6b567ee5` |
| 74 | `theorem` | [leftUnitor_monoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/leftunitor-monoidal.md) | 663 | `result-track:54f9f6ad153cc48fc1989fe00f99afb6288e8b84bd8aa22d5a2a5ef9a174b05a` |
| 75 | `theorem` | [rightUnitor_monoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/rightunitor-monoidal.md) | 677 | `result-track:7d15ff29713b443712043895c12b27260e4fbba3b721ce7f9aa687a7877cd0b0` |
| 76 | `theorem` | [associator_monoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/associator-monoidal.md) | 691 | `result-track:66662501a42c80ed71e3e1a0330b88f8cf6f9f3ef8e4ce7c16ec851256b10957` |
| 77 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-8.md) | 708 | `declaration-track:eadaf13e535a6038f1381b4f10c2f74dd0463e0834ba2c76469a6102ecb06382` |
| 78 | `lemma` | [op_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/op-braiding.md) | 717 | `result-track:fa6884610bafa7810fe9b46438b552c21e602e15e17d01f40fdbc253999616ed` |
| 79 | `lemma` | [unop_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unop-braiding.md) | 718 | `result-track:d9da6ac4de1495fecc04ecd3ba7499920ae519b65a8c1e5f25aab1c969b691c8` |
| 80 | `lemma` | [op_hom_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/op-hom-braiding.md) | 720 | `result-track:966f018d1688fdbec39a70dafd5afa1ad30546353adbdb8693ec551c2ea15f2f` |
| 81 | `lemma` | [unop_hom_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unop-hom-braiding.md) | 721 | `result-track:ff25891f6a9eb189ccc932fc23facaa35092581bdab5ac802b93851444bded66` |
| 82 | `lemma` | [op_inv_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/op-inv-braiding.md) | 723 | `result-track:4159b0261db909dd8591f36ede963a246ba5abafb79380979757a615df5ed379` |
| 83 | `lemma` | [unop_inv_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unop-inv-braiding.md) | 724 | `result-track:9e21cf8d6e6cce4b0dba89fc20132c24195a8f28995297714719f33fff2eafdc` |
| 84 | `instance` | [instBraiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instbraiding.md) | 730 | `declaration-track:b8bd41edba24ce6a203c7aea109a8f091e963c5eadff2c0642e0bb7f4220d365` |
| 85 | `lemma` | [mop_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/mop-braiding.md) | 737 | `result-track:57ee3978e4d220119321da21acadd52b54bb4020a7658270ce9827510999c9f2` |
| 86 | `lemma` | [unmop_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unmop-braiding.md) | 738 | `result-track:f1152c8656f9aad5e59e45577f242de3c7deba75f5f5914f20e0908a100f5021` |
| 87 | `lemma` | [mop_hom_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/mop-hom-braiding.md) | 740 | `result-track:67b7524db001f25f5ff86bca4e379ae28f3afe488ddcdd0165f7011b5172a95b` |
| 88 | `lemma` | [unmop_hom_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unmop-hom-braiding.md) | 742 | `result-track:b2ff607e558a6c878b655f506d6172a86c817810bde1f82f3dbed4f0d0c12532` |
| 89 | `lemma` | [mop_inv_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/mop-inv-braiding.md) | 744 | `result-track:013f56a36688a49ace24a57731fe7b4035faaeec194b0b1d8fe925fdc70f9bf1` |
| 90 | `lemma` | [unmop_inv_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unmop-inv-braiding.md) | 746 | `result-track:f8fe89b5a9f6f7a25a163c2498d44c4e6cb478b896a8275d3eef5d288e270944` |
| 91 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-3.md) | 750 | `declaration-track:8ec2a510e5be4830452e6b0b2275829db42cf87bb747a920f4defd908bc10618` |
| 92 | `lemma` | [mopFunctor_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/mopfunctor.md) | 756 | `result-track:1fa4ef51542d24ab553d96da80212f8077b0bb24ad188a68be4cbf8d75783caf` |
| 93 | `lemma` | [mopFunctor_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/mopfunctor-source-edition-4.md) | 757 | `result-track:9da13db84be21e240b54ac0513e0c25eff5a341a71adc2e339b8744eec90956a` |
| 94 | `lemma` | [mopFunctor_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/mopfunctor-source-edition-2.md) | 758 | `result-track:1faab602b8ebbc5ee9a6b0eeb116e6d308f80692ed90b6a75a4b2c39e7b1bdcd` |
| 95 | `lemma` | [mopFunctor_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/mopfunctor-source-edition-3.md) | 759 | `result-track:7ad9ec8317b58ccbf51d436b6a93a44f423f0389c14d095e82ed7844d0ef3f5e` |
| 96 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-4.md) | 761 | `declaration-track:ae1c29abe6b40b0ba6bf44bc5809647acffcd496dd50056a3d2e7c68816b1023` |
| 97 | `lemma` | [unmopFunctor_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unmopfunctor-source-edition-3.md) | 767 | `result-track:b22dbbb8b723af843b8254ed0fa162bb874f7c50e318d76b87f5c116cf31c661` |
| 98 | `lemma` | [unmopFunctor_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unmopfunctor.md) | 768 | `result-track:3ed1709071fa5e9b748df9aa938a65fa5715b3aea1b41c6b20587220aacbfb1a` |
| 99 | `lemma` | [unmopFunctor_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unmopfunctor-source-edition-2.md) | 769 | `result-track:90ce0de11e8d805ac5eeb130c60d92a17ed822c64a213e7395f880eb89ae2439` |
| 100 | `lemma` | [unmopFunctor_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/unmopfunctor-source-edition-4.md) | 771 | `result-track:db994755eb68ec530a1406c1bca76c38dafb40dfa9a9a560f534c434bac47093` |
| 101 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-2.md) | 776 | `declaration-track:098dc1cae9766df06f305e99353426146a39c16728914ec9f4f257a30fcdf59f` |
| 102 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/instance-source-edition-6.md) | 780 | `declaration-track:db025ef55c437d37f31eb401d7fc59758fb5a59e858305c7364616075c1ff5b3` |
| 103 | `abbrev` | [reverseBraiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/reversebraiding.md) | 790 | `declaration-track:eb7092b1e8330460f28fc28dd317ac5357c1ab596fa7a884096d1f7c62750c32` |
| 104 | `lemma` | [SymmetricCategory.reverseBraiding_eq](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/symmetriccategory-reversebraiding-eq.md) | 795 | `result-track:e9ebd2bed3d1ea12154f0d0911463793348d57212c7a3f9cb64188fa96d46809` |
| 105 | `def` | [SymmetricCategory.equivReverseBraiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasic.lean/declarations/symmetriccategory-equivreversebraiding.md) | 805 | `declaration-track:dcdae67725506e545d93e07dbc32b8a5a75f1641968c8d60af1dba888d20c445` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=605007f0e9ee6438ec7ec93828870d80ebf02c8befff6d7a69fed18a6c9c7083 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
