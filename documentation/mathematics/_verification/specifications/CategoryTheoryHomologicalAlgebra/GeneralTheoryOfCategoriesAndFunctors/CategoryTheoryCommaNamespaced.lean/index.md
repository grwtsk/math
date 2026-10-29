# Verification target: Category Theory Comma Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e25372e64f938b94a8194045b39646c52fe5605f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e25372e64f938b94a8194045b39646c52fe5605f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Comma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/comma.md) | 68 | `declaration-track:448dcd7163430cd02fc8c1bef44a786355583068dd72b6156d6c6f081b40cffe` |
| 2 | `instance` | [Comma.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/comma-inhabited.md) | 75 | `declaration-track:7169437ae0c5bb145a99f91e205bd6920de1e70d4223f0783d33a72a4fd050d3` |
| 3 | `structure` | [CommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/commamorphism.md) | 88 | `declaration-track:afb49b3329c7867304daf419a502eb5ea44b407f6dbdbf51f9349fa2189a9ee4` |
| 4 | `instance` | [CommaMorphism.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/commamorphism-inhabited.md) | 95 | `declaration-track:d2c9bfa0f691bf26ee993c0901a76066300a10f8b60b5307b4c919b1b7fc2357` |
| 5 | `instance` | [commaCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/commacategory.md) | 102 | `declaration-track:901f3641a95a575ecf571220fb9f03c5f265e74e8026187e6042e7626b0871ca` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/hom-ext.md) | 121 | `result-track:d2c323cae64813c2b27c8d6a77de31a978d3308e6ace92048be6e3b0ac7e7fb7` |
| 7 | `theorem` | [id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/id-left.md) | 125 | `result-track:6e720e80366ca921c7511d913452d00e318b52a7a48c0f30a2d5b889a4b7d485` |
| 8 | `theorem` | [id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/id-right.md) | 130 | `result-track:76218634c3f2664916b3cc2cccdbe14c413e8145d3808eafaf5698c538aec7f8` |
| 9 | `theorem` | [comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/comp-left.md) | 135 | `result-track:2e2f60d51678427bf5d0eedbd686162c9cbc6875bee0037fada063ff76a66bad` |
| 10 | `theorem` | [comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/comp-right.md) | 140 | `result-track:d8b6b0e3e79a3d45fa762f518ce37c3c77736ac93907435a210824f9ff258642` |
| 11 | `def` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/fst.md) | 150 | `declaration-track:623b69c142f4e563da8b47539748eb11679a9328d50cd6d316424148f99e87ce` |
| 12 | `def` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/snd.md) | 157 | `declaration-track:9ea525d522b41387dd0bb25a044625effa0816d5f16f02d943b44411823adaf1` |
| 13 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/nattrans.md) | 167 | `declaration-track:03968c9e2262076aa33e2ee67215e2767e45a4d2170a627f9839438a3a023b7f` |
| 14 | `theorem` | [eqToHom_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/eqtohom-left.md) | 171 | `result-track:9664bcec18373e9c4c4c651d4795d4328f8835ad00b0ec0d6a66a4d6beb16ab7` |
| 15 | `theorem` | [eqToHom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/eqtohom-right.md) | 178 | `result-track:dfa17364fe0c8544af0dd8079625bb5120d9f473e894830ff844641dc19cadfd` |
| 16 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/isomk.md) | 193 | `declaration-track:3960dd542b308c3c2a0db7a48285107f8e9f02e10def6a58ef383ffbe48ae6b7` |
| 17 | `def` | [mapLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/mapleft.md) | 210 | `declaration-track:eab4c2a27e27bebd69b7df012904401cff80667ebc24f99bc9a287bd1107c9c7` |
| 18 | `def` | [mapLeftId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/mapleftid.md) | 223 | `declaration-track:460956b4e3c36f6dceb38172d7fbd94a7fc5045ed3bdc8f3ab5c239b44c36f8b` |
| 19 | `def` | [mapLeftComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/mapleftcomp.md) | 238 | `declaration-track:4b7c2e1278d87faa85c9d9ffcc95d6df772da6340c08f16b97fd619507632d55` |
| 20 | `def` | [mapLeftEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/maplefteq.md) | 253 | `declaration-track:b36c5343cbb6f31056ba2b0198fe9c86955a33f872d8837abf293752ad23b6ec` |
| 21 | `def` | [mapLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/mapleftiso.md) | 259 | `declaration-track:747eee0f581041913a2e7c5d1fd2b45fd4731628ac9b886af05a30b583bab1bc` |
| 22 | `def` | [mapRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/mapright.md) | 266 | `declaration-track:38c1b9e63dc9e5527f968fc91d969f74cde325d12d2833271755a499876cfdf5` |
| 23 | `def` | [mapRightId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/maprightid.md) | 279 | `declaration-track:e1f58e5bd1825e83b6cd49c964d58ebf8c76023571a412f592c493d81a1519af` |
| 24 | `def` | [mapRightComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/maprightcomp.md) | 294 | `declaration-track:590b38898c284ca94abc8b3f7f915932c27cc731ea2ec1ca026b96bf48a23d61` |
| 25 | `def` | [mapRightEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/maprighteq.md) | 309 | `declaration-track:43c0b777735022454eeb9ae41294c04d2124deab9b57c4a55cc0e85b15d28b81` |
| 26 | `def` | [mapRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/maprightiso.md) | 315 | `declaration-track:397394ea8d1bf550cb3bf870327a6952d3eedac7862098252bc8e2e65a2a7905` |
| 27 | `def` | [preLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/preleft.md) | 328 | `declaration-track:8e57d7aa82ce21a76df2f6b2f271dee12af768de7560b7344da00620ab746eea` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/instance-source-edition-6.md) | 339 | `declaration-track:fb340117006e5bca398cc5ef36769b7beb9b04b7894c3566189c9cc05085f598` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/instance.md) | 343 | `declaration-track:1047ece15b2f13e87da263c4446b34942c7f56b04cc0657aeaf50967fe4c6a6e` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/instance-source-edition-4.md) | 346 | `declaration-track:43daef9a0c87745f6f34cce79ee4906aeb00b30291ba2e823563fd8bfe45db00` |
| 31 | `def` | [isEquivalencePreLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/isequivalencepreleft.md) | 352 | `declaration-track:0c93062261b6e7b3ee65588eea181f52c01b4759238cdf759686b0e1d9366c55` |
| 32 | `def` | [preRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/preright.md) | 359 | `declaration-track:5781d806ba86cef2e6f2c8a9b9fa31f2d37b38e89db9f8c3fb3d2c745bf13add` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/instance-source-edition-2.md) | 369 | `declaration-track:1f9849c7177b662ec3cb0453a10ce5a82571c0e289f555c17e0eaa4d8f45b8d9` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/instance-source-edition-3.md) | 373 | `declaration-track:4048a62afa930c479a34f0222aa7f68e309b98490be505899e58078d624df513` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/instance-source-edition-5.md) | 376 | `declaration-track:c13df91577d2f3afbc05a4ad0e1344390fe2572549061615d1c59cae428ee0ed` |
| 36 | `def` | [isEquivalencePreRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/isequivalencepreright.md) | 382 | `declaration-track:f2edfcd97b6da27a0b953640dd3e2f3f0753b1605b85e869ded15492a6d648e2` |
| 37 | `def` | [post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommaNamespaced.lean/declarations/post.md) | 389 | `declaration-track:061a70db8a3361da6fbc5210645ab5ecf307c5892c40268eeaad6d5c4bdf2241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9e9aff36a97011387dabcdb83e26f3770031116072373e2a3163121bc73a344 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
