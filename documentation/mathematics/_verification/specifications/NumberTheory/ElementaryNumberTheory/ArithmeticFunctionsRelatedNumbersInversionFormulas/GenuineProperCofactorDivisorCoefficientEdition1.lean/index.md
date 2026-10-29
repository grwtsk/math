# Verification target: Genuine Proper Cofactor Divisor Coefficient Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465e59296192cb9b3d4a93180454e888fcbd1803",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465e59296192cb9b3d4a93180454e888fcbd1803`.

Source path: `GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 2; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorinventory.md) | 32 | `declaration-track:ca3a3dcdccf399a3622b9f63bf39dd1af3569267e02c86004cff4119a52acd8e` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorcoeff.md) | 36 | `declaration-track:7223376e15807eafc25d36c8d8c868eb31ec750a63aeb081e7c6827f4497d53e` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/mem-propercoprimedivisorinventory.md) | 40 | `result-track:911d628c5a786d47ab7d379a1101f6eea8769bd7c6e8a17335a3c267fba5b200` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorinventory-subset-divisors.md) | 46 | `result-track:64094e8fcc5f8d4078c1751369e287bd6181aa0e5c980c6dfb960c167f1da55a` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/proper-coprime-six-ge-five.md) | 52 | `result-track:64a7dd6b2972789891912466641208c61bcb8cbf3566df57a692b0e206b51d6a` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/product-ge-ten-of-mem.md) | 63 | `result-track:96e67ebc503a524cad978eb584029cb28b75102286131671900f08c536a0d013` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorcoeff-nonneg.md) | 73 | `result-track:e909f261a564edd208a8291454ebc64251eb2c29744afadd2e0bc30067b80f2d` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorcoeff-le-log.md) | 79 | `result-track:f7c7448eebd0e25d7415382d127d2fe5814084e9a655998b2b6eac4b1ade0d22` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten.md) | 91 | `result-track:1a3de30cafb422ed4dd9af695d118b1699752fad702cf5da8396ce8a7e55d692` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten.md) | 98 | `result-track:252438825ac62b038d3de16dafe9c8321700e48454a7b5341b231c662a5bd7f0` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorinventory-ten.md) | 104 | `result-track:5dedabc259555d143336c5dc66fb9f9c8a96bc3e2464f708dbba05c355ccc937` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorcoeff-ten.md) | 123 | `result-track:a497e0a5490d5f08389faf5cd13ef46686290e3d45d0f9ff5e9ac9f7f0dd3582` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/propercoprimedivisorcoeff-ten-pos.md) | 130 | `result-track:44b671291f17ee3f385bbb423a4097b152146fe6472c4f7cb053190be1da8cfa` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/primepower-four-mem-inventory-twenty.md) | 135 | `result-track:c70210433adf476c646cf21e6f696246b547f372bac97853aa6a3205857c21ea` |
| 15 | `def` | [finiteFilter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/finitefilter.md) | 140 | `declaration-track:e216ea625c297d0486c9ca5b2aef3acd4fad19c6fcfba88830d707e30147a1f0` |
| 16 | `theorem` | [finiteFilter_unit_can_be_nonzero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/finitefilter-unit-can-be-nonzero.md) | 144 | `result-track:8876983853728aaa68bcb96789397c0c88c15d3e6b929600e5fb49562e9dc229` |
| 17 | `theorem` | [sum_supported_dilate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/sum-supported-dilate.md) | 149 | `result-track:28b8404817b1f7ee0286643107e1e92f93a82c241428c7546d692bbd271b23a4` |
| 18 | `theorem` | [sum_finiteFilter_eq_coprime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/sum-finitefilter-eq-coprime.md) | 181 | `result-track:cbf247d0d4cbb19595c82be709a37e2f79ff8bdce74f227215bad147fdd02b5d` |
| 19 | `theorem` | [sum_Icc_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/sum-icc-one.md) | 208 | `result-track:74b403538301d8e06a69b90098f7de63b947062656c343bf8f11e6e93b0218e2` |
| 20 | `theorem` | [bounded_divisor_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/bounded-divisor-sum.md) | 217 | `result-track:77188dec036e9181957f21a7a830063bda6800e3288e54918b26b3c654fc4433` |
| 21 | `theorem` | [logarithmic_sum_eq_rows](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/logarithmic-sum-eq-rows.md) | 234 | `result-track:e72e089398f732e8eb00f70325d9f9d457dfa462543bc2e8fcc6b41a0f09ada2` |
| 22 | `def` | [properRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/properrow.md) | 260 | `declaration-track:b3263439ba017a929f2ee30439f0177204410f121ae280dd1252ab032bdc0291` |
| 23 | `def` | [finiteResidual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/finiteresidual.md) | 264 | `declaration-track:738b192b764e5880d1f21136841d78f9e77eff4c33fdc7809031af012cf63db3` |
| 24 | `def` | [finiteJ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/finitej.md) | 268 | `declaration-track:b318de27693e8a370c97c82abcb00873f923deb047fdc0d8cba9c7e81fc47337` |
| 25 | `def` | [finiteZ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/finitez.md) | 272 | `declaration-track:50c04d049ac057753f82cf54c75f6f01f65516911104d1d578932e4e29b26540` |
| 26 | `theorem` | [properRow_zero_of_large](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/properrow-zero-of-large.md) | 276 | `result-track:dd63e814d3b83cc5cbe50e9bfa9443f7d1e857fa6e93240e8458bc4ba7bcfaf6` |
| 27 | `theorem` | [finite_divisor_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/finite-divisor-balance.md) | 287 | `result-track:c3260896afc77d4c95ccede97bafedb4ebeeaa9cabfa42a4a071efccd67acdcd` |
| 28 | `theorem` | [properRow_eq_clipped](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GenuineProperCofactorDivisorCoefficientEdition1.lean/declarations/properrow-eq-clipped.md) | 344 | `result-track:29e1224b20b4c5ce55de210eca5c33352746ecec914a5063f1da9e8a74bc4d1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c461b680915f08dc4b216aee5a924779ea827ddb93b652b5df62d3bb1a14a81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean","GRWTSK/_verification/specifications/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
