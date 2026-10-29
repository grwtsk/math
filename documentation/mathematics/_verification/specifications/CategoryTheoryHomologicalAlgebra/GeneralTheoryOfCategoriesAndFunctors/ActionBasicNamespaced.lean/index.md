# Verification target: Action Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c9d08bbce3770c1fa4bd2911cabbb6bf81ffde7",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c9d08bbce3770c1fa4bd2911cabbb6bf81ffde7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.PUnit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Conj` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Action](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/action.md) | 47 | `declaration-track:fb80473e4be4025c24e0a085d663638713c15eb4c868f0e8847943bd1732f0fc` |
| 2 | `theorem` | [ρ_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/one.md) | 57 | `result-track:4a1380d53febec6d312984e56820260c813653917d648cf36316c277e29eeb65` |
| 3 | `def` | [ρAut](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/aut.md) | 61 | `declaration-track:6faae13bea65f076a6701ec2f85e3fc607d94f1960ae378dad96c24d96a4c4f1` |
| 4 | `instance` | [inhabited'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/inhabited.md) | 74 | `declaration-track:31a907dc18f5a4aacab71e0b06df9c12d7221a7d325be87b352a7912e19c2aab` |
| 5 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/trivial.md) | 78 | `declaration-track:0ee9c9b120e4d6b26f5cfd530c7de44725be060db38dfb3d880911e6bef9fea2` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 82 | `declaration-track:2c92de55327875fb223d972a96156673562c463aacfbb280faefcbaf59fb845d` |
| 7 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/hom.md) | 93 | `declaration-track:b94b80f3c3105b68b1532aff951376c7122690183f557485de7fd9767fbb1373` |
| 8 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/id.md) | 105 | `declaration-track:476224a5bf79cc9c416a99a85fc3f8823fcb7638fa711e0420ee94d5f7586076` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance.md) | 107 | `declaration-track:0c331a9093b31d0ee8fb120586ba6f313961c056ef28af6bb3fde256f13f50c8` |
| 10 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/comp.md) | 113 | `declaration-track:1ba5f6b74535a44d2d899cdbb190e6b9f9e29303e391840181b5367fadce2358` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 118 | `declaration-track:8bcb1a62557f1fa6dfa8a989e8020e244c9e6ec452db0ceb1645602fe3952e13` |
| 12 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/hom-ext.md) | 124 | `result-track:fa807d987b91aa0f3868f947d3ab8e6a1518ac878fe51f38a2975c927d19719d` |
| 13 | `theorem` | [id_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/id-hom.md) | 128 | `result-track:503fb906835382f93a29502a58b1df4821c6dd8e9a409bee426f060f7878c79f` |
| 14 | `theorem` | [comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/comp-hom.md) | 132 | `result-track:6ecc7174d60bec264c7e73c5e406684255c8935532b1fb4d14958a87cb60dc99` |
| 15 | `theorem` | [hom_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/hom-inv-hom.md) | 137 | `result-track:a76159eeb62683ca2cb9e29ea913adb4d1f198020de3003f1d711baa527a8f4e` |
| 16 | `theorem` | [inv_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/inv-hom-hom.md) | 142 | `result-track:236803fc501aa8b1c185ce9f39b85398095c62b57a566de583e8eebd04f2cd3a` |
| 17 | `def` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/mkiso.md) | 150 | `declaration-track:4beb6301905be47b63fb424921d30513afcc0ccb4de7c90c2ecac1475d1f7f42` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 159 | `declaration-track:4e0ab06b282ca7f75c9abfa6480fcd956b95ff2eeeaa93b9e4579804223e89fb` |
| 19 | `instance` | [isIso_hom_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/isiso-hom-mk.md) | 162 | `declaration-track:9810cb58bb2914787909bdc3178f305e51cbf94fc8480d94445d9d628ed3c161` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 166 | `declaration-track:d3caeabcdfca3e2929bc928457cc2acc2aa8c1109c83f1b13e7b63680e7e4133` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 169 | `declaration-track:5c46a3048acc2d0f747fd3fbb8917205afa6d1712293453177d8906f1e0f5d6d` |
| 22 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/functor.md) | 176 | `declaration-track:ab7ca186802a1893049052bed354605055d98e6569fefdfe48108f24c5778651` |
| 23 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/inverse.md) | 188 | `declaration-track:0dcbc5f16923a123cfba64c1fb0ded2a48f13d2bb971814cfc984c2c6ae73ab1` |
| 24 | `def` | [unitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/unitiso.md) | 201 | `declaration-track:64fe44a7d1478ebcc249df3d4cf41eb75f5b32a5e22e6d1d3884ef1b10e3e75f` |
| 25 | `def` | [counitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/counitiso.md) | 206 | `declaration-track:bf97acad6a4fcf0635b9fec048fcdae0f4883655b36904e58bd522bef88c3ab2` |
| 26 | `def` | [functorCategoryEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/functorcategoryequivalence.md) | 221 | `declaration-track:2c3eef955dea1de25454ce8760ea2448af876543f3702f1bc94dd774106034b2` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 227 | `declaration-track:25ffc1631fa4749c332d27363d3aeac3fc229640bb9cfe54794b72ff8bcbf912` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 230 | `declaration-track:59d3cc86e44e1bbc33fd5d478a23732132de4796cc0564f099b018b38102c40e` |
| 29 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/forget.md) | 245 | `declaration-track:6f45182187ce61fa84fe286af79681ce04251aca3261e19b3c6e92c322d22e22` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 249 | `declaration-track:57b15988305009f6334ab4a1c56c3e88c049ccd6e25a2cf7de49d85934e5dddf` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 251 | `declaration-track:54118f9a6d906b9234756947e4d5ef97245eac2c4d9ef98c3977cb9cee5d60c0` |
| 32 | `abbrev` | [HomSubtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/homsubtype.md) | 255 | `declaration-track:c068141d7cfbc3327536899e29c3f417f5b45ef21ad69e117bf5bc8140731aa8` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 260 | `declaration-track:1d71461a08a3db51aa4be6acedfdf039b61ae81f56c3392aeef4767e1c95ae58` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 266 | `declaration-track:e482de3a697f8ec0f11ed8d1292a93d655c2e910df55bc3f48dc3fe84c31fa07` |
| 35 | `instance` | [hasForgetToV](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/hasforgettov.md) | 278 | `declaration-track:bfb9f315b89ad0f8909ff64fd9d6bf89d41bb84da505d12f3c87324ebc2a8e24` |
| 36 | `def` | [functorCategoryEquivalenceCompEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/functorcategoryequivalencecompevaluation.md) | 282 | `declaration-track:14c5a3e4f351f247e2a0ab0b6d3b7c97ba35877b8bf7ebb9aeff413609541c25` |
| 37 | `instance` | [preservesLimits_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/preserveslimits-forget.md) | 286 | `declaration-track:af4a4c45a3c97f7b7ee4c6589f5679717af103d34f8b0917e1533d1c67bea549` |
| 38 | `instance` | [preservesColimits_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/preservescolimits-forget.md) | 290 | `declaration-track:de555ff497ab046c5209c36d66a68d67e8f112e82f94c5663352861839189d2d` |
| 39 | `theorem` | [Iso.conj_ρ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/iso-conj.md) | 297 | `result-track:15bfbf1e7da094dd54e08c6bd1472b5619af1c0235932824372cbcfc52f4e3c4` |
| 40 | `def` | [actionPunitEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/actionpunitequivalence.md) | 302 | `declaration-track:3567c6c6f20cf4ce08072957199f3ca2d6a86b43fb23cb0852329317a12db092` |
| 41 | `def` | [res](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/res.md) | 322 | `declaration-track:488d6a063c5aa6fed411156bbb1e6cc8967fd2d0987cc2353b4b85f899358c94` |
| 42 | `def` | [resId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/resid.md) | 334 | `declaration-track:7efbe9e5e45c5cb2c55d770e2acbc9c40a5094d15907554c0a9e2c8a2b9934bd` |
| 43 | `def` | [resComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/rescomp.md) | 341 | `declaration-track:45b44ef9a5343e2af30a7d2a8453f584f3fe09f8a1c42f36075fa5742e307c1b` |
| 44 | `def` | [resCongr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/rescongr.md) | 347 | `declaration-track:0acf202b8e0cda5fea65dd81825822422e333a1857dac05a5603ba2dbf588c58` |
| 45 | `def` | [resEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/resequiv.md) | 353 | `declaration-track:6cdd1734bf9f1a90ada836e4471b983d8abe605576c3c31f067f77b041d953af` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 367 | `declaration-track:44d8623f20e812b9ab43f85e2b36676068fd80e52eb15dcc90b3da1023a52d68` |
| 47 | `lemma` | [full_res](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/full-res.md) | 374 | `result-track:6500428e00a1b2fb275e832031b67aba4de533df7b21a8c3a86c9c3cb9dabd17` |
| 48 | `def` | [mapAction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/mapaction.md) | 393 | `declaration-track:b1d5bdbb4be5d58009b0645c4a3110bb817d5a534599f37837c50ad3773c77df` |
| 49 | `def` | [mapActionComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/mapactioncomp.md) | 412 | `declaration-track:cba145158866c91253824f19ba8266545e1779eb9164c529c837ef36f59b1621` |
| 50 | `def` | [mapActionCongr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/mapactioncongr.md) | 418 | `declaration-track:b4d876447c38c1ed656716f53932277dad189f89f25f87d4a167cb6c30a0a391` |
| 51 | `def` | [Equivalence.mapAction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionBasicNamespaced.lean/declarations/equivalence-mapaction.md) | 427 | `declaration-track:7997ecc623e86fe9e9018a0b13c634d146db4da7ff89af8e9e9f10700900817c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f7ee96d1819189fab25edc6591a70fbffe23835225ccaf562c56a30ac9f016a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
