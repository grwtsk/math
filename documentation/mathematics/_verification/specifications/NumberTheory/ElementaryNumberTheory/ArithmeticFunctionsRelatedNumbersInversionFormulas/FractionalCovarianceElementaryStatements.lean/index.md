# Verification target: Fractional Covariance Elementary Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "722682c7564ecc685095d3cce6736cb1bacfa7b2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `722682c7564ecc685095d3cce6736cb1bacfa7b2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FractionalMellin` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_le_of_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/fract-le-of-nonneg.md) | 12 | `result-track:359c70c5d2c5f670f93ff4e459abefee5e74fba9cd8163f124e10053efa6656b` |
| 2 | `theorem` | [fractional_product_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/fractional-product-integrable.md) | 17 | `result-track:b7ceb962c9eb02a30f85ae6c4c5fd037527463270bb1686e885054386007ac1e` |
| 3 | `theorem` | [fractional_product_rescale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/fractional-product-rescale.md) | 52 | `result-track:288bb4fbc12c38d863ced3a55a4003a5383707c797adb92a2667771cfbc90fbc` |
| 4 | `theorem` | [corrected_reciprocal_moment_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/corrected-reciprocal-moment-zero.md) | 68 | `result-track:5cc99855b9298f87bae5db1e9862e613cda746c4597efc677e47f18d9bf135a3` |
| 5 | `theorem` | [corrected_log_reciprocal_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/corrected-log-reciprocal-moment.md) | 76 | `result-track:4a4975f6f8cea200563441123c9b85fc921b6233a0c297953aa32e4a8757adad` |
| 6 | `theorem` | [corrected_total_mass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/corrected-total-mass.md) | 94 | `result-track:6298d08be67f4a3d8b529a91c15b0ea1e10a8018d0ab91895be2b8e3cebafa3c` |
| 7 | `theorem` | [low_rank_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/low-rank-sum.md) | 102 | `result-track:b26d245332f0b39863ddcefaefe429a9182a7ba093e64092c733065468cba209` |
| 8 | `theorem` | [corrected_elementary_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/corrected-elementary-covariance.md) | 123 | `result-track:c8f75cebf0d58f218e7a84a59dcc9e6653f30350e9563912c99b52bb5cdd8024` |
| 9 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/example-source-edition-2.md) | 141 | `declaration-track:4150b0112f478755f049bf441cb63027a7e693069407f64561e45cc4d0537e0a` |
| 10 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/example-source-edition-3.md) | 146 | `declaration-track:60b7f2595cd384f5e1447d62f038a41b1a17d0ab909a47f6aef664495e426166` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/example-source-edition-4.md) | 151 | `declaration-track:88a78e6475716f9ed208dbc8399f0e6fe2749d97123f94d5085918f2e63c5908` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/example-source-edition-5.md) | 155 | `declaration-track:90f52214dfb58d312808ddbd943636a620ae5bfa7f09af41ec720d5b2606b5bc` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/example-source-edition-6.md) | 160 | `declaration-track:94332ae8d57e9426d1569245820eceb81224dd9c0bf23a7a2dee6c8ed28a6fe5` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryStatements.lean/declarations/example.md) | 166 | `declaration-track:150c1d571f177d3415652cec7ae06279fb5327998ec23c9228b352176d07f1a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d63dd5a6318ed5b9ad2e7c222caa6a20df6c8a63f1c2bbbb9a3b26a622bb58d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
