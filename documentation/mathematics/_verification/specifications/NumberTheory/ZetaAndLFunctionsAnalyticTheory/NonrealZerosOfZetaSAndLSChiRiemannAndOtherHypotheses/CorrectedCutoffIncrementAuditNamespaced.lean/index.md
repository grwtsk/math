# Verification target: Corrected Cutoff Increment Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c885902ee79f4bdfc9b5211a3a7459ceeced914",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variant805c501964f2049a4217adfcc5dbed88b79091d68a9cfd63098a0b21cc2aa058.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c885902ee79f4bdfc9b5211a3a7459ceeced914`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variant805c501964f2049a4217adfcc5dbed88b79091d68a9cfd63098a0b21cc2aa058.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variant805c501964f2049a4217adfcc5dbed88b79091d68a9cfd63098a0b21cc2aa058.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffShape](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/cutoffshape.md) | 20 | `declaration-track:a06b527c5bf14507b1fa9e8fbe1882c5ed4fa719adbf5ef352c44081373b97a1` |
| 2 | `theorem` | [correctedNumerator_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/correctednumerator-one.md) | 25 | `result-track:09066d5186ab732fc4c21b144dba4f860449e8d8c41788eac987b93a1440b5c2` |
| 3 | `theorem` | [exponential_split](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/exponential-split.md) | 28 | `result-track:3572345ba2a341c378158c765120117bf19b068a65fb19ff6929f5e7cbae2350` |
| 4 | `theorem` | [reciprocal_succ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/reciprocal-succ.md) | 39 | `result-track:c032f041d968ded5d9bdb0b5ee7a187de78e913e9d3d0c76a2aa3dcdd75b50e6` |
| 5 | `theorem` | [correctedNumerator_succ_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/correctednumerator-succ-sub.md) | 46 | `result-track:5047fbec0e62db235b98ec1ffe21fbc53262be1bae90757a90ba4cc9d4689178` |
| 6 | `theorem` | [correctedNumerator_eq_sum_increments](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/correctednumerator-eq-sum-increments.md) | 58 | `result-track:e13c7836241868807baa177f34946bf9d5b8feaa0226c85440a8d6f632c137af` |
| 7 | `def` | [boundaryResidual](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/boundaryresidual.md) | 69 | `declaration-track:4e841cd4abc8eec39f552043da4af724787209220a57e7438988ad27c8653d5b` |
| 8 | `theorem` | [boundaryResidual_succ_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/boundaryresidual-succ-sub.md) | 74 | `result-track:c2f02ba1d63a543a072cd01973fde640d31f7031858355e12e591a5759e54502` |
| 9 | `theorem` | [boundaryResidual_increment_product](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/boundaryresidual-increment-product.md) | 84 | `result-track:023dc700fde5a8d766316feaf2cb51e427567a708a722541a8910d13965fceca` |
| 10 | `theorem` | [boundaryResidual_memLp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/boundaryresidual-memlp.md) | 98 | `result-track:166ec53d90b7bf2879e8c509be291eba3662c4d71136c91af92b430271872aac` |
| 11 | `theorem` | [boundaryResidual_increment_product_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementAuditNamespaced.lean/declarations/boundaryresidual-increment-product-integrable.md) | 124 | `result-track:4d230c8b354136ef1b74f381277175b0a4836f185e554781a0902d6ce4e0aa2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd5b3442176e3984644c3d4b4ab45608a037deceaf93f45f41c4a4e423e03ca5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variant805c501964f2049a4217adfcc5dbed88b79091d68a9cfd63098a0b21cc2aa058.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variant805c501964f2049a4217adfcc5dbed88b79091d68a9cfd63098a0b21cc2aa058.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
