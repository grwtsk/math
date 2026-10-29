# Verification target: Source Hybrid Quadrature Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c6355e76f5e16ab568a59a635bfa0541ccf6351",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c6355e76f5e16ab568a59a635bfa0541ccf6351`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffBaseline](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/cutoffbaseline.md) | 32 | `declaration-track:2dd7757b746df8ac13ef9bb2d18d785ec5f398da443022033f83dc00cd078f24` |
| 2 | `def` | [firstCellPayment](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/firstcellpayment.md) | 36 | `declaration-track:81527adfa158b65e3f6e8fa392d114bf7bee663e3cd0ae90a0efde9d6ff3fcf5` |
| 3 | `theorem` | [cutoffPhase_intervalIntegrable](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/cutoffphase-intervalintegrable.md) | 38 | `result-track:f1d612904a8166256ccfd5ef0e2f018f976b6473816f758a35bb4d604f57436a` |
| 4 | `theorem` | [kernel_continuous](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/kernel-continuous.md) | 47 | `result-track:05600018d16667e8dd97bfd4c6373ea60763cfa2a0eff4f031a8eab529d394f0` |
| 5 | `theorem` | [weightedPhase_intervalIntegrable](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/weightedphase-intervalintegrable.md) | 51 | `result-track:0b3e9e6c711280d82ff88cae23a50c8adf6b9b1dbd9ed1a3df45b98293014c86` |
| 6 | `theorem` | [cutoffBaseline_nonpos](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/cutoffbaseline-nonpos.md) | 55 | `result-track:31eb6df434a9dd3a25764c62cbe18af4fe0f68eb1e656e91f18b9f8531ccd4d7` |
| 7 | `theorem` | [firstCellPayment_gt_tenth](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/firstcellpayment-gt-tenth.md) | 62 | `result-track:e17a2472a8411708a42b73d0358f24febb90109327a514cd33720848ad63a383` |
| 8 | `theorem` | [cutoffBaseline_le_first_cell](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/cutoffbaseline-le-first-cell.md) | 72 | `result-track:d6739ebc3bbc0b25ab0d9b0717c7846758ebd325450acaac31750c9836567ebe` |
| 9 | `theorem` | [kernel_sub_half_abs_le](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/kernel-sub-half-abs-le.md) | 118 | `result-track:04b2352c8672d3ae3674002cf4cdedef925165ea7e56f465349d602fc5244526` |
| 10 | `theorem` | [exponential_moment_le_eight](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/exponential-moment-le-eight.md) | 136 | `result-track:f814b424cddd19ed2224075ef0d6adf70d2669d98288cc987609d3bde58fb5af` |
| 11 | `theorem` | [quadratureError_sub_baseline_abs_le](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/quadratureerror-sub-baseline-abs-le.md) | 154 | `result-track:b381ac2b185e0e762bf06171216e57ac2a915c45d2a96923681a73edfe7e64c5` |
| 12 | `theorem` | [quadratureError_le](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/quadratureerror-le.md) | 206 | `result-track:a96b42697ae51c08597e95fb5598c1b619004325c35605c4e0688188c9a739a7` |
| 13 | `theorem` | [quadratureError_le_negative](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/quadratureerror-le-negative.md) | 211 | `result-track:3743b0e9fe5ec41ed1baccfb0ece43a6a2200045c34f71429ae69c380684b28c` |
| 14 | `theorem` | [residual_le_of_compensated_cap](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/residual-le-of-compensated-cap.md) | 218 | `result-track:c1649ae2b3014dabe51116585ee26ddaaff7e74afa833788948d4ac9f0afbdf9` |
| 15 | `theorem` | [original_lower_of_compensated_cap](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/original-lower-of-compensated-cap.md) | 232 | `result-track:ba6a4371f8354862b55c218cca9a974fcd06fab59673475717a3784e2db990ee` |
| 16 | `theorem` | [estimate_of_compensated_cap](../../../../MeasureAndIntegration/SourceHybridQuadratureNamespaced.lean/declarations/estimate-of-compensated-cap.md) | 254 | `result-track:00f2ea5706960f3f2a3cf3354db2ce6c05982679aeb0dde0699f6bc84ea3e8bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d16b10a5ceb99313c4d7e18135f9f92f96da99a4779ae43db2200c14ceeb63b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
