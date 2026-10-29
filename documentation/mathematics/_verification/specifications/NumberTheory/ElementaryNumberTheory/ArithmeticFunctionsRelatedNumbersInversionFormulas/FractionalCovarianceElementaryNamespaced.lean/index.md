# Verification target: Fractional Covariance Elementary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b3e55811fe4c023c714c0f908643032f2035738",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b3e55811fe4c023c714c0f908643032f2035738`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean.json)

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
| 1 | `theorem` | [fract_le_of_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/fract-le-of-nonneg.md) | 20 | `result-track:ad7306976d54f1fd6a54651fbc45635c91975b239f4b7525d0e7a9ff2db7052e` |
| 2 | `theorem` | [fractional_product_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/fractional-product-integrable.md) | 25 | `result-track:6743aacb52c7af256ddd834817628b27618bffad8fa09314ff26111a079041e1` |
| 3 | `theorem` | [fractional_product_rescale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/fractional-product-rescale.md) | 60 | `result-track:ca17f19b65af938d61258615c2c527e5fa3566849b48690e0bb6684050b3c4e4` |
| 4 | `theorem` | [corrected_reciprocal_moment_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/corrected-reciprocal-moment-zero.md) | 76 | `result-track:5229172805576c82e40ae1278542be69ed74edf4c11c09c2b75fc122b972bc5d` |
| 5 | `theorem` | [corrected_log_reciprocal_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/corrected-log-reciprocal-moment.md) | 84 | `result-track:eaded02902c9aaecdfa167632dada04f8da33e2da592c394fa3d0d0a2b051a58` |
| 6 | `theorem` | [corrected_total_mass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/corrected-total-mass.md) | 102 | `result-track:44c2612962fdd6e530e8b5f77bffa937e57dd78377536859f63b3262fdd07c43` |
| 7 | `theorem` | [low_rank_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/low-rank-sum.md) | 110 | `result-track:2ba9f893c0130f2ccff90de365adfa5ab6f7dc5a50e2f8319b05dcce804caaeb` |
| 8 | `theorem` | [corrected_elementary_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryNamespaced.lean/declarations/corrected-elementary-covariance.md) | 131 | `result-track:c3eab0881cbf8a6567ce07e34c518d91010ea72c8f516a9dc817ca0ccc900520` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c58631148638025974d6d8f45af34a30e61f05a2daad393026fd49bf0a3082f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
