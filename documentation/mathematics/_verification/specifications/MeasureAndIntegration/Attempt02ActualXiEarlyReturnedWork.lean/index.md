# Verification target: Attempt02 Actual Xi Early Returned Work

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0320eb6a6af218d425f3502f9b59c02c5c6a51fc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0320eb6a6af218d425f3502f9b59c02c5c6a51fc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiDampedTailReturn` — import line 1; external provider; requires a separately pinned dependency.
- `SourceLeadingFullKappaReduction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiEarlyReturnedWork](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/actualxiearlyreturnedwork.md) | 26 | `declaration-track:5d82420e88118b396d9c2fac8eaead644b93654bcd8cc2c80f10e0de8e7505f3` |
| 2 | `def` | [actualXiLateReturnedWork](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/actualxilatereturnedwork.md) | 31 | `declaration-track:564f4eb5ec844f32307db3716d82024a1ba2543bad5b3085a321a283f5334395` |
| 3 | `def` | [actualXiEarlyReturnedBudget](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/actualxiearlyreturnedbudget.md) | 36 | `declaration-track:b1a74dfc3764106a1b27e12a7c932462c0fdfe62e61650661c961a815b18f01a` |
| 4 | `theorem` | [actualXiEarlyReturned_split_orders](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/actualxiearlyreturned-split-orders.md) | 40 | `result-track:caa9446187699174e9961fe74e15bb79ea225e710dc6394e2416bb5130793126` |
| 5 | `theorem` | [actualXiReturnedWork_intervalIntegrable](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/actualxireturnedwork-intervalintegrable.md) | 51 | `result-track:a341c4191e6fbef1db38cc9ac53d1664e045f8390c52573ea8e391b0bc8dfd1e` |
| 6 | `theorem` | [actualXiReturnDensity_origin_abs_le](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/actualxireturndensity-origin-abs-le.md) | 70 | `result-track:05654379507c918051060b0846e4f3cb220c838ae09f3e94012bbe8379427019` |
| 7 | `theorem` | [integral_half_exp](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/integral-half-exp.md) | 91 | `result-track:c6a82178cc7445126d599833f40691f92403e738016048aaacca64dd7dd35aa7` |
| 8 | `theorem` | [actualXiEarlyReturnedWork_abs_le](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/actualxiearlyreturnedwork-abs-le.md) | 105 | `result-track:adab4b8162ad274e861be6c4b004723682b870bf05bcc0bbf7c5b787e0f01012` |
| 9 | `theorem` | [completeXiTail_eq_early_add_late](../../../../MeasureAndIntegration/Attempt02ActualXiEarlyReturnedWork.lean/declarations/completexitail-eq-early-add-late.md) | 165 | `result-track:e1616c8e909a233c246785f185da80fe5a4c5e709550dfa3d91a85ee3f2b1175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7c834917640c91f89c9eb178575edd689fd706b930b4db2d56522bc4e98fa57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
