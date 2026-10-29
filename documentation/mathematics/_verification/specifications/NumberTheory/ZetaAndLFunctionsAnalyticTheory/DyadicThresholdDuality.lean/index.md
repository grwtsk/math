# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicThresholdDuality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bbc58ca0a21aed95909932a0c923be2aaad3818",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThresholdDuality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bbc58ca0a21aed95909932a0c923be2aaad3818`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicThresholdDuality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicThresholdDuality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/QuadraticThresholdDescentProgram.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thresholdDefect](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/thresholddefect.md) | 50 | `declaration-track:b028d6f4a5b34a2bec898c90f5566cc7964445d0993ec956cbf7fe8740318c47` |
| 2 | `def` | [dyadicLift](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadiclift.md) | 54 | `declaration-track:ec844cce417f0d8c5530d7058edc1af788b0d9be4c192cd8f6654309b5ae9c11` |
| 3 | `def` | [dyadicThreshold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadicthreshold.md) | 58 | `declaration-track:9e4b8444e37e1d869b6c2c99f96075d51bcaa6100df1d4a36a6be2b2cce65737` |
| 4 | `theorem` | [dyadicThreshold_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadicthreshold-one.md) | 62 | `result-track:fab913a3ef1581b53d5cad35894b05062071a389892a56fa2d096b102d637c96` |
| 5 | `theorem` | [dyadicThreshold_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadicthreshold-two.md) | 67 | `result-track:cabc8295e42f315bc54a54f8dc7c0ad328dfcbb69dd97d4c5bc9eadff138dc8d` |
| 6 | `theorem` | [dyadicThreshold_three](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadicthreshold-three.md) | 72 | `result-track:31f684b7268719b65353ddf8c2057891d88e31d8a4b1c71b8534ccd2ba2ce254` |
| 7 | `theorem` | [dyadicThreshold_succ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadicthreshold-succ.md) | 77 | `result-track:a5fe7782655bba2241c065438522eb72243c92efe79a5c0f297e1a5e160af1bd` |
| 8 | `theorem` | [quadraticThreshold_dyadicLift](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/quadraticthreshold-dyadiclift.md) | 86 | `result-track:a8b023441830fb706bcb2f0d921a2ac4499613d31e84ac8c7579425969d6ae41` |
| 9 | `theorem` | [dyadicLift_quadraticThreshold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadiclift-quadraticthreshold.md) | 93 | `result-track:5333a00d20f24a57bd23cf720f01be394954ec9eb431d3c6c831c2e7d58ecc09` |
| 10 | `theorem` | [thresholdDefect_dyadicLift](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/thresholddefect-dyadiclift.md) | 99 | `result-track:b4b4b1b7996326d1702fb3328e5e4d57be439105d2de062058a2f1a058aea31b` |
| 11 | `theorem` | [thresholdDefect_quadraticThreshold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/thresholddefect-quadraticthreshold.md) | 106 | `result-track:27333b8c9ea2948bb6e87c7b6b721e30db920817ef8c56b432db430c0198efda` |
| 12 | `theorem` | [thresholdDefect_dyadicThreshold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/thresholddefect-dyadicthreshold.md) | 113 | `result-track:9afc165eaacb298538edf293985f823052e726d1e4fd24f66d7a15c4987dfc31` |
| 13 | `theorem` | [quadraticThreshold_dyadicThreshold_succ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/quadraticthreshold-dyadicthreshold-succ.md) | 120 | `result-track:0a3180f4b05d8f18cc72ee2be49c7d4743958c0d3b66f26da1da2392fd087ea6` |
| 14 | `theorem` | [dyadicThreshold_three_two_one_reverse](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicThresholdDuality.lean/declarations/dyadicthreshold-three-two-one-reverse.md) | 127 | `result-track:bfc17d3ab90302d52d9b9e67d6ebbe1d807a49ae03026198098ed9904a49e9a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19a287cc3b966fa31e907c15488e69afcb54a096f4ee7da77921c072c374cd4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicThresholdDuality.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/DyadicThresholdDuality.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
