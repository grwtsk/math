# Verification target: Uniform Mul Action

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40436dc51b5620dd4136bb8e49a83d44e593b414",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40436dc51b5620dd4136bb8e49a83d44e593b414`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniformContinuousConstVAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuousconstvadd.md) | 34 | `declaration-track:d1aef12682af7db430d5184a48fd8b28cfe3e2415715c0043eedba8fe2083aad` |
| 2 | `class` | [UniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuousconstsmul.md) | 40 | `declaration-track:2bfb00de6062f3826f2eaecfb7d24e172a023a2fe475ad719faa4804ef024114` |
| 3 | `instance` | [AddMonoid.uniformContinuousConstSMul_nat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/addmonoid-uniformcontinuousconstsmul-nat.md) | 47 | `declaration-track:bb285d990ace86f557dd1699a4575037b98f2416afdaef5b17d6aa04697860de` |
| 4 | `instance` | [AddGroup.uniformContinuousConstSMul_int](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/addgroup-uniformcontinuousconstsmul-int.md) | 51 | `declaration-track:0adab0f307fbcc0f13d911e880e14ad5500f6409118cfe1f090d5b59078059b6` |
| 5 | `theorem` | [uniformContinuousConstSMul_of_continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuousconstsmul-of-continuousconstsmul.md) | 58 | `result-track:b7a2c8ed8856bd16af496a6c94bc0bbd9206628f7b614c4f5adbc476a479eaf1` |
| 6 | `instance` | [Ring.uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/ring-uniformcontinuousconstsmul.md) | 66 | `declaration-track:a24f5e49feb4c46c331ae740d46b8ae290fcafc1a876e4a40a56275e7ef9319b` |
| 7 | `instance` | [Ring.uniformContinuousConstSMul_op](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/ring-uniformcontinuousconstsmul-op.md) | 71 | `declaration-track:03f3f2de33f64ae6d4e79c474a4847dbe2755fd050cd98ad1daf1020e59f89cd` |
| 8 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instance-source-edition-4.md) | 80 | `declaration-track:c802791f3c9845e80d15bcd1c969ef4053305c9b2ab5c2f31b2545620a5207e8` |
| 9 | `theorem` | [UniformContinuous.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuous-const-smul.md) | 87 | `result-track:ca312d50295f7309ea2724d0f1709abb08f2a1749ef15376fbc5b13d81690523` |
| 10 | `lemma` | [IsUniformInducing.uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/isuniforminducing-uniformcontinuousconstsmul.md) | 92 | `result-track:b90288cb27487830a912873de221f2a3d3a69d3859e28376d254bbfb4ae7b3e6` |
| 11 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instance-source-edition-6.md) | 103 | `declaration-track:f305314019b04a0e2811e3e725962a835126fe2b7a45bea4831ec3d24d27f366` |
| 12 | `instance` | [MulOpposite.uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/mulopposite-uniformcontinuousconstsmul.md) | 108 | `declaration-track:361da9d2ec26f121ad03c9be0211137d43271e9ae1e002613e89e345ff84dacc` |
| 13 | `instance` | [IsUniformGroup.to_uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/isuniformgroup-to-uniformcontinuousconstsmul.md) | 116 | `declaration-track:4059efc81df58ccb6670269700b470b7848ec88dea48c2bb1ca26367def164e5` |
| 14 | `theorem` | [UniformContinuous.const_mul'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuous-const-mul.md) | 124 | `result-track:051240dbbe27a0fbea03376b8920bedc1c059e773a177b3abdbff713b87c1892` |
| 15 | `theorem` | [UniformContinuous.mul_const'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuous-mul-const.md) | 128 | `result-track:926ca903f1c4d9f7d6a6a7455689cf33dafded07b8cba5e6aa6d3fc15309838d` |
| 16 | `theorem` | [uniformContinuous_mul_left'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuous-mul-left.md) | 132 | `result-track:988223096da59c439724cc63c90f9a9a088dfc88f658ecf3afc28eaf211de4a8` |
| 17 | `theorem` | [uniformContinuous_mul_right'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuous-mul-right.md) | 136 | `result-track:06d38fb7dd7f04c92303a511ba43cfc1b63500667bc72cf089a15b7d24db88c4` |
| 18 | `theorem` | [UniformContinuous.div_const'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuous-div-const-source-edition-2.md) | 140 | `result-track:d0065cf59e3a8757c685bb2cb7c4c00df04db928dcbacc9c61f9ecbde5844b75` |
| 19 | `theorem` | [uniformContinuous_div_const'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/uniformcontinuous-div-const.md) | 146 | `result-track:292b593f5e41ae4effbf50314ffbdd83840bb05da8daad6940d6d32017dd6c05` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instance-source-edition-5.md) | 162 | `declaration-track:eba662ff14dca66c453a30eeb5dac5d7a33db114e02fab4d37eb1ec82694d621` |
| 21 | `theorem` | [smul_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/smul-def.md) | 166 | `result-track:fe9e6b554e8647aaf82192984bd1477b6ba6db0b6451a44d213afc70998e9f75` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instance-source-edition-2.md) | 170 | `declaration-track:821ae98e0458b64582648cc883c0196c47a727eb3ca1e3bb87717c7fb2afab84` |
| 23 | `instance` | [instIsScalarTower](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instisscalartower.md) | 174 | `declaration-track:1b6a09966efa597e9ec893d4c6a8847a84578b9e403e3f61f4ea20ffd02969e3` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instance-source-edition-7.md) | 183 | `declaration-track:f7dae3b26d136a1a41a4080daced09cee3ab7f8fce2ea44704820730fb73639a` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instance-source-edition-3.md) | 193 | `declaration-track:bf6b40c530bb5746a42362ef86fbbb4055b3dfded5d0d4a44fa3cc5ab434b377` |
| 26 | `theorem` | [coe_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/coe-smul.md) | 200 | `result-track:c2f49809f6f8628c82d2947fbf345ea50a68d8052eb509c9bfdc5b95efadd4c3` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformMulAction.lean/declarations/instance.md) | 206 | `declaration-track:2b48534abcf3cc47de542dbb5416c8ba1fdb0dabd086c7b130267bc68ac9e20d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ead649ec1e85e41261620424a5422b69e957fa3ab18ef676efa2a7834d8b4155 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
