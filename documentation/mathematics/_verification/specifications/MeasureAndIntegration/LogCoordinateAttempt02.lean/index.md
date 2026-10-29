# Verification target: Log Coordinate Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e91c973297efc73278179f3465ce2fe459013e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant1e14b36606cf2d40cb010e72480e8b862dae38ff24a11d2e08eb5de2951f2f4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e91c973297efc73278179f3465ce2fe459013e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant1e14b36606cf2d40cb010e72480e8b862dae38ff24a11d2e08eb5de2951f2f4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant1e14b36606cf2d40cb010e72480e8b862dae38ff24a11d2e08eb5de2951f2f4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/logl2.md) | 15 | `declaration-track:cca6573bdb352795cf404a30da290cb3f4f0f045c2657ec64734e67cdaf3e650` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/integral-exp-jacobian.md) | 17 | `result-track:cf32c06659d36b81053a713dadb9d1af064a58574ccbd0d49b629a3b3a1ebf51` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/integrable-exp-jacobian.md) | 26 | `result-track:4f2eed40e962fd33429b88d07d11159aeea7390c49f2ff234422b09a4ac60199` |
| 4 | `theorem` | [exp_quasi](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/exp-quasi.md) | 35 | `result-track:18c52faed534b6e6c8cfcfd553967d2b79162b8d18bce6fd74c197cbc4b5d171` |
| 5 | `theorem` | [log_quasi](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/log-quasi.md) | 55 | `result-track:d82b2581331a7df7d1e5f9e94a61ef0bee5f90e6c70f9e1c0783b232e3bad7e3` |
| 6 | `def` | [logFunc](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/logfunc.md) | 74 | `declaration-track:4ad49482cc3cae8cebf1bcf1389f68a6b99b32ce45af42669eb47925ca0386f3` |
| 7 | `def` | [positiveFunc](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/positivefunc.md) | 75 | `declaration-track:2ce86e92fca495b545f62dff3f24186adb0ad22e112bd5ccf3556a7cfcff976c` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/logfunc-norm-sq.md) | 78 | `result-track:03dc4c73227656407d4f41176635147eb26a7e0febfb9ba2baa0949151f7c721` |
| 9 | `theorem` | [logFunc_memLp](../../../../MeasureAndIntegration/LogCoordinateAttempt02.lean/declarations/logfunc-memlp.md) | 86 | `result-track:62145910c97192857a93340d063a17778c6dbe5398a058b5c2bfc4d3512cecae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e05eec58a153efa18db9e74bad7a4f6fdace9929110c84c09a29c25ef6614fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant1e14b36606cf2d40cb010e72480e8b862dae38ff24a11d2e08eb5de2951f2f4c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant1e14b36606cf2d40cb010e72480e8b862dae38ff24a11d2e08eb5de2951f2f4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
