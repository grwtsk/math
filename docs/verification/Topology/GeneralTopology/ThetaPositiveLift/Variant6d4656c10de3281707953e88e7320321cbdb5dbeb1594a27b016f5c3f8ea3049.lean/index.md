# Verification target: GRWTSK.Topology.GeneralTopology.ThetaPositiveLift.Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51634ea6266d194951610f866a17c80cdfc1c3f6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51634ea6266d194951610f866a17c80cdfc1c3f6`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiPhiIBP` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaADecayConstant](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaadecayconstant--a236aa9e5fbf97283709afcb.md) | 28 | `declaration-track:a236aa9e5fbf97283709afcb36af0ad0be06bf88f4466e8607f9354006c79fa0` |
| 2 | `def` | [thetaADerivDecayConstant](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaaderivdecayconstant--543dc6f5229f3aea39ea9246.md) | 32 | `declaration-track:543dc6f5229f3aea39ea92460ada6837cc39396a439b297637a0c88f584c77d0` |
| 3 | `theorem` | [hurwitzF_nat_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/hurwitzf-nat-nonnegative--4b841e1cedf1a5b472465b26.md) | 36 | `result-track:4b841e1cedf1a5b472465b2604569f0a31675595c8921e74da9c7386ef64d5ca` |
| 4 | `theorem` | [thetaADecayConstant_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaadecayconstant-nonnegative--28e29a3df4096e685241bce3.md) | 43 | `result-track:28e29a3df4096e685241bce34d05c7e6ed08f8c0086d27ec718140dc7167da1b` |
| 5 | `theorem` | [thetaADerivDecayConstant_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaaderivdecayconstant-nonnegative--5d0c7caf535929ae1ddc0bc4.md) | 47 | `result-track:5d0c7caf535929ae1ddc0bc47f0cf542632a5e5eb39d6677219e5b6df40a17ba` |
| 6 | `theorem` | [f_nat_le_half_split](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/f-nat-le-half-split--452b23d89b9b9bc61687ea1a.md) | 55 | `result-track:452b23d89b9b9bc61687ea1a9770632325e7d7977ac7b27ef9889fad22219ccc` |
| 7 | `theorem` | [F_nat_le_half_split](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/f-nat-le-half-split--662c5d1bc18c13c19de82ccb.md) | 89 | `result-track:662c5d1bc18c13c19de82ccb25c12ed975d9bbd4b7bf98b521720d0dbf36ab89` |
| 8 | `theorem` | [thetaA_eq_F_nat](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaa-eq-f-nat--02145b6e161b9214e9f1a8de.md) | 104 | `result-track:02145b6e161b9214e9f1a8dead6eaa82bed9d78f492cc831ec470d32a4129310` |
| 9 | `theorem` | [thetaADerivSeries_eq_F_nat](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaaderivseries-eq-f-nat--91162d94ff770296743a87b2.md) | 115 | `result-track:91162d94ff770296743a87b2df6d075c0533189c4731afbfb96c759b5575e2c4` |
| 10 | `theorem` | [thetaA_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaa-nonnegative--697b5a3dccafd9788ed8b6f5.md) | 133 | `result-track:697b5a3dccafd9788ed8b6f5174fceb3c850979c3427877e89ed6e3f3150e005` |
| 11 | `theorem` | [thetaA_le_superexp](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaa-le-superexp--b1327e8a812a1b56ef0cb4f2.md) | 140 | `result-track:b1327e8a812a1b56ef0cb4f2ea380e7f8ab26b983ceac18b8fbbce9738dcb8d7` |
| 12 | `theorem` | [thetaADerivSeries_norm_le_superexp](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaaderivseries-norm-le-superexp--44476e1a8b3dcdebbf428249.md) | 159 | `result-track:44476e1a8b3dcdebbf428249bed6e24a6ca2b8fb7eafa4d0cf9b14255103c734` |
| 13 | `theorem` | [eventually_linear_le_half_pi_exp](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/eventually-linear-le-half-pi-exp--a9b72dc85a5114cc5ae81add.md) | 204 | `result-track:a9b72dc85a5114cc5ae81add0cf357da5a1fbc0ffc8b497bb315735665f1cc5a` |
| 14 | `theorem` | [thetaA_norm_le_exp_rate_eventually](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaa-norm-le-exp-rate-eventually--044ab7c71fc5deaa6c2815b2.md) | 223 | `result-track:044ab7c71fc5deaa6c2815b2d2fce2e2834e660702a254d1b9d05dde61e46022` |
| 15 | `theorem` | [thetaADerivSeries_norm_le_exp_rate_eventually](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaaderivseries-norm-le-exp-rate-eventually--a2ad03b7e1e2c62d57a78cf5.md) | 235 | `result-track:a2ad03b7e1e2c62d57a78cf5e2d4f6d5c527c006770522b9f7b0918a23b5964d` |
| 16 | `theorem` | [thetaExpKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaexpkernel-norm-le--472287ff4149540c9cc46ad0.md) | 248 | `result-track:472287ff4149540c9cc46ad0973c463986d713a23d43c04b7b6974dc2a4d812d` |
| 17 | `def` | [thetaBoundaryDecayConstant](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaboundarydecayconstant--b64e5d460e293bc212c32d8d.md) | 257 | `declaration-track:b64e5d460e293bc212c32d8dc35258c9d7374533013d367f7225add6f0d14e70` |
| 18 | `theorem` | [thetaBoundaryDecayConstant_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaboundarydecayconstant-nonnegative--cc67b226f2d102501f40ac6e.md) | 261 | `result-track:cc67b226f2d102501f40ac6e6b5c445a8f85afb6d82e9680a95e1115bbb37841` |
| 19 | `theorem` | [thetaExpBoundary_norm_le_eventually](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaexpboundary-norm-le-eventually--cd5824dfaa425c29379ecf77.md) | 269 | `result-track:cd5824dfaa425c29379ecf7723879caec08ae635a9825a196767c93d498d1266` |
| 20 | `theorem` | [thetaExpBoundary_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetaexpboundary-tendsto-attop--6af99e65d6689ffca5e62123.md) | 321 | `result-track:6af99e65d6689ffca5e621231e855a51a9e0ebf33c25f03f7be3136b3caadf0f` |
| 21 | `theorem` | [thetaCoshBoundary_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetacoshboundary-tendsto-attop--41ae67bfc8c32e4e5c17b84e.md) | 335 | `result-track:41ae67bfc8c32e4e5c17b84e0c3aa224e227b43e32e84cc12c10f362d1d60741` |
| 22 | `theorem` | [thetaCoshBoundary_explicit_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/declarations/thetacoshboundary-explicit-tendsto-attop--5f7e9c83ffcdcc14d6db1013.md) | 344 | `result-track:5f7e9c83ffcdcc14d6db1013fdb49263f9914b6a901105d88c90fb1453e141e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
