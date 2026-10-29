# Verification target: Distributive Monoidal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a65a00261224d51dc900621e4e93748bd72fc50e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6c8a48ba1c643ad88117f589b62c0ab779e0e713d6476d10cfadb7662387df55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a65a00261224d51dc900621e4e93748bd72fc50e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6c8a48ba1c643ad88117f589b62c0ab779e0e713d6476d10cfadb7662387df55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6c8a48ba1c643ad88117f589b62c0ab779e0e713d6476d10cfadb7662387df55.lean.json)

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
| 1 | `class` | [IsMonoidalLeftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidalleftdistrib.md) | 80 | `declaration-track:0251f4f9b768938dfdf57602d447c3f0029c804478e9fe3ab83a62d555b27d2a` |
| 2 | `class` | [IsMonoidalRightDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidalrightdistrib.md) | 87 | `declaration-track:454d3836796c88d12b59e9d8bd3ca047e6be372cdbd78cb0bbf807c0abf6382d` |
| 3 | `class` | [IsMonoidalDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidaldistrib.md) | 94 | `declaration-track:175041e8768fd716164aceefd10059ae4ea89bcd852b5b6b25558cded8f75802` |
| 4 | `def` | [leftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/leftdistrib.md) | 105 | `declaration-track:ac6e429af24e1bcd5c89c7d8756501eef4b56fdbb80802fbb34780255c87e525` |
| 5 | `lemma` | [IsMonoidalLeftDistrib.of_isIso_coprodComparisonTensorLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidalleftdistrib-of-isiso-coprodcomparisontensorleft.md) | 120 | `result-track:ef8bb3312b73933de3c2bf2cee4b0d2970bbaeb9099453cc5d5a10b3caf29c97` |
| 6 | `lemma` | [leftDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/leftdistrib-hom.md) | 127 | `result-track:0a4c4e34dc69b64990d03934a16ef719b06ea59c72b758b67f762780b41e1f22` |
| 7 | `lemma` | [coprod_inl_leftDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/coprod-inl-leftdistrib-hom.md) | 131 | `result-track:f840a21907de72d4260f9b3c568bfe4b68977f7206d423222c267108a97fdbc3` |
| 8 | `lemma` | [coprod_inr_leftDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/coprod-inr-leftdistrib-hom.md) | 136 | `result-track:b7015ef7ab1f3a7da92513f45e372ba76202baf2c00b49bb7c11535323d6d3f0` |
| 9 | `lemma` | [whiskerLeft_coprod_inl_leftDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/whiskerleft-coprod-inl-leftdistrib-inv.md) | 144 | `result-track:5fccf5188743c2881aa2e40bee0b74a7f0fdebaa752002f25f1a6d30ba32adbd` |
| 10 | `lemma` | [whiskerLeft_coprod_inr_leftDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/whiskerleft-coprod-inr-leftdistrib-inv.md) | 153 | `result-track:de4845e95ca4828ac5e5207a3b67ee80ff092a9f2a5874a4c008c17ab00ef265` |
| 11 | `def` | [rightDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/rightdistrib.md) | 163 | `declaration-track:ddb7ff2912c8fbfa153837fbe098068d2110d1e0e4cfc1620eaa575efbed2754` |
| 12 | `lemma` | [IsMonoidalRightDistrib.of_isIso_coprodComparisonTensorRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidalrightdistrib-of-isiso-coprodcomparisontensorright.md) | 175 | `result-track:a49d4860e5d1a9d2e42e866b33ee98a155e6c3eca207f216e05312c776bef7cc` |
| 13 | `lemma` | [rightDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/rightdistrib-hom.md) | 183 | `result-track:4112f3c893d05baf58978729b17171f723302b3b8c60e39c9f17978d34443eb1` |
| 14 | `lemma` | [coprod_inl_rightDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/coprod-inl-rightdistrib-hom.md) | 187 | `result-track:522d6e080e9fac77def4a644fa0d488569fb788b79e4fee671fd0dae50a7d7ad` |
| 15 | `lemma` | [coprod_inr_rightDistrib_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/coprod-inr-rightdistrib-hom.md) | 192 | `result-track:c3a7d18fb00b0ac14b20f99e6799055616526e7e1862c79a3f9a9aaf2b65f190` |
| 16 | `lemma` | [whiskerRight_coprod_inl_rightDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/whiskerright-coprod-inl-rightdistrib-inv.md) | 200 | `result-track:3dbda7fef33e074a7fe62d88a8c832c60db5d5426b22b4b5683dea3d1cbcd8aa` |
| 17 | `lemma` | [whiskerRight_coprod_inr_rightDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/whiskerright-coprod-inr-rightdistrib-inv.md) | 209 | `result-track:4400d288950a3bf2b6f3e72dc6b8f54d7cefdd7a9561cdaec078e2756bd1b9c0` |
| 18 | `lemma` | [coprodComparison_tensorLeft_braiding_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/coprodcomparison-tensorleft-braiding-hom.md) | 218 | `result-track:582fe4c3befebe6ed150a249e9c1e0087e21aeff3add0be65b849081b809db26` |
| 19 | `lemma` | [coprodComparison_tensorRight_braiding_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/coprodcomparison-tensorright-braiding-hom.md) | 227 | `result-track:c1e6fc591a64baa651422e891943d06e15f4645b98295f3d864de6928f06c707` |
| 20 | `lemma` | [SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/symmetriccategory-ismonoidaldistrib-of-ismonoidalleftdistrib.md) | 233 | `result-track:16186cdd31ac52d52a6687b5a82f4f2aa7e2d6c807093c2017eb9e368faaf390` |
| 21 | `lemma` | [SymmetricCategory.rightDistrib_of_leftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/symmetriccategory-rightdistrib-of-leftdistrib.md) | 241 | `result-track:85327d9487e33ac11c6e91bbbec68046dade8230816b9e72e54713f42ea3b057` |
| 22 | `instance` | [MonoidalClosed.isMonoidalLeftDistrib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/monoidalclosed-ismonoidalleftdistrib.md) | 247 | `declaration-track:8ffb71d8239267bc994ebfda292bab37452880e0e5656d32018b06e67f07b9ae` |
| 23 | `instance` | [isMonoidalDistrib.of_symmetric_monoidal_closed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidaldistrib-of-symmetric-monoidal-closed.md) | 252 | `declaration-track:8102ce9200c830f8cd56572b7fc74097a9e5506b7d89b4e7e5fffb85e9caae5d` |
| 24 | `lemma` | [MonoidalClosed.leftDistrib_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/monoidalclosed-leftdistrib-inv.md) | 257 | `result-track:cc36bd8b02ff00aabe491578a49f8cfca43492f02cf07ae868fc1828fc76797d` |
| 25 | `instance` | [isMonoidalLeftDistrib.of_endofunctors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidalleftdistrib-of-endofunctors.md) | 268 | `declaration-track:44e7e1a8d3e7ad3c2e888eb2deb654211e31385ee4df320116caf241e99c67de` |
| 26 | `instance` | [IsMonoidalDistrib.of_MonoidalPreadditive_with_binary_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidalNamespacedPublic.lean/declarations/ismonoidaldistrib-of-monoidalpreadditive-with-binary-coproducts.md) | 280 | `declaration-track:dddc8d1185db2d3d0c2b5577505c468a6187db2a0d587e973ab6ea017ef6a5c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c070e522293a213f5880478c84709c7379c5e16d9dc7c94a908937055fe6c30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6c8a48ba1c643ad88117f589b62c0ab779e0e713d6476d10cfadb7662387df55.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6c8a48ba1c643ad88117f589b62c0ab779e0e713d6476d10cfadb7662387df55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
