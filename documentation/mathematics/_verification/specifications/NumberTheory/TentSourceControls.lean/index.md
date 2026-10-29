# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TentSourceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "148c84ad1e87103567a8ffa34a43a37fb9718931",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TentSourceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/TentSourceControls.lean/index.md) · [Full source](../../../../NumberTheory/TentSourceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `148c84ad1e87103567a8ffa34a43a37fb9718931`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TentSourceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TentSourceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentSource`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TentSource.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentMellinKernel`](../../../../MeasureAndIntegration/TentMellinKernel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [endpoints_vanish](../../../../NumberTheory/TentSourceControls.lean/declarations/endpoints-vanish.md) | 18 | `result-track:7a708be6b08376a311a4f6f412f0ddbf1d22df2c8daddec50d149c49141ffc73` |
| 2 | `theorem` | [center_has_unit_weight](../../../../NumberTheory/TentSourceControls.lean/declarations/center-has-unit-weight.md) | 21 | `result-track:d727a83fc62a2505474a1fe783a8617c64494323b2b1b3685aa60e46cdd69051` |
| 3 | `theorem` | [outside_has_zero_weight](../../../../NumberTheory/TentSourceControls.lean/declarations/outside-has-zero-weight.md) | 24 | `result-track:d699b69762cad28a5fdc546ef917ce7d178e734e2afaf78130d92f7f81587cbc` |
| 4 | `theorem` | [power_endpoint_weights](../../../../NumberTheory/TentSourceControls.lean/declarations/power-endpoint-weights.md) | 28 | `result-track:f52f5b78a2be591f9d4750a5b4009fa1250d5c4fd1e0640c456ec8daacf07a02` |
| 5 | `theorem` | [radius_not_diameter](../../../../NumberTheory/TentSourceControls.lean/declarations/radius-not-diameter.md) | 33 | `result-track:3495801a8ec98c7c0259109fa606603569e9a81c132980ed4ee815c10b92bac4` |
| 6 | `theorem` | [closed_support_is_not_positive](../../../../NumberTheory/TentSourceControls.lean/declarations/closed-support-is-not-positive.md) | 39 | `result-track:5bfe0bbf793803695533f6578e99cbcdd82e5f3ab705066dfc4b2cc92f8b0e02` |
| 7 | `theorem` | [removable_parameter_guards](../../../../NumberTheory/TentSourceControls.lean/declarations/removable-parameter-guards.md) | 44 | `result-track:0cb991f0c119128a6be245f6bf3df2d4ba2ac84e3db371a39af5251b42311457` |
| 8 | `theorem` | [kernel_one_control](../../../../NumberTheory/TentSourceControls.lean/declarations/kernel-one-control.md) | 49 | `result-track:39203c90439d28e0232e051e01d73cc1836f2bed9026eb3eaa30bbb0193f9f12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24c8d367061a1e1b9af17a465cd7534b466a0229366f80d67bc367549f2ac01f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/TentSourceControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/TentSourceControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
