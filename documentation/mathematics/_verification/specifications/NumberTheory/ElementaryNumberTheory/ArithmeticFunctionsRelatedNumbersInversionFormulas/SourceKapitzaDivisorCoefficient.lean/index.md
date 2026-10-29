# Verification target: Source Kapitza Divisor Coefficient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0195586dfe855f99916cb9e4ba3364ca33dfb76",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0195586dfe855f99916cb9e4ba3364ca33dfb76`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorinventory.md) | 37 | `declaration-track:096414573f071646e7a58f939d85b8f6d42d043f035eb5d2d82cc72079a36b14` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff.md) | 41 | `declaration-track:ee551d50b43bed693c56aa1f103afb3c25d74582758cea37b0c0c87bfb33b830` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/mem-propercoprimedivisorinventory.md) | 45 | `result-track:9fc41d4cf49f74b10b8bfa8cfd23c12acad07c1f271933a8691c5158549126c1` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorinventory-subset-divisors.md) | 51 | `result-track:747aa6ea02a5c171baca5eca6e222e305e7b559bedbddd4b921bb1d0f8e724e2` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/proper-coprime-six-ge-five.md) | 57 | `result-track:fa22176b48d186036c91e88d0511cdfc965f46388c20a0e8dbb3ed31fc101333` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/product-ge-ten-of-mem.md) | 64 | `result-track:575ea4dee9904eb5cd21debe9a25cba923bd5ef734866d8ae2e4c1b7e131700b` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-nonneg.md) | 74 | `result-track:c6b406b78be30a137ede1153493296d9c46facd615023e5eda5a5f68265c47a1` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-le-log.md) | 80 | `result-track:d6120bca60d299130b7491aba9adfed2eed42e3368c8ebe367c4c90a11e74205` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten.md) | 92 | `result-track:c557f39026ec16721f8b0d50b314a18ee17e29cc9201fddee33bb56513f92b46` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten.md) | 99 | `result-track:6ed225e5287ad2aa22f7d1f4c649cdc2882e0ed6cac187056b1fd48e77a51ad4` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorinventory-ten.md) | 105 | `result-track:8c748adc28da76f1368e0e583e07dbadb6108b4766c0a926c5f061ea8228da1e` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-ten.md) | 124 | `result-track:82365150e09b704772e1cc3fd89311c3d4622be435d85c986e4f0cb8f6d657f5` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/propercoprimedivisorcoeff-ten-pos.md) | 130 | `result-track:ee41250dcecad5b798127982f080ce2bcd80607e7cbff3077caf711f56ab789a` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaDivisorCoefficient.lean/declarations/primepower-four-mem-inventory-twenty.md) | 135 | `result-track:ac3280e0d37ee60e5ab792ca8098f7acf3c9d99ab3539797b69b02b928d7d1b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=286999ca17cbd43b06ff302962d4c7f01d86636573e0194bf23dd973081690d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
