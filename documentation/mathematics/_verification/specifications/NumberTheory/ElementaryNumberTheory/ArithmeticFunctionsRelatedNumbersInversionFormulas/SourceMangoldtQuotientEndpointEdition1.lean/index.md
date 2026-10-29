# Verification target: Source Mangoldt Quotient Endpoint Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8fafa39dab58bdbc535833a068f343092d45747",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant4f80f92c9d89c6ac6a83aa766099768d4bee18b00ae71432219aaabbc2a503af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8fafa39dab58bdbc535833a068f343092d45747`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant4f80f92c9d89c6ac6a83aa766099768d4bee18b00ae71432219aaabbc2a503af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant4f80f92c9d89c6ac6a83aa766099768d4bee18b00ae71432219aaabbc2a503af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtColumnQuotient` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [column](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/column.md) | 25 | `declaration-track:d2af968e50396f13cafbc23828496d9141075384abf76fe6a1a4febbc88adc3d` |
| 2 | `def` | [centeredPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/centeredprefix.md) | 28 | `declaration-track:c7f73d4af4d3a836bf73d1413bb83dbd8d10cb0da7b8e18defb9e9ebf77a3e72` |
| 3 | `theorem` | [exp_gt_square_add_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/exp-gt-square-add-one.md) | 31 | `result-track:b7c268addf9931b99975288eca6cdf7d315d7d6a38317ca5f989c70b8c41f921` |
| 4 | `theorem` | [square_adjacent_le_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/square-adjacent-le-upper.md) | 43 | `result-track:861ae8fd60196f2108c706b00e13b0b98d3896ca1bd848855b407413d44955c7` |
| 5 | `theorem` | [quotient_geometry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/quotient-geometry.md) | 55 | `result-track:1d82c5041a9e7d7afe1678ac4d0ef54df2ab2565db322e098d0e4559970d8f6a` |
| 6 | `theorem` | [column_at_quotient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/column-at-quotient.md) | 79 | `result-track:f61e6a819c0927644c55504c4ded9305a37c9b1d90c481d6276e89cf18b9b89b` |
| 7 | `theorem` | [centeredPrefix_abs_le_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/centeredprefix-abs-le-cutoff.md) | 103 | `result-track:3e09f41303ab8433f995db04ab263063fe38d06b48edd701bc0ca1c8d181739e` |
| 8 | `theorem` | [endpoint_weight_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/endpoint-weight-abs-le.md) | 114 | `result-track:f6a5744d8c8262f0d3c8100b615a78f3f8ad16cb5d06ce30c73b9a4a38b7c5ec` |
| 9 | `theorem` | [endpoint_abs_le_exponential](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/endpoint-abs-le-exponential.md) | 146 | `result-track:dea8c021664b1d1b800abfc50f49161c5016bf52690477abf047b5c3206252c0` |
| 10 | `theorem` | [actual_mangoldt_column_at_quotient_eq_first_row](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/actual-mangoldt-column-at-quotient-eq-first-row.md) | 180 | `result-track:4e3e5fcf2715d3085ba903a2d6b062568eb4022146b210b9b1f6567cf0c5a16d` |
| 11 | `theorem` | [actual_centered_column_endpoint_abs_le_twelve](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/actual-centered-column-endpoint-abs-le-twelve.md) | 189 | `result-track:2dea087b4a1503eddae2a43880d6ccfeb3adae787e4a9e533c6d37c91d4e9614` |
| 12 | `theorem` | [covariance_sub_main_eq_strict_quotient_increments_with_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointEdition1.lean/declarations/covariance-sub-main-eq-strict-quotient-increments-with-endpoint.md) | 206 | `result-track:cc3f9c04df9e929215cb41c733f4ff428d4a813d26d8938d3dc78985458f15fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7475500c27ac0e6739c37a98079d8b5e72eebc6ef40de1257abb52d136c0e55c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant4f80f92c9d89c6ac6a83aa766099768d4bee18b00ae71432219aaabbc2a503af.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant4f80f92c9d89c6ac6a83aa766099768d4bee18b00ae71432219aaabbc2a503af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
