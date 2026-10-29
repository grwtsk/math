# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c04a47d545871bc81300c88f58d3e64061c74a3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadrature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c04a47d545871bc81300c88f58d3e64061c74a3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadrature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadrature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFourierBridge`](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFourierBridge.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenFourierBackgroundIntegrand](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/declarations/greenfourierbackgroundintegrand.md) | 16 | `declaration-track:e10f54764b3a13f724ea715f111243f894320b06cbfdf65d6f40e767457886e2` |
| 2 | `def` | [greenRightMeshPoint](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/declarations/greenrightmeshpoint.md) | 20 | `declaration-track:e997ff7d6b68302624f4eea4758db1c80dd70736de15c946ce87b0d0f40f20de` |
| 3 | `def` | [greenFourierRightRiemannSum](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/declarations/greenfourierrightriemannsum.md) | 23 | `declaration-track:86e3d6f0572fc019bea013fc691ccfb37f599045903ef9200eb39ba28c860621` |
| 4 | `theorem` | [greenDiscreteHarmonicFourierCorrection_eq_rightRiemannSum](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/declarations/greendiscreteharmonicfouriercorrection-eq-rightriemannsum.md) | 30 | `result-track:79b4f5a106837eeec705f25c11890b13c184b461f507f23d213e6a7e05f87b4a` |
| 5 | `theorem` | [greenCenteringResidual_eq_integral_sub_rightRiemannSum](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/declarations/greencenteringresidual-eq-integral-sub-rightriemannsum.md) | 76 | `result-track:2ac0d412d2b1db116fc2055c350ac73474a30e38ca1ced673c47362e41bd62d0` |
| 6 | `def` | [greenFourierQuadratureCellError](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/declarations/greenfourierquadraturecellerror.md) | 85 | `declaration-track:f58e4606c1432da6efae0b3ed130cb6053e45de11fb79d80b9c3ae666d313717` |
| 7 | `def` | [greenFourierQuadratureCellErrorSum](../../../../MeasureAndIntegration/CenteredMobiusLogGreenQuadrature.lean/declarations/greenfourierquadraturecellerrorsum.md) | 96 | `declaration-track:f5548efe0e569cfda497cde3585bf747c7afb27da49f17306d68c35bfcac315f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ad3c65a102521814ab61371dd8df893b7735fa3c95cdb1c21099c959b281043 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadrature.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadrature.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
