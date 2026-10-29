# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaFeatureNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bda12c7ce8190ef2b087b8f7efd175a156eb223",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bda12c7ce8190ef2b087b8f7efd175a156eb223`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaFeatureNormBudget`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimeThetaFeatureNormBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaSeparableKernel`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaSeparableKernel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPrimeThetaFeatureNormCriterion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/declarations/clauseindexedprimethetafeaturenormcriterion.md) | 30 | `declaration-track:568d367077f5dfef1d3479f1db6240f4af483a9c7b5121335663d093feca3e18` |
| 2 | `theorem` | [clauseIndexedFeatureNorm_to_separableKernel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/declarations/clauseindexedfeaturenorm-to-separablekernel.md) | 37 | `result-track:6612ed0a43117fd48386fdfee3755f18ae7f996e31eb942848ab29710dd5f141` |
| 3 | `theorem` | [clauseIndexedFeatureNorm_to_recurrence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/declarations/clauseindexedfeaturenorm-to-recurrence.md) | 45 | `result-track:1f36f17e3b13ef43ac6e71d0e86288174dc5ef91c978abdb1454f93b2dea3f3c` |
| 4 | `theorem` | [clauseIndexedFeatureNorm_to_previous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/declarations/clauseindexedfeaturenorm-to-previous.md) | 54 | `result-track:78e28fab2d12d96247e0bca4a0c4f6eb6fe71d3403d9ce713b31ba793b9f89f3` |
| 5 | `theorem` | [threeClauseIndexedFeatureNormCriterion_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/declarations/threeclauseindexedfeaturenormcriterion-iff.md) | 73 | `result-track:79d15554dad8758ae5d2786ab2b5df8f9f664a24b747820972fad1754e458a3c` |
| 6 | `theorem` | [twoClauseIndexedFeatureNormCriterion_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/declarations/twoclauseindexedfeaturenormcriterion-iff.md) | 81 | `result-track:22810ed2789cfc9f6093c3c5b745a4d4b7262249076b01083d525529b7f1dd07` |
| 7 | `theorem` | [clauseIndexedFeatureNormCriteria_to_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPrimeThetaFeatureNorm.lean/declarations/clauseindexedfeaturenormcriteria-to-rh.md) | 91 | `result-track:550e2380083974f5329cc33e0000d5f43fe934218dde055a8da0f38773f3b3c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b47602a19059c903b9ea84b3cb9d6f988d488a7f2e4378b835a41c6d92ff70f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
