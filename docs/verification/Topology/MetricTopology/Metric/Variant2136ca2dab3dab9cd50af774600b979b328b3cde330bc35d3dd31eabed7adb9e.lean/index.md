# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49b8f8a80e6c4ab8b0dd447fa708525d276f186d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49b8f8a80e6c4ab8b0dd447fa708525d276f186d`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/instance--b361d4851a35e7ac3a4674c7.md) | 46 | `declaration-track:b361d4851a35e7ac3a4674c729d50f63db4d2cc90a5b4b9c04baa43b1ae1eb71` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-eq--004c3d2bc742d3163e2f5f41.md) | 49 | `result-track:004c3d2bc742d3163e2f5f411b165eea7fb636206588140fa5c4d8e3e0960f29` |
| 3 | `theorem` | [sinh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/sinh-half-dist--60858c46a55db53e412d688d.md) | 53 | `result-track:60858c46a55db53e412d688d6f944475fe7c8a85913ce1442e043347d6a1b169` |
| 4 | `theorem` | [cosh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/cosh-half-dist--8f42e39be18fc90cafd885e9.md) | 58 | `result-track:8f42e39be18fc90cafd885e9c81b6bffbb127b4362572f82026536dec7f40846` |
| 5 | `theorem` | [tanh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/tanh-half-dist--06d4fdb33aa67b543c26de68.md) | 71 | `result-track:06d4fdb33aa67b543c26de6842abcc991f4c36d95fd3d4632e9f025aa68c713e` |
| 6 | `theorem` | [exp_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/exp-half-dist--2a7e8b0fbe6de0381ac1f8e0.md) | 77 | `result-track:2a7e8b0fbe6de0381ac1f8e08dab2e16838e8492d40edcfa94e481571c7df79f` |
| 7 | `theorem` | [cosh_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/cosh-dist--92f8a2ea15c2c4e1ac46ff80.md) | 82 | `result-track:92f8a2ea15c2c4e1ac46ff80b38a7337b30a6b0719c2634bbc5545f096bdd423` |
| 8 | `theorem` | [sinh_half_dist_add_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/sinh-half-dist-add-dist--a1c359333bc78b7b88611a11.md) | 88 | `result-track:a1c359333bc78b7b88611a11184c9f63a5d28cb31ee94e8b4dbab6e975c57e72` |
| 9 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-comm--92353eda8b0a9d7833ab3465.md) | 99 | `result-track:92353eda8b0a9d7833ab3465b3ed08d1ab345dbb1544f9422e000e470c8d7044` |
| 10 | `theorem` | [dist_le_iff_le_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-le-iff-le-sinh--505c9cc6148b81c99148aa5b.md) | 103 | `result-track:505c9cc6148b81c99148aa5b828ebc927c1e20711d42ece6af72fe15aefd5d26` |
| 11 | `theorem` | [dist_eq_iff_eq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-eq-iff-eq-sinh--364099986a5b4046c8b7831f.md) | 108 | `result-track:364099986a5b4046c8b7831fe53ba72629fd4efd59fb45feef203a286b18ea4f` |
| 12 | `theorem` | [dist_eq_iff_eq_sq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-eq-iff-eq-sq-sinh--5d9987f73499a38062e691b5.md) | 113 | `result-track:5d9987f73499a38062e691b57c37c9dcb54c38f00a39285ec9f78bd993c4ebba` |
| 13 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-triangle--27a3a2437bb7cd4b26e2a1d7.md) | 122 | `result-track:27a3a2437bb7cd4b26e2a1d7f19879220009c82a5d20c15d8a7bd8035a1adf0c` |
| 14 | `theorem` | [dist_le_dist_coe_div_sqrt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-le-dist-coe-div-sqrt--3525af7a1dc99fcb653bd7ea.md) | 131 | `result-track:3525af7a1dc99fcb653bd7eab933ef13b83765517a1b3bf9dfb94558b7066246` |
| 15 | `def` | [metricSpaceAux](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/metricspaceaux--f923212b8e1fe32f9776b705.md) | 138 | `declaration-track:f923212b8e1fe32f9776b70562b98983ca8d515533217a2b96556ae2521a13fc` |
| 16 | `theorem` | [cosh_dist'](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/cosh-dist--f911e457d44f0bbe5d887c87.md) | 150 | `result-track:f911e457d44f0bbe5d887c87eb428761400fe99056d6f019d37d3aff34e961b5` |
| 17 | `def` | [center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/center--8667c844c31a5fd4e424f73b.md) | 158 | `declaration-track:8667c844c31a5fd4e424f73b161f4896daae1bb6fb6638154d39f2a2a8767827` |
| 18 | `theorem` | [center_re](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/center-re--25733dd84ed0244bc469ed5c.md) | 163 | `result-track:25733dd84ed0244bc469ed5ce3c93a3da96707918a86e655408ce875be103012` |
| 19 | `theorem` | [center_im](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/center-im--d5ac9b673095c28acba93c61.md) | 168 | `result-track:d5ac9b673095c28acba93c61fe21ced645c015b6526a09bd514478eacfc8cf8f` |
| 20 | `theorem` | [center_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/center-zero--c784f6f40925d6b5dbd110a7.md) | 173 | `result-track:c784f6f40925d6b5dbd110a7f5b08134965c81215fa7ee8efefa7606a69d9b0c` |
| 21 | `theorem` | [dist_coe_center_sq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-coe-center-sq--dc7b8779f55165185532c81a.md) | 177 | `result-track:dc7b8779f55165185532c81aed043427d0895a6e06339fae56298353922c3815` |
| 22 | `theorem` | [dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-coe-center--5d235589e84c939b9e108db6.md) | 186 | `result-track:5d235589e84c939b9e108db6ccaa0186b040228b66b75fbe06282540093c038e` |
| 23 | `theorem` | [cmp_dist_eq_cmp_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/cmp-dist-eq-cmp-dist-coe-center--ac3e4a1370e459d3859351e2.md) | 191 | `result-track:ac3e4a1370e459d3859351e2f9c4bd05e5d23d6019ae157050b45aa63d4b3558` |
| 24 | `theorem` | [dist_eq_iff_dist_coe_center_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-eq-iff-dist-coe-center-eq--c2d22101395108b3a82eb1e6.md) | 205 | `result-track:c2d22101395108b3a82eb1e6d7d558e777c4471f144b2c39e30a321685d3ef03` |
| 25 | `theorem` | [dist_self_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-self-center--762360b2e0e250b16f0ca933.md) | 211 | `result-track:762360b2e0e250b16f0ca9338c15d02dbbc60a28f05590467c355e23decbbc0e` |
| 26 | `theorem` | [dist_center_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-center-dist--72d6e51e9d3020107688bd1f.md) | 218 | `result-track:72d6e51e9d3020107688bd1f02bc25448c12228cffc056d6414ca3b4eb293cea` |
| 27 | `theorem` | [dist_lt_iff_dist_coe_center_lt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-lt-iff-dist-coe-center-lt--90e5b290159a0b5e8b749cec.md) | 223 | `result-track:90e5b290159a0b5e8b749cec7fa7736c639399020af58e9b12238e696bd8efc7` |
| 28 | `theorem` | [lt_dist_iff_lt_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/lt-dist-iff-lt-dist-coe-center--391c7ea5b1462cbf4748a3a6.md) | 228 | `result-track:391c7ea5b1462cbf4748a3a6a9a239498bcf3be70fde20385120ecf741b0115b` |
| 29 | `theorem` | [dist_le_iff_dist_coe_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-le-iff-dist-coe-center-le--bdd623a63be46b2f00faa67f.md) | 233 | `result-track:bdd623a63be46b2f00faa67f0582ace101ac3da140e733fcdfd4c33c707dde55` |
| 30 | `theorem` | [le_dist_iff_le_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/le-dist-iff-le-dist-coe-center--22ace495148effe2d9a407f5.md) | 238 | `result-track:22ace495148effe2d9a407f5bc328c195b0e7ebd5dc742408d23fd249b53464a` |
| 31 | `theorem` | [dist_of_re_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-of-re-eq--09b29cc239a1736947cc05a5.md) | 245 | `result-track:09b29cc239a1736947cc05a53ea881645a332b7b86c17a8ba74b6a3148d8797a` |
| 32 | `theorem` | [dist_log_im_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-log-im-le--038d5aff0b7b8a62579d7562.md) | 259 | `result-track:038d5aff0b7b8a62579d756229393ed4bb2dd87114d881e3c684b7edc2ac1661` |
| 33 | `theorem` | [im_le_im_mul_exp_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/im-le-im-mul-exp-dist--25a15fd51497281fd6e155c1.md) | 268 | `result-track:25a15fd51497281fd6e155c10a6eb3888c7b0b3c3162cb6bc5f7f78359332131` |
| 34 | `theorem` | [im_div_exp_dist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/im-div-exp-dist-le--93812e06d5aba31d07787dff.md) | 273 | `result-track:93812e06d5aba31d07787dfff2a517ed8144bb2cf8cdc84c9946f4344d2137ef` |
| 35 | `theorem` | [dist_coe_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/dist-coe-le--db1b53c57eb33aeb48acfef7.md) | 279 | `result-track:db1b53c57eb33aeb48acfef74ceefda9b3919e9d4525421b3131bc2b02e9c30d` |
| 36 | `theorem` | [le_dist_coe](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/le-dist-coe--b8c5ce991ad49340c51370a1.md) | 289 | `result-track:b8c5ce991ad49340c51370a1e0e2f3529efcbf9ef4163be0f68fb0e2183131e3` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/instance--7b1057e41dd43e13229f8090.md) | 299 | `declaration-track:7b1057e41dd43e13229f80904e855bb872d6fcf204adc82ff2464ac54a88f839` |
| 38 | `theorem` | [im_pos_of_dist_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/im-pos-of-dist-center-le--b8a2dcdd6511a64a2d333e9b.md) | 319 | `result-track:b8a2dcdd6511a64a2d333e9bd4ca27702b4ac0da83b77b91caf29f4e70e14dba` |
| 39 | `theorem` | [image_coe_closedBall](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/image-coe-closedball--ee2a24b46f4c80d14ee90d91.md) | 328 | `result-track:ee2a24b46f4c80d14ee90d910ccdb04bb78c9ac75f6aba38819cc732075c29d4` |
| 40 | `theorem` | [image_coe_ball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/image-coe-ball--d4bc0eab4c9d47f9344dbcb5.md) | 338 | `result-track:d4bc0eab4c9d47f9344dbcb5510b1a9dc72a41bf5a36f3d1a1e2a912a27bcc40` |
| 41 | `theorem` | [image_coe_sphere](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/image-coe-sphere--67b7a18e8056104c0bb30556.md) | 348 | `result-track:67b7a18e8056104c0bb3055601e4487a1d069cdcf58c7cabcd92f08acb1ef8cc` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/instance--cbb6c2bf173137b529ec2781.md) | 358 | `declaration-track:cbb6c2bf173137b529ec2781436fe4d33bbfb0d272181022af69eeafd1aeb613` |
| 43 | `theorem` | [isometry_vertical_line](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/isometry-vertical-line--89dab61c1bf7619d18830098.md) | 363 | `result-track:89dab61c1bf7619d18830098c4f83c1583b388c3eba02b82bf50fa379b9df842` |
| 44 | `theorem` | [isometry_real_vadd](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/isometry-real-vadd--5ce06a88cbe51dbde59c4289.md) | 369 | `result-track:5ce06a88cbe51dbde59c428995a52c8cedb2ac839a56d5f119875b86fa1faab8` |
| 45 | `theorem` | [isometry_pos_mul](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/isometry-pos-mul--810815c852cda89f9fe99041.md) | 373 | `result-track:810815c852cda89f9fe99041f9cbf49650e934c9287c0eb922650efeb0e70224` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2136ca2dab3dab9cd50af774600b979b328b3cde330bc35d3dd31eabed7adb9e.lean/declarations/instance--cabe53c016f0b187ddafc32f.md) | 382 | `declaration-track:cabe53c016f0b187ddafc32f77db51a5b9a545ee1bb19a5c1ae9399caf8c38ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
