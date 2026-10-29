# Verification target: Source Prime Power Partition Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95c005393a37a7709d6f4ea40f0c7d136473dab7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95c005393a37a7709d6f4ea40f0c7d136473dab7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/firstprimemoment.md) | 38 | `declaration-track:ff38c4efd55ffc03b9c121171ad7c6827fe9095b1b32d25dc6c5622deb843a8e` |
| 2 | `def` | [primeExponentInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/primeexponentinventory.md) | 42 | `declaration-track:13b3e1bbcdfdfb30347551a478d22858cdbe71c4e36cb62e79fbfd235b171566` |
| 3 | `def` | [higherPrimePowerInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/higherprimepowerinventory.md) | 47 | `declaration-track:464968c42606622fc83157165fab5b49825f5c5cd584c79686f196584cd239cd` |
| 4 | `def` | [higherPrimePowerMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/higherprimepowermoment.md) | 52 | `declaration-track:48af684c68372baca9b383370bd20461aa653c1234dbe9c5eb5c8b84710fc553` |
| 5 | `theorem` | [source_coefficient_zero_of_not_isPrimePow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/source-coefficient-zero-of-not-isprimepow.md) | 57 | `result-track:b323e21cb0d13d1e9044e5c957deac93fce9b7bf9c947da43433b21300dec85a` |
| 6 | `theorem` | [primeExponentInventory_pow_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/primeexponentinventory-pow-injective.md) | 62 | `result-track:b55850b400a8428a2c64b1e289fd95c944105dad044ecaaae9fe42d2f8d44cc2` |
| 7 | `theorem` | [closedPrimeMoment_eq_primeExponent_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/closedprimemoment-eq-primeexponent-sum.md) | 77 | `result-track:e3c551966bfbacc590d1a395edc8c88faffa7ba4a26555341f724dd722293942` |
| 8 | `theorem` | [exponent_sum_first_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/exponent-sum-first-two.md) | 112 | `result-track:a609852579dbc4b19e3274684fb4d11af47da1168d234901d434db87175dce94` |
| 9 | `theorem` | [square_prime_filter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/square-prime-filter.md) | 121 | `result-track:ae2e6fd9c31597bccd612a8cd638b2b507420e4c1a71ea0c171fe6b69c20594a` |
| 10 | `theorem` | [closedPrimeMoment_eq_first_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/closedprimemoment-eq-first-square-higher.md) | 141 | `result-track:3931d05ec1eaf19c893ddaeaa33b54ca75f5f051adedc436551aa47a6132d85f` |
| 11 | `theorem` | [prime_power_source_coefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/prime-power-source-coefficient.md) | 170 | `result-track:10b84326019978ac5a40f8edc26ad6419ae1e3a9322c899fbee534a015a48384` |
| 12 | `theorem` | [prime_power_source_zero_exponent_guard](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/prime-power-source-zero-exponent-guard.md) | 185 | `result-track:7c8e3cef85547dc3fabec917600f6b0470201b79abe09034f8a80eedf16b3adb` |
| 13 | `theorem` | [prime_geometric_ratio](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/prime-geometric-ratio.md) | 196 | `result-track:c1993d8903ae372c50ff801330857e3ef41a2f2d775f7a19a611d78d1c655c31` |
| 14 | `theorem` | [sum_geometric_Icc_three](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/sum-geometric-icc-three.md) | 211 | `result-track:9b2927caa1e36f8aeece567e8d0552693ddd70415ba6ccce0f784aa17966f4a4` |
| 15 | `theorem` | [prime_geometric_tail_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/prime-geometric-tail-le.md) | 245 | `result-track:d09adcb583de2c920a7503a4f6d6d8acda7c716c3389b54e3b5f6da633459d72` |
| 16 | `theorem` | [higherPrimePowerBudget_summability](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/higherprimepowerbudget-summability.md) | 278 | `result-track:ae60c5682cca1417833ce79e3a0f1b6c849448c186dce05b133a2ea7bb503f3a` |
| 17 | `def` | [higherPrimePowerBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/higherprimepowerbudget.md) | 283 | `declaration-track:abca6f0de02afa12ead97c0c95afc4d8b0800eb1cf6bb5db656264c678662e58` |
| 18 | `theorem` | [higherPrimePowerBudget_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/higherprimepowerbudget-nonneg.md) | 287 | `result-track:2daa9dbc86219b4d83f7a67adce3d7056499d3810108f6cc448949802e1dd50e` |
| 19 | `theorem` | [prime_power_source_coefficient_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/prime-power-source-coefficient-abs-le.md) | 292 | `result-track:42c904349fd756f2f3f1f1c9631ff64f85c2bdb76f3c002a67a66c8573a590da` |
| 20 | `theorem` | [higherPrimePowerMoment_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/higherprimepowermoment-abs-le.md) | 307 | `result-track:e4fac45b694ae0f25a9124d408422c89838a0eb168b704128572e9efab7152e2` |
| 21 | `theorem` | [residual_sub_firstPrime_main_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/residual-sub-firstprime-main-abs-le.md) | 352 | `result-track:365fd56ba353a795c948d98f28968d0169cefbb3f061c5bf6bc1f16c55ad7508` |
| 22 | `theorem` | [residual_firstPrime_uniform_replacement_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/residual-firstprime-uniform-replacement-error.md) | 369 | `result-track:75037790169af395a9122db84f5ea93adcd33cf31e882a23eb3e694c45fa23f5` |
| 23 | `def` | [FirstPrimeTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/firstprimetailupperbound.md) | 379 | `declaration-track:11cd620bd4db341468263de3f6a6ac816cf8f48fd17e40ad4eb22da727627ca7` |
| 24 | `theorem` | [firstPrime_tail_iff_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/firstprime-tail-iff-residual-tail.md) | 385 | `result-track:2890abf9f3d46978d37b0a2ecfb1917d3ee33e45ea395e4a7735a4770313e5ac` |
| 25 | `theorem` | [signed_pairing_tail_iff_firstPrime_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/signed-pairing-tail-iff-firstprime-tail.md) | 401 | `result-track:4a83c93c876e1257d52bb3e8ccbf7a8a92712e07a5af4bc24471fca3afc765f6` |
| 26 | `theorem` | [estimate_of_firstPrime_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimePowerPartitionNamespaced.lean/declarations/estimate-of-firstprime-tail.md) | 406 | `result-track:bd8480e1763209ea98d1298cd85f3446a2c5d79c4c49483fda061c3b60e27c65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eba435982ceee4b432df3e0ea8a652386f7f3ab83325adbc5d1e658a9f51e308 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
