# Verification target: GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b50b0dd31cfcbb3e3faa04d622eefbe7eb9c544",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/index.md) · [Full source](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b50b0dd31cfcbb3e3faa04d622eefbe7eb9c544`.

Source path: `GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Triple](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/triple.md) | 25 | `declaration-track:2c48cd50eb0ef92db91a73b92a41165b32bfebcbb970a5112e8f256009e66473` |
| 2 | `def` | [mean](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/mean.md) | 27 | `declaration-track:8567dba0b701721d9686d8c7fed301f78e88d2bcea38eee942d59b177c778dd8` |
| 3 | `def` | [relax](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/relax.md) | 29 | `declaration-track:abade3349fc56429ee5eca91ad27bb079db00796e92666f1b3bf7b35420a5f6f` |
| 4 | `def` | [decay](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/decay.md) | 32 | `declaration-track:7f3a51e67c1fc1507518f8bcfc70103342a6c1f0ec52793e87f9bce580d0966f` |
| 5 | `def` | [flow](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/flow.md) | 34 | `declaration-track:8ecf90ee487dca2852aabd6bdb4dce316210241ae597e70049f5af74fd81a3ad` |
| 6 | `theorem` | [mean_relax](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/mean-relax.md) | 36 | `result-track:6ccec546d4b437ad2955b8e0c99a57abb5a6b3be222f9b7115f6e9eb07b4a1dd` |
| 7 | `theorem` | [relax_one](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/relax-one.md) | 40 | `result-track:a286af81efa4603a6493fa4042e3de2ad5b3b903dd0c6acb78a7952bec5d4c76` |
| 8 | `theorem` | [relax_comp](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/relax-comp.md) | 46 | `result-track:cf6fa7adebec8d63732d35d65e77f00c4642ffc27735b526ca0e46fb4bc43387` |
| 9 | `theorem` | [decay_zero](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/decay-zero.md) | 51 | `result-track:6c6598247412687973410264d58e0c3aefd42f13237a4c4b5e8b51e60a23b831` |
| 10 | `theorem` | [decay_add](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/decay-add.md) | 53 | `result-track:2e8619d00a9d6bef49ef06492fe4ea62ef8577b7dc468a0929e432342f395d79` |
| 11 | `theorem` | [decay_pos](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/decay-pos.md) | 56 | `result-track:a6cc4d1a33cff95bcae99f69acc06d6907eee411dd8372a3c4b1ec23af7207c9` |
| 12 | `theorem` | [decay_square](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/decay-square.md) | 59 | `result-track:2679ce51d1ee775f3884fad74c652f6ac1c0f83812e38796033abd6571b4fe76` |
| 13 | `theorem` | [flow_zero](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/flow-zero.md) | 64 | `result-track:24be1357a8285b75cc156cf8f8923b01ff12bfda491793bca12e2348d80dcd2e` |
| 14 | `theorem` | [flow_add](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/flow-add.md) | 66 | `result-track:64a4d3e09ef9de795f39eddc9b0b4a4463af76946e7a5d638fa3eacf1daaf8c1` |
| 15 | `theorem` | [mean_flow](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/mean-flow.md) | 69 | `result-track:986c1ca70f8619ec8eb86996da417f029b42b80489fbfce529cc7a02b70db9c0` |
| 16 | `theorem` | [flow_continuous](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/flow-continuous.md) | 72 | `result-track:f4dae21042ddf1d4bf107c0870c8808d7f5a7bac93d6bc904e9c91947926466f` |
| 17 | `def` | [generator](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/generator.md) | 78 | `declaration-track:e9ce6e2dd20d46bfbd706fc0a1c6aaa648470f78725b002b2dbdd1d56c545728` |
| 18 | `theorem` | [flow_derivative](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/flow-derivative.md) | 81 | `result-track:afe2ae0e57fdf4719dd7f9ff4616c157e6550171e50f9d3889324a74c813b882` |
| 19 | `def` | [phaseEnergy](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/phaseenergy.md) | 87 | `declaration-track:8b2d9ff1bd3f44c8dae069cb99ee1e5d581863b09ad6fa3d4b8be8638b7ff7f6` |
| 20 | `def` | [residualEnergy](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/residualenergy.md) | 89 | `declaration-track:73b50fda7ce2de9a65b95e7b2301511b24d9d2ef8cad36a3fe7c316f919e5320` |
| 21 | `def` | [totalEnergy](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/totalenergy.md) | 92 | `declaration-track:3746429238caac572a4124a7aa94d0365bd614b42e2639909693fa55696eac1b` |
| 22 | `def` | [defectEnergy](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/defectenergy.md) | 94 | `declaration-track:7e69615bd68016c7986ee20fd19acb8807665db0ab173c5c66db39524de365c6` |
| 23 | `theorem` | [energy_decomposition](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/energy-decomposition.md) | 96 | `result-track:20540cd7ce4308d3122aa2e5b9c7d39f0fc7adb854d3a22fd98e1d094e990276` |
| 24 | `theorem` | [edge_energy](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/edge-energy.md) | 102 | `result-track:9b8027ae08d4ca1ccb7d76976d485b4b331635d22521b09ac4209e6fb6125b19` |
| 25 | `theorem` | [filled_cell_gap](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/filled-cell-gap.md) | 108 | `result-track:d5f734c249dff59a083decbd2750b60bb4fa62c937e8385481529ccc83ed1d23` |
| 26 | `theorem` | [defect_nonneg](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/defect-nonneg.md) | 115 | `result-track:653b6d5d09b6fa25f4233d837ec84f042af5ff6c12eb782644f939196b5f546f` |
| 27 | `theorem` | [defect_zero_iff](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/defect-zero-iff.md) | 121 | `result-track:d58829a05e8596f8f27dba50d6ae49ef9736a0dfa45c5fe453c0e38b9dbc1324` |
| 28 | `theorem` | [defect_relax](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/defect-relax.md) | 140 | `result-track:ec419998672e3416903e74a96e52d10657e6b2a7d54aed0db1738e3fb06d2a04` |
| 29 | `theorem` | [defect_flow](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/defect-flow.md) | 145 | `result-track:1d5652bc6b3fa123ff281c0a6b8a78bedfa81be4fe24069ab63b39c4ceab5217` |
| 30 | `theorem` | [total_flow](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/total-flow.md) | 151 | `result-track:9fd92f9705d55be9584eee39bd7e50fdfb415d988dd3a7f456dd3eeefb530162` |
| 31 | `theorem` | [defect_contraction](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/defect-contraction.md) | 157 | `result-track:cd8a0a43278c5e25ff791b93dc9cad2fcde7fcd5087052f1edc2051bd077aed5` |
| 32 | `theorem` | [finite_time_zero_iff](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/finite-time-zero-iff.md) | 168 | `result-track:371679d6e7bd32d7ec90e0c6a9eae0328f1e12108f1b2af76c00274dfcfab43e` |
| 33 | `theorem` | [nonconstant_fixture](../../../../GeneralTopology/ThreePhaseCoefficientHeat.lean/declarations/nonconstant-fixture.md) | 174 | `result-track:d157eaba9a0bb2faba1f214cb340638c7240ef352fd818ab550eff28b8064c82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=feb76489498a9aead26382b1de8e5815eb53e14619de64bd98aee8a1bc19bb43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
