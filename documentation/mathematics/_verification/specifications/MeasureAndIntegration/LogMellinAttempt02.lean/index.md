# Verification target: Log Mellin Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e17cb85d10bd97047a0cb83e88c143d667875d0d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e17cb85d10bd97047a0cb83e88c143d667875d0d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 1; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularIntegral](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/angularintegral.md) | 19 | `declaration-track:1dc426d0e74a89966a89d7d359ea1a964bbf7aa8c597f580e0ea4eedb7ec0744` |
| 2 | `theorem` | [critical_jacobian](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/critical-jacobian.md) | 22 | `result-track:8cd5a9f0a8f2e9756e6b397634289c652da4388b0a5b3b445987b79cd87ecee0` |
| 3 | `theorem` | [mellin_critical_log](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/mellin-critical-log.md) | 34 | `result-track:9ab6ff92d20b2258e6d75bc04dcffd6da9d926ee5e6d84a37e2e67c4531e5245` |
| 4 | `theorem` | [critical_integrable_iff](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/critical-integrable-iff.md) | 45 | `result-track:fc54ee29d59ad576e7f58ea8d2bfbb39c97b31f662f7859ee3c5bcaa510c83f6` |
| 5 | `theorem` | [phase_norm](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/phase-norm.md) | 57 | `result-track:46a0b29d97079c0cec4565aa538d7256f926b5b48d066f62f19e8008a93e6c51` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/logfunc-integrable-of-critical.md) | 61 | `result-track:b7ed245bbf503b31b66b96960278e52881b34e9285a751f5b1d61ccbee4908c6` |
| 7 | `theorem` | [actualSource_memLp](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actualsource-memlp.md) | 73 | `result-track:e9c7bc9cff1e9e05fe48123d21d15922234aa44fe81caa6eee8c61ab3ac3549e` |
| 8 | `def` | [actualSourceL2](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actualsourcel2.md) | 82 | `declaration-track:f96bf3bf16346c2d1841a2500559b2f4f82198debc359cff3ca9ea798afa0d09` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actualsourcel2-ae.md) | 85 | `result-track:9875b14581a38f57bfafa93915681f3c41273ad4b09edb1fcf692e8a11b23444` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-source-log-pointwise.md) | 89 | `result-track:0d64a61eb0063d5216e1dee16f90e4dd1ee47aea76c35c25aeaa69d1ed0ac552` |
| 11 | `theorem` | [actual_source_log_ae](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-source-log-ae.md) | 96 | `result-track:6b9345cf936e5cf3a49ddcc993e1864cc38cb44a1d7e4bef0ff3d890ec51b0bd` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-source-angular-integrable.md) | 105 | `result-track:afc7c0a6fe826557d0ad573aad48bf4db113679ee7564e697b84d300ffe3f4ea` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-muntz-angular-integrable.md) | 112 | `result-track:8a0b839e12601836bf9625d6459ab423bbdb53c3bb5220ae65446b4e04beaf9d` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-muntz-log-integrable.md) | 119 | `result-track:60c097ae3594a6e21955c275b416627fead83203bde0a095648f7ac526329a10` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-source-mellin-log.md) | 126 | `result-track:0374a70b40577f1868877d6d0c57f6cd7f2853d413481868faaf361cfdf86a69` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-muntz-mellin-log.md) | 134 | `result-track:462b21fffd31154df8208fd0925a01892937af78574f1d7ba62be8212b5a26c9` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../MeasureAndIntegration/LogMellinAttempt02.lean/declarations/actual-muntz-mellin-log-class.md) | 138 | `result-track:78f396075fc46b261dd3ac411f099cc8b4098060d27667b0d7d4bb599d3acab2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=406b033595dff8eac32e6e8d9ef3225125db6eeeb2cbe34157d56ab447b95508 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
