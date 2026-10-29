# Verification target: Distributive Monoidal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25a05ea4ab1648b7d262c102e51884f23aef76e1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25a05ea4ab1648b7d262c102e51884f23aef76e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.End` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMonoidalLeftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidalleftdistrib.md) | 68 | `declaration-track:7dff44aa502626abb46321a73ff5c4bd8882af0d865fee5db9055a3dc5309e94` |
| 2 | `class` | [IsMonoidalRightDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidalrightdistrib.md) | 75 | `declaration-track:c09cc910a2973c5ef65d3e572600dddb9f1e50293933fe9eda49bedb761abd5c` |
| 3 | `class` | [IsMonoidalDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidaldistrib.md) | 82 | `declaration-track:5aa90fc8d980df9803a933efef9eb25f556745da4c9628af5415d62cf51ea5cd` |
| 4 | `def` | [leftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/leftdistrib.md) | 93 | `declaration-track:50cc5d14bb764cae44a2b5542057877f0912efec8e1fe18bd42335e2b8efec9e` |
| 5 | `lemma` | [IsMonoidalLeftDistrib.of_isIso_coprodComparisonTensorLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidalleftdistrib-of-isiso-coprodcomparisontensorleft.md) | 108 | `result-track:40d09e494533bf9e678ee4a6210a54551a25fdb4a4a58a43f5609a552d99e14a` |
| 6 | `lemma` | [leftDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/leftdistrib-hom.md) | 115 | `result-track:46422edd4f5f67ea0b218668e43a17c924d8a934e6a868d2e5a1aceec0c4c568` |
| 7 | `lemma` | [coprod_inl_leftDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/coprod-inl-leftdistrib-hom.md) | 119 | `result-track:228ab8ce95da2dad83616448f5c3dcc9a168dbdb90470143c950c8c689063878` |
| 8 | `lemma` | [coprod_inr_leftDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/coprod-inr-leftdistrib-hom.md) | 124 | `result-track:77c04a7a4fdd4e92409448fbbd76876c3f890166b0afdfddec9ce193afe99843` |
| 9 | `lemma` | [whiskerLeft_coprod_inl_leftDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/whiskerleft-coprod-inl-leftdistrib-inv.md) | 132 | `result-track:3b7201a3bbceef813456ce25ba8e60df0fba813a890e9d2ca9672d579034c437` |
| 10 | `lemma` | [whiskerLeft_coprod_inr_leftDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/whiskerleft-coprod-inr-leftdistrib-inv.md) | 141 | `result-track:8261e935e1aa28c728bf5eb9e2e99c0100f28446629fa0b69cc4666efb9d39e5` |
| 11 | `def` | [rightDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/rightdistrib.md) | 151 | `declaration-track:a97cf7691f079f18b5484394fd3130b415c52af99943927fd0beffe9ea9a1565` |
| 12 | `lemma` | [IsMonoidalRightDistrib.of_isIso_coprodComparisonTensorRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidalrightdistrib-of-isiso-coprodcomparisontensorright.md) | 165 | `result-track:f853835b157a68ac31e84a54c3ed5601d19c88bb8908c7eba831548040933664` |
| 13 | `lemma` | [rightDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/rightdistrib-hom.md) | 173 | `result-track:b642dc8eea5c1ade6263a95ed774e1b10a995f85a45ec5e31cb18aa04e18acaa` |
| 14 | `lemma` | [coprod_inl_rightDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/coprod-inl-rightdistrib-hom.md) | 177 | `result-track:0307f2783a197d9d79113d3076b93a7628a9e4d4706d67d0c037de7236e860e5` |
| 15 | `lemma` | [coprod_inr_rightDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/coprod-inr-rightdistrib-hom.md) | 182 | `result-track:909ec196ed8404b8400f3ffb5e961c8772221a0cb2eac6edefb3d023da85c5a1` |
| 16 | `lemma` | [whiskerRight_coprod_inl_rightDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/whiskerright-coprod-inl-rightdistrib-inv.md) | 190 | `result-track:e64bb9ad4ce84cac8bfcd15ab7f11bd1c28e8dfe696c0baea4a63d07ae60a7c2` |
| 17 | `lemma` | [whiskerRight_coprod_inr_rightDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/whiskerright-coprod-inr-rightdistrib-inv.md) | 199 | `result-track:ae8b351b11dc1f1ce204a7f5045d66374120e3b639d0399dbc5be107b2c46e5f` |
| 18 | `lemma` | [coprodComparison_tensorLeft_braiding_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/coprodcomparison-tensorleft-braiding-hom.md) | 207 | `result-track:f33046d2bde8819a8b2bd481acada3c4ed949eb1190e0bf3e9233600435db5f3` |
| 19 | `lemma` | [coprodComparison_tensorRight_braiding_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/coprodcomparison-tensorright-braiding-hom.md) | 215 | `result-track:04073b4daf3f6c0ca05023f324312607214b64f9949c05c664fc55fbcff54842` |
| 20 | `lemma` | [SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/symmetriccategory-ismonoidaldistrib-of-ismonoidalleftdistrib.md) | 221 | `result-track:348c18f5e1e4a763aebdd9f05775f87e9d5781730a904744018ce87910755373` |
| 21 | `lemma` | [SymmetricCategory.rightDistrib_of_leftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/symmetriccategory-rightdistrib-of-leftdistrib.md) | 229 | `result-track:a8de0f6fbfe11098c7d936820900fa49972d6d4142565e35d2586d6ac0ecba4d` |
| 22 | `instance` | [MonoidalClosed.isMonoidalLeftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/monoidalclosed-ismonoidalleftdistrib.md) | 235 | `declaration-track:c17c3135e6d843e6e05b7dcb301d8e390a9feb9f5b523a225d2b8146c7a471ad` |
| 23 | `instance` | [isMonoidalDistrib.of_symmetric_monoidal_closed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidaldistrib-of-symmetric-monoidal-closed.md) | 240 | `declaration-track:c529c9b886fdff27868ae8187a66ca8e788bb40ec03a3739f3c9055c3f2ca974` |
| 24 | `lemma` | [MonoidalClosed.leftDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/monoidalclosed-leftdistrib-inv.md) | 245 | `result-track:07def9ae036c51133a97d523a4477007f78ff04df73de7ee4671280eff9336da` |
| 25 | `instance` | [isMonoidalLeftDistrib.of_endofunctors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidalleftdistrib-of-endofunctors.md) | 256 | `declaration-track:b1598dc1de6630e4b6290ad09d75f05a2e198b583cf14fe281856318014d33eb` |
| 26 | `instance` | [IsMonoidalDistrib.of_MonoidalPreadditive_with_binary_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/declarations/ismonoidaldistrib-of-monoidalpreadditive-with-binary-coproducts.md) | 268 | `declaration-track:172fcd1b80ee7ace04375af0557bac075414033b24516783b1c0d601e9e426de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b1f1e470d8503686378aa3dd31abd7250a7dfa402ef337df0c309bda94303be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
