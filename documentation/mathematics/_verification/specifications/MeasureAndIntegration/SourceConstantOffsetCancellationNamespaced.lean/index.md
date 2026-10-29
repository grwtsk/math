# Verification target: Source Constant Offset Cancellation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb795d728c027304c41bb4160eb7be27eb97896b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb795d728c027304c41bb4160eb7be27eb97896b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualMixedWorkEstimate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [columnTest](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/columntest.md) | 35 | `declaration-track:ce361bf9f57978cfc8b2c85a0e92f6255cad5aa92a8ff693ec35f2d3ced3fce2` |
| 2 | `def` | [centeredPrefix](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/centeredprefix.md) | 39 | `declaration-track:1807b430235f5f171ba5121e2fa8f1504ab8089c74cdf8b8907a399291ed311a` |
| 3 | `theorem` | [columnTest_contDiff](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/columntest-contdiff.md) | 43 | `result-track:1fb95060f94e9dbbeb41bb7adbbd3d7c08e2e0424ad79cbcd627bf2facc19644` |
| 4 | `theorem` | [actual_jointTest_contDiff](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/actual-jointtest-contdiff.md) | 50 | `result-track:b80643694ff57634dcb26011e616599343281e097db5e0021e3ef9d27910e93a` |
| 5 | `theorem` | [columnTest_at_natural](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/columntest-at-natural.md) | 61 | `result-track:0a15abd9d2ca1f4571e749c550a0c82f8c34deead63f586536f3d2ec2ab006e6` |
| 6 | `theorem` | [columnTest_at_upper_zero](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/columntest-at-upper-zero.md) | 80 | `result-track:eed94de85cee6f4f34abdf2519170ca12621df8c73b713f2561e39651537640c` |
| 7 | `theorem` | [actual_jointTest_at_upper_zero](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/actual-jointtest-at-upper-zero.md) | 96 | `result-track:1451506714d303faa955820a080e9d7b29ea17d5d70569b3f20c3218a32e9a60` |
| 8 | `theorem` | [actual_log_cutoff_bounds](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/actual-log-cutoff-bounds.md) | 111 | `result-track:b15cb802e73f70f076a8383f975211b12751102aafe20d04811cbf98561eaf5e` |
| 9 | `def` | [centeredErrorExpMass](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/centerederrorexpmass.md) | 123 | `declaration-track:4128eac96841965860e8f45c85b33c246adb68de91f130af2db59cadebf7cfee` |
| 10 | `def` | [centeredErrorWork](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/centerederrorwork.md) | 128 | `declaration-track:3038944b5c622c94407b41b96d778dd88b9e80f00e61b9de8305e7c9d07a9820` |
| 11 | `theorem` | [actual_jointTest_derivative_window](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/actual-jointtest-derivative-window.md) | 133 | `result-track:aa14aa3b57e9bf3f613448d1e9e7b56ff35e822eca5ea899af487e4136ccf10a` |
| 12 | `theorem` | [centeredErrorWork_eq_original_add_lower](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/centerederrorwork-eq-original-add-lower.md) | 147 | `result-track:a44f3e8096e13a484398d633b83e6bbcf19b4f2c297cb03639f5b9c8a13aede8` |
| 13 | `theorem` | [original_compensation_eq_constant_offset](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/original-compensation-eq-constant-offset.md) | 163 | `result-track:ab1ad8403ed34664a801fd0eb22b938dcaa862e23d804f107eb9e5a546d99c8a` |
| 14 | `theorem` | [strictColumnInterior_eq_lower_anchored_error_work](../../../../MeasureAndIntegration/SourceConstantOffsetCancellationNamespaced.lean/declarations/strictcolumninterior-eq-lower-anchored-error-work.md) | 180 | `result-track:26776ccb6e21753900cd9ae665e57073b6629b1d6a5b66568d8bfc4c8a700f7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cf38cbca50295dc7164af3a5968937aee70e5f2212ff2edf3af2df48d91f952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
