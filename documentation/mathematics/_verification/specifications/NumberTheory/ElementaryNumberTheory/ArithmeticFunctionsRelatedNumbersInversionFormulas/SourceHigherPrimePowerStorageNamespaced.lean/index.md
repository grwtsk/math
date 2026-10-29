# Verification target: Source Higher Prime Power Storage Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "033da540d3aeabc6a658a8de9d456f3d70b33f49",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `033da540d3aeabc6a658a8de9d456f3d70b33f49`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtStorage` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [translationStorage_le_two_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/translationstorage-le-two-norm-sq.md) | 37 | `result-track:62fb4698f30e34a852fb94b14d08fd01610f3beb755b723d9b3d82e9604fd79a` |
| 2 | `theorem` | [higherStorage_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherstorage-summable.md) | 45 | `result-track:357fc15429206162001fa83d69663eb3e9c55dee700d837dd1e86e7abb04053e` |
| 3 | `def` | [higherStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherstorage.md) | 54 | `declaration-track:e9d8a15e10cea1036d53e028106de2abaeb2e573360d6920fcc625e70e2c4fd1` |
| 4 | `theorem` | [higherStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherstorage-nonneg.md) | 57 | `result-track:a530843931e9010f9b3d7731f0478c8f7753dc313619a5637dbfd7eb6099ddfa` |
| 5 | `theorem` | [higherStorage_le_two_mass_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherstorage-le-two-mass-norm-sq.md) | 60 | `result-track:a79def4dd9dddbc133128fcb44b83601787793c0b48d072fdeb1c9c71dee2e7d` |
| 6 | `theorem` | [higherCorrelation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highercorrelation-summable.md) | 71 | `result-track:2148255e51ad79409b44bd3cf7253fdaf668e43ddd90abfa31f0c65111d35890` |
| 7 | `def` | [higherCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highercorrelation.md) | 80 | `declaration-track:4a72f5c5012aa6aa1405aefb78ded69fa6219931392d8121851ed685a9359606` |
| 8 | `theorem` | [higher_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higher-reconstruction.md) | 85 | `result-track:6d31232a66e1cd0308d5667337582822a25fe05f5cfde91f6e18c7cde6d2f50c` |
| 9 | `def` | [higherSourceStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highersourcestorage.md) | 99 | `declaration-track:f933a7d58b0306d4782e8bb8d954448c6c5b75c60b82e50f1d53633a54b83c74` |
| 10 | `theorem` | [higherSourceStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highersourcestorage-nonneg.md) | 101 | `result-track:c0be13d9fe4310c29014684a92af865d7c3006acfe8a1048ade3b131dc4b7855` |
| 11 | `theorem` | [higherSourceStorage_le_two_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highersourcestorage-le-two-baseline.md) | 104 | `result-track:f5fdc479b8699808d8632cef833eed5d738c67eaed99fe094592faef408c0e59` |
| 12 | `def` | [higherAtomCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higheratomcoordinates.md) | 111 | `declaration-track:5e7c19abdcf619784425802fe60fa3fe4623ea2b397493bcb6ee884a7bd3f39f` |
| 13 | `theorem` | [higherAtomCoordinates_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higheratomcoordinates-injective.md) | 114 | `result-track:55adabdc781cc04e2c12180e8d395d6b16c19b12f5ff1bb50e69c3c1525ec452` |
| 14 | `theorem` | [prime_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/prime-of-mem.md) | 123 | `result-track:da6699174eba415158fc6b53809ee3858e89365723355f96ad2fad277dbc2d80` |
| 15 | `theorem` | [exponent_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/exponent-of-mem.md) | 127 | `result-track:00ee1671a6e5df4c696d5bbc3b565adc3ace29caa00c8547cb02a46eeb6e1a51` |
| 16 | `def` | [higherInventoryIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherinventoryindex.md) | 132 | `declaration-track:c1036984b5aca17e9a94b6c105001de14815fc304551f677611bbfd0e57258f0` |
| 17 | `def` | [higherAtomInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higheratominventory.md) | 137 | `declaration-track:37bf07a83623a01072f371f0d942ba0f51c1009c161b528903c9e2f57352a20f` |
| 18 | `theorem` | [higherInventoryIndex_coordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherinventoryindex-coordinates.md) | 141 | `result-track:bba5254fac0c4f5af75c34070aa9648bcb7f9fc901a91c024c8c07960206251d` |
| 19 | `theorem` | [higherCoordinates_mem_inventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highercoordinates-mem-inventory-iff.md) | 150 | `result-track:011d2e495da54739ce1d3e42fc3c3fef1df97d175f4f9182333a2270031f9fd6` |
| 20 | `theorem` | [mem_higherAtomInventory_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/mem-higheratominventory-iff.md) | 175 | `result-track:cb85fa443c99637d87b858ecfcdd1a849c1c3c6cc31d2550ae764f3035e3eb05` |
| 21 | `theorem` | [higher_source_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higher-source-coefficient-eq.md) | 191 | `result-track:f4cd7d18d0941ffe7f7b5052dbb0b22358eb36467dae0733627cc23e0c49be72` |
| 22 | `theorem` | [higher_source_coefficient_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higher-source-coefficient-zero-outside.md) | 201 | `result-track:8c2dcefa81d0f0f4dc2619c7bc313d2f00617a1bba4b3954ea2662514c69c08d` |
| 23 | `theorem` | [higherPrimePowerMoment_eq_atom_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherprimepowermoment-eq-atom-sum.md) | 210 | `result-track:3ec7eb7fda940b12a91a18109a21ea5c70985d84abccf56c38b53b7772ebae7a` |
| 24 | `theorem` | [higherPrimePowerMoment_eq_infinite_correlation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherprimepowermoment-eq-infinite-correlation.md) | 235 | `result-track:26f955dbcfb18c16b208161b3381193ac18241b74bb771e94171e90cb497543c` |
| 25 | `theorem` | [higherPrimePowerMoment_add_storage_eq_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higherprimepowermoment-add-storage-eq-baseline.md) | 243 | `result-track:0e83ff292d3092f95633a7e9bb792d4f86e566f6d9966218abba1a89abb16369` |
| 26 | `theorem` | [higher_storage_atom_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higher-storage-atom-outside.md) | 251 | `result-track:afb5d14f525c69dae897b3984620d8d2506bd98c32f87fe32711f7f078f827e4` |
| 27 | `def` | [higherVisibleBaseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highervisiblebaseline.md) | 263 | `declaration-track:bc8107f26d1f24bc337cfdeaaa81fc4a20ab4d7f0f5ab7551d1efd309d3d9768` |
| 28 | `def` | [higherVisibleStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highervisiblestorage.md) | 267 | `declaration-track:99b826099670f56b0f2ee54c9f84c525422df6efbb8ad70b3eeca750b559e084` |
| 29 | `theorem` | [higherVisibleBaseline_le_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highervisiblebaseline-le-baseline.md) | 271 | `result-track:dabb14ca0ccddf19007a1e90218e0da2d707535806255892c6da823b762d1c99` |
| 30 | `theorem` | [higherVisibleStorage_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highervisiblestorage-nonneg.md) | 275 | `result-track:210a32d2d119082a06311dde3487c30ef212c1657b58c57fbea82762c35acb35` |
| 31 | `theorem` | [higherMoment_eq_visible_baseline_sub_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highermoment-eq-visible-baseline-sub-storage.md) | 279 | `result-track:6277f5dbc3a1890fab0cafa659d5cc72925359897d8bcc78bc259700973a0141` |
| 32 | `theorem` | [higherSourceStorage_padding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/highersourcestorage-padding.md) | 290 | `result-track:7617e3ecc5a7a1dd752918dc1e7e639677fad698c5c05693eaabf12401ee983d` |
| 33 | `theorem` | [residual_firstPrime_storage_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/residual-firstprime-storage-balance.md) | 298 | `result-track:43676cc912d3c005a6d6763a8d051f360b7fc0a2886f3bcf9739bece5b8a0a00` |
| 34 | `theorem` | [higher_storage_atom_of_support](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higher-storage-atom-of-support.md) | 307 | `result-track:e44c5cb2dabaf0dab2b06a3e604bf04b8e7729bcf7f0e383578727087a7bca6a` |
| 35 | `theorem` | [higher_two_cube_touching_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higher-two-cube-touching-fixture.md) | 317 | `result-track:4082d9333393f2df05c2c2240bde5bf4127cb633628a94fb9f42317bfbe371ff` |
| 36 | `theorem` | [higher_two_cube_omitted_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceHigherPrimePowerStorageNamespaced.lean/declarations/higher-two-cube-omitted-fixture.md) | 355 | `result-track:35defc30d7b33141b2e3d702bf675887fdad92383e1b23477142864bf5681fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3698f46966e33fde3a3f054d5719672b1b8fbddfba5a2a29688736e9f01840ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
