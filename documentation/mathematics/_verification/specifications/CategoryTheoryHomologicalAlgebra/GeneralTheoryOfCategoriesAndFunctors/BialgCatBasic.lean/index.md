# Verification target: Bialg Cat Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b1d17c51df853d6f7bebdbad8cd3ff0cd4a42c2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b1d17c51df853d6f7bebdbad8cd3ff0cd4a42c2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.CoalgCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.Equiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/bialgcat.md) | 27 | `declaration-track:bd10a6dd4d6176d47141a07b9ad673f0928992e74b44aa5859b9aaf2defb4bbc` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/instance.md) | 41 | `declaration-track:5c9bf8a4a3ee8b6963bd13ae7b90fe2e0264bfc988b1a3514a59aba50dc52d58` |
| 3 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/of.md) | 47 | `declaration-track:16025a637b3478c2188c2b4df57452cd2ba0961e18f298afc62062dab28d5222` |
| 4 | `lemma` | [of_comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/of-comul.md) | 52 | `result-track:5c3abe5940332d56b730c61d0bf029de0b2918713aa4489d8e05cbc48216441d` |
| 5 | `lemma` | [of_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/of-counit.md) | 56 | `result-track:4d5478a9c9740bbb4e71df7e1036384aa420afa8b244277fbce9af8dccfe701c` |
| 6 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/hom.md) | 62 | `declaration-track:d63f855672cd61ab029c3bccdd1393de0b60ca9fc8fb9463e36e57794078ee81` |
| 7 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/category.md) | 66 | `declaration-track:eda78db2cf9144af34c3702fca9c6ebec813def06cdf562eeb08331f2a4ee3f9` |
| 8 | `instance` | [concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/concretecategory.md) | 71 | `declaration-track:a8707a99bccb984a06edd0b70c49174adfe7156749d96ed8ca698b2ce94ecf25` |
| 9 | `abbrev` | [Hom.toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/hom-tobialghom.md) | 76 | `declaration-track:883ab28decbe85fd3a7bc101225a0aeaa1944895201095076b4d669a799f799b` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/ofhom.md) | 80 | `declaration-track:1de3e43e265285482afd7ca406999b2a3430b600d0ac5c8e961e60d8713e1cec` |
| 11 | `lemma` | [Hom.toBialgHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/hom-tobialghom-injective.md) | 85 | `result-track:a9bdb20ecfdfbb44b5943977292a4e8f66bf14148ca5f60a4094c8ee1d56836f` |
| 12 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/hom-ext.md) | 91 | `result-track:b38c296c68179f9fa877b279010f3f50509efde17b7d50c818bd6a6a47b8adcc` |
| 13 | `theorem` | [toBialgHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialghom-comp.md) | 95 | `result-track:412417f8bbc40d8cedfe121c244dbce1ec6e14667d13bf130101726f484e15dc` |
| 14 | `theorem` | [toBialgHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialghom-id.md) | 99 | `result-track:331ec3463d6227938f79f6b8f5d1cdc1d2620a3174193cdc90cdd85dbca6b353` |
| 15 | `instance` | [hasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/hasforget.md) | 103 | `declaration-track:3a342ebc8fb6017d2534bb55378647c0bb6c44ed7ca8c639227b5960f22b8b6d` |
| 16 | `instance` | [hasForgetToAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/hasforgettoalgebra.md) | 110 | `declaration-track:e919a0237ff9326375fed5e1d41e06cf30d5e895797413a12264defed14e4dfa` |
| 17 | `theorem` | [forget₂_algebra_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/forget-algebra-obj.md) | 116 | `result-track:fcdfc7396dce3ee0968f47c213f81f1bd99cc14b4958adf90ce24949645050bf` |
| 18 | `theorem` | [forget₂_algebra_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/forget-algebra-map.md) | 121 | `result-track:84e3e3454b2da2ecc3299cf705fdb23fcc03551f8967d48ba9825dc71f3cf4a4` |
| 19 | `instance` | [hasForgetToCoalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/hasforgettocoalgebra.md) | 125 | `declaration-track:bab69d3a5125491896c4978b5b546f36b378fdd016429ff26f366c2120b91f12` |
| 20 | `theorem` | [forget₂_coalgebra_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/forget-coalgebra-obj.md) | 131 | `result-track:0e272eceb31beea9429366b422df54b34218839122d527c952cf6e9a9be7c46a` |
| 21 | `theorem` | [forget₂_coalgebra_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/forget-coalgebra-map.md) | 136 | `result-track:2e8408d060b8fb10d219ad97de66eaf705ecd2f8e694649ce1922013cce50327` |
| 22 | `def` | [toBialgIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgiso.md) | 153 | `declaration-track:2bb8c619be1020487e4eb07df491c33ad54fe1200cb1f88cb7c50c5f1496a5b5` |
| 23 | `theorem` | [toBialgIso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgiso-refl.md) | 159 | `result-track:efdf84bd7406dbd134285986349c470e98359cc429a2d41586e7a8bf0cd741bf` |
| 24 | `theorem` | [toBialgIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgiso-symm.md) | 162 | `result-track:c91d91e6c5f5fe554c4ab0ea07026bdf7043068bb98a8475d281cea4624610c8` |
| 25 | `theorem` | [toBialgIso_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgiso-trans.md) | 166 | `result-track:d70bb9180bd6bc1766c84c11aa7828553cde730d595c3ae87a63fc06ebf7acd6` |
| 26 | `def` | [toBialgEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgequiv.md) | 180 | `declaration-track:9504f94c1e66be1cbe90692a90d292522d2e597ee4b8e885b6d0c1200747a2b1` |
| 27 | `theorem` | [toBialgEquiv_toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgequiv-tobialghom.md) | 186 | `result-track:41a55060b38bb5ddcbab9c3d05cc089d5d92871f303b4a022273d241e78bcf36` |
| 28 | `theorem` | [toBialgEquiv_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgequiv-refl.md) | 189 | `result-track:d3158096e512642ad94b7686154e8fc346eaa074e04882b570a75e358411752e` |
| 29 | `theorem` | [toBialgEquiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgequiv-symm.md) | 192 | `result-track:b35352fe70ad686d957c0b629d0c4f2bdc1d3b3cb0a2552980c54638adbb6500` |
| 30 | `theorem` | [toBialgEquiv_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/tobialgequiv-trans.md) | 196 | `result-track:8f23f1c4591ba1df6a46ccdfeaca4a0772594814fcb5bd62124ecf2fa7934fc7` |
| 31 | `instance` | [BialgCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/declarations/bialgcat-forget-reflects-isos.md) | 202 | `declaration-track:02f8aaba60bcea5aaa14c558b503afeb603feccecd7807ca106e0a8ec6165184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d53d34bfb1e2e3acbbd1ea5443dd62892f1f25f5d0a4042e124f4e7a6d78cf06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
