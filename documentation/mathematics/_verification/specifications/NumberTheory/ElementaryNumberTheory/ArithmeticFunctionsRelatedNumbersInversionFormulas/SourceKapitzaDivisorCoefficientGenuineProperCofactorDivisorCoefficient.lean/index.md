# Verification target: Source Kapitza Divisor Coefficient Genuine Proper Cofactor Divisor Coefficient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a04a2509b5ffd53cf6fa4a7a9380515f084e39ab",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant1228573ffc1ce8392254ccd3104455d6c6689b82085be4dadb17b088252ac511.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a04a2509b5ffd53cf6fa4a7a9380515f084e39ab`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant1228573ffc1ce8392254ccd3104455d6c6689b82085be4dadb17b088252ac511.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant1228573ffc1ce8392254ccd3104455d6c6689b82085be4dadb17b088252ac511.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorinventory.md) | 29 | `declaration-track:95c124a832196710fb26dc5d0bb5c169cd3b90704280938a3cd1d437c4e9d5ed` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff.md) | 33 | `declaration-track:3649272991023bc4acb1639a2cf671a037a8539b96ae91745a381e6868131143` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/mem-propercoprimedivisorinventory.md) | 37 | `result-track:e0bf459ab7c952402730ea86665c71829696feefa9d9fcbf694b13906573982c` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorinventory-subset-divisors.md) | 43 | `result-track:9fc9393fbe4f057578fa5c74d6514bd0d1eac59ec90dab0524cb6a72e36720c3` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/proper-coprime-six-ge-five.md) | 49 | `result-track:54a51dd7fc5a4209799c1196d76fe880366ada923bd976ee79a68fa91069f92f` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/product-ge-ten-of-mem.md) | 56 | `result-track:686947b279b10274d524b070b86cefdfabe8cd6c2691d4d6f31ae729c5571d04` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-nonneg.md) | 66 | `result-track:088f8812921308dec1bf694442f4dbf3e0d6c6b3d8c78aa7112aaf73a4861bba` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-le-log.md) | 72 | `result-track:1047fe708a0b4ef6ed897cbc66823edbaac8d5b76440d21748aeead10d76adea` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten.md) | 84 | `result-track:35916229aa5095b23b086b8525418b5fee4dd3574c5bb083417384f7fd570052` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten.md) | 91 | `result-track:108a9d15540b7fd628a80784aa190290acb416ce3766fb4207e769759e4b19a6` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorinventory-ten.md) | 97 | `result-track:2ce02a5fd93b98266924620ead73195de81de3972cde3c7f62ef9702d08d1fbc` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-ten.md) | 116 | `result-track:94aa25c1a97e5380b6bbfbac1754f18ff7b531a519b31c023629828451a305ce` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-ten-pos.md) | 122 | `result-track:33f6f665111c1b3a03bdad3cf139d6a0f85b97c11e7457f1e69fa6db152a350d` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficientGenuineProperCofactorDivisorCoefficient.lean/declarations/primepower-four-mem-inventory-twenty.md) | 127 | `result-track:59ad0b305b6fc91e3165d6a9eb28c40ee0049859eac92ab9e2b349fdaec6dfb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=941db4ccaeb0c474f842042654ea0378a871b832aaa9c4e57718741a8f23fc76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant1228573ffc1ce8392254ccd3104455d6c6689b82085be4dadb17b088252ac511.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant1228573ffc1ce8392254ccd3104455d6c6689b82085be4dadb17b088252ac511.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
