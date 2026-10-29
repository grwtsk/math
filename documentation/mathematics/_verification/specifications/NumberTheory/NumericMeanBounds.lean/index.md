# Verification target: Numeric Mean Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1199650af3cd29e38df5ba528874378b975f1cc4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumericMeanBounds.lean/index.md) · [Full source](../../../../NumberTheory/NumericMeanBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1199650af3cd29e38df5ba528874378b975f1cc4`.

Source path: `GRWTSK/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NormalizedGammaBudget` — import line 1; external provider; requires a separately pinned dependency.
- `FiniteRationalCertificate` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pi_lower](../../../../NumberTheory/NumericMeanBounds.lean/declarations/log-pi-lower.md) | 15 | `result-track:930b5f9546d7aad112d6dcf3b7343229e88b1933a36b0a5e7583071db6eef61b` |
| 2 | `theorem` | [actual_endpoint_lt](../../../../NumberTheory/NumericMeanBounds.lean/declarations/actual-endpoint-lt.md) | 26 | `result-track:f1cac14f881acc5f39ab0b2ef1b4860ff5bddc80de26a6fc96a5a9c5dfcb46b4` |
| 3 | `theorem` | [sqrt_two_bounds](../../../../NumberTheory/NumericMeanBounds.lean/declarations/sqrt-two-bounds.md) | 32 | `result-track:4812cba039917a71f984e284efce45e7f8dbf053ea80167ca83569dab786740f` |
| 4 | `theorem` | [sqrt_three_bounds](../../../../NumberTheory/NumericMeanBounds.lean/declarations/sqrt-three-bounds.md) | 37 | `result-track:0db0bf407b57857d333a53f66cf46073eca8f608472a65e823e4699b55104ac1` |
| 5 | `theorem` | [fixed_prime_sum_gt](../../../../NumberTheory/NumericMeanBounds.lean/declarations/fixed-prime-sum-gt.md) | 42 | `result-track:3d64cf284b73d4da192531f8ce63cde15866a31fd5fc32e96461150bde81b28f` |
| 6 | `theorem` | [actual_coarse_calibration_lt](../../../../NumberTheory/NumericMeanBounds.lean/declarations/actual-coarse-calibration-lt.md) | 57 | `result-track:c1604463129b2690e41bc97c27b004e84dbc11e5d5083d4a4ad7ecfecd5fbfb0` |
| 7 | `theorem` | [actual_sharp_calibration_lt](../../../../NumberTheory/NumericMeanBounds.lean/declarations/actual-sharp-calibration-lt.md) | 78 | `result-track:c13237a60151385f897a2de8bf860e949237be26e55bcb79923e04de577a4a07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9437db2572c4318d92e2def9808be339e54deea3def87da0fe64434da59a1e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean","GRWTSK/_verification/specifications/NumberTheory/NumericMeanBounds/Variantcbeefe7f134dd8088c260aa9ce08b03615eaf14833d1187db69335241f84eedc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
