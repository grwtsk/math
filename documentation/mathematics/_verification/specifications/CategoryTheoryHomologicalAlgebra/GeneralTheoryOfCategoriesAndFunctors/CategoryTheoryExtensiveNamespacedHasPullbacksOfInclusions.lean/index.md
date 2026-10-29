# Verification target: Category Theory Extensive Namespaced Has Pullbacks Of Inclusions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82075dc0010e2f9a041207b308dcbf88f5650573",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82075dc0010e2f9a041207b308dcbf88f5650573`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.VanKampen` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasPullbacksOfInclusions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/haspullbacksofinclusions.md) | 70 | `declaration-track:33f728c12fcd0ce004b3e3509109a458a86daeaea2372749b5e058920cca5965` |
| 2 | `class` | [PreservesPullbacksOfInclusions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/preservespullbacksofinclusions.md) | 78 | `declaration-track:27a26c08d029079c57388f872b622faea9e1388336255abdb45fd255f15ce0de` |
| 3 | `class` | [FinitaryPreExtensive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitarypreextensive.md) | 86 | `declaration-track:c67e873de1e6634645144fd97b361ce59ddfb54f9d8ff3567a5399ebec2da66d` |
| 4 | `class` | [FinitaryExtensive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive.md) | 97 | `declaration-track:ef96ed4e4e74e9f2d4af3641507d9d4a8b516b7e4be9f080903acc3546ed0b29` |
| 5 | `theorem` | [FinitaryExtensive.vanKampen](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-vankampen.md) | 106 | `result-track:2993d6adcf32a3bcc0bdf17375776b8028c6f5e4373104df406c6c87d584dc12` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-4.md) | 120 | `declaration-track:85dc2e0cb6dc0642d10f1beec7f8d541bf124149221553f9e6c05cdf22104c6f` |
| 7 | `instance` | [preservesPullbackInl'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/preservespullbackinl.md) | 125 | `declaration-track:a63ff2334d72c7de97d35ed28984be327ee24a616aaeb3c4d18fb7d045a727ef` |
| 8 | `instance` | [hasPullbackInr'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/haspullbackinr-source-edition-2.md) | 129 | `declaration-track:cd19a262ac130810b43d7ad6d67d87aef3878f3dc24c68374c472036fc8fe77f` |
| 9 | `instance` | [hasPullbackInr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/haspullbackinr.md) | 138 | `declaration-track:a693d7ac4f2ecc146f72116752df26eb2755b386b18fffa1601cb7226fb3e03b` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-2.md) | 149 | `declaration-track:6eec6f5570802e13e6a948efe8f0eb21cd1418da42397b97074f52bc13ad8ef0` |
| 11 | `instance` | [preservesPullbackInl'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/preservespullbackinl-source-edition-2.md) | 155 | `declaration-track:b1f5500efa7fbf7fe29dcfeb6a6ab6b41635cf05fca892183ae1d56b7f8f1071` |
| 12 | `instance` | [preservesPullbackInr'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/preservespullbackinr-source-edition-2.md) | 160 | `declaration-track:dddc40161a239d8721e6890196ec15db9a2896d8394048b57ae4db267df3e2b9` |
| 13 | `instance` | [preservesPullbackInr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/preservespullbackinr.md) | 166 | `declaration-track:27e6d4d471360b5aadfd54c08c6d924edabceed7eaedd7878ad8417ec1e7036c` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-8.md) | 172 | `declaration-track:ad34cbc0214770686f9c4b388d358179e66680a8d7d10e544ffb87f091c8fcce` |
| 15 | `theorem` | [FinitaryExtensive.mono_inr_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-mono-inr-of-iscolimit.md) | 176 | `result-track:548128c4535f95d6fe339ce240d71634be98aa09a54055f5ed2ab31f08fccdd7` |
| 16 | `theorem` | [FinitaryExtensive.mono_inl_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-mono-inl-of-iscolimit.md) | 180 | `result-track:0eec0e9c98301efd154e3071a4e0e40b54955d6f2bc4987516764dd460f64a00` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-3.md) | 184 | `declaration-track:850cc7b038bb56d3adeb04add5308d80e9d3b7adfd0f6c8f0e6a3bb3891f54c2` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-6.md) | 187 | `declaration-track:9543840f4a7844620fe9a9e8b8c47bab41b2aca79a40dd38458239de7bafc56e` |
| 19 | `theorem` | [FinitaryExtensive.isPullback_initial_to_binaryCofan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-ispullback-initial-to-binarycofan.md) | 190 | `result-track:c33ea22938957c55c1b09c4ce352f2659af60cb16b92cfa3aa229e0fe1ce3917` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-5.md) | 195 | `declaration-track:873c3344ffb823fc36afc41ea3fcb70e572501cb821e15e2009db709a0091680` |
| 21 | `theorem` | [finitaryExtensive_iff_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-iff-of-isterminal.md) | 202 | `result-track:5eaa3ffb31bf305ba0ab9d12a82d40c6a29be75485dcab0cd10638bd1b8d8550` |
| 22 | `instance` | [types.finitaryExtensive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/types-finitaryextensive.md) | 217 | `declaration-track:f6c9eeea5e8601aff3ffcc6621ab5bf3b2584c3783f0eddfb56843cadb3349ee` |
| 23 | `def` | [finitaryExtensiveTopCatAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensivetopcataux.md) | 288 | `declaration-track:7967abcd9a450194a548dd3210d865f76e44a27530e8452f5b0704e83d3c097e` |
| 24 | `instance` | [finitaryExtensive_TopCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-topcat.md) | 310 | `declaration-track:9e77148d6745a73c3c4d22f785dc6d75c678516f52efa05e259cd13aa0331380` |
| 25 | `theorem` | [finitaryExtensive_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-of-reflective.md) | 360 | `result-track:c47838316fce73955c5a5f877006af8ce52dfd947409126baae64142b157ea75` |
| 26 | `instance` | [finitaryExtensive_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-functor.md) | 385 | `declaration-track:89142c5ec0744b5007cb566ca457f2533590cf4073c6b2def42c7e436163d811` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-7.md) | 391 | `declaration-track:95ce5200b06f29e5543480c3040d61154eeff3beca81cb89db9bf52679336bca` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance.md) | 398 | `declaration-track:6aed28221d7c43ef25cf8ba6903e29652bd8e7b0c3b5a6de7266543d4b1286e8` |
| 29 | `theorem` | [finitaryExtensive_of_preserves_and_reflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-of-preserves-and-reflects.md) | 402 | `result-track:688fabc993e02b29e6e6713ae3d521c73a1e55a597feb86ceb8c12f5151596a1` |
| 30 | `theorem` | [finitaryExtensive_of_preserves_and_reflects_isomorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-of-preserves-and-reflects-isomorphism.md) | 416 | `result-track:fec605f3b0ce935eda2eeea54454bde88ce7663d3457efb7912ea991683fb3d0` |
| 31 | `theorem` | [FinitaryPreExtensive.isUniversal_finiteCoproducts_Fin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitarypreextensive-isuniversal-finitecoproducts-fin.md) | 429 | `result-track:70f4bac9dc9a9fd1d141c96cc4509b7b5a716ecabbf326a935f0d98cd49cb49e` |
| 32 | `theorem` | [FinitaryPreExtensive.isUniversal_finiteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitarypreextensive-isuniversal-finitecoproducts.md) | 445 | `result-track:eef74ef4737e77703993cdf63a9e8ba886acc8d48886a3d1eac72da23bcb4bf0` |
| 33 | `theorem` | [FinitaryExtensive.isVanKampen_finiteCoproducts_Fin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-isvankampen-finitecoproducts-fin.md) | 452 | `result-track:002a352b902d7e44b3704fca1bd894e5777940811db3ef376111193c6c6e8855` |
| 34 | `theorem` | [FinitaryExtensive.isVanKampen_finiteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-isvankampen-finitecoproducts.md) | 471 | `result-track:b0604c11892027bda2db1c3c057645070cb744a4d8e40419448faf579d739b73` |
| 35 | `lemma` | [FinitaryPreExtensive.hasPullbacks_of_is_coproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitarypreextensive-haspullbacks-of-is-coproduct.md) | 478 | `result-track:ffa86e729f1edff5912f404c975e86d211e4f1edea11ddec66cd9f9be809d91b` |
| 36 | `lemma` | [FinitaryExtensive.mono_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-mono.md) | 512 | `result-track:9bed843dfb6b835cb887b5f49ccd5098817847f6d9b86bfbad93bd882c7571e3` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/instance-source-edition-9.md) | 517 | `declaration-track:db2a4d44eba568a2c6e7ab7e2193c34fa91b8f478d7c795a9db6b12d32084483` |
| 38 | `lemma` | [FinitaryExtensive.isPullback_initial_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-ispullback-initial-to.md) | 521 | `result-track:e0cab7fed9fb3d8010185fca2212511451d51c3052d8cd3db9946e454226ee3e` |
| 39 | `lemma` | [FinitaryExtensive.isPullback_initial_to_sigma_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitaryextensive-ispullback-initial-to-sigma.md) | 527 | `result-track:dcaf6e03dca6c55a160032896e2490b53d925b400b63d10a394a0aa1aa68398a` |
| 40 | `instance` | [FinitaryPreExtensive.hasPullbacks_of_inclusions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitarypreextensive-haspullbacks-of-inclusions.md) | 533 | `declaration-track:ce9926ba310c120c67e5a40039b95dce4fd5931ee4e67be29f10eacee22b844e` |
| 41 | `lemma` | [FinitaryPreExtensive.sigma_desc_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryExtensiveNamespacedHasPullbacksOfInclusions.lean/declarations/finitarypreextensive-sigma-desc-iso.md) | 539 | `result-track:e72adfa75759cd7663419e22bc72c31d1b99e82b0044b1752f7779937715ea20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16e455b817bc6ff39597b7152048be30bc9dfaab3e21ee9836f054a769bca392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
