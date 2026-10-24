# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6483d621ed3327fc861996655715a987fd1388ca",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6483d621ed3327fc861996655715a987fd1388ca`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/instance--d74b150efeee3cfc3acb8615.md) | 35 | `declaration-track:d74b150efeee3cfc3acb8615b6c4e9287dcf8aa48be7fcf8390c6029de898e1a` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-eq--602ef7c7518a93b03105e349.md) | 38 | `result-track:602ef7c7518a93b03105e3497351fad0a8423324831da3300ab0ff9d988db156` |
| 3 | `theorem` | [sinh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/sinh-half-dist--8de8016fc4227447491d5d01.md) | 41 | `result-track:8de8016fc4227447491d5d0124aa5ddf205269d3378317aa40bbd5ea73eb94fc` |
| 4 | `theorem` | [cosh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/cosh-half-dist--d455f42cde2e5ea76ccfa7ff.md) | 45 | `result-track:d455f42cde2e5ea76ccfa7ff26418604c788d50c94f9656baa4970beb2685514` |
| 5 | `theorem` | [tanh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/tanh-half-dist--b6f6e38cd85984e86a47976f.md) | 54 | `result-track:b6f6e38cd85984e86a47976fa3f36041f2ed798ed72b198d5d1f6807913981d5` |
| 6 | `theorem` | [exp_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/exp-half-dist--57d80ccbdae3f905890daabd.md) | 59 | `result-track:57d80ccbdae3f905890daabd27b1ba503101decae6cfcb4118c5f05b315fa42b` |
| 7 | `theorem` | [cosh_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/cosh-dist--185393d333ecc0e19f7f9339.md) | 63 | `result-track:185393d333ecc0e19f7f93399f78122f5e97a97657840316e4a25257fd28657a` |
| 8 | `theorem` | [sinh_half_dist_add_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/sinh-half-dist-add-dist--c6ea4ec18dd9bd1efd669c6f.md) | 67 | `result-track:c6ea4ec18dd9bd1efd669c6fd7da025161e5c24a39f70e8f802583df4ba669de` |
| 9 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-comm--528c89d8836babd08e6f32d2.md) | 77 | `result-track:528c89d8836babd08e6f32d26fe49b1bf3832e1c7bccaa7661111b5f014fe17b` |
| 10 | `theorem` | [dist_le_iff_le_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-le-iff-le-sinh--46c04627a2bc875ce21f145c.md) | 80 | `result-track:46c04627a2bc875ce21f145c7ff59df1d87eab7afc661e40a98aabe9329756b9` |
| 11 | `theorem` | [dist_eq_iff_eq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-eq-iff-eq-sinh--8ec9057ad02fc1deb4f9da10.md) | 84 | `result-track:8ec9057ad02fc1deb4f9da106b00ed079217503f23c6a9cae5cea0ee32b9646d` |
| 12 | `theorem` | [dist_eq_iff_eq_sq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-eq-iff-eq-sq-sinh--3e05c57c10e2c5b4ce2185be.md) | 88 | `result-track:3e05c57c10e2c5b4ce2185be9d08dea130b2b0b5815005328217359c14d6e2d4` |
| 13 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-triangle--25f7d258651a2035c172ac47.md) | 94 | `result-track:25f7d258651a2035c172ac47aa9875b53adbf635f0d2ed5a582989f016c8b74b` |
| 14 | `theorem` | [dist_le_dist_coe_div_sqrt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-le-dist-coe-div-sqrt--24cead526c4660d6aa15a2d4.md) | 102 | `result-track:24cead526c4660d6aa15a2d4883619bc80908efbcee2f0151e50a6a20305d6c7` |
| 15 | `def` | [metricSpaceAux](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/metricspaceaux--9cefdc150b78024e7d98e292.md) | 108 | `declaration-track:9cefdc150b78024e7d98e292496ed613ffd0f6ecad05b048a4dd0797579dac12` |
| 16 | `theorem` | [cosh_dist'](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/cosh-dist--e8da43fe2d69c60e89f57b8e.md) | 118 | `result-track:e8da43fe2d69c60e89f57b8e050fa1ea6484b5ac377b5ba8d31bafd2faa62e05` |
| 17 | `def` | [center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/center--a8ac361a3d51f2fa6fda238d.md) | 124 | `declaration-track:a8ac361a3d51f2fa6fda238d16e5a521c56faeb920cb12734ce95ee5f1187db2` |
| 18 | `theorem` | [center_re](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/center-re--63b6d5b5eb15470d698cfc38.md) | 128 | `result-track:63b6d5b5eb15470d698cfc383227f548da512789576c9ada483e56b384798463` |
| 19 | `theorem` | [center_im](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/center-im--6f497b0b278344849ea85551.md) | 132 | `result-track:6f497b0b278344849ea855513e1dbd1461922ee333688cad11bc9811ec209a2a` |
| 20 | `theorem` | [center_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/center-zero--bb8dd0df876289a9877fd36e.md) | 136 | `result-track:bb8dd0df876289a9877fd36e9fda0157848fe1050600c7402b72efcea2639690` |
| 21 | `theorem` | [dist_coe_center_sq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-coe-center-sq--7dbf4920447a48aaa015a8e8.md) | 139 | `result-track:7dbf4920447a48aaa015a8e8c27213a5e3a3a71a9f68be01c02f94ad35b61132` |
| 22 | `theorem` | [dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-coe-center--72e8c7e90aa301dfe3423b85.md) | 147 | `result-track:72e8c7e90aa301dfe3423b859efc68daf973f072fb6a0e6669a957e4d4644e6f` |
| 23 | `theorem` | [cmp_dist_eq_cmp_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/cmp-dist-eq-cmp-dist-coe-center--19fc7f34a72cc0cf4c503fef.md) | 151 | `result-track:19fc7f34a72cc0cf4c503fefa9372b08e3903cf2aa37cb909f91553c403a5f85` |
| 24 | `theorem` | [dist_eq_iff_dist_coe_center_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-eq-iff-dist-coe-center-eq--ec7d851c066d601e3a1b9998.md) | 167 | `result-track:ec7d851c066d601e3a1b999835d5a05221761436654709224e5d98d1bb5264bd` |
| 25 | `theorem` | [dist_self_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-self-center--f1c9821bba2f82b18569c649.md) | 172 | `result-track:f1c9821bba2f82b18569c649256a65ae4aff81f3eae1df813958e187cb6b7cbc` |
| 26 | `theorem` | [dist_center_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-center-dist--d7c0f7e52cbf4a1d87b6a3fa.md) | 178 | `result-track:d7c0f7e52cbf4a1d87b6a3fa4e3cf5194e51c89dd74f76e2368f63041235c758` |
| 27 | `theorem` | [dist_lt_iff_dist_coe_center_lt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-lt-iff-dist-coe-center-lt--0b0296583ed803c7b1addf33.md) | 182 | `result-track:0b0296583ed803c7b1addf33e7e77c6293a6ebb5e9a7eb9e5f585123eb9fcf55` |
| 28 | `theorem` | [lt_dist_iff_lt_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/lt-dist-iff-lt-dist-coe-center--ca0c8de0a2af385172f64963.md) | 186 | `result-track:ca0c8de0a2af385172f649638b5ba787090c8d12b30c73b674e3a14b07e0f27a` |
| 29 | `theorem` | [dist_le_iff_dist_coe_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-le-iff-dist-coe-center-le--8994c333a3030e5d4442701e.md) | 190 | `result-track:8994c333a3030e5d4442701eb52557ba217c9cf12e04445e5dfccffe40be4d69` |
| 30 | `theorem` | [le_dist_iff_le_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/le-dist-iff-le-dist-coe-center--bfec14230105fdc59c722cff.md) | 194 | `result-track:bfec14230105fdc59c722cff1dfeaf511af17b9adfba7d98160f9ab212554213` |
| 31 | `theorem` | [dist_of_re_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-of-re-eq--9412663b2ce30f739983f99d.md) | 200 | `result-track:9412663b2ce30f739983f99dd55ff86b3f20a43e054d8c9251f6dc8435755adb` |
| 32 | `theorem` | [dist_log_im_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-log-im-le--db2b45f3425416fd592cade0.md) | 212 | `result-track:db2b45f3425416fd592cade0f4eadfef4bef56a89577d7a820425b71902b7c43` |
| 33 | `theorem` | [im_le_im_mul_exp_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/im-le-im-mul-exp-dist--6227ba1e2b23495aba6322b2.md) | 222 | `result-track:6227ba1e2b23495aba6322b27cb4dcf85b0e76fdecf4a246ef815250da493fe5` |
| 34 | `theorem` | [im_div_exp_dist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/im-div-exp-dist-le--bdd6287935588455e9d90d1e.md) | 226 | `result-track:bdd6287935588455e9d90d1edfe001283f0c519a64f0f3d897732d3b9b49f36c` |
| 35 | `theorem` | [dist_coe_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/dist-coe-le--f058b76b48d8e68361492e3b.md) | 231 | `result-track:f058b76b48d8e68361492e3b3bc502a7e347db65e15e641f34680ab944c2292e` |
| 36 | `theorem` | [le_dist_coe](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/le-dist-coe--52cf18eae467bb02bab0fd5e.md) | 240 | `result-track:52cf18eae467bb02bab0fd5ef262931dd9f354b39e61a003927129236c3f346f` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/instance--af8debbde7fdb1feee0d1d36.md) | 249 | `declaration-track:af8debbde7fdb1feee0d1d367aba8d73e5cb9d76fd6e6be3221374ef7efb4bfa` |
| 38 | `theorem` | [im_pos_of_dist_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/im-pos-of-dist-center-le--22dc810b7a79e55c3d5f7e0a.md) | 268 | `result-track:22dc810b7a79e55c3d5f7e0af8c4bac64f4031a4dd449c03c0a6c15adb35754f` |
| 39 | `theorem` | [image_coe_closedBall](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/image-coe-closedball--32d8081f303756285238b228.md) | 276 | `result-track:32d8081f303756285238b22855fab5df6fa359720b455376047ef2cc46337d85` |
| 40 | `theorem` | [image_coe_ball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/image-coe-ball--54fcb7f54fed907a9f6f1295.md) | 285 | `result-track:54fcb7f54fed907a9f6f12956bc1ca9d036bd5cb8bc5dbef59c16b3204fa91d8` |
| 41 | `theorem` | [image_coe_sphere](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/image-coe-sphere--c0eaf58ca8a187fb41c61034.md) | 294 | `result-track:c0eaf58ca8a187fb41c61034f46748ff13c218d814ef7194302d5cc565164783` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/instance--dcf19584214272e31f171560.md) | 303 | `declaration-track:dcf19584214272e31f1715607abbbd62a632445179cf2ba6b79716db04420744` |
| 43 | `theorem` | [isometry_vertical_line](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/isometry-vertical-line--3d5028d84333c8c4b9506934.md) | 308 | `result-track:3d5028d84333c8c4b9506934b1423e40acdef8f5fa108c07325a5525e2afaf90` |
| 44 | `theorem` | [isometry_real_vadd](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/isometry-real-vadd--895ddeb950d3968e1f7ae5c7.md) | 313 | `result-track:895ddeb950d3968e1f7ae5c7d8214cff9218038ad42e50ab6d18474df329f67b` |
| 45 | `theorem` | [isometry_pos_mul](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/isometry-pos-mul--aa0575523bc9e0df5594256f.md) | 316 | `result-track:aa0575523bc9e0df5594256f60112e4d3d7af2cad999ec9ac231f71d9c8af250` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/declarations/instance--74d625c328cf65818077d8b1.md) | 324 | `declaration-track:74d625c328cf65818077d8b11ef5b78fd68777b44277393c13bf68ba6b43a8cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
