# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5199c8a55a7a4fe319e2ad61ba290e868fc7411a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5199c8a55a7a4fe319e2ad61ba290e868fc7411a`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/instance--7ad93169e441ef9e2ec1780e.md) | 38 | `declaration-track:7ad93169e441ef9e2ec1780e69ba1175d7f7ca129af1cacab5d996f82853d644` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-eq--cdf2db97db660d88df495725.md) | 41 | `result-track:cdf2db97db660d88df495725cb26836ea7c07012a21dea31c4244fa6c73c018d` |
| 3 | `theorem` | [sinh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/sinh-half-dist--2355f5ecc5caf207c633e17b.md) | 45 | `result-track:2355f5ecc5caf207c633e17ba08e14b7f77bf5fc4a4ed89edb79994373b0d3cc` |
| 4 | `theorem` | [cosh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/cosh-half-dist--aaa4243fbc2221e130de894e.md) | 50 | `result-track:aaa4243fbc2221e130de894e534e6dfcfe3501d08c210fb4d1ebaf472fa94284` |
| 5 | `theorem` | [tanh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/tanh-half-dist--baa12a2e81c923276e3aa8df.md) | 63 | `result-track:baa12a2e81c923276e3aa8dff3da75a4e63bc9a28be5637a0d590ca24af524ea` |
| 6 | `theorem` | [exp_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/exp-half-dist--68452261003631685c5c8893.md) | 69 | `result-track:68452261003631685c5c8893532637c41d2827d5a3853fda37d347453835fc93` |
| 7 | `theorem` | [cosh_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/cosh-dist--6e338d599a6dd87f26852e04.md) | 74 | `result-track:6e338d599a6dd87f26852e04ae864e51dc3d9ca3f6d7f4c87ce41b7456c95890` |
| 8 | `theorem` | [sinh_half_dist_add_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/sinh-half-dist-add-dist--73aacb93c7b5ec3efc74063a.md) | 80 | `result-track:73aacb93c7b5ec3efc74063a1cdca3e1381a02f9f32b03f0971c39742b9bc272` |
| 9 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-comm--0af07cc4fd4a8beb1fe60116.md) | 91 | `result-track:0af07cc4fd4a8beb1fe601163f8806eb8eab83506d589797e2aec35dc095364f` |
| 10 | `theorem` | [dist_le_iff_le_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-le-iff-le-sinh--18bd096b2b3f37235cbef645.md) | 95 | `result-track:18bd096b2b3f37235cbef645b41ee0546a8da617f20a54e0e8c6bba33230672c` |
| 11 | `theorem` | [dist_eq_iff_eq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-eq-iff-eq-sinh--ab152d97cceafb8adcbc7e59.md) | 100 | `result-track:ab152d97cceafb8adcbc7e591a9da9bb58b9ef167119127a8d195ef59406be2b` |
| 12 | `theorem` | [dist_eq_iff_eq_sq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-eq-iff-eq-sq-sinh--d77451631efb9df0edf42203.md) | 105 | `result-track:d77451631efb9df0edf42203996c479fc58d1cd3dab12e0d6b5f39b8ddea8b2c` |
| 13 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-triangle--2bcb8d1f02210e8fa8b9e61b.md) | 114 | `result-track:2bcb8d1f02210e8fa8b9e61bbc855843c5e88c3246c0c447f66d6e63864b580f` |
| 14 | `theorem` | [dist_le_dist_coe_div_sqrt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-le-dist-coe-div-sqrt--d4fb64942ad6f6282b971597.md) | 123 | `result-track:d4fb64942ad6f6282b971597be22746426a2c4477a7a8b52f879a4f52e66ad9e` |
| 15 | `def` | [metricSpaceAux](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/metricspaceaux--7b943c6d6af8ff0f349d6023.md) | 130 | `declaration-track:7b943c6d6af8ff0f349d6023c8832392ad27ab59a61d6b9557ea501b104cf8f6` |
| 16 | `theorem` | [cosh_dist'](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/cosh-dist--01dc085e3493fc77f2dd6ce0.md) | 142 | `result-track:01dc085e3493fc77f2dd6ce0b416a57c32d6138b654b01ad356d034e8f369263` |
| 17 | `def` | [center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/center--0e9b934dfd28a6d47bf3bd45.md) | 150 | `declaration-track:0e9b934dfd28a6d47bf3bd45205b2ea0807d068c9d499035cfdeaef3261d6a2b` |
| 18 | `theorem` | [center_re](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/center-re--3e42b93c9b52e75a81d740fa.md) | 155 | `result-track:3e42b93c9b52e75a81d740fa5fce711a63ddc6e102f09bfb93255ca51934a2b0` |
| 19 | `theorem` | [center_im](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/center-im--c647876bc31387b2ac85a384.md) | 160 | `result-track:c647876bc31387b2ac85a384f67ce0b1adb9765915833baef05460d34ba05acb` |
| 20 | `theorem` | [center_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/center-zero--a4737fa45b3387e7e199c859.md) | 165 | `result-track:a4737fa45b3387e7e199c85995b0ccc3946a81ddb0df97d0d09c36aff33b3ffe` |
| 21 | `theorem` | [dist_coe_center_sq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-coe-center-sq--338ad22a35b3494f793f57a0.md) | 169 | `result-track:338ad22a35b3494f793f57a06871e6d43bb2de0ee0df5cd688a50b5f44977b24` |
| 22 | `theorem` | [dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-coe-center--5489c7a95b0f64ce29efac62.md) | 178 | `result-track:5489c7a95b0f64ce29efac62712eaa00758d4dc778f604f6dba867f83191a124` |
| 23 | `theorem` | [cmp_dist_eq_cmp_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/cmp-dist-eq-cmp-dist-coe-center--a55b7c445dd82501be20588d.md) | 183 | `result-track:a55b7c445dd82501be20588dc05a7716c82c215e4bfb780264a970fef17496ec` |
| 24 | `theorem` | [dist_eq_iff_dist_coe_center_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-eq-iff-dist-coe-center-eq--7100323b55e04b79e69ec9b6.md) | 197 | `result-track:7100323b55e04b79e69ec9b6e9fd3eff98f56996c9813d4a64cc2477d07cda2a` |
| 25 | `theorem` | [dist_self_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-self-center--0fcbc0111bdca3d1b52795ad.md) | 203 | `result-track:0fcbc0111bdca3d1b52795ad79173bc35cee02c805c81cf6173626d271f16815` |
| 26 | `theorem` | [dist_center_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-center-dist--984d2a9d23e2e62e92853d8c.md) | 210 | `result-track:984d2a9d23e2e62e92853d8c5f33320d1ed910c53a3cb0eb393c5b463f0c2392` |
| 27 | `theorem` | [dist_lt_iff_dist_coe_center_lt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-lt-iff-dist-coe-center-lt--df6560986c5acfbdcaf05276.md) | 215 | `result-track:df6560986c5acfbdcaf052767ca93c07f9a5b6d3255ac811cb49b11b1b3a492f` |
| 28 | `theorem` | [lt_dist_iff_lt_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/lt-dist-iff-lt-dist-coe-center--03cf1b5f3f94419176efcc67.md) | 220 | `result-track:03cf1b5f3f94419176efcc672ad4e5ae208dc799a392b61e90fed482cb290219` |
| 29 | `theorem` | [dist_le_iff_dist_coe_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-le-iff-dist-coe-center-le--32da0d02f6cf0b1961050cf7.md) | 225 | `result-track:32da0d02f6cf0b1961050cf75e52420ea53601689334d2a8d36f47befc9c068f` |
| 30 | `theorem` | [le_dist_iff_le_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/le-dist-iff-le-dist-coe-center--f60210d033e457d5a85f5f36.md) | 230 | `result-track:f60210d033e457d5a85f5f369bd021eb741a0f954e5e3401ccb5f63b6bdf5f38` |
| 31 | `theorem` | [dist_of_re_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-of-re-eq--9e9ca8a010a599a639267ec2.md) | 237 | `result-track:9e9ca8a010a599a639267ec20c112de3d782c7457ea9df43c67a57f2f57c65bc` |
| 32 | `theorem` | [dist_log_im_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-log-im-le--3b57f28919547c44050ac19b.md) | 251 | `result-track:3b57f28919547c44050ac19b004f7df575b5a6c83b5ddd582707af53575c2caf` |
| 33 | `theorem` | [im_le_im_mul_exp_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/im-le-im-mul-exp-dist--661515c7fb56b260b0890f72.md) | 260 | `result-track:661515c7fb56b260b0890f72cf333be3b71fdef7aac31675202b1b9021410e2f` |
| 34 | `theorem` | [im_div_exp_dist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/im-div-exp-dist-le--004b9480268d5997d7211915.md) | 265 | `result-track:004b9480268d5997d721191578002391656d6de4c54551b02a8209286abe948b` |
| 35 | `theorem` | [dist_coe_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/dist-coe-le--11c23fb1de4793c59fb7d061.md) | 271 | `result-track:11c23fb1de4793c59fb7d0618aa072b141e166335389692c7f995ca0480469c2` |
| 36 | `theorem` | [le_dist_coe](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/le-dist-coe--bbd58a17c3910c8133666146.md) | 281 | `result-track:bbd58a17c3910c81336661461b5597a997646e146e82436bb2c8dc54fd558004` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/instance--a0535e7dbfbc696fcf51f8dd.md) | 291 | `declaration-track:a0535e7dbfbc696fcf51f8ddf87270339c51bff9a36a89ce69d907da7dc8209c` |
| 38 | `theorem` | [im_pos_of_dist_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/im-pos-of-dist-center-le--e612a5f4b2691bbecf11523e.md) | 311 | `result-track:e612a5f4b2691bbecf11523ee23745801bc0fe3f140298d2ccce621280296694` |
| 39 | `theorem` | [image_coe_closedBall](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/image-coe-closedball--00f326da0ef1a5bdcbe608b8.md) | 320 | `result-track:00f326da0ef1a5bdcbe608b844a30036c2a68f97ae3bbbd5e857b4c103e31102` |
| 40 | `theorem` | [image_coe_ball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/image-coe-ball--ae7cd08dbb0b947ae2223fc3.md) | 330 | `result-track:ae7cd08dbb0b947ae2223fc35e14ab52875d4f9243180178c608fc7d5a0e3f72` |
| 41 | `theorem` | [image_coe_sphere](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/image-coe-sphere--b9c9004a886b741e1fd3e243.md) | 340 | `result-track:b9c9004a886b741e1fd3e24350e77fa5f58cc7decf2f28afbdbc0e042df8ad5b` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/instance--a91686118a5161ab904d4f91.md) | 350 | `declaration-track:a91686118a5161ab904d4f91b7c39f3ce8b21c50bd83183960cdd872b4e97f87` |
| 43 | `theorem` | [isometry_vertical_line](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/isometry-vertical-line--ad87d0e7aa6672e991231d7e.md) | 355 | `result-track:ad87d0e7aa6672e991231d7ee8cf834a9795b038fcf572492868cc51fd614262` |
| 44 | `theorem` | [isometry_real_vadd](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/isometry-real-vadd--f24e3a1a57381a98ae2d9ea4.md) | 361 | `result-track:f24e3a1a57381a98ae2d9ea44ccd455594adbae22ad6f56a27242725a4489325` |
| 45 | `theorem` | [isometry_pos_mul](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/isometry-pos-mul--d8c17c4820deb2fb5575db31.md) | 365 | `result-track:d8c17c4820deb2fb5575db31835a94a0febfafa63a9c39e47f05ae32de54dd37` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/declarations/instance--61db3ce1d31c2001b74e3593.md) | 374 | `declaration-track:61db3ce1d31c2001b74e35937e80f564c0b18c750e8027a57e5d5636a84d6ff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
