# Verification target: Subcanonical Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "092bc777e7e23fbbb4f7ff58077f80fae941b46f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant341a3238312f162fef147659e4fa93a4942cf58abec6c4fb4e631e598a07ec38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `092bc777e7e23fbbb4f7ff58077f80fae941b46f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant341a3238312f162fef147659e4fa93a4942cf58abec6c4fb4e631e598a07ec38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant341a3238312f162fef147659e4fa93a4942cf58abec6c4fb4e631e598a07ec38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [yonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv.md) | 37 | `declaration-track:ff0235eacc06a0267a7da15c81b554bc11e973ff57db5ffe045fe2b50ef6d255` |
| 2 | `theorem` | [yonedaEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-apply.md) | 40 | `result-track:dfb8e11684922324785a14a8331ab09ca6a291ecb57f5cf737dfb6bc2a7f3fe0` |
| 3 | `theorem` | [yonedaEquiv_symm_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-symm-app-apply.md) | 45 | `result-track:5e0b1174a6def4895c6f7a35ddebc4ef67c1ecbc5df9c9cf5177ffb05a51e550` |
| 4 | `lemma` | [yonedaEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-naturality-source-edition-2.md) | 50 | `result-track:945da2ec41cef8d8ccd71b3b406ccddcfca8e9414bc8203e885b71f52d4c889b` |
| 5 | `lemma` | [yonedaEquiv_naturality'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-naturality.md) | 60 | `result-track:3dc20ea78ef255daaf0cf5502ff70a72937a287c4a58eea68975b268ffeaab03` |
| 6 | `lemma` | [yonedaEquiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-comp.md) | 64 | `result-track:312bddeaa4e6a2706997d794f3b92cb041f86084205b0071d371bf33278da450` |
| 7 | `lemma` | [yonedaEquiv_yoneda_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-yoneda-map.md) | 68 | `result-track:a7dd67b7aa2b38ad0c87a3614133982e0df4b69e45cb1cbefef0b2bdfdb6e622` |
| 8 | `lemma` | [yonedaEquiv_symm_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-symm-naturality-left.md) | 72 | `result-track:d271aa3c652f1a06dbf0c12cb801dcd0f905d69ad689dd42fd16aca3b5f45d72` |
| 9 | `lemma` | [yonedaEquiv_symm_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-symm-naturality-right.md) | 79 | `result-track:c6ef10c1ff4b7c638eb630479937b52b0d618541db3780aacc5ad178694a2ae6` |
| 10 | `lemma` | [map_yonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/map-yonedaequiv-source-edition-2.md) | 85 | `result-track:f22c2c26b365b9f024710f78dec70c14cdf5d8fe3dbe580b97e55525a991aa77` |
| 11 | `lemma` | [map_yonedaEquiv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/map-yonedaequiv.md) | 94 | `result-track:3898c76dc8a545de3aa79e167c92f812647cd6327170a057e9d42380feb3575d` |
| 12 | `lemma` | [yonedaEquiv_symm_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaequiv-symm-map.md) | 98 | `result-track:931fa6401943b76c7839ad5c010517a9efb09cdbeb8181e5ef972cf65b1e25cc` |
| 13 | `lemma` | [hom_ext_yoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/hom-ext-yoneda.md) | 107 | `result-track:55180fdcb42926c1aa158fb48e7d7da06719622d1b72ac5a0be93d9658e07099` |
| 14 | `def` | [yonedaULift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedaulift.md) | 119 | `declaration-track:7e1468ebc5e19fe5311c48c0900c62420910b73d082be1cd04b6939b69b433b2` |
| 15 | `def` | [yonedaULiftEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv.md) | 122 | `declaration-track:8ac2303967370819b314d113191778679b45a988231b672cda777118db84a5ff` |
| 16 | `theorem` | [yonedaULiftEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-apply.md) | 126 | `result-track:24b52d00b7232cd0d536598072cdb37b4e6e41ca7cb8a67950abb6332ed41dd1` |
| 17 | `theorem` | [yonedaULiftEquiv_symm_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-symm-app-apply.md) | 131 | `result-track:41383697990f3a54d38cb6ae59d20a9983a1a0f23741e9074fb6a5bc59735cd1` |
| 18 | `lemma` | [yonedaULiftEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-naturality.md) | 137 | `result-track:0419a0afdbd2920595c0fa26dfe7c821fa68b57390a046d682fc3ce1a10afb98` |
| 19 | `lemma` | [yonedaULiftEquiv_naturality'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-naturality-source-edition-2.md) | 147 | `result-track:0bcf6e950379e336661b7ca47700c414a60b45e3846765f2a3732d11e2df8b83` |
| 20 | `lemma` | [yonedaULiftEquiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-comp.md) | 152 | `result-track:f83f9fe4a2e703e0cf81194348f5cbee6b5a197a9b1f56f90b74ff7440d07511` |
| 21 | `lemma` | [yonedaULiftEquiv_yonedaULift_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-yonedaulift-map.md) | 156 | `result-track:b93b458106141cf46f861785c341f4492c8f27f4bdbf823723cf8ad0f05f1886` |
| 22 | `lemma` | [yonedaULiftEquiv_symm_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-symm-naturality-left.md) | 161 | `result-track:1fbaef15b4015f94880874e3b7db296fcf21e538edd326e6e56c29ec011979ae` |
| 23 | `lemma` | [yonedaULiftEquiv_symm_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauliftequiv-symm-naturality-right.md) | 169 | `result-track:d4249bd7cc333b13be1da36279364a1af74e098e0909c0192cf60acc111a28cc` |
| 24 | `lemma` | [map_yonedaULiftEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/map-yonedauliftequiv.md) | 176 | `result-track:8eb3594f7f056c59730ec6d2bbe359c571717af1ee563204c26c7fa822fb981b` |
| 25 | `lemma` | [map_yonedaULiftEquiv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/map-yonedauliftequiv-source-edition-2.md) | 184 | `result-track:935a3931a3ac90e53078f8fac47200816d2e4970a793331ef820006d095617fc` |
| 26 | `lemma` | [yonedaULeftEquiv_symm_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/yonedauleftequiv-symm-map.md) | 189 | `result-track:b989c2f8589b9a3f563cdcd5c0b64a7b804130eaffa04b578a9befe9cb6d9218` |
| 27 | `lemma` | [hom_ext_yonedaULift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubcanonicalNamespaced.lean/declarations/hom-ext-yonedaulift.md) | 197 | `result-track:778106df22af7a0f667a3cc2f683fa3e480f622b399762b9d8873c469793a6e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14f1514fdc563ea8df516c0dc0204112d5c0d5ae8b285b817f1be81347ed822e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant341a3238312f162fef147659e4fa93a4942cf58abec6c4fb4e631e598a07ec38.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant341a3238312f162fef147659e4fa93a4942cf58abec6c4fb4e631e598a07ec38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
