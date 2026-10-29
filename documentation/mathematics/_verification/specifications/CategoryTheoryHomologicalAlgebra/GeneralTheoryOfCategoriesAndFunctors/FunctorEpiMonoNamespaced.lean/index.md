# Verification target: Functor Epi Mono Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08fe0ee184ae447cc41e422bedf534defb230d1e",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08fe0ee184ae447cc41e422bedf534defb230d1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Adjunction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesMonomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesmonomorphisms.md) | 36 | `declaration-track:2306e19e46ae38500a68b7f84d33fe06184786cf8b9266aeaacdc8ef1f71b3c6` |
| 2 | `instance` | [map_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/map-mono.md) | 40 | `declaration-track:ae8ad03bf64ca7ec998dd46980569675ee4592f9afd2f22f970c7280069ece7d` |
| 3 | `class` | [PreservesEpimorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesepimorphisms.md) | 45 | `declaration-track:6996706f382c02fb20f8df227bf3567e6d9ece4468cfa98e6cad5b18ccdd55cb` |
| 4 | `instance` | [map_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/map-epi.md) | 49 | `declaration-track:e511b82d378a4970eece3e62393a9a40e93cb411fc78cffd3c72b99db3087c46` |
| 5 | `class` | [ReflectsMonomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsmonomorphisms.md) | 55 | `declaration-track:ee9e124aac99d738bf77196b1717bbc30168d95ca1aa6e182c1df9a86ce2f6bc` |
| 6 | `theorem` | [mono_of_mono_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/mono-of-mono-map.md) | 60 | `result-track:0c069531536baf6370e67ac6d9978b0fd1764f89bb72412e7254f70d1c76aab4` |
| 7 | `class` | [ReflectsEpimorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsepimorphisms.md) | 66 | `declaration-track:14640aa4ee23ece88542d717bc00f881c0b55962ed9dea4ee1767171f61f92d9` |
| 8 | `theorem` | [epi_of_epi_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/epi-of-epi-map.md) | 71 | `result-track:5a0ea1db76114afcb7b5d887194ef7000a6b724c9d460ecdce9705123b071df1` |
| 9 | `instance` | [preservesMonomorphisms_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesmonomorphisms-comp.md) | 75 | `declaration-track:2aac0939a8865105c7826918d9ada6b9a6395c5d6829f1253bc5b8bb55c41d19` |
| 10 | `instance` | [preservesEpimorphisms_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesepimorphisms-comp.md) | 81 | `declaration-track:81ca112c31d03aa1237f29997dbe80fe0119cdd433419450b9f336a06cc7d825` |
| 11 | `instance` | [reflectsMonomorphisms_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsmonomorphisms-comp.md) | 87 | `declaration-track:98746758cbceef3aa71a01bd0c2795bdf30ab0ee8022d091ef5aea1d0c804dea` |
| 12 | `instance` | [reflectsEpimorphisms_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsepimorphisms-comp.md) | 91 | `declaration-track:4a119975bfdd9411a7910eadbbafa2fe319ad50afdbefe26f4aa8d3e644c8af4` |
| 13 | `theorem` | [preservesEpimorphisms_of_preserves_of_reflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesepimorphisms-of-preserves-of-reflects.md) | 95 | `result-track:d10a62976dea0895928102505e22807a617c63f22072198ce72f8b01252a3c51` |
| 14 | `theorem` | [preservesMonomorphisms_of_preserves_of_reflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesmonomorphisms-of-preserves-of-reflects.md) | 99 | `result-track:25589043ad1ce62fdb90dc16080e6df61d891e67127418bf72c7d8ab26f006d4` |
| 15 | `theorem` | [reflectsEpimorphisms_of_preserves_of_reflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsepimorphisms-of-preserves-of-reflects.md) | 103 | `result-track:e89f32c1922b2f528c25c52084201c6adc92efee0f5c6f9c2906e61eb947d50c` |
| 16 | `theorem` | [reflectsMonomorphisms_of_preserves_of_reflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsmonomorphisms-of-preserves-of-reflects.md) | 107 | `result-track:6eaecebb31b7d94a41e3213e4ee73a9310fa360d187150e54d4f85bfacd5fbfd` |
| 17 | `theorem` | [preservesMonomorphisms.of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesmonomorphisms-of-iso.md) | 111 | `result-track:bfda0aecd7caffa0c59bac1f31129d02a70dd1e4f1277d5a6b39e1830589f71e` |
| 18 | `theorem` | [preservesMonomorphisms.iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesmonomorphisms-iso-iff.md) | 117 | `result-track:2008ab841ad0d67c701ab9e947024d8a94c1b504fbf89dcc67594314567a5a64` |
| 19 | `theorem` | [preservesEpimorphisms.of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesepimorphisms-of-iso.md) | 121 | `result-track:dba00aef3dbf58d340b4069b5e37fb097522dde8791422429c4d1fa0311ffe58` |
| 20 | `theorem` | [preservesEpimorphisms.iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesepimorphisms-iso-iff.md) | 127 | `result-track:d666c2cb01d373166bec06ad93a0155d9c2bbe030e872f6074d42c577d72022e` |
| 21 | `theorem` | [reflectsMonomorphisms.of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsmonomorphisms-of-iso.md) | 131 | `result-track:1a906d82417a90fd193db98e319c047bc90acbd226bfbd048b716ea61ac5e772` |
| 22 | `theorem` | [reflectsMonomorphisms.iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsmonomorphisms-iso-iff.md) | 138 | `result-track:3d119213d791d76cae6e9d4771016a7485ad5ce67359ba0b646c5b86deb69d4b` |
| 23 | `theorem` | [reflectsEpimorphisms.of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsepimorphisms-of-iso.md) | 142 | `result-track:f185bdc8e61c1a96d86ab078fb935aaa63d70b6987ac4d5b9103aefd100e894f` |
| 24 | `theorem` | [reflectsEpimorphisms.iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/reflectsepimorphisms-iso-iff.md) | 149 | `result-track:015c3a22884fcd9ffe74b8cbaf93d9d06c9841cf6f75101a1d329517b55a5d9d` |
| 25 | `theorem` | [preservesEpimorphsisms_of_adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesepimorphsisms-of-adjunction.md) | 153 | `result-track:c0888dc2946b22137c39f1700b926c43bbfe5674daa693edc89c9e6bad0aa412` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/instance-source-edition-2.md) | 162 | `declaration-track:be385b7ca7e6d877f063ca457ca8b5675d93e2f16baf513e10c0dc2f05f7ad9f` |
| 27 | `theorem` | [preservesMonomorphisms_of_adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/preservesmonomorphisms-of-adjunction.md) | 166 | `result-track:9597faf6dcf925e03f678dcbb7d85e15ce25e9f77f6bdb1acf0838405f3e7179` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/instance-source-edition-5.md) | 175 | `declaration-track:f1057776a9baf5dce857eb688358fd8b635171b5935589bc7c707b1b0297970f` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/instance-source-edition-3.md) | 179 | `declaration-track:c07874a9d7b2a49168f58be78bf749f06f3b1ca89596f6f34ee0ae2d30bba0d5` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/instance-source-edition-4.md) | 185 | `declaration-track:d977b1daf70d1e2c27d6bd7ffdc9739de7cdf755520581ed6e0f1b41ac5123f7` |
| 31 | `def` | [splitEpiEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/splitepiequiv.md) | 196 | `declaration-track:1f46f71e9ff9a2084ef8ef4d77f0868bbf000a8767c68ab13b3c5090e311fe2d` |
| 32 | `theorem` | [isSplitEpi_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/issplitepi-iff.md) | 206 | `result-track:ecb09d0c0a1095ce4f492859b0be5760a3d47faf6201774191f273cca06a6302` |
| 33 | `def` | [splitMonoEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/splitmonoequiv.md) | 214 | `declaration-track:016165f1fc587f32a11131518bd05b19e89165f9e23a2b8e6673c8a0390f8a9c` |
| 34 | `theorem` | [isSplitMono_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/issplitmono-iff.md) | 224 | `result-track:84c5f71b161d282a9a647b9b2db773342fc3133dab95975ee7b94e9cfa6e2aa2` |
| 35 | `theorem` | [epi_map_iff_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/epi-map-iff-epi.md) | 232 | `result-track:11f8435bc03f89e033b3583977242087ef35a9ca1ce1bc5ecfb89098ddbb7485` |
| 36 | `theorem` | [mono_map_iff_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/mono-map-iff-mono.md) | 240 | `result-track:f9fe57b22214c897db3ee3f66d869dfe63f944da7d348ad03e82e548ab7ff81e` |
| 37 | `theorem` | [splitEpiCategoryImpOfIsEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/splitepicategoryimpofisequivalence.md) | 249 | `result-track:c1289901743c7af396edbaee41ad430ac56b8b2c267f5792019370bc8965e022` |
| 38 | `theorem` | [strongEpi_map_of_strongEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/strongepi-map-of-strongepi.md) | 264 | `result-track:007f0475435f7766e6ee665067ab811d4d5c4592315892144e3cf2e096bdf068` |
| 39 | `instance` | [strongEpi_map_of_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/strongepi-map-of-isequivalence.md) | 271 | `declaration-track:33872ab4c7c94c6f40e73a798d9112c46bc71f8dc63efffa8a8eeb3641d3439f` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/instance.md) | 275 | `declaration-track:56d8d37706ef243944773e6830b33a30613ba580a41b83f320e20d136a70c93d` |
| 41 | `theorem` | [strongEpi_map_iff_strongEpi_of_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorEpiMonoNamespaced.lean/declarations/strongepi-map-iff-strongepi-of-isequivalence.md) | 288 | `result-track:fd47739659bc2c611b0d2a6c295440ba2732eae2881740e6cfe7e243a2e694fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af41ff3acab6973a271dab75416036c174297daf2cd86d6d1725d1e8341b8bb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
