# Verification target: Hopf Alg Cat Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b852ea6d11bf00a595717f119eb0cedb29e20ed0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b852ea6d11bf00a595717f119eb0cedb29e20ed0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.BialgCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopfAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HopfAlgCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/hopfalgcat.md) | 26 | `declaration-track:e9aea54897c2cec64f40e6446e713ddf2bff790f2b64f8d93771310fd656d23e` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/instance.md) | 40 | `declaration-track:8508a2d1664821f49fcfbb7029e9e965b93100b6b3a5fed3926140710f286259` |
| 3 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/of.md) | 45 | `declaration-track:ee668ced01d6da1a65258294de4f5d191f149f5389f2b3a15d8a8d52c7505ae7` |
| 4 | `lemma` | [of_comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/of-comul.md) | 50 | `result-track:18d48dd071f49f64153aa873c38c363a2966fed07d80da2219377dde96dd54db` |
| 5 | `lemma` | [of_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/of-counit.md) | 54 | `result-track:e744739befa69e20e35a4d9543d156d797ad9ed04d018d6d08511e539c8adb7c` |
| 6 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/hom.md) | 60 | `declaration-track:3b0c3018db568dd48aa76b782dd8a1ae2f7b10388f175b0ba94b7857412fc60f` |
| 7 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/category.md) | 64 | `declaration-track:d82d3816c5247f0c5f78f4f447981e96a1a22390e0045fb375c22a6896ef4749` |
| 8 | `instance` | [concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/concretecategory.md) | 69 | `declaration-track:616f86c6842c9a8fb816be1e08dd0b86ad01a0f18ed44fb510db6e107260f902` |
| 9 | `abbrev` | [Hom.toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/hom-tobialghom.md) | 74 | `declaration-track:df6edf2e44dbab32750005d24a61e6efec8bf50b0e988713ea5d54bfc31c3d31` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/ofhom.md) | 78 | `declaration-track:2f2d2e2f5787a2ec5c8aa5a00c56b604be4a48440ba3915b780fa64c247b2b9c` |
| 11 | `lemma` | [Hom.toBialgHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/hom-tobialghom-injective.md) | 83 | `result-track:5c85015d448c22b3aeba86fcc2326d1164c2cc7dbf484b95246676ac631dc56d` |
| 12 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/hom-ext.md) | 88 | `result-track:e4bd13f9f82bf85f18b900b2ad64a4da4bcb7bee9ed0bafd3be80c827aeeb079` |
| 13 | `theorem` | [toBialgHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tobialghom-comp.md) | 92 | `result-track:af41acc29f9c7bc7e991305575eb8d3d8c43be7b89a418ed09bf24e1c963fafb` |
| 14 | `theorem` | [toBialgHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tobialghom-id.md) | 96 | `result-track:0a6264d1db1f70909bedeef00f1926bcda64b010a4d4783eed2cfdab96eca0bd` |
| 15 | `instance` | [hasForgetToBialgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/hasforgettobialgebra.md) | 100 | `declaration-track:70dd6c4c20b3969a7a85ba50097cf29f68b81d2a5bc3669394352e432740319f` |
| 16 | `theorem` | [forget₂_bialgebra_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/forget-bialgebra-obj.md) | 106 | `result-track:f5e8b1563d6ac14a074c7282e46b7ac80848c6f8fe3da9e1c63192b818ec38e0` |
| 17 | `theorem` | [forget₂_bialgebra_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/forget-bialgebra-map.md) | 111 | `result-track:72def79dd82cffc165f40802829a5921674f01d94ca93eca9efd9639d029d885` |
| 18 | `def` | [toHopfAlgIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgiso.md) | 128 | `declaration-track:b1236a9f75c238ba7835c21ec3232efb919cbc4e064f5de604157ad6b625e2f7` |
| 19 | `theorem` | [toHopfAlgIso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgiso-refl.md) | 134 | `result-track:daf0536413c262d5f391c07612d4f9ab8834b20d628a846e7e8ca421c0e6e9bd` |
| 20 | `theorem` | [toHopfAlgIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgiso-symm.md) | 138 | `result-track:b22f3128fcfabe1ed3423cee33d554490311508bb84626b3b270bda1b38a4a8e` |
| 21 | `theorem` | [toHopfAlgIso_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgiso-trans.md) | 142 | `result-track:454560027d4f032f094e58cc132ec147ded28a82d0423692ec41b848c4fceeb5` |
| 22 | `def` | [toHopfAlgEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgequiv.md) | 156 | `declaration-track:0b2043ea77961753ded053bdd779181a1e93f990afe498a6b55f932765b2b8a6` |
| 23 | `theorem` | [toHopfAlgEquiv_toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgequiv-tobialghom.md) | 162 | `result-track:703f1286fdd78736903ae644af04ebebec3a9337650b36a89df47492c3567357` |
| 24 | `theorem` | [toHopfAlgEquiv_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgequiv-refl.md) | 165 | `result-track:eece6bd0608890200e47ca0b74335b2243d3d9945533adf92e69f1040b522c75` |
| 25 | `theorem` | [toHopfAlgEquiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgequiv-symm.md) | 168 | `result-track:68a67e1a8290b18933f2a0e59fe40e822f6e067152fae8389ac42ca06cabf9ce` |
| 26 | `theorem` | [toHopfAlgEquiv_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/tohopfalgequiv-trans.md) | 172 | `result-track:6f7e3a59b6b97f8e3080d4bfba3074bcec8303061a4e7b4a858bdc9d6b7655ab` |
| 27 | `instance` | [HopfAlgCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HopfAlgCatBasic.lean/declarations/hopfalgcat-forget-reflects-isos.md) | 178 | `declaration-track:e489bc33b80dcc7276888317eba32a49a9776e1e4502a80925a4bfc625706d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66b7d206ec9522e6423c742ffca2bcdd2e158000fa6a0720a7e09c773306950a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
