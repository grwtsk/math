# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenContinuumPhase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63a8a92de90cc668466361a42e243d427032137b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63a8a92de90cc668466361a42e243d427032137b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenAliasing`](../../../../MeasureAndIntegration/CenteredMobiusLogGreenAliasing.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenPhaseAntiderivative](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/declarations/greenphaseantiderivative.md) | 16 | `declaration-track:70b92abd80101b36061cdae135af5f71e0dfa6360050f3eb49d26724f3f26967` |
| 2 | `theorem` | [greenPhaseAntiderivative_hasDerivAt](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/declarations/greenphaseantiderivative-hasderivat.md) | 20 | `result-track:902fa07c87252f58d90d6a4a8d2aaae42fc4a2c6643cd839f97a672baff9145a` |
| 3 | `def` | [greenReciprocalComplex](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/declarations/greenreciprocalcomplex.md) | 27 | `declaration-track:3e1af82ca2cd67e6b4c99f6a319bc8a2c94bcf1b5407e400cc777b42dcd0b42d` |
| 4 | `theorem` | [greenReciprocalComplex_hasDerivAt](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/declarations/greenreciprocalcomplex-hasderivat.md) | 30 | `result-track:ffcbc752ad8ca6c5c76c874fa9bd34ea10f8e6f85bc25cc769376fc7f6f28ab6` |
| 5 | `theorem` | [greenContinuumPhaseIntegral_ibp](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/declarations/greencontinuumphaseintegral-ibp.md) | 45 | `result-track:168c986cf17e7b65511c8402d974ad36432f5a744f4d53cdcc9e1374993b1efc` |
| 6 | `theorem` | [norm_greenContinuumPhaseIntegral_le](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/declarations/norm-greencontinuumphaseintegral-le.md) | 71 | `result-track:e469de23bdc5309e0ab52c689c7e8b3c259f277a6b7cfc58d3c489f55e6da45f` |
| 7 | `theorem` | [greenContinuumConstantIntegral_eq_log_two](../../../../MeasureAndIntegration/CenteredMobiusLogGreenContinuumPhase.lean/declarations/greencontinuumconstantintegral-eq-log-two.md) | 123 | `result-track:f1c3a48f0f8bd9397c963005486d42d0df35afca9f3751b5292853bf9bceb1c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dc174e782c0c71586177eae09d5c4e17bd1fb938d07ee36058ef914fe0a901d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
