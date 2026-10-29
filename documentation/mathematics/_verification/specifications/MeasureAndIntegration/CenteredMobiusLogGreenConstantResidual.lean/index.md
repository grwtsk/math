# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenConstantResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19deb489e4896b0560fb41a9b47e3e30bf038728",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19deb489e4896b0560fb41a9b47e3e30bf038728`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenOscillatoryResidual`](../../../../MeasureAndIntegration/CenteredMobiusLogGreenOscillatoryResidual.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalOnePlus](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/reciprocaloneplus.md) | 16 | `declaration-track:079d1a008a4c2f20e66a47f82fb15eac65a11883fbe459e137173171f2a21843` |
| 2 | `theorem` | [reciprocalOnePlus_antitoneOn](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/reciprocaloneplus-antitoneon.md) | 18 | `result-track:734568e3f095e67fbdb82b7479354a5dee890dab9fbc2897055ced49ad957fad` |
| 3 | `theorem` | [reciprocalOnePlus_zero](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/reciprocaloneplus-zero.md) | 24 | `result-track:9fa36e230932fc89529f1476927563adb8725513d395da76bf7976a2cd9d5f93` |
| 4 | `theorem` | [reciprocalOnePlus_one](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/reciprocaloneplus-one.md) | 27 | `result-track:e0b4c4b3ec11fae48cf92f9f7cdd5de16eb6f873b62a3e624034cf6f8b5e5536` |
| 5 | `def` | [greenConstantHarmonicResidualReal](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/greenconstantharmonicresidualreal.md) | 31 | `declaration-track:24d84fd7dd7a669743bf1efa7923492011775a7a460cb0176c5182512905d008` |
| 6 | `theorem` | [greenConstantHarmonicResidual_eq_ofReal](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/greenconstantharmonicresidual-eq-ofreal.md) | 37 | `result-track:d49b2e972fd6f07d805239a52941805eab718fb28e712896a6297efd9cace60b` |
| 7 | `theorem` | [greenConstantHarmonicResidualReal_nonneg_le](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/greenconstantharmonicresidualreal-nonneg-le.md) | 52 | `result-track:92cb4667d908623a3abe0a00823d5b48267754cf875cf04db00b0513247439e3` |
| 8 | `theorem` | [norm_greenConstantHarmonicResidual_le](../../../../MeasureAndIntegration/CenteredMobiusLogGreenConstantResidual.lean/declarations/norm-greenconstantharmonicresidual-le.md) | 107 | `result-track:dadc6654752833b177475eb7845a2205ac1a7517a30176d910ff430c62b6397d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d02fcea6531cde7d2421b97f2236d7028a9b558926bebcff857e213bebc4d4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
