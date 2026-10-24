# Verification target: GRWTSK.Topology.MetricTopology.Pointwise.Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2bd9c1acadf8fe5929c0606f1d715f346f15550",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2bd9c1acadf8fe5929c0606f1d715f346f15550`.

Source path: `GRWTSK/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Metric.Bounded.mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/metric-bounded-mul--540df6e6802b42f8aa05a069.md) | 36 | `result-track:540df6e6802b42f8aa05a069828bade7423f683bec93ffb34eaad0404be2b45e` |
| 2 | `theorem` | [Metric.Bounded.inv](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/metric-bounded-inv--6de354cf102047f7215bc7ef.md) | 46 | `result-track:6de354cf102047f7215bc7ef3ab72ff032148c3b33c997bca5baea2ca786e242` |
| 3 | `theorem` | [Metric.Bounded.div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/metric-bounded-div--694190ee40430f9988d68ccf.md) | 53 | `result-track:694190ee40430f9988d68ccf80939c4671677b225397003781771027ea4fdbed` |
| 4 | `theorem` | [infEdist_inv_inv](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/infedist-inv-inv--af163a24ecc74541dcade365.md) | 69 | `result-track:af163a24ecc74541dcade365438fe3490862244a82759da3e994353ca112f5bf` |
| 5 | `theorem` | [infEdist_inv](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/infedist-inv--743e0cf3a77805b71c45dc84.md) | 75 | `result-track:743e0cf3a77805b71c45dc84d78dec60614bf6523d947ddc02516f6c2570badb` |
| 6 | `theorem` | [inv_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/inv-thickening--8f464f36cb08a72ae08ac247.md) | 85 | `result-track:8f464f36cb08a72ae08ac247b40acdc8d9a16fe8f1ef1829e140f6e207a68c9f` |
| 7 | `theorem` | [inv_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/inv-cthickening--ccae9b7aa27252ec1c8f4701.md) | 92 | `result-track:ccae9b7aa27252ec1c8f4701fbc4f53d32ff4de26fd193231700bbbec7735611` |
| 8 | `theorem` | [inv_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/inv-ball--3ed0df2cc1b08631b1c583c4.md) | 99 | `result-track:3ed0df2cc1b08631b1c583c4888fe0c6c725ecfddf79d82aff898b589cb6af59` |
| 9 | `theorem` | [inv_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/inv-closedball--5433681e9ecda3626c09c273.md) | 104 | `result-track:5433681e9ecda3626c09c273e6eb7e69e45d72746c17ae576e551a9ddec34865` |
| 10 | `theorem` | [singleton_mul_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-mul-ball--a5fa5c195cb3ef4af8466f46.md) | 110 | `result-track:a5fa5c195cb3ef4af8466f46f2f84e2e887f906afc8c17b7991fcb20fba24178` |
| 11 | `theorem` | [singleton_div_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-div-ball--8a94fa244aa27e9494cc960f.md) | 116 | `result-track:8a94fa244aa27e9494cc960f1405ae944550821140073891aef57ca5177367d2` |
| 12 | `theorem` | [ball_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-mul-singleton--d3b3df9995e4876ad86ef427.md) | 122 | `result-track:d3b3df9995e4876ad86ef4273f0ec41c966255a323503a29766afe7e72630bda` |
| 13 | `theorem` | [ball_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-div-singleton--43cee3d7e3253482546e92ff.md) | 128 | `result-track:43cee3d7e3253482546e92ff3e2c6fdba3077b19e82dea4968c5db7f1b907075` |
| 14 | `theorem` | [singleton_mul_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-mul-ball-one--f072328aa1b2c009ba4a21a3.md) | 134 | `result-track:f072328aa1b2c009ba4a21a33c3c4325c3b82316e39008243814d329052c8231` |
| 15 | `theorem` | [singleton_div_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-div-ball-one--e2f450a8dfe92ac1bbf8df6e.md) | 139 | `result-track:e2f450a8dfe92ac1bbf8df6e49cbbecf62e83fa00b0a380553296b9c7fed14cb` |
| 16 | `theorem` | [ball_one_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-one-mul-singleton--9cf73f262c0de00e62c393ca.md) | 145 | `result-track:9cf73f262c0de00e62c393ca6adf479de64e03721cd9d06386ab66f74ebb8993` |
| 17 | `theorem` | [ball_one_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-one-div-singleton--f8514015a3ec873ceeca3822.md) | 150 | `result-track:f8514015a3ec873ceeca38224b2c96887807118bcdfd3351e952cc86dd1cb039` |
| 18 | `theorem` | [smul_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/smul-ball-one--ea5148ab9c0e0ad5d444fa5c.md) | 156 | `result-track:ea5148ab9c0e0ad5d444fa5c0997f80b7e2372307f397063af75e62e8b0dc436` |
| 19 | `theorem` | [singleton_mul_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-mul-closedball--5af0a1ec380eb8190a97fa3a.md) | 162 | `result-track:5af0a1ec380eb8190a97fa3ad6be455763d2021b49602d7c533fd780bcf35076` |
| 20 | `theorem` | [singleton_div_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-div-closedball--1c53dde19a22eb709ac56fe3.md) | 168 | `result-track:1c53dde19a22eb709ac56fe39be46af86450e9e81d30e53503ec4194f66dce8b` |
| 21 | `theorem` | [closedBall_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/closedball-mul-singleton--68df32b28603a87a003b0751.md) | 174 | `result-track:68df32b28603a87a003b0751695dc24bb35dfc51c8fceb4f3a0c15c144912e8e` |
| 22 | `theorem` | [closedBall_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/closedball-div-singleton--98e804c5a715b7669228781a.md) | 180 | `result-track:98e804c5a715b7669228781a20644681f1cd3d649658fe6e4734e67785b950ac` |
| 23 | `theorem` | [singleton_mul_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-mul-closedball-one--49b77b175c58ae08e3534411.md) | 186 | `result-track:49b77b175c58ae08e3534411aad65b8db0bcadb15a1f4e4d5b8a56272e75f884` |
| 24 | `theorem` | [singleton_div_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/singleton-div-closedball-one--4971a3d863b1f98498c518df.md) | 191 | `result-track:4971a3d863b1f98498c518df1ed9714038301545e4e7ed58ea45a4f6cfa8ed53` |
| 25 | `theorem` | [closedBall_one_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/closedball-one-mul-singleton--3d612decf370b3367061dcb4.md) | 197 | `result-track:3d612decf370b3367061dcb4ab76bfcc6547394df604ccb139a93101db063319` |
| 26 | `theorem` | [closedBall_one_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/closedball-one-div-singleton--d7caeb3da425b3f1ff27c497.md) | 202 | `result-track:d7caeb3da425b3f1ff27c49727a19219436e3b5b65d3db74983cd774211ec7d5` |
| 27 | `theorem` | [smul_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/smul-closedball-one--1258add6ae996922189114c0.md) | 207 | `result-track:1258add6ae996922189114c073a45fe2a3441a22e59f1d05bb4023dd08946013` |
| 28 | `theorem` | [mul_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/mul-ball-one--737aa7b3586c08bf3d07b1ed.md) | 212 | `result-track:737aa7b3586c08bf3d07b1edf80fc39e6d169038fe9839a7cf77e0ce1273a561` |
| 29 | `theorem` | [div_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/div-ball-one--1cc9c18878c034fe23ec59d1.md) | 222 | `result-track:1cc9c18878c034fe23ec59d11389a5d091a659229c38d041e6f8be60206d36b3` |
| 30 | `theorem` | [ball_mul_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-mul-one--886e3eef1fe2bd4ecf284a79.md) | 227 | `result-track:886e3eef1fe2bd4ecf284a79d4b9b92defd61c1cd5102be6386a03d00972077a` |
| 31 | `theorem` | [ball_div_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-div-one--52940a32e9e0e65ad7b149c8.md) | 232 | `result-track:52940a32e9e0e65ad7b149c884e575c7877bab8b6b7ae0ce6d1820efaaf93b32` |
| 32 | `theorem` | [mul_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/mul-ball--361b5b456df9c582c2284032.md) | 237 | `result-track:361b5b456df9c582c22840321731c679e0e78c4c66c4f3cd23ff8e3ceab9e560` |
| 33 | `theorem` | [div_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/div-ball--22a65cbf516b4c4412ac756e.md) | 243 | `result-track:22a65cbf516b4c4412ac756e8c7afb93f1c9ea471b8c866bab47504508e465f2` |
| 34 | `theorem` | [ball_mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-mul--47ca0001e330c7cff1b5fc03.md) | 248 | `result-track:47ca0001e330c7cff1b5fc03b60992329d6e632175d13ed1e2fcfc0cbfab947a` |
| 35 | `theorem` | [ball_div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/ball-div--63d7b01627769b10794c89ad.md) | 253 | `result-track:63d7b01627769b10794c89ad33262e3ebc53d62532ecf171e2c2d9558ddc2bc1` |
| 36 | `theorem` | [IsCompact.mul_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-mul-closedball-one--5b791e504e3747aabdbbb5b2.md) | 260 | `result-track:5b791e504e3747aabdbbb5b2ec97a22fdec617f0550126fc2cf155a509ffb51f` |
| 37 | `theorem` | [IsCompact.div_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-div-closedball-one--b667502eb566b64ae49ceee0.md) | 270 | `result-track:b667502eb566b64ae49ceee0f3844a90b65bd40635f5bf3a97a8802da05f6ca2` |
| 38 | `theorem` | [IsCompact.closedBall_one_mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-closedball-one-mul--5f863350fd81883651f47355.md) | 276 | `result-track:5f863350fd81883651f473555cebfba34a99d2bce1e9871de40cd1b72c4712c2` |
| 39 | `theorem` | [IsCompact.closedBall_one_div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-closedball-one-div--54e8de02c37aba96f21a59e8.md) | 282 | `result-track:54e8de02c37aba96f21a59e80083ebc1dfadd17ed1cb3b380dacc8d6bfee42b4` |
| 40 | `theorem` | [IsCompact.mul_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-mul-closedball--20e65bea706241b558f2a4bc.md) | 289 | `result-track:20e65bea706241b558f2a4bcd4f1a1705821c2aa0f10704f9621d533fdcc479f` |
| 41 | `theorem` | [IsCompact.div_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-div-closedball--df6c7e5eb8963c0e279ef5fb.md) | 296 | `result-track:df6c7e5eb8963c0e279ef5fbe8617fe8996db6726776f936d4cebfc3877e2df5` |
| 42 | `theorem` | [IsCompact.closedBall_mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-closedball-mul--2db4219c69ed7ae42e1bb4ee.md) | 303 | `result-track:2db4219c69ed7ae42e1bb4ee585d894720290d7461290abed0083bb9b4a4cbb0` |
| 43 | `theorem` | [IsCompact.closedBall_div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant7592ea90752f3437d348ead4377353af0d2fb4eca93f2b7806ec75bb3b3f8aa2.lean/declarations/iscompact-closedball-div--bf3cd879b318a52cce4cc739.md) | 309 | `result-track:bf3cd879b318a52cce4cc739b0f4c3471a885db2a68a59a9ebea152217635af6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
