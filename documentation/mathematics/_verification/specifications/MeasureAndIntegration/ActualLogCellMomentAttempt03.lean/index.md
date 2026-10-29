# Verification target: Actual Log Cell Moment Attempt03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ea687949842a3339fbcf1f96b6af388fc126e69",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variantc05819ea937040bbb305a4f6c28d78cced6b7d53df83284aac6599c8a5d2579a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ea687949842a3339fbcf1f96b6af388fc126e69`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variantc05819ea937040bbb305a4f6c28d78cced6b7d53df83284aac6599c8a5d2579a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variantc05819ea937040bbb305a4f6c28d78cced6b7d53df83284aac6599c8a5d2579a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcell.md) | 15 | `declaration-track:1b91387840b4b01ab564f8133e328379f669b0d504adfe831f18979c975dbe8d` |
| 2 | `def` | [logCellSum](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcellsum.md) | 18 | `declaration-track:be5a3cdea86451b3cc9e37fba6008ce13bc779c4755cb87a9b5578329578a427` |
| 3 | `theorem` | [logCell_integrable](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcell-integrable.md) | 20 | `result-track:7faa19f72a32795e5e3a5b739a6698552b9ae815eff8acdb0386f849a4399be8` |
| 4 | `theorem` | [logCell_eval](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcell-eval.md) | 32 | `result-track:2a0738afb25bd5aaf5b578b68e3de9748ec19d243152d25a79fa90030c71e79a` |
| 5 | `theorem` | [logCell_nonneg](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcell-nonneg.md) | 59 | `result-track:db048bbef6ba663be4e43c9b1a531ed4017bab4236092e3af878974b786eca06` |
| 6 | `theorem` | [logCellSum_eval](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcellsum-eval.md) | 67 | `result-track:e50d4934c86feff0474db2529b931cfff189c36a84d65acf03647c64eed4e009` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcellsum-tendsto.md) | 81 | `result-track:3d193b99832bfc54643bd3782bfe805a2a1399b3a9e7ac070bcd68ce12484cbd` |
| 8 | `theorem` | [logCell_hasSum](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcell-hassum.md) | 94 | `result-track:bf46668dc5b5abcca7f72543eae00315f3a3861790deb8ae57087df6ba24bb5a` |
| 9 | `theorem` | [logCell_summable](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcell-summable.md) | 100 | `result-track:96f18aa5e7c6b7052cbb6a6151e66b699fa8d0b101bb152f8b555b63985918ac` |
| 10 | `theorem` | [logCell_tsum](../../../../MeasureAndIntegration/ActualLogCellMomentAttempt03.lean/declarations/logcell-tsum.md) | 103 | `result-track:fbe453f919c399871fad4f0760dbc756c6ae6019618e2f5c56deaf5a6b41247e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10948e2934be84105d060b37bf0c669928d80cd745bc6cd0f0c12c232b8803df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variantc05819ea937040bbb305a4f6c28d78cced6b7d53df83284aac6599c8a5d2579a.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt03/Variantc05819ea937040bbb305a4f6c28d78cced6b7d53df83284aac6599c8a5d2579a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
