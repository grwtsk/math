# Verification target: GRWTSK.Analysis.Complex.DampedPhaseDifferential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff077710b64c311d4310a2e870539df7bb02d6b0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/DampedPhaseDifferential.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DampedPhaseDifferential.lean/index.md) · [Full source](../../../../GeneralTopology/DampedPhaseDifferential.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff077710b64c311d4310a2e870539df7bb02d6b0`.

Source path: `GRWTSK/Analysis/Complex/DampedPhaseDifferential.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/DampedPhaseDifferential.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.CubicWavePhase`](../../../../GeneralTopology/CubicWavePhase.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat`](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rotation_hasDerivAt](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/rotation-hasderivat.md) | 25 | `result-track:36797aef0211038e92242198e6de40a2bff4b7d14324240e2576570ca032ef8f` |
| 2 | `theorem` | [decay_hasDerivAt](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/decay-hasderivat.md) | 36 | `result-track:db275970d45fb7e9245c0eeb9845d1d5cc1e5298ede43d724b504215877c3b5c` |
| 3 | `def` | [profile](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/profile.md) | 42 | `declaration-track:7bf707bebed5169105f36ca80b41296544ab729b6f75baaed42057da3d60f46d` |
| 4 | `def` | [residual](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/residual.md) | 46 | `declaration-track:14a2633edbd3131b39af4500adfb4f8c3b2c77e4bd075758cbd2c6cabcb8dbf3` |
| 5 | `theorem` | [profile_continuous](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/profile-continuous.md) | 50 | `result-track:3391789fe47c07cea0903fe6309fe2d5a240d9ac8e2c90697d6974d75ba73b85` |
| 6 | `theorem` | [profile_hasDerivAt](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/profile-hasderivat.md) | 57 | `result-track:cf99aa43115a9aba2db0752bf3323d9d2af8c10e88f10319b5e9341593c196ff` |
| 7 | `theorem` | [profile_angle_derivative](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/profile-angle-derivative.md) | 70 | `result-track:2bb6f2f39f697f99b531497f4e1c47958afc7dbf6a7668cfb3e9a4d1f97d5658` |
| 8 | `theorem` | [profile_heat_derivative](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/profile-heat-derivative.md) | 77 | `result-track:be24165e0aa3979131a062baaaaf4a3d91893bfb6083e18ecb0d311bbb6a8194` |
| 9 | `theorem` | [residual_hasDerivAt](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/residual-hasderivat.md) | 84 | `result-track:84bd347dbf32bd77ccf91169f4d6e5705b33749553a53117a15c3a1b98be3169` |
| 10 | `theorem` | [squared_decay_hasDerivAt](../../../../GeneralTopology/DampedPhaseDifferential.lean/declarations/squared-decay-hasderivat.md) | 95 | `result-track:d5ae3b24a4c768e25f029985a96f4f64c66629afde8088c4fbec9b9c9131a787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83ad607ec49e0012274e22510aeb030d735dbc636e502fd10953d2e0b175cfc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/DampedPhaseDifferential.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/DampedPhaseDifferential.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
