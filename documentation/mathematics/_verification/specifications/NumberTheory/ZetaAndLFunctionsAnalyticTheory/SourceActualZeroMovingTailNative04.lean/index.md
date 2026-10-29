# Verification target: Source Actual Zero Moving Tail Native04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cb16567f89fe68720e859b6b82082cc59e7fc07",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cb16567f89fe68720e859b6b82082cc59e7fc07`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualZeroArithmeticDictionary` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZeroMovingRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/actualzeromovingradius.md) | 21 | `declaration-track:930995f558a3b26016044a75378144a3dcb872ef7d8127141339b1da181c21ac` |
| 2 | `def` | [actualZeroMovingEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/actualzeromovingenvelope.md) | 24 | `declaration-track:01751dc2940ee3e7155c81269160e339af0b44c0c746db7162b93cf9944981ec` |
| 3 | `theorem` | [actualZeroMovingHeight_ge_four](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/actualzeromovingheight-ge-four.md) | 29 | `result-track:952fdf686e1417103c1a3496f10fa75749983fceb86efaebdfcbcb1c6e4746e0` |
| 4 | `theorem` | [actualZeroMovingTail_norm_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/actualzeromovingtail-norm-bound.md) | 41 | `result-track:cbf224f8a422dd56aeace9930ca41215927452d1b8ba9a667a3715ee0059fc33` |
| 5 | `theorem` | [envelope_le_inverse_eighth](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/envelope-le-inverse-eighth.md) | 66 | `result-track:cddd61773c7834c9cd645ad775d7b00eaaf8cdf10afd18c35efbc4cb01498aa4` |
| 6 | `theorem` | [actualZeroMovingTail_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/actualzeromovingtail-tendsto-zero.md) | 90 | `result-track:af36f76d90826223a38ff3e87e51ce2ea87c4853f7b090300bb9fc1e377d0e62` |
| 7 | `theorem` | [actualFullZeroContribution_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/actualfullzerocontribution-sub-movinghead.md) | 103 | `result-track:71aebc5f99a73576cfedfe8f0fb3f2322526155c4d748e490f97ea9e821b9205` |
| 8 | `theorem` | [actualSourceQuadraticValue_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative04.lean/declarations/actualsourcequadraticvalue-sub-movinghead.md) | 110 | `result-track:ac1003204fb29a3416857c6c6ad7c3adecb092923295a4e7150fc6aaa27b64a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d43fe41529aaa95a57490c7dd5b91d629fd9590c60d582d16179736b3b59f69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative04/Varianta0aac8a70fac2a311e0cf6403fb67db1bd9d687e2eaa1973f0f6d0fccdf4e55c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
