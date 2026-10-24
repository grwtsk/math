# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7a86170063b026c6051d38a69c6d1bcb31babd6",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7a86170063b026c6051d38a69c6d1bcb31babd6`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/instance--6a91f4d38c20cddfa1fe09f2.md) | 43 | `declaration-track:6a91f4d38c20cddfa1fe09f2c44087397dfa8cef6d1b695e856276beca6ed675` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-eq--6c5935c917411595989c21e5.md) | 46 | `result-track:6c5935c917411595989c21e577835fcb2fce3765eaafe24f6f5c16dbf4549a14` |
| 3 | `theorem` | [sinh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/sinh-half-dist--eceb26b1a40cdb5f28b579b6.md) | 49 | `result-track:eceb26b1a40cdb5f28b579b6accd251d63098b8adbd8d9117b58d365d4078404` |
| 4 | `theorem` | [cosh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/cosh-half-dist--3be6cb3db4294baec9f406a0.md) | 53 | `result-track:3be6cb3db4294baec9f406a0ccd2d80faa34ba81543a677f521d8ee415c4fcc8` |
| 5 | `theorem` | [tanh_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/tanh-half-dist--6b7bd591f7c370f65c462cdf.md) | 62 | `result-track:6b7bd591f7c370f65c462cdf451cd32ec4e6e9ee59efd7aafcb147eeccbc460e` |
| 6 | `theorem` | [exp_half_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/exp-half-dist--9af5b1640091dda6df6daa9b.md) | 67 | `result-track:9af5b1640091dda6df6daa9b6f7bc5f3e18634d7c20fbe140a86ffa336fd0038` |
| 7 | `theorem` | [cosh_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/cosh-dist--d8661a0e4a00d81e66a6de4c.md) | 71 | `result-track:d8661a0e4a00d81e66a6de4c9fb8b8307ac2d2b90c5ca3d59aedc5a8cada4e05` |
| 8 | `theorem` | [sinh_half_dist_add_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/sinh-half-dist-add-dist--06ddbae6c991e2e7caff20f4.md) | 75 | `result-track:06ddbae6c991e2e7caff20f4895c74bf15b55f1f53a0f58f69a2069886444f41` |
| 9 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-comm--4962e5b6cae088a0e5579abf.md) | 85 | `result-track:4962e5b6cae088a0e5579abf655caa0f5aebbb33600185a64c8d201d8ff6d57a` |
| 10 | `theorem` | [dist_le_iff_le_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-le-iff-le-sinh--4c4afccc8836aa96fda18875.md) | 88 | `result-track:4c4afccc8836aa96fda18875de9ee2de8087f281ffc9f3da96965b1dd26f327c` |
| 11 | `theorem` | [dist_eq_iff_eq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-eq-iff-eq-sinh--8f47c5f533e008274d995568.md) | 92 | `result-track:8f47c5f533e008274d9955688c96a38c3b11ea72b5af31e515b527df3f15f9f4` |
| 12 | `theorem` | [dist_eq_iff_eq_sq_sinh](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-eq-iff-eq-sq-sinh--9428b47513287eac1766bd59.md) | 96 | `result-track:9428b47513287eac1766bd59ca7d1e7f05e11457a842df2f09c7d26ad3b108f6` |
| 13 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-triangle--aa294a947cb8f2586b4dda3d.md) | 102 | `result-track:aa294a947cb8f2586b4dda3d2c8c2343c50ade3878d81b650aa2fe5c28f0cafa` |
| 14 | `theorem` | [dist_le_dist_coe_div_sqrt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-le-dist-coe-div-sqrt--c1bafc2303e599f7695e31de.md) | 110 | `result-track:c1bafc2303e599f7695e31de1a32f4e824a572bda3ff5a159a30a04386b0c438` |
| 15 | `def` | [metricSpaceAux](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/metricspaceaux--a40fc2393e5baa7f36341aca.md) | 116 | `declaration-track:a40fc2393e5baa7f36341aca31115735044172c9b92e6ec22ad1f70f4c42b931` |
| 16 | `theorem` | [cosh_dist'](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/cosh-dist--45648b4b8d7045af0e2a3641.md) | 126 | `result-track:45648b4b8d7045af0e2a3641c02f6898ce3b9378be596b76df1ba73d7196df47` |
| 17 | `def` | [center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/center--d7d270e241bc3ac26641ad2b.md) | 132 | `declaration-track:d7d270e241bc3ac26641ad2b4f57bb99b25a633474c84675aee92dc3317712bd` |
| 18 | `theorem` | [center_re](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/center-re--697036a3799b028b519616c1.md) | 136 | `result-track:697036a3799b028b519616c1e2b77707796ddc82c22b7d3aa288e44db8ad15d7` |
| 19 | `theorem` | [center_im](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/center-im--d587f588f3b44353b1da7620.md) | 140 | `result-track:d587f588f3b44353b1da7620e9ec09b7df36a580ab5e1c280752dafc59926135` |
| 20 | `theorem` | [center_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/center-zero--a75242667e3e254aaf24d4aa.md) | 144 | `result-track:a75242667e3e254aaf24d4aa38f8cbe1c20370044d8fb1abfeb12fd26f0da9c1` |
| 21 | `theorem` | [dist_coe_center_sq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-coe-center-sq--3d27d7cc4cc9b997acfedeff.md) | 147 | `result-track:3d27d7cc4cc9b997acfedeff28d0934b1ffd3bffbab6bd9fb83a485081bc8de4` |
| 22 | `theorem` | [dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-coe-center--d47f5a08a4fa199187210250.md) | 155 | `result-track:d47f5a08a4fa1991872102505cd23685ec2df370a8021f86f5810fd32413503f` |
| 23 | `theorem` | [cmp_dist_eq_cmp_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/cmp-dist-eq-cmp-dist-coe-center--48ccb5ec1d6b1061c4448aa3.md) | 159 | `result-track:48ccb5ec1d6b1061c4448aa3a10d5c8b1cfd0f0b6dcab1b8754029949e324cf7` |
| 24 | `theorem` | [dist_eq_iff_dist_coe_center_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-eq-iff-dist-coe-center-eq--38005484496e94aa6feeef95.md) | 175 | `result-track:38005484496e94aa6feeef95a87b4444510841d79b55358cbef6d6988576362e` |
| 25 | `theorem` | [dist_self_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-self-center--898c4854a1dc2644adb8dc68.md) | 180 | `result-track:898c4854a1dc2644adb8dc68ef5665e565c748dd71da246b228ffea44c3666ba` |
| 26 | `theorem` | [dist_center_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-center-dist--5e15d33694f1ec743a106f38.md) | 186 | `result-track:5e15d33694f1ec743a106f389ef8d5c4bdaab3fe33588b5e54abfde03b8c40a8` |
| 27 | `theorem` | [dist_lt_iff_dist_coe_center_lt](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-lt-iff-dist-coe-center-lt--574e7d00779f444f2bfad2ea.md) | 190 | `result-track:574e7d00779f444f2bfad2ea29e1feb2678f4b21d4d03eab12c159a7b3d9d790` |
| 28 | `theorem` | [lt_dist_iff_lt_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/lt-dist-iff-lt-dist-coe-center--56988d333c7a75e403dc1767.md) | 194 | `result-track:56988d333c7a75e403dc176779525ff8c5542c23b6a3b57562aa6f832768d5d5` |
| 29 | `theorem` | [dist_le_iff_dist_coe_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-le-iff-dist-coe-center-le--7a76b44c8ec2ba61ca0407db.md) | 198 | `result-track:7a76b44c8ec2ba61ca0407db8df3b50277b621ddb6cbff6e40ee5ec20cb27141` |
| 30 | `theorem` | [le_dist_iff_le_dist_coe_center](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/le-dist-iff-le-dist-coe-center--4ec11d5a31a1bb54be4863fd.md) | 202 | `result-track:4ec11d5a31a1bb54be4863fd81b77f07b8b7b3d271820c34a7e806ac2cc5a911` |
| 31 | `theorem` | [dist_of_re_eq](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-of-re-eq--bedb5c8a631f2c4b95ef75e7.md) | 208 | `result-track:bedb5c8a631f2c4b95ef75e75c496426342506961b226d170b8990d98a4cbd56` |
| 32 | `theorem` | [dist_log_im_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-log-im-le--0ebb05c225e23e7916e2708b.md) | 220 | `result-track:0ebb05c225e23e7916e2708bde77e0ba3bc38121192c3e633d1406e8d2ec4daf` |
| 33 | `theorem` | [im_le_im_mul_exp_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/im-le-im-mul-exp-dist--596cdc1a21763391efaa337c.md) | 230 | `result-track:596cdc1a21763391efaa337c967de2f211cbc63e09c39bdd7d9eaa5efd8f7559` |
| 34 | `theorem` | [im_div_exp_dist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/im-div-exp-dist-le--b7e59064a8dbbd6593969a81.md) | 234 | `result-track:b7e59064a8dbbd6593969a81577e91635b580a134deed11584940e66c0ad9705` |
| 35 | `theorem` | [dist_coe_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/dist-coe-le--e534f86915f350a23d7a3167.md) | 239 | `result-track:e534f86915f350a23d7a3167c2dc35580055c5145cec3cda4aba8109e39164cc` |
| 36 | `theorem` | [le_dist_coe](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/le-dist-coe--4afd6199841f7c1ccf8a63ec.md) | 248 | `result-track:4afd6199841f7c1ccf8a63ec7fac4de3194291bc6c450bab28f9d2384c925ebc` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/instance--862fbad280c0366560c24cd1.md) | 257 | `declaration-track:862fbad280c0366560c24cd13234e750ae44d53dae3d5d866eb955941f829d31` |
| 38 | `theorem` | [im_pos_of_dist_center_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/im-pos-of-dist-center-le--88f07a2061bbc182d424fccc.md) | 276 | `result-track:88f07a2061bbc182d424fccc532b79b3326f5850f49667f9dcc45cff8c2fba81` |
| 39 | `theorem` | [image_coe_closedBall](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/image-coe-closedball--d16a26101ec1d44978142761.md) | 284 | `result-track:d16a26101ec1d4497814276101bd3dbbfcf8b8ad21c9bc0f7038c80ca154de4b` |
| 40 | `theorem` | [image_coe_ball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/image-coe-ball--6e2435b45596b0b0c9c61f74.md) | 293 | `result-track:6e2435b45596b0b0c9c61f74f81eacd9f82f1a57484866b6674861e92c22b46f` |
| 41 | `theorem` | [image_coe_sphere](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/image-coe-sphere--93ffe20b7a5fda6764d80cfb.md) | 302 | `result-track:93ffe20b7a5fda6764d80cfb41afcece825ca4b4724daf3d6f7dfaf30660b150` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/instance--16e54f575297f337271278ac.md) | 311 | `declaration-track:16e54f575297f337271278acc7052916b70fdd0e2f93ce2f6960c49395931a92` |
| 43 | `theorem` | [isometry_vertical_line](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/isometry-vertical-line--3edada11087c25531a41f0fb.md) | 316 | `result-track:3edada11087c25531a41f0fb78804c1497b808fe9be06b06c850e775ff95845d` |
| 44 | `theorem` | [isometry_real_vadd](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/isometry-real-vadd--f045f32c1ec1b374a05b2be2.md) | 321 | `result-track:f045f32c1ec1b374a05b2be2694d10bbd1b0b03982ea69e5beca5191f9fea022` |
| 45 | `theorem` | [isometry_pos_mul](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/isometry-pos-mul--06bbbfa7914a8764eb83687a.md) | 324 | `result-track:06bbbfa7914a8764eb83687a8aa6726828bb0534784d77b842400b8f42c7575a` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/declarations/instance--02abf1bffcccfbc18a6cce30.md) | 332 | `declaration-track:02abf1bffcccfbc18a6cce30875a7dc95a5f8932558b049ef0913232a97cae9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
