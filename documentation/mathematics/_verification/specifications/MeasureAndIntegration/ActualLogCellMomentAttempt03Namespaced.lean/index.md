# Verification target: Actual Log Cell Moment Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7efdd319b14abc32831d48ec2f295c0a4637cc8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variant089042d4840b0cd01e6e96be5c45f7dd7f0463dd42c629946d6e3b9fa5446146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7efdd319b14abc32831d48ec2f295c0a4637cc8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variant089042d4840b0cd01e6e96be5c45f7dd7f0463dd42c629946d6e3b9fa5446146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variant089042d4840b0cd01e6e96be5c45f7dd7f0463dd42c629946d6e3b9fa5446146.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcell.md) | 23 | `declaration-track:50334563bcf5346aacce73934f2f9088fe4ac47d3125e866c53426bc5fe1ab5b` |
| 2 | `def` | [logCellSum](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcellsum.md) | 26 | `declaration-track:4c41505184999b06f78c61ef8b8b14c1f7e1482da6bff537b941a65c1fb168b7` |
| 3 | `theorem` | [logCell_integrable](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcell-integrable.md) | 28 | `result-track:5f5867d2f4cbac00be13ae8bdcd8ddb66063e736dd8cedaf384d820bdf4edb88` |
| 4 | `theorem` | [logCell_eval](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcell-eval.md) | 40 | `result-track:b7265a86669011bfb46f169f731251cb616e556c6706a624ba7ed9b557eff826` |
| 5 | `theorem` | [logCell_nonneg](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcell-nonneg.md) | 67 | `result-track:293e10881d58a14a928d7058646e73f37d234ccd6cc934e04383acf32c2310a3` |
| 6 | `theorem` | [logCellSum_eval](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcellsum-eval.md) | 75 | `result-track:63ba3c76d24a9e7db8686523199b7d8cc6c31676e1846ac4022c4557e5f8b55b` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcellsum-tendsto.md) | 89 | `result-track:dbefae5c32439d7911109ec5b1e81e76ea437e59d150fc68d258175ed9f7b107` |
| 8 | `theorem` | [logCell_hasSum](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcell-hassum.md) | 102 | `result-track:6180847967b493ebb2f02965fc46e29daa664bfa1ba2d88c5aa258a4c5e3ea02` |
| 9 | `theorem` | [logCell_summable](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcell-summable.md) | 108 | `result-track:9be5f71c18a209370c38297f95aa58dd1f518161182aae2e5f7f2004b19c124f` |
| 10 | `theorem` | [logCell_tsum](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03Namespaced.lean/declarations/logcell-tsum.md) | 111 | `result-track:e803c03c55f7a4c726a0ae1bd0dfc81842477493add924753c3262715a24e0ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e80180faeaa87cabdde386be22943e469b5d759c88ffb51e5dcb76d78fc0baaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variant089042d4840b0cd01e6e96be5c45f7dd7f0463dd42c629946d6e3b9fa5446146.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variant089042d4840b0cd01e6e96be5c45f7dd7f0463dd42c629946d6e3b9fa5446146.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
