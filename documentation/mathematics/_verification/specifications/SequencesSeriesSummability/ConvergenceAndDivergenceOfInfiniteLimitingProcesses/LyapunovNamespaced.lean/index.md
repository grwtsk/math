# Verification target: Lyapunov Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0f8fb1906130fa6d1676c152247b89e724a5532",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0f8fb1906130fa6d1676c152247b89e724a5532`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [vsq_bounds_positive](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/vsq-bounds-positive.md) | 56 | `result-track:d5113a3fe0e2bec2b70389d4801f0263bb290e98abcda7eb79b6330cbe53b24c` |
| 2 | `theorem` | [vsq_bounds_negative](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/vsq-bounds-negative.md) | 61 | `result-track:7e86ca178516f02eb2dc3d0b094a082a4f3167da2858890a4ebb1c084fb2eb2b` |
| 3 | `theorem` | [energy_derivative_on_positive](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/energy-derivative-on-positive.md) | 70 | `result-track:2587d972bed8dbac70f92a2fcc7bdae900b9a24b51e8057f5e92e774ccd067a9` |
| 4 | `theorem` | [energy_derivative_on_negative](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/energy-derivative-on-negative.md) | 75 | `result-track:d939c4124ec109106f49e5834810feaffdb6cb03e7847bc20b976c85677f4da6` |
| 5 | `theorem` | [energy_derivative_nonpositive](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/energy-derivative-nonpositive.md) | 80 | `result-track:82ee78e0cf1cb2486b92fe8584c8d17ff3a7d8c9555abecf7c3824f846eef53f` |
| 6 | `def` | [v_positive](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/v-positive.md) | 92 | `declaration-track:7d7cb0b97229d1fe20f4e87718a83274cd9845548a025ec18485e5a314d35c46` |
| 7 | `theorem` | [energy_derivative_strictly_negative_pos](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/energy-derivative-strictly-negative-pos.md) | 94 | `result-track:8b7c940f5d0768a0d99261ea32e345eae98b3001fab90199b228ae5b3a88bd59` |
| 8 | `def` | [v_negative](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/v-negative.md) | 99 | `declaration-track:10477f3d40415b62b242888ffdc4191beb1a4f124b125750edfc3fc8695fd6fc` |
| 9 | `theorem` | [energy_derivative_strictly_negative_neg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/energy-derivative-strictly-negative-neg.md) | 101 | `result-track:4bd9333e7926f4919445d335d255ba4f6ee5084fc0d1b5806c8f0b0fa2351fb8` |
| 10 | `theorem` | [vsq_bounded](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/vsq-bounded.md) | 111 | `result-track:0b89854b444638d570f47de1602bb9931c66b4fb0c65dc59f372e391b72dc154` |
| 11 | `theorem` | [xsq_term_bounded](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/xsq-term-bounded.md) | 116 | `result-track:ced8bd2c813fe3e0ae5670920282f19f4322ab39ea1b77cf7d87c5c214d7b15a` |
| 12 | `theorem` | [vsq_nonneg_positive](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/vsq-nonneg-positive.md) | 124 | `result-track:ab1cfa767fe4223ecfd6f6d99851b8b1f88a5b85b1f59fa71e68ffdc70f914f4` |
| 13 | `theorem` | [vsq_nonneg_negative](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/vsq-nonneg-negative.md) | 128 | `result-track:2fd61a96f69549defe4f9553a2462f4eb220e666201efc6032bac680b1ad9f49` |
| 14 | `theorem` | [vsq_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/vsq-nonneg.md) | 133 | `result-track:cfc3cfbd44aff85d6047c9f604c9fdd304df40151d312c35653bd2a425df7bbf` |
| 15 | `theorem` | [xsq_term_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LyapunovNamespaced.lean/declarations/xsq-term-nonneg.md) | 136 | `result-track:6da0c5c30d6ebd62607f2d69a1802d4dd254caca220cb113d0f97ff770d922c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d69dbc0b132142154095a2a8434090515ae7535611bf511c4e73effda68d0046 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
