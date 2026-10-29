# Verification target: Fractional Covariance Elementary Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bf6173162e2e35fb50dfbba55b2e9734e216584",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bf6173162e2e35fb50dfbba55b2e9734e216584`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean.json)

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
| 1 | `theorem` | [fract_le_of_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/fract-le-of-nonneg.md) | 20 | `result-track:3991621a4125c32e0644e289f470217f00651a49ca272166c3b3a4ba8c8cbe94` |
| 2 | `theorem` | [fractional_product_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/fractional-product-integrable.md) | 25 | `result-track:9b75b3fdaa090c9d7e0bf3be909955024b60d5c07ef5d597611e560a62f3aa05` |
| 3 | `theorem` | [fractional_product_rescale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/fractional-product-rescale.md) | 60 | `result-track:fa6c5471297efa7b893b1e36134e66723abf804a38c0ddd72365d0c5158995ce` |
| 4 | `theorem` | [corrected_reciprocal_moment_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/corrected-reciprocal-moment-zero.md) | 76 | `result-track:cf48f13e874eacf6f0ec67419745754a21335c42291be4db2ef84172dc293565` |
| 5 | `theorem` | [corrected_log_reciprocal_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/corrected-log-reciprocal-moment.md) | 84 | `result-track:539eda754a0b475bfd45b8551e140cce00105adf41fe43ada71c2d642f6bd037` |
| 6 | `theorem` | [corrected_total_mass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/corrected-total-mass.md) | 102 | `result-track:21ca441e0533bcd7390ecd1cf93a2edc96c7bdf46d0d09b9b1ae9200ffdf6065` |
| 7 | `theorem` | [low_rank_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/low-rank-sum.md) | 110 | `result-track:d8269fffcd3139ce1f190b14e56e6a495c41ac8bc40c02be2c1e0f8fbb9b392c` |
| 8 | `theorem` | [corrected_elementary_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FractionalCovarianceElementaryAuditNamespaced.lean/declarations/corrected-elementary-covariance.md) | 131 | `result-track:8dd2ccd9168e5001d19a99f08ce3d4180e5d31aafd64ad3f17a4d644b7c239cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93dc1f51a2a05974e0721c0614ae7c900599969a227d657ba3c3128c734db479 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
