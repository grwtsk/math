# Verification target: Category Theory Concrete Category Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "842dc2d9b1babf3c858ec2f8b04467f7d7b5b219",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `842dc2d9b1babf3c858ec2f8b04467f7d7b5b219`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Types` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory.md) | 55 | `declaration-track:c0710b42135d7e21827d1499e03e22e4a0c92c0cf578417dc0150d0c64cb6bea` |
| 2 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/forget.md) | 68 | `declaration-track:384ebcdf361842dc42a7fbd9f3c91f8f517f7cc311da0d650458e09788e8574a` |
| 3 | `instance` | [ConcreteCategory.types](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-types.md) | 74 | `declaration-track:cdb5afadb92e4ce1e879812e9678300b1eddb341fbb46e7f4eb9cda90c6c3ce9` |
| 4 | `def` | [ConcreteCategory.hasCoeToSort](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-hascoetosort.md) | 86 | `declaration-track:93d0ab6b3bf79fb1bdeff5e507441954e5f5f799caf60772bf561a12cc05fdb7` |
| 5 | `def` | [ConcreteCategory.funLike](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-funlike.md) | 101 | `declaration-track:3523c13b54bb1d34b950e36052724909153f839a2a566bc620a3154d17c1eb3e` |
| 6 | `theorem` | [ConcreteCategory.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-hom-ext.md) | 108 | `result-track:f9a820ff1496a4fd0c2ac8a87afad588bc7115fb647b9c822ed63186b436c7e7` |
| 7 | `theorem` | [forget_map_eq_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/forget-map-eq-coe.md) | 115 | `result-track:d9c06f3a29d1c4a4f8ac7f5f8a578825e545f5d9309ad3f25e727780c8e3bb4a` |
| 8 | `theorem` | [congr_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/congr-hom.md) | 121 | `result-track:ce6c9dbae47cd1838c4bbfdb81834f123be95a8677219ac323dae9342184a866` |
| 9 | `theorem` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/coe-id.md) | 125 | `result-track:7570fcd7163553e1a37e8a6a5eceb3bfe7621d53837c6c1ecccb4ab3da2c41d0` |
| 10 | `theorem` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/coe-comp.md) | 129 | `result-track:2e6538ede66e5d7212edcac01ce5c99b461c102dd3d6cada2245be254818a0f2` |
| 11 | `theorem` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/id-apply.md) | 133 | `result-track:ae24c20219772381594993196d9fd0d5755c5aace340943fa0163e4450d0180a` |
| 12 | `theorem` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/comp-apply-source-edition-2.md) | 137 | `result-track:f3c5b00de310bfdb855955c9aba9b9061fd413870a0896a5c8fcc91b6b6d1e18` |
| 13 | `theorem` | [comp_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/comp-apply.md) | 141 | `result-track:2ab695ec03777fc731b7246beecb79b935b732d5b16d60f9e46e5b45c4248e6a` |
| 14 | `theorem` | [ConcreteCategory.congr_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-congr-hom.md) | 144 | `result-track:6d2566b9ee4aa7bc42e8d67e9e762dd39f82cd68d41f11317d666cf4fdc53bc4` |
| 15 | `theorem` | [ConcreteCategory.congr_arg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-congr-arg.md) | 148 | `result-track:a98f5756269e0c610e033e0689afb6d0df23016b34fd05608b3a1f199b4ad074` |
| 16 | `theorem` | [ConcreteCategory.mono_of_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-mono-of-injective.md) | 153 | `result-track:13f0153562f669b2fccdeeb063481a0de565eaa3f1402080a5e294183b340982` |
| 17 | `theorem` | [ConcreteCategory.injective_of_mono_of_preservesPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-injective-of-mono-of-preservespullback.md) | 158 | `result-track:9734bd8d27326cb2026807fd4b082620b6176dad59bf02af1d2c6aabebd03505` |
| 18 | `theorem` | [ConcreteCategory.mono_iff_injective_of_preservesPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-mono-iff-injective-of-preservespullback.md) | 163 | `result-track:80f5f083f450bf718f23377ba6849bc628dc73fd4ca3f59f94516f026224b4ea` |
| 19 | `theorem` | [ConcreteCategory.epi_of_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-epi-of-surjective.md) | 169 | `result-track:59d45da19505cbb281f4a6c4f864325de3d412a43abdf5a5ded74adc9d37806c` |
| 20 | `theorem` | [ConcreteCategory.surjective_of_epi_of_preservesPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-surjective-of-epi-of-preservespushout.md) | 174 | `result-track:976beb9d2b4ef3a8a6b53175eb7a2c665fbb2a548967e675a87546bfb001fe9b` |
| 21 | `theorem` | [ConcreteCategory.epi_iff_surjective_of_preservesPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-epi-iff-surjective-of-preservespushout.md) | 179 | `result-track:a5e776b08db54c06e575d22310f51022db5a2b84d9e87de98554dba25b51776c` |
| 22 | `theorem` | [ConcreteCategory.bijective_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-bijective-of-isiso.md) | 184 | `result-track:04e0bfcac3b49add073fda375b58a2636274be03b9d93ffd6283cbb360086290` |
| 23 | `theorem` | [ConcreteCategory.hasCoeToFun_Type](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/concretecategory-hascoetofun-type.md) | 191 | `result-track:5f37d4d2c523cfcce171f2a838758d882ce5e57dc84847faff593de5a2b98bb0` |
| 24 | `class` | [HasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/hasforget.md) | 199 | `declaration-track:068b40f03bd6c3079d8e019725f5862678a0b346a88209c0982f1bc57b76483d` |
| 25 | `def` | [forget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/forget-source-edition-2.md) | 210 | `declaration-track:ad9ea4a595b30f13006a1f6a98b24257a357fbe9be8ce9d53821ddb16cabeb5d` |
| 26 | `instance` | [forget₂_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/forget-faithful.md) | 215 | `declaration-track:4ecb25cfd0e11259f3a418c4abd8913f191e2a36e57bf96956f4264a66551918` |
| 27 | `instance` | [forget₂_preservesMonomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/forget-preservesmonomorphisms.md) | 220 | `declaration-track:558ea489e110fb825ae81259a4a0cd9f7f23650911a5b6601c62cb345b346363` |
| 28 | `instance` | [forget₂_preservesEpimorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/forget-preservesepimorphisms.md) | 230 | `declaration-track:6e0ad65a35643b91b570a357b910eda858ed58852a62179ab1eaa095884f87d7` |
| 29 | `instance` | [InducedCategory.concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/inducedcategory-concretecategory.md) | 240 | `declaration-track:d14841d763b3295bea80024a8ca3167eec1fc0fd14564beecfe44fef498bb273` |
| 30 | `instance` | [InducedCategory.hasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/inducedcategory-hasforget.md) | 246 | `declaration-track:1c287401561d67cab4528d5c26183d0e6a518f4fd28e00889569fc1fca1930f3` |
| 31 | `instance` | [FullSubcategory.concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/fullsubcategory-concretecategory.md) | 252 | `declaration-track:fc25902432eb07c489698a607f42ce0fb6443d0662c85f9529112ef5dac123f0` |
| 32 | `instance` | [FullSubcategory.hasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/fullsubcategory-hasforget.md) | 257 | `declaration-track:2ecb96a13050d29b3ac4606edf0b16550b65d7b7eaec35469e06549594280927` |
| 33 | `def` | [HasForget₂.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/hasforget-mk.md) | 266 | `declaration-track:0127087a7c4418af0aab9ecc7d93e28659e9a4d3c7d5613ca1deb1fd9276a8d1` |
| 34 | `def` | [hasForgetToType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasic.lean/declarations/hasforgettotype.md) | 278 | `declaration-track:dfc9f7d673470852ae233e38418f7933c388624c2e5d3e56defe3acc94453e11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5821188721bdc9794f54d5f2cc390e688d82652db0ed73a4729707391058601c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
