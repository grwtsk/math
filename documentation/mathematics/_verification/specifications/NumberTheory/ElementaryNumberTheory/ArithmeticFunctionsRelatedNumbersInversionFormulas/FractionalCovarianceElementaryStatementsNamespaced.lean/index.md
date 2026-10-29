# Verification target: Fractional Covariance Elementary Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccb1694431fd57b0a5f5a980b30bff2b698b0c79",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccb1694431fd57b0a5f5a980b30bff2b698b0c79`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FractionalMellin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_le_of_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/fract-le-of-nonneg.md) | 20 | `result-track:17dc7815feffcb2b7252d77cc00b68b15792e8d76fdf4e9de2ed60ab4aeaefd1` |
| 2 | `theorem` | [fractional_product_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/fractional-product-integrable.md) | 25 | `result-track:5d5c9244f05bfce92ab7df62e6d2a50a1cf7fcfe03eb9a3c62aa24940b6f6c43` |
| 3 | `theorem` | [fractional_product_rescale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/fractional-product-rescale.md) | 60 | `result-track:114394761f52bfadcf499b5ca0fbd6c1546deb77f093ca86e24745bf0b60bcff` |
| 4 | `theorem` | [corrected_reciprocal_moment_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/corrected-reciprocal-moment-zero.md) | 76 | `result-track:7b73137e6dcb88bbe93ae422ea9d52826c3cd3dd26ed21e59d8782213191d0fd` |
| 5 | `theorem` | [corrected_log_reciprocal_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/corrected-log-reciprocal-moment.md) | 84 | `result-track:8cfb8ca98cdf932d25cbec00e38b0e2c59efbe6ecc21833af6996fa5b3c62974` |
| 6 | `theorem` | [corrected_total_mass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/corrected-total-mass.md) | 102 | `result-track:051bfb59827c7a074b284f23498ade3c3cc31e907e96fb317616aea5476f3b56` |
| 7 | `theorem` | [low_rank_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/low-rank-sum.md) | 110 | `result-track:f3f69e4a76e64494ba4876bd99e66e64c5dc71bbb50f24e009a008a4f92c7d40` |
| 8 | `theorem` | [corrected_elementary_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/corrected-elementary-covariance.md) | 131 | `result-track:63c044afc11126f8d7a882a173fb62bb316d3788dc81c7a62b31127ff18a181f` |
| 9 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/example.md) | 149 | `declaration-track:4bc7af25a719506d43b629efdc4e19c0c911d114b618aaf1949a0cffb1b19395` |
| 10 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 154 | `declaration-track:5b311a6717a78e5701cef0a8109403994be704bc17eacd9c03c3d6cee515ab3c` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/example-source-edition-6.md) | 159 | `declaration-track:ff903678e3e20de57ec86cbab25501801e4da4db023a8222b8815488bb0b0132` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 163 | `declaration-track:9e6a3d84fa58bb55efcaca1855f746c8afbda9ac92517b67f5280f963224f3d0` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 168 | `declaration-track:e7485e7795236de59365f66bda9edb10cd3383566f3e611bd62b6b88145f8d5c` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 174 | `declaration-track:7329725bec3aec99161c5b42b8e0bd9c8881a727f05543aa32f901367f09bb8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2918de11e27e17d6cc333617da46f07c9cffe152b6802f364cef3f0a00a61aba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
