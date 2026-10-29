# Verification target: Locally Bijective Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86ca1c07c93e18b789d86c6f8f5e9c29c6cbd623",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86ca1c07c93e18b789d86c6f8f5e9c29c6cbd623`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean.json)

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
| 1 | `lemma` | [isLocallyBijective_iff_isIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/islocallybijective-iff-isiso-source-edition-2.md) | 51 | `result-track:e2148443428a1ef94a3566cf55f43630438d992c1c2e8293bc47c95983327385` |
| 2 | `lemma` | [isLocallyBijective_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/islocallybijective-iff-isiso.md) | 92 | `result-track:c3db10ac0e933e7ea682e1c8b3305ecc8484c4ef17e73c55f73aea6339b5e55e` |
| 3 | `class` | [WEqualsLocallyBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/wequalslocallybijective.md) | 113 | `declaration-track:5abc4fed198eb39822be3ef7b0f71163b0b5679f3d684d4599c7f038897f3917` |
| 4 | `lemma` | [W_iff_isLocallyBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/w-iff-islocallybijective.md) | 122 | `result-track:a6fb898aac580b4372c67ab7a1c81c9542a05fc7db4f779f991e4241f30d884e` |
| 5 | `lemma` | [W_of_isLocallyBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/w-of-islocallybijective.md) | 126 | `result-track:088526d24b27ec4e54e63dcaf78e22fed4c0bfd2cdceaf87e5ae65606e348eb2` |
| 6 | `lemma` | [W.isLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/w-islocallyinjective.md) | 133 | `result-track:7ab12331d177c161476f1e51b8e9f70eda6cf1fcf8f4786107c5db3544fed421` |
| 7 | `lemma` | [W.isLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/w-islocallysurjective.md) | 136 | `result-track:8275896b31f0700fc0aa76794a9937bc0747cf6dd4876c24f2a9f884bb6b9c33` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/instance.md) | 141 | `declaration-track:3444922c726d2901401eff2b5fde9c8a47616450d45b5845794abbfaaca9df3a` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 144 | `declaration-track:69ce3f7cf9cf22f85208eb24cd038a1e4b9f60c0d2159c20936dc5163ee025c2` |
| 10 | `lemma` | [WEqualsLocallyBijective.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/wequalslocallybijective-mk.md) | 149 | `result-track:dd38c05a37ae499c90156ae0c7667c2844a05c6f6eb393ffd5c1a3f113e14793` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 161 | `declaration-track:f18e2635753c1f7254e0c44cea091975af70618eee18111b13f49f2980ce65ca` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 168 | `declaration-track:d15c83bdc230d328566277316d057361c0be081f66f6d0d622f24070b2575d5e` |
| 13 | `lemma` | [isLocallyInjective_presheafToSheaf_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/islocallyinjective-presheaftosheaf-map-iff.md) | 178 | `result-track:59ffcab818ce4583947691a6d2724118c420fefb3ebc270eeaa8ff0b7ca80976` |
| 14 | `lemma` | [isLocallySurjective_presheafToSheaf_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijectiveNamespacedPublic.lean/declarations/islocallysurjective-presheaftosheaf-map-iff.md) | 185 | `result-track:5c04808909ef196f3458aeab371714b33000d99dedbc8b32d898acb1ce07de4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=150d0ecb416933a1d354e2ea60379cdb4ec481f09615d83ef8f748742b641b2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
