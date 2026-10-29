# Verification target: Full Actual Census Compared With Its Unchanged Laplace Moment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7778df09ee0c6d1af6f734ea8e80361f4c3bc89",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7778df09ee0c6d1af6f734ea8e80361f4c3bc89`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.ActualCensusCutoff` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ActualLogarithmicIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exact_decaying_exponential_interval](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/declarations/exact-decaying-exponential-interval.md) | 25 | `result-track:af750a91fc536f4938fcae8478430e93d26671bcb4c01bc4955dd26c980ba1d3` |
| 2 | `theorem` | [actual_negative_half_price_le_radius](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/declarations/actual-negative-half-price-le-radius.md) | 39 | `result-track:ded8714377cf81c227541816188f11370fecc2eea66784f706271bc3b433f45c` |
| 3 | `theorem` | [actual_cutoff_integral_moment_error_le_one](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/declarations/actual-cutoff-integral-moment-error-le-one.md) | 53 | `result-track:45e2e77c741584bbceac9576f3174cc20dc6f5725029d6413f3ee2b11bb91df4` |
| 4 | `theorem` | [actual_complete_census_moment_error_le_fifteen](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/declarations/actual-complete-census-moment-error-le-fifteen.md) | 70 | `result-track:58850c87bc93eb105ebae6f2f1ec847112e1432fe7e818ecbd30c07bd4417a16` |
| 5 | `theorem` | [actual_square_census_bounded](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/declarations/actual-square-census-bounded.md) | 81 | `result-track:457dd69b4a036e8173b2ecc7e691a2957d684a3392c1ba5093e65855f336451b` |
| 6 | `theorem` | [actual_sixth_census_retains_moment](../../../../MeasureAndIntegration/FullActualCensusComparedWithItsUnchangedLaplaceMoment.lean/declarations/actual-sixth-census-retains-moment.md) | 88 | `result-track:34189b7e56f260ff0b0a7a08d8f2cfd7bad87984f75d24e2f7bc5ce21c3373f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9bb8995cfd884c3b2748f0f445941c787122b2e7f6ca6e483f69788686b2e90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
