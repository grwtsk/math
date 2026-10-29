# Verification target: GRWTSK.Analysis.Complex.CubicWavePhase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4200dba92305dbee10e29e425ad380843a7764f5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/CubicWavePhase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CubicWavePhase.lean/index.md) · [Full source](../../../../GeneralTopology/CubicWavePhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4200dba92305dbee10e29e425ad380843a7764f5`.

Source path: `GRWTSK/Analysis/Complex/CubicWavePhase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/CubicWavePhase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [omega](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omega.md) | 21 | `declaration-track:4ba8180d9c6b6103d9a50df83fd0cbe588eab0fcb72233d3c493a63257d558c1` |
| 2 | `theorem` | [omega_sum](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omega-sum.md) | 23 | `result-track:1602cf074f835ebc61f97ce2e8bbf09d97abbe62ea63c9449d9ebae10bf0e209` |
| 3 | `theorem` | [omega_cube](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omega-cube.md) | 27 | `result-track:618253673a5f9e8da891c48db94e30d7ba7e8daae8652ed0204a4a4f477bed55` |
| 4 | `theorem` | [omega_im_pos](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omega-im-pos.md) | 33 | `result-track:9a77987d7ff9cb428f98ba346bd8a764a12b3ccf7ef4203afe691797456ad0a6` |
| 5 | `theorem` | [omega_not_real](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omega-not-real.md) | 38 | `result-track:de3f58d0b5fa1102c45cd6c40a251d13902d765252f831e79c9a2e7982c4ef76` |
| 6 | `theorem` | [omega_ne_one](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omega-ne-one.md) | 45 | `result-track:36df7015b9efd5fdfc42e5f95f7380bc71271f8adb02e2509c7b17e984fbc820` |
| 7 | `theorem` | [omega_normSq](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omega-normsq.md) | 50 | `result-track:dc91a962392a74e2be73e6ab33387dedb5d66dc6b53d271119bdea1ecf01cc88` |
| 8 | `def` | [omegaUnit](../../../../GeneralTopology/CubicWavePhase.lean/declarations/omegaunit.md) | 56 | `declaration-track:9299ff6c38732892dc82cb8cbe6fb104a7da1d80a563ca6d6641c47d361cf48b` |
| 9 | `def` | [sourcePhase](../../../../GeneralTopology/CubicWavePhase.lean/declarations/sourcephase.md) | 63 | `declaration-track:0b2a64638ce6c8ba24194dc14919b0fda6051f9130edfb32c1e929bf7bf6df14` |
| 10 | `theorem` | [sourcePhase_normSq](../../../../GeneralTopology/CubicWavePhase.lean/declarations/sourcephase-normsq.md) | 65 | `result-track:c827b6707e6a8292e7695b82ed954193dd61c8388c8e3208140117434df3b15f` |
| 11 | `def` | [rotation](../../../../GeneralTopology/CubicWavePhase.lean/declarations/rotation.md) | 70 | `declaration-track:32c3aa76cfaae158a5e20431514fcf94c219d40128fc2539b119575a314699ee` |
| 12 | `theorem` | [rotation_zero](../../../../GeneralTopology/CubicWavePhase.lean/declarations/rotation-zero.md) | 72 | `result-track:cfd1430996a12dc4ad774fa3dce189a1205ed7415e1b5f13ff78a16b81da97c3` |
| 13 | `theorem` | [rotation_add](../../../../GeneralTopology/CubicWavePhase.lean/declarations/rotation-add.md) | 74 | `result-track:88b4635d8551a2e304a4fde748c94bc2e1a24bce8319213db6f930489470f75d` |
| 14 | `theorem` | [rotation_normSq](../../../../GeneralTopology/CubicWavePhase.lean/declarations/rotation-normsq.md) | 77 | `result-track:acf7a2233b7866f1304a38c19be7b904757cab44aaa3caff62a3594f2e06baec` |
| 15 | `theorem` | [rotation_period](../../../../GeneralTopology/CubicWavePhase.lean/declarations/rotation-period.md) | 81 | `result-track:dce11d0b22945040bd141c6ef0b91904b1f952a2da598573291078c56cba38e3` |
| 16 | `theorem` | [rotation_ne_zero](../../../../GeneralTopology/CubicWavePhase.lean/declarations/rotation-ne-zero.md) | 84 | `result-track:f0b504a1a51157e2d70573e8246eef75ac77b005cd3acd43b13441596e1abc9c` |
| 17 | `theorem` | [rotation_continuous](../../../../GeneralTopology/CubicWavePhase.lean/declarations/rotation-continuous.md) | 91 | `result-track:74b455c8e6a93a1b971be6fd3e6ec5ea01ca84f1d97e45dcf39e9c5732937872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57b0083f0f2ff0a6ceba66da3ecb5d1e95e1354e5bb282d64b8c9f3e933c179e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/CubicWavePhase.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/CubicWavePhase.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
