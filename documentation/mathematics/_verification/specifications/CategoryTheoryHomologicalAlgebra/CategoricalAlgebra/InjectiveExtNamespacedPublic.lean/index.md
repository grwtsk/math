# Verification target: Injective Ext Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0840c8c9350e98c65c413ba540a7eb89439f784d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0840c8c9350e98c65c413ba540a7eb89439f784d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/instance.md) | 43 | `declaration-track:eabaa9222593a4134f1044c8f83271ea62ada9f78fffd778c59be55f5a9b8901` |
| 2 | `def` | [extEquivCohomologyClass](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass.md) | 48 | `declaration-track:af8ce99a241fe2eab44c163f1a37bfc7c607717c5f1e4037ddb6bf15035aa940` |
| 3 | `lemma` | [extEquivCohomologyClass_symm_mk_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-symm-mk-hom.md) | 54 | `result-track:47ee9bd301f327b3d156fbcc13c4c2aed0c0a1501ea4f0ca65f2dc9ce9ef154d` |
| 4 | `lemma` | [extEquivCohomologyClass_symm_add](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-symm-add.md) | 71 | `result-track:2726e6ad433354b30e76314fb7c472dde14cc843b66d080783dad22341e4effe` |
| 5 | `def` | [extAddEquivCohomologyClass](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extaddequivcohomologyclass.md) | 85 | `declaration-track:7739668e405170867aacf74a76e3a53ba18b814589ddabb85cbc1afbbc492471` |
| 6 | `lemma` | [extEquivCohomologyClass_symm_sub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-symm-sub.md) | 92 | `result-track:c1b9cd793d89f2ff9b4fe7801384accbd4a1420ae4aa07979df35562bdca3308` |
| 7 | `lemma` | [extEquivCohomologyClass_symm_neg](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-symm-neg.md) | 99 | `result-track:943c2fd5f211a3036dd01d2f0ac7f9a95f37a961f97adcf854d7394f2a5c3fde` |
| 8 | `lemma` | [extEquivCohomologyClass_symm_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-symm-zero.md) | 106 | `result-track:4e65a8eac3a5753f7f8db57cca2647ba52b3c16f901467ef090d9c796caed172` |
| 9 | `lemma` | [extEquivCohomologyClass_add](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-add.md) | 111 | `result-track:9dfb7393f11f686efb1854f25a37fffcb8113e8fe1b9fdeb91fad05d7bc96502` |
| 10 | `lemma` | [extEquivCohomologyClass_sub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-sub.md) | 117 | `result-track:7efa4302a9753325ae4322b45815c2f63aa876b80cc2142ad4e98de96306a401` |
| 11 | `lemma` | [extEquivCohomologyClass_neg](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-neg.md) | 123 | `result-track:8327a13897569bd9ce92bc97ec3ec3b5a1bfc2088463ad589dead56c800ddf43` |
| 12 | `lemma` | [extEquivCohomologyClass_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-zero.md) | 130 | `result-track:e2bb5fbe2417063917f84abe8b902f1b76261527a077c6f3baa0e593216c895c` |
| 13 | `def` | [extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extmk.md) | 137 | `declaration-track:48a15bd5df1f793e0f63c5ba4d2ba5c0445a1cb8dc7416d4d74de1573eeec94d` |
| 14 | `lemma` | [extEquivCohomologyClass_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extequivcohomologyclass-extmk.md) | 145 | `result-track:2f35c2ea540b31703fdb433bf4a06d74b37423211128518ccd6492236cdcb44d` |
| 15 | `lemma` | [add_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/add-extmk.md) | 152 | `result-track:c7a54b641fbd95137ea39673ded023c55f631f8bab4568a79935337f63bdc700` |
| 16 | `lemma` | [sub_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/sub-extmk.md) | 162 | `result-track:19c82f3d5bf19ec1704b7613c7ef8d4271b62898b6532cee42719725a20fba2c` |
| 17 | `lemma` | [neg_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/neg-extmk.md) | 173 | `result-track:1750f71fe0938b3acfc8f672045c1b15525c2e75c0ec844b62925d6e93a4ee2e` |
| 18 | `lemma` | [extMk_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extmk-zero.md) | 183 | `result-track:fa08bf84d84fa6d83ee38f276741a94c530097d06cd155dcbbf129dd78c01eb6` |
| 19 | `lemma` | [extMk_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extmk-hom.md) | 187 | `result-track:d6e4fc691438adf7535a13e9255f7b70b83a110ef4863dc1be4b9069bedc717a` |
| 20 | `lemma` | [extMk_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extmk-eq-zero-iff.md) | 200 | `result-track:d4ee4e0868b63d4e31232e132442094d279040429f979d199f7a4b08bb597be2` |
| 21 | `lemma` | [extMk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extmk-surjective.md) | 214 | `result-track:558ed5813e8e1d74d1f7a9e8984b9a1aa0ea1e7135a3d53e74f83afc90cbc459` |
| 22 | `lemma` | [mk₀_comp_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/mk-comp-extmk.md) | 224 | `result-track:9bb385a90e65419021b92d77073b68688ba909b9d73fb893175b4f10eb12b36f` |
| 23 | `lemma` | [extMk_comp_mk₀](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtNamespacedPublic.lean/declarations/extmk-comp-mk.md) | 241 | `result-track:fb435511f3e34880d29a20b7749f770a43d570271755be726359097644a9975e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7939d903e2a8308bf7f79ea8e876924900cde348460bea9184cfe413eff0b8b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
