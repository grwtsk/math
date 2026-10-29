# Verification target: Sites Locally Surjective Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18ccfd293eefb7003817d9002f84d70e3a9ac8ff",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18ccfd293eefb7003817d9002f84d70e3a9ac8ff`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean.json)

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
| 1 | `def` | [imageSieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/imagesieve.md) | 57 | `declaration-track:911e07cb4a91b9a74c6f007d27937a83c50d88665878452866d8c1e0eca9d5b1` |
| 2 | `lemma` | [pullback_imageSieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/pullback-imagesieve.md) | 64 | `result-track:679fa4d9028b39693fe8e4706c1c755ba99d1e00a7c790ae8524d9d8a9b3cf6d` |
| 3 | `theorem` | [imageSieve_eq_sieveOfSection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/imagesieve-eq-sieveofsection.md) | 71 | `result-track:3974be5850d66a09cc577cf3530a89a8256f23e9c8e29c021435259c4f102a92` |
| 4 | `theorem` | [imageSieve_whisker_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/imagesieve-whisker-forget.md) | 76 | `result-track:a7dc17183c51bc8b4948b28db86856ddd0135f2d5e648be9460319d417da6273` |
| 5 | `theorem` | [imageSieve_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/imagesieve-app.md) | 80 | `result-track:a268beea7257a5113f9b214ce2f51d5db9303f289ecc92f5877ad7e04c647f55` |
| 6 | `def` | [localPreimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/localpreimage.md) | 89 | `declaration-track:958249f84d7bb972f275a7203da0c9f74aee3e8269c016e3539672b2b6875485` |
| 7 | `lemma` | [app_localPreimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/app-localpreimage.md) | 95 | `result-track:e423b4c9e8efc773e99b04bcd66c1ebfce9e78359c811f45e49449454181d172` |
| 8 | `class` | [IsLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-source-edition-2.md) | 102 | `declaration-track:5757c7384352d0276cdbf6fdde338c970dd0bd7420bd3c1f5a6698a27389fc2e` |
| 9 | `lemma` | [imageSieve_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/imagesieve-mem.md) | 105 | `result-track:eee4f6236b4a9bcc1cf0194b3cac26144dc872761eb52f7353c5bb58deec2251` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 109 | `declaration-track:e064958e5533e64ab6421ae3e968dbd7cc8aa0dd96c47bd03d7d1823269ffcc8` |
| 11 | `theorem` | [isLocallySurjective_iff_range_sheafify_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-iff-range-sheafify-eq-top.md) | 113 | `result-track:68a5bf3b0c21a080b02a68d7089c2adbc2586702063e21402056317c5aea7da5` |
| 12 | `theorem` | [isLocallySurjective_iff_range_sheafify_eq_top'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-iff-range-sheafify-eq-top-source-edition-2.md) | 119 | `result-track:c75f23eadc64eb1a20fbc271135162c449267ed2f8e2c533a07df302f2ff4d8b` |
| 13 | `theorem` | [isLocallySurjective_iff_whisker_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-iff-whisker-forget.md) | 123 | `result-track:0285df3bb38c59d2c0f2397ca05614b10db78375a85228b7c5e15d553f50193e` |
| 14 | `theorem` | [isLocallySurjective_of_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-surjective.md) | 128 | `result-track:a1c84fcedb53e0643399ae3782fc7eb9482dcdb0cde44ef60720bbe1e6cc82f1` |
| 15 | `instance` | [isLocallySurjective_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-iso.md) | 135 | `declaration-track:87c32717e998d10080d70d0d3fcc64a17ebfa3a53d6f0f8df0dd235bc2b2fef8` |
| 16 | `instance` | [isLocallySurjective_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-comp.md) | 143 | `declaration-track:5fb608319e3a4bcfad382c1f70fae702ea3be258419345addcc2065d60ba5ff4` |
| 17 | `lemma` | [isLocallySurjective_of_isLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-islocallysurjective.md) | 158 | `result-track:18c02405d03e8e3cd46efdc093062e8b4dd493b02ba1ada59f49515434924c57` |
| 18 | `lemma` | [isLocallySurjective_of_isLocallySurjective_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-islocallysurjective-fac.md) | 168 | `result-track:46401e965501c89af1e361698ee167b4f7b8b104522c2383e38a88f8ad5d79f9` |
| 19 | `lemma` | [isLocallySurjective_iff_of_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-iff-of-fac.md) | 174 | `result-track:58c34069a9897bddeb609384c60b189e4cc96f236aba1eba6c0c442d7914dbfd` |
| 20 | `lemma` | [comp_isLocallySurjective_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/comp-islocallysurjective-iff.md) | 185 | `result-track:6080f132a2b6568d2535523c8b4a20ffb4393608736a9dac4eb741e67fceeb56` |
| 21 | `lemma` | [isLocallySurjective_of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-le.md) | 192 | `result-track:68b77a5a432cabef44ae130e10fe8db37d8eaeef15dfb2ad7c143b60353c34d1` |
| 22 | `lemma` | [isLocallyInjective_of_isLocallyInjective_of_isLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallyinjective-of-islocallyinjective-of-islocallysurjective.md) | 196 | `result-track:832eb2a5e8fd76993b259fcefb5e6dbe1c73907811fcaf63fe1a4f7eb91281fa` |
| 23 | `lemma` | [isLocallyInjective_of_isLocallyInjective_of_isLocallySurjective_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallyinjective-of-islocallyinjective-of-islocallysurjective-fac.md) | 217 | `result-track:12fc6499629f14c74c3be101cf2690d1cb70da0c396405c6edd43fec2823bbd1` |
| 24 | `lemma` | [isLocallySurjective_of_isLocallySurjective_of_isLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-islocallysurjective-of-islocallyinjective.md) | 224 | `result-track:c5c0dda4be23d06d405cebdc695e923ea102e8353667083e6306b483896a37f8` |
| 25 | `lemma` | [isLocallySurjective_of_isLocallySurjective_of_isLocallyInjective_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-islocallysurjective-of-islocallyinjective-fac.md) | 242 | `result-track:5f6254b98fa2c0ba05314a6b4b1436f093b5f3d9a0fc9f68fcf4d463f4565467` |
| 26 | `lemma` | [comp_isLocallyInjective_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/comp-islocallyinjective-iff.md) | 249 | `result-track:9314216f7e4e953071ff1dde052b27b10efe27959d005d3bf9327cc351b1863a` |
| 27 | `lemma` | [isLocallySurjective_comp_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-comp-iff.md) | 259 | `result-track:ee5259acf37d28f867bfe7fad80ada7aeb58e6df7f71f4ea84ed4c6ebf3f0b57` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 269 | `declaration-track:bd6d216d4d3d5ef5a6605b3a2037ec65f0be8c2526d8bffc0133d92176def527` |
| 29 | `def` | [sheafificationIsoImagePresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/sheafificationisoimagepresheaf.md) | 278 | `declaration-track:16792e243aeb2316d13915d148833a3d6186e30e091cff038ca792cda06f751b` |
| 30 | `instance` | [isLocallySurjective_toPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-toplus.md) | 298 | `declaration-track:cc2426a9c321ace2047c03aca0a77c23560b9e9ec09d3876eb0c67154a4382a9` |
| 31 | `instance` | [isLocallySurjective_toSheafify](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-tosheafify.md) | 310 | `declaration-track:1292ae3202fd9c18fcb0dc1f798e0ce950923361b3313bd4ba4057c28f7528d6` |
| 32 | `instance` | [isLocallySurjective_toSheafify'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-tosheafify-source-edition-2.md) | 316 | `declaration-track:890bdcbea1059f50fe526be773b983a7cf6ca6440049b6dd208faf83efc8bff3` |
| 33 | `abbrev` | [IsLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective.md) | 337 | `declaration-track:575687dce87a93687597d3ea7fb0e8301f4043ed73958e601d95dd32989f5979` |
| 34 | `lemma` | [isLocallySurjective_sheafToPresheaf_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-sheaftopresheaf-map-iff.md) | 339 | `result-track:46764b7a4464c85fa50c4a0f038230f3358e311ce568afce7c59d56fae9637a1` |
| 35 | `instance` | [isLocallySurjective_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-comp-source-edition-2.md) | 342 | `declaration-track:d3e469027e7af5a31057fb076e1a947960615d0bdddb16fabf17de2f01805d32` |
| 36 | `instance` | [isLocallySurjective_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-of-iso-source-edition-2.md) | 346 | `declaration-track:dbe6eeceff9d4a151e90deda99300445cfc0ff9b7d2c7558503f2a04b57fd4e4` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/instance.md) | 351 | `declaration-track:30bbe8494ba8917f9f8a4d0a3870ef42beb163cd2c6b3e186a1f6cf6331ee81d` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 358 | `declaration-track:f5529c6ce6cc73b9796d8882a3e154904baa690086e174b033a7b412424214cf` |
| 39 | `theorem` | [isLocallySurjective_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-iff-isiso.md) | 362 | `result-track:82b61ceebdf31f4dcd02cb1639eccd57a27f7bc3d349e762a458ccda93685584` |
| 40 | `instance` | [epi_of_isLocallySurjective'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/epi-of-islocallysurjective-source-edition-2.md) | 369 | `declaration-track:e13c62b7bf290167ae34322b72dcae2dd8cb5bc5a28d7d508493cc39ba038710` |
| 41 | `instance` | [epi_of_isLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/epi-of-islocallysurjective.md) | 383 | `declaration-track:c1c106be889f2375578c8ea3511a7949c5613ef5114c5e2c1da3e74ec8ea2938` |
| 42 | `lemma` | [isLocallySurjective_iff_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/islocallysurjective-iff-epi.md) | 386 | `result-track:8ecdc76162bd37ea85e275386227794a9d11b16644718f83f8fb50bf477b090e` |
| 43 | `def` | [localPreimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/localpreimage-source-edition-2.md) | 407 | `declaration-track:cdaff05794fabf431996c3edd3dbd8871a0a7b9efa696d0d7b04c9cb9b7be07d` |
| 44 | `lemma` | [isAmalgamation_map_localPreimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/isamalgamation-map-localpreimage.md) | 411 | `result-track:e3f52668b05581e3c39a259170275f8eebde9f6ebf5bcb9af4673ffa526e2fca` |
| 45 | `lemma` | [imageSieve_cofanIsColimitDesc_shrinkYoneda_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/imagesieve-cofaniscolimitdesc-shrinkyoneda-map.md) | 423 | `result-track:a921d20900943326338c72a318687a2c4b91d0fc24f03d702a56cef37ce0e1c0` |
| 46 | `lemma` | [ofArrows_mem_iff_isLocallySurjective_cofanIsColimitDesc_shrinkYoneda_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/ofarrows-mem-iff-islocallysurjective-cofaniscolimitdesc-shrinkyoneda-map.md) | 455 | `result-track:86ddb7f46570c3a0524eebd3c9abfa68918cd6727776ef5191f7c2400cf2c5c2` |
| 47 | `lemma` | [ofArrows_mem_iff_isLocallySurjective_cofanIsColimitDesc_uliftYoneda_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/ofarrows-mem-iff-islocallysurjective-cofaniscolimitdesc-uliftyoneda-map.md) | 471 | `result-track:932c40efebd1d0ff73939035f44fcbbb3397432abab6c4bf97eaede714397655` |
| 48 | `lemma` | [ofArrows_mem_iff_isLocallySurjective_sigmaDesc_shrinkYoneda_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/ofarrows-mem-iff-islocallysurjective-sigmadesc-shrinkyoneda-map.md) | 493 | `result-track:9d550ca00cbe4a098cad70eaaf18d8e879e969d4abfb348f87fe75fe8b9fa9af` |
| 49 | `lemma` | [ofArrows_mem_iff_isLocallySurjective_sigmaDesc_uliftYoneda_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesLocallySurjectiveNamespacedPublic.lean/declarations/ofarrows-mem-iff-islocallysurjective-sigmadesc-uliftyoneda-map.md) | 500 | `result-track:43826d721369b2acd4567f8210bd21da80a0ed41ce77f9699e46c650c75f29c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ca21793cf3bece7b97150bd2975779635ced5ddac4b8d874324f75cca3aeb02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant0584dd65e85b3ffaa0419b202471fb54275148207175305e70e7cda3a9c2d225.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
