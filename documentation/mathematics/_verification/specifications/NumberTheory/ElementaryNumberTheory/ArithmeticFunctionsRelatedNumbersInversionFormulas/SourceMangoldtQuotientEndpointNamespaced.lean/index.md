# Verification target: Source Mangoldt Quotient Endpoint Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79506a47506727fd82dacf5a03d8db843fa0f5cc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantd248be8c669a0e953e6e2d934f1862038e42ca49c199997e6914e786d6fbecbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79506a47506727fd82dacf5a03d8db843fa0f5cc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantd248be8c669a0e953e6e2d934f1862038e42ca49c199997e6914e786d6fbecbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantd248be8c669a0e953e6e2d934f1862038e42ca49c199997e6914e786d6fbecbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtColumnQuotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [column](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/column.md) | 33 | `declaration-track:d28d3dacc55289856921518167ecf3b31d85258ee497b35bc5740594ef7222fb` |
| 2 | `def` | [centeredPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/centeredprefix.md) | 36 | `declaration-track:2b776aa38350311a42bab6bc391a30211a61fb941ebe0f2744980eeeaf494d06` |
| 3 | `theorem` | [exp_gt_square_add_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/exp-gt-square-add-one.md) | 39 | `result-track:ece57c3d23620878a940d4768ed6c1863a61d6a2dd18292f42ebff4c25f8bdfd` |
| 4 | `theorem` | [square_adjacent_le_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/square-adjacent-le-upper.md) | 51 | `result-track:3a9744ad360c0b72f25320de5c0a16bf0fcf1cb4e478de7f86d4e61eb6ac0ae1` |
| 5 | `theorem` | [quotient_geometry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/quotient-geometry.md) | 63 | `result-track:f8a337e8cd0896f716d34ad981ee89523b00de27f6ed5bc4fb2ee3f12a083c55` |
| 6 | `theorem` | [column_at_quotient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/column-at-quotient.md) | 87 | `result-track:3ff8703c336beacf645010cf8501c5240aaba12bc4020334a5782ddbbb8b931d` |
| 7 | `theorem` | [centeredPrefix_abs_le_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/centeredprefix-abs-le-cutoff.md) | 115 | `result-track:39e82c12b0f1a0433b7f6f13988372153d68e3c387318bf9fa995c0bc1276fda` |
| 8 | `theorem` | [endpoint_weight_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/endpoint-weight-abs-le.md) | 126 | `result-track:fb150373c908714c98de6b34d13e9627566559ca2e5e302f07e5a0669d1f3a19` |
| 9 | `theorem` | [endpoint_abs_le_exponential](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/endpoint-abs-le-exponential.md) | 162 | `result-track:b0e32e0c53cbd31c10a289e65af9acf1639d635d98801082e06f692a191129f3` |
| 10 | `theorem` | [actual_mangoldt_column_at_quotient_eq_first_row](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/actual-mangoldt-column-at-quotient-eq-first-row.md) | 198 | `result-track:c3c3c32b426b1f174f3ad584055e2683caa2fb9d090bd3c52e081a366264e7e4` |
| 11 | `theorem` | [actual_centered_column_endpoint_abs_le_twelve](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/actual-centered-column-endpoint-abs-le-twelve.md) | 207 | `result-track:0b33de9812571a1a334656ad40fcf86804c0b469823ea4e599b722167074eae9` |
| 12 | `theorem` | [covariance_sub_main_eq_strict_quotient_increments_with_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespaced.lean/declarations/covariance-sub-main-eq-strict-quotient-increments-with-endpoint.md) | 224 | `result-track:510a79a7d1669fa3a45c2fb802c9aa753abff690abb7b66460d789c2c378821e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01c094ea1b277361c730c68ac700f35a43f3e15e1e6fa1ef24cdb49e3354afe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantd248be8c669a0e953e6e2d934f1862038e42ca49c199997e6914e786d6fbecbe.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantd248be8c669a0e953e6e2d934f1862038e42ca49c199997e6914e786d6fbecbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
