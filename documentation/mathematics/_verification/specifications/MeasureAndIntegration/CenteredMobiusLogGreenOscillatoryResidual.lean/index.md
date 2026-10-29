# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenOscillatoryResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "609c2965a5ad5ffcf85ca047484c95a1f3f402ba",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `609c2965a5ad5ffcf85ca047484c95a1f3f402ba`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteHeadComparison`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenFiniteHeadComparison.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourierModeValue_factor_phase_sub_one](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/declarations/fouriermodevalue-factor-phase-sub-one.md) | 16 | `result-track:8147f46c7970ea17666f826c5005c64cc64b56f1d441969de41b159e9ce0993a` |
| 2 | `def` | [greenConstantHarmonicResidual](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/declarations/greenconstantharmonicresidual.md) | 27 | `declaration-track:21a17959df75a576f3f625b8b84f89a8fcf709f6a497d0097366667afe3c4f56` |
| 3 | `def` | [greenPhaseHarmonicResidual](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/declarations/greenphaseharmonicresidual.md) | 34 | `declaration-track:9108e1752293770bb9056f1613a3ca6ee49258b49a67d8809e2a04f690e586bf` |
| 4 | `theorem` | [greenCenteringResidual_eq_phase_sub_constant](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/declarations/greencenteringresidual-eq-phase-sub-constant.md) | 45 | `result-track:e849106215ba50c810a48c7709bed2e52f874f0f6cc36dfb0906106efbe0c887` |
| 5 | `def` | [GreenMeshAliasing](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/declarations/greenmeshaliasing.md) | 63 | `declaration-track:e18630c41c7dc19c9ff3ed39194a2bc270140f6c43c5cdce3ed887bad80e90d2` |
| 6 | `def` | [GreenMeshNonaliasing](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/declarations/greenmeshnonaliasing.md) | 67 | `declaration-track:571f6afe4cfbc39b37ac80437492bcc75a7d5c28bd633b1b69f24543d409d6bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb1b816d003abf673e925de2b98acdbc0550454e5c63d3e5822e09329dbc50fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
