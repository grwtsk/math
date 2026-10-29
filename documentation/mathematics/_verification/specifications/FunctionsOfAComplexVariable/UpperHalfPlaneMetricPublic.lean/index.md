# Verification target: Upper Half Plane Metric Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf578e3075f1ab6422d151a74b5b5be1e77ba982",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf578e3075f1ab6422d151a74b5b5be1e77ba982`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/instance-source-edition-2.md) | 39 | `declaration-track:13d66fb19b8cc1d9c376f425c62c4f668fc627aca8684c09bee8dac84448f9c9` |
| 2 | `theorem` | [dist_eq](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-eq.md) | 42 | `result-track:0107ac6923cb7d52359a32dd3bed8bf8dc4c80f2700d70049b450fc267c88dfa` |
| 3 | `theorem` | [sinh_half_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/sinh-half-dist.md) | 45 | `result-track:85842b1f54190f715e6150068a94d79871f828e5b02f1cd1c1a4275cc5c14b85` |
| 4 | `theorem` | [cosh_half_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/cosh-half-dist.md) | 49 | `result-track:e677eff6e717773914be712415bb6669b82656531c2871a4f4a7b25a3e5e6cd9` |
| 5 | `theorem` | [tanh_half_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/tanh-half-dist.md) | 58 | `result-track:9c6011642a1e266f251331184fdf2d615c0f86251510df8f4dc17ab71bea98e4` |
| 6 | `theorem` | [exp_half_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/exp-half-dist.md) | 63 | `result-track:5d1675a2cee809ca82ffc32c262a902ff41b09c9fc5bf6a7c5a80235d036dc65` |
| 7 | `theorem` | [cosh_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/cosh-dist.md) | 67 | `result-track:1f4dde9a646f0b16ee80db97703393a4f9d80e5d1cab959e14c3c4acdf2a0b71` |
| 8 | `theorem` | [sinh_half_dist_add_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/sinh-half-dist-add-dist.md) | 71 | `result-track:6088bdcf274046cd2673ee3378a085dce5ad48d2d9790e09ec2004103c9b966c` |
| 9 | `theorem` | [dist_comm](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-comm.md) | 81 | `result-track:b2043f3ae41cd57d8eaf2047512d77eb856c7809bec491a42814270bf1a04f90` |
| 10 | `theorem` | [dist_le_iff_le_sinh](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-le-iff-le-sinh.md) | 84 | `result-track:9a53e47330cae013e042f20bd3963b328e9abea0f637455f3040ed8b2cb87b53` |
| 11 | `theorem` | [dist_eq_iff_eq_sinh](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-eq-iff-eq-sinh.md) | 88 | `result-track:b103eb16eb90c2826df7b86528a61703eb5d3ccb3bbeae26b8e09586b59941e4` |
| 12 | `theorem` | [dist_eq_iff_eq_sq_sinh](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-eq-iff-eq-sq-sinh.md) | 92 | `result-track:2520925fc7a5aca2c2603b725b335c6254b3aa4186dcc50a807af3125a73588d` |
| 13 | `theorem` | [dist_triangle](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-triangle.md) | 98 | `result-track:0753e80b4a9cc3b787d2787a18181e3a32bd0ce00caec17f95af523c68232fbf` |
| 14 | `theorem` | [dist_le_dist_coe_div_sqrt](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-le-dist-coe-div-sqrt.md) | 106 | `result-track:687cdfffd823d1363189822dc7257b30e52bb0e24f3f50a5b5d9e583088bb80b` |
| 15 | `def` | [metricSpaceAux](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/metricspaceaux.md) | 113 | `declaration-track:d842d58f6991d642dde70f50f3215088a40eed183843a4f3191e62d5f6d903ea` |
| 16 | `theorem` | [cosh_dist'](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/cosh-dist-source-edition-2.md) | 123 | `result-track:2f509dc7a127cbfa99dabe3d095bf57c92474d11a75f551d23b465aeafb7e673` |
| 17 | `def` | [center](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/center.md) | 129 | `declaration-track:032b38eac35a3086b883c71c5f63d017fb96fe3dcb76028be53dac3e15f0dd8a` |
| 18 | `theorem` | [center_re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/center-re.md) | 133 | `result-track:34bae502f4f2c28c9fa79652a1882efd142e7700ef577cfdab076167045a9c7a` |
| 19 | `theorem` | [center_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/center-im.md) | 137 | `result-track:512c4b90ee4f4ff58e2e717f084cc324aa4e089d812ba10801a86a7644642c1d` |
| 20 | `theorem` | [center_zero](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/center-zero.md) | 141 | `result-track:b5a17763e3ca05e13d04132513b408432052befd5b79f52a9f4cc980abe97cf9` |
| 21 | `theorem` | [dist_coe_center_sq](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-coe-center-sq.md) | 144 | `result-track:f0fd21e911cf69f0aa93644b5dc11be5fbaf911810dc9b0f7b1c970c396374c3` |
| 22 | `theorem` | [dist_coe_center](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-coe-center.md) | 152 | `result-track:a53f5368c65ddb9a3d33207e99d6e4756a1d6212c5f58ac950c80622c93918a0` |
| 23 | `theorem` | [cmp_dist_eq_cmp_dist_coe_center](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/cmp-dist-eq-cmp-dist-coe-center.md) | 156 | `result-track:4f31bb80c1f907e7021c003b037cf295824fe17308843ca45dbb91b21294de80` |
| 24 | `theorem` | [dist_eq_iff_dist_coe_center_eq](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-eq-iff-dist-coe-center-eq.md) | 170 | `result-track:19cc9d0d0e75175af9ecfa884eebae46a62199b1608e7459cec6c2c25cf635fa` |
| 25 | `theorem` | [dist_self_center](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-self-center.md) | 175 | `result-track:389d4c2f23abcf6436b4c372b54ce05cb33421c4b7d1484359d6b191d030a559` |
| 26 | `theorem` | [dist_center_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-center-dist.md) | 181 | `result-track:1e6dc31d81b41cc3f5bdeb16b93f7b94e03cce0420a55acbd1e6323673d6988e` |
| 27 | `theorem` | [dist_lt_iff_dist_coe_center_lt](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-lt-iff-dist-coe-center-lt.md) | 185 | `result-track:2a0a2ea8abecd2251449d14d8c5797048c531c2759397fa11f0137a9cc2fec23` |
| 28 | `theorem` | [lt_dist_iff_lt_dist_coe_center](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/lt-dist-iff-lt-dist-coe-center.md) | 189 | `result-track:a0fdb47e36fb8d43a70e622f669ec5cc31cf90552e3d505853f7fadcf8d343ab` |
| 29 | `theorem` | [dist_le_iff_dist_coe_center_le](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-le-iff-dist-coe-center-le.md) | 193 | `result-track:afa7910190421cdad32939322002522a63f35a6ef586bfb84abcd8221d91cc67` |
| 30 | `theorem` | [le_dist_iff_le_dist_coe_center](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/le-dist-iff-le-dist-coe-center.md) | 197 | `result-track:113056f7930604d24b4af72640a0af304366309cc208907c2957cfc617c247dd` |
| 31 | `theorem` | [dist_of_re_eq](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-of-re-eq.md) | 203 | `result-track:1e22fd0c0945546dc66241206c4298d5781a4cc652ca3a57d42a8b5f6b8c9713` |
| 32 | `theorem` | [dist_log_im_le](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-log-im-le.md) | 215 | `result-track:586e7272600b895c9f2d94bc15989693c888322f21a1cdd8a4346176a17ff4e5` |
| 33 | `theorem` | [im_le_im_mul_exp_dist](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/im-le-im-mul-exp-dist.md) | 225 | `result-track:049228b06c9b75281ca5feed21374cc9b567723772101287669d50251c20ed59` |
| 34 | `theorem` | [im_div_exp_dist_le](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/im-div-exp-dist-le.md) | 229 | `result-track:c090facae4f2576efb4d35e3448e12235567bd58ebb24312ac74e8caf4719ccc` |
| 35 | `theorem` | [dist_coe_le](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/dist-coe-le.md) | 234 | `result-track:4573fbbef24ec2cab614f3165b3e2d4eec458eab1186595380aa332ad5f54c28` |
| 36 | `theorem` | [le_dist_coe](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/le-dist-coe.md) | 243 | `result-track:a316722600665e64f9f45fecfa8a54e8b69becd707c02af7cae07b7c7cc69706` |
| 37 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/instance-source-edition-3.md) | 252 | `declaration-track:1c37156985347ea7bf40c344855fd63a91e7b2554580f8d8b65cf752de062ce5` |
| 38 | `theorem` | [im_pos_of_dist_center_le](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/im-pos-of-dist-center-le.md) | 271 | `result-track:bf7d6ebbb03a5aeea901c0e397b91196248ac03650598acb768892805bb2f78d` |
| 39 | `theorem` | [image_coe_closedBall](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/image-coe-closedball.md) | 280 | `result-track:06867c86a4fddbce8508abd16b397d5e1e29a879adfdc0051f9ec691f80e2f7f` |
| 40 | `theorem` | [image_coe_ball](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/image-coe-ball.md) | 289 | `result-track:565d37e877ac4b5bb2cd0845ddbfc2f651da58b7eea3cc282996c3f3ee8f5558` |
| 41 | `theorem` | [image_coe_sphere](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/image-coe-sphere.md) | 298 | `result-track:81751ba0f9817d9e539dc36d40034e15df45cc4b5361c07eef6720d7056343db` |
| 42 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/instance-source-edition-4.md) | 307 | `declaration-track:5372e2ce30833a4af4b60ec85484efb56d4def92be2c4a6a31fd545f0357f517` |
| 43 | `theorem` | [isometry_vertical_line](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/isometry-vertical-line.md) | 312 | `result-track:59fc123fc6b0e54559092ded432e8751a3870a80e7adc01465c3d865b25f5115` |
| 44 | `theorem` | [isometry_real_vadd](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/isometry-real-vadd.md) | 317 | `result-track:870d9bfc470e847c461d51bdfd34c201e98f54e06c2ffa3c157232c1033b1f3a` |
| 45 | `theorem` | [isometry_pos_mul](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/isometry-pos-mul.md) | 320 | `result-track:6356bafcbaafff4155c91fce36aa079a94a125a7bd4b99a3c18e10f11fe533b4` |
| 46 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneMetricPublic.lean/declarations/instance.md) | 328 | `declaration-track:111a6725819767e84f87d295777a947f7847f32833878f13aadbc82641d34a51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72c39c9b236e85573901b2357d39ec4fca7eaa8980ef6e1c5fd76485f6cbbec6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
