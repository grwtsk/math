# Verification target: Category Theory Concrete Category Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "421ca638e81d0435ba4b4f1c3471aa9b32703601",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `421ca638e81d0435ba4b4f1c3471aa9b32703601`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean.json)

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
| 1 | `class` | [ConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/concretecategory.md) | 61 | `declaration-track:98b1ce4cc8a485c487fbf9bb416a94e16049328b257b7be37b25a3b2630168bc` |
| 2 | `abbrev` | [ToType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/totype.md) | 84 | `declaration-track:0b88ef65e06756a080b64100f8aff37412ac413867167744831f37cc22bf9692` |
| 3 | `abbrev` | [ToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/tohom.md) | 91 | `declaration-track:8edc49466e6ff2ac7e64bceeb45bd81df59d821f664bded0c4b8c1afaac7f2c4` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/instance.md) | 100 | `declaration-track:d51f4a6966183ac7acd4dcaab85dfedac0924bb26502b3cabe2127aee69f8f1d` |
| 5 | `abbrev` | [instFunLike](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/instfunlike.md) | 105 | `declaration-track:20c18a75965177a3bbd16b7ca0adeb83b58e6c97f8d302ab8c0cea77a9f8609b` |
| 6 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/homequiv.md) | 118 | `declaration-track:50e2211dd428e93568a8e6daf892f173f1d867922076b93bbee16fb6c81456ad` |
| 7 | `lemma` | [hom_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/hom-bijective.md) | 124 | `result-track:84a5310c98f5c0f3915d102c7fb0812225b70fd32a518835f1572e3304906ba6` |
| 8 | `lemma` | [hom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/hom-injective.md) | 127 | `result-track:4fbe4dedf36fb5b6d972e03e2210f2abbd8ae25894c7a10070d39257dc0f6154` |
| 9 | `lemma` | [hom_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/hom-surjective.md) | 130 | `result-track:95f7ef56f36cc3ca5d1f4758067ea92bd606915221ebff11ae8173b95254e128` |
| 10 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/ext.md) | 134 | `result-track:4782190b283cce8c26265f130c23cde9bd4583179bbec13263235a1f41f41be8` |
| 11 | `lemma` | [coe_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/coe-ext.md) | 137 | `result-track:0aa65d9d0fb342f849a80a683196287f5b20572e40953d38fd4c2a1b06f26eaa` |
| 12 | `lemma` | [ext_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/ext-apply.md) | 140 | `result-track:3e7c1415c4fb26b9bd95de42c3644fffe82800ec33c9f30aa2cff90a9452a630` |
| 13 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/hom-ext.md) | 145 | `result-track:9e1d9640aea95ebc6ba2eda363a13ba72ea7baa6920313fbf32c9beb8c8acf57` |
| 14 | `theorem` | [congr_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/congr-hom.md) | 151 | `result-track:57af34585bd32242936205cb9ad5d6cfc6141b77f897bf79f20ffdac8e2e4528` |
| 15 | `theorem` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/coe-id.md) | 154 | `result-track:11ae934750a263a50361f144dc3ba0ed40b84bbc1d00130efdb45147aef3d2b7` |
| 16 | `theorem` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/coe-comp.md) | 158 | `result-track:4fd06b37b51cb15dc29e0f0576de129230e965336c66abd44a92a0277e1e00aa` |
| 17 | `theorem` | [_root_.CategoryTheory.id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/root-categorytheory-id-apply.md) | 162 | `result-track:38403f77c77b886c71c2f30c1c77d87b8f010e70bb3ee6b0c1ea2ad220f51b25` |
| 18 | `theorem` | [_root_.CategoryTheory.comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/root-categorytheory-comp-apply.md) | 166 | `result-track:a7d3159fb4b59599c921590280eccfaa065c05e0276a0d929ead3612d02db097` |
| 19 | `theorem` | [congr_arg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/congr-arg.md) | 170 | `result-track:499f67d307920ceb156e84a7da751e7c1892436b6e684de2178f3898b8487af6` |
| 20 | `theorem` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/hom-id.md) | 175 | `result-track:827f38bedd65574ba34d9636638546a21ab0902f4d5791f8fb9f21b83ff0a917` |
| 21 | `theorem` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/hom-comp.md) | 179 | `result-track:268c4ecfb5289082f1242b8be29b88e6d39615e665e190b00f94c7d539777061` |
| 22 | `instance` | [InducedCategory.concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/inducedcategory-concretecategory.md) | 185 | `declaration-track:d0877267489c443ef8522d627bf60064421ba11088f5b59fdd9cc4b211d6b7f4` |
| 23 | `instance` | [ObjectProperty.FullSubcategory.concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/objectproperty-fullsubcategory-concretecategory.md) | 196 | `declaration-track:94b00dc905d1072e6e775a8137b78c236d2407362bf6ef5320b3382d2ddd0e27` |
| 24 | `lemma` | [NatTrans.naturality_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicPublic.lean/declarations/nattrans-naturality-apply.md) | 219 | `result-track:b68db576c0879a2cf5ed0da7e9814bda1844aaaa1bd37cb4ecdedb6b285af32f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=945fb57292b02c5c63ce3919c5161fdd211f5f42297322a82336c9b929f2d1f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
