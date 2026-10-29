# Verification target: Source Mangoldt Quotient Endpoint Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4918660c87c7c87574cf228f91705ccbbb9db390",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4918660c87c7c87574cf228f91705ccbbb9db390`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean.json)

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
| 1 | `def` | [column](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/column.md) | 33 | `declaration-track:a756af974462fd8090ce6b6747a5f176b7230be177f7bac98788594aa0820f1f` |
| 2 | `def` | [centeredPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/centeredprefix.md) | 36 | `declaration-track:44974d39ce83cb0c71c78265152474f1d0d772c94bf8c75f0cacf9a979ee7938` |
| 3 | `theorem` | [exp_gt_square_add_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/exp-gt-square-add-one.md) | 39 | `result-track:d8ba63881d74158e6285689d936362a20848993bea2ee99a87abcf5c0c99caac` |
| 4 | `theorem` | [square_adjacent_le_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/square-adjacent-le-upper.md) | 51 | `result-track:bd8394a00770e2bb55892581921d149e76f56a06d614f1ba8c607d6d37781cad` |
| 5 | `theorem` | [quotient_geometry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/quotient-geometry.md) | 63 | `result-track:63e054122baa1bcb08c8d8abb971f4a85c2cb2e88fd7d46e53bd0ffadb2c5f3a` |
| 6 | `theorem` | [column_at_quotient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/column-at-quotient.md) | 87 | `result-track:cc994275f4f9b8d315823d975655b1a1097a463b4ffffc96d5335ef2e12eca12` |
| 7 | `theorem` | [centeredPrefix_abs_le_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/centeredprefix-abs-le-cutoff.md) | 111 | `result-track:3ceacade1ca1c7ff2945f810adf011911dcbea06c11374443ec4b3873c066169` |
| 8 | `theorem` | [endpoint_weight_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/endpoint-weight-abs-le.md) | 122 | `result-track:bb576f38847f10e1aa69ad433929f846e7d0c44822498fad1340e5800a375ff9` |
| 9 | `theorem` | [endpoint_abs_le_exponential](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/endpoint-abs-le-exponential.md) | 154 | `result-track:e6483a349dd326230d4ad951faac6f6a008fa82825a0a72d586e3b8a090e7225` |
| 10 | `theorem` | [actual_mangoldt_column_at_quotient_eq_first_row](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/actual-mangoldt-column-at-quotient-eq-first-row.md) | 188 | `result-track:c5ecee87c9cf8fd9de4b06334e48bc92de0f059fe93b5ab339d6333509f60088` |
| 11 | `theorem` | [actual_centered_column_endpoint_abs_le_twelve](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/actual-centered-column-endpoint-abs-le-twelve.md) | 197 | `result-track:c855b82ac579f936740414e2cd7338f75a0ecff0601ffc467b036a822e7a9b03` |
| 12 | `theorem` | [covariance_sub_main_eq_strict_quotient_increments_with_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtQuotientEndpointNamespacedEdition1.lean/declarations/covariance-sub-main-eq-strict-quotient-increments-with-endpoint.md) | 214 | `result-track:bcc679b7e4a84db4e5ea99e552cba682e68503721cd15659bdcdd2e32f1a1f90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37f70ae6cadcdad4117455822d28242ba1ae724b26e938ad5666461b16bc7753 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
