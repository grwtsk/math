# Verification target: GRWTSK.Topology.MetricTopology.Pointwise.Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d67e1eaaa82419b1d6c2ff8c4439072715cebd97",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d67e1eaaa82419b1d6c2ff8c4439072715cebd97`.

Source path: `GRWTSK/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Metric.Bounded.mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/metric-bounded-mul--04dfe57cb7d9790b30f7e01c.md) | 28 | `result-track:04dfe57cb7d9790b30f7e01c4d740b762ab458e0e03f3aa51cb6ac1002dc54b3` |
| 2 | `theorem` | [Metric.Bounded.inv](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/metric-bounded-inv--4a641bffb1361a27e4b7656c.md) | 38 | `result-track:4a641bffb1361a27e4b7656c4be77eeb1448d69fa806f1ad8a4fa2ee96b7d332` |
| 3 | `theorem` | [Metric.Bounded.div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/metric-bounded-div--6e226a025416bc5d0c78d42b.md) | 45 | `result-track:6e226a025416bc5d0c78d42bc46fb497806ab6abddd6fe7514c5baadfeaf9359` |
| 4 | `theorem` | [infEdist_inv_inv](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/infedist-inv-inv--aa8683ef15971b1eff26d0db.md) | 61 | `result-track:aa8683ef15971b1eff26d0db085382f91d6b665a7257f69d7d6d0496342366f2` |
| 5 | `theorem` | [infEdist_inv](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/infedist-inv--061bca830072c06024989328.md) | 67 | `result-track:061bca830072c06024989328e2a29d47c718f6c86ee43fafc4e6e8ad49275551` |
| 6 | `theorem` | [inv_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/inv-thickening--7ed4c553783db6812b9d6922.md) | 77 | `result-track:7ed4c553783db6812b9d6922bb177cf09200a302b6773688acac4d3b5b702f0b` |
| 7 | `theorem` | [inv_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/inv-cthickening--d3fe623eac0d31a40d468590.md) | 84 | `result-track:d3fe623eac0d31a40d468590ad6d62c6c3a167371f9216af743533690207468e` |
| 8 | `theorem` | [inv_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/inv-ball--fedfaf8742df4b22dd0d6825.md) | 91 | `result-track:fedfaf8742df4b22dd0d68253a8ea3fd65567c024dbb8cba6ce5047570566abf` |
| 9 | `theorem` | [inv_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/inv-closedball--2fd3eb0a38c3f3619a630feb.md) | 96 | `result-track:2fd3eb0a38c3f3619a630feba5a17de58359807b0d5191f9db77cef3b54cb1cc` |
| 10 | `theorem` | [singleton_mul_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-mul-ball--a3b699aa30aec0283f6fe1d8.md) | 102 | `result-track:a3b699aa30aec0283f6fe1d87af051370a7908ec836373b2969a79c5785ae6ef` |
| 11 | `theorem` | [singleton_div_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-div-ball--3102f3bcc327ee4db3226f1f.md) | 108 | `result-track:3102f3bcc327ee4db3226f1f19004c8fd3a584375a0c295f3994986f7822c746` |
| 12 | `theorem` | [ball_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-mul-singleton--5f194cf93cdfdd5a094c6388.md) | 114 | `result-track:5f194cf93cdfdd5a094c63887c9584d7bba7b2064b9f782a8c304d95d3633a41` |
| 13 | `theorem` | [ball_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-div-singleton--80aa422d2ba558fcfacc06de.md) | 120 | `result-track:80aa422d2ba558fcfacc06ded98d14de73106bbceb13c4e90f58a788258cfe86` |
| 14 | `theorem` | [singleton_mul_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-mul-ball-one--9d2ca794ff2cb6b5e89ce045.md) | 126 | `result-track:9d2ca794ff2cb6b5e89ce04549b9c43ce304a459cb22f9d5ef1e116e2912afd9` |
| 15 | `theorem` | [singleton_div_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-div-ball-one--050bb8827e59b261236255c7.md) | 131 | `result-track:050bb8827e59b261236255c74cb644b80d86a7efd3ea7d7f55d6ae73bc227815` |
| 16 | `theorem` | [ball_one_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-one-mul-singleton--3c66a8fcdbb34767c44b52ba.md) | 137 | `result-track:3c66a8fcdbb34767c44b52baf56939c2a7273b7f338e4c2d166ab9023a186dd6` |
| 17 | `theorem` | [ball_one_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-one-div-singleton--14b6f2285c8c37a9a92fb6a6.md) | 142 | `result-track:14b6f2285c8c37a9a92fb6a6473eaf5d2a93a7a067bc8e63ab32b79dd54dac48` |
| 18 | `theorem` | [smul_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/smul-ball-one--1448750c1f2f55b692217c44.md) | 148 | `result-track:1448750c1f2f55b692217c44ec2ea5017345a76ab65d0c3c81d9517d7c4b4caa` |
| 19 | `theorem` | [singleton_mul_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-mul-closedball--6ed0d46d3e930f403e3332c7.md) | 154 | `result-track:6ed0d46d3e930f403e3332c7e2f3bb0c402211ab5826ba315a2747b46b56fb27` |
| 20 | `theorem` | [singleton_div_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-div-closedball--68622ea65dbca7b31bf8edac.md) | 160 | `result-track:68622ea65dbca7b31bf8edac0b964855889aa1a423db4ed5e759a59b60ad0650` |
| 21 | `theorem` | [closedBall_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/closedball-mul-singleton--0f6ad68aa19402ba2de11674.md) | 166 | `result-track:0f6ad68aa19402ba2de11674e295dfe891c35f64e65657ea6f07573f10b64c05` |
| 22 | `theorem` | [closedBall_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/closedball-div-singleton--66b2b564916996fdd1ac8098.md) | 172 | `result-track:66b2b564916996fdd1ac809839bd1774297574ab418ff2d55c4fe5a252a47cfe` |
| 23 | `theorem` | [singleton_mul_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-mul-closedball-one--05763e23c7d712262434ae34.md) | 178 | `result-track:05763e23c7d712262434ae3496c9d3db8e2c73920925a3f1f083f29e166e61c1` |
| 24 | `theorem` | [singleton_div_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/singleton-div-closedball-one--8ad09da3a6edb03c3f9b56ee.md) | 183 | `result-track:8ad09da3a6edb03c3f9b56ee63fff657753509fa32944b270e126b38db19d392` |
| 25 | `theorem` | [closedBall_one_mul_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/closedball-one-mul-singleton--8e25afdbd7242fb5ff6f5007.md) | 189 | `result-track:8e25afdbd7242fb5ff6f500747d79d95a3ec48ddf71c26b82209b5307a97c109` |
| 26 | `theorem` | [closedBall_one_div_singleton](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/closedball-one-div-singleton--4d93225c0f52812457d14883.md) | 194 | `result-track:4d93225c0f52812457d148838831502cd55aafc03f9f9065b1bef289abcd5aeb` |
| 27 | `theorem` | [smul_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/smul-closedball-one--c58ec315eb01a4ebec1c6981.md) | 199 | `result-track:c58ec315eb01a4ebec1c698176aebe91569bc2d14991704ad88e6681aed9cbc4` |
| 28 | `theorem` | [mul_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/mul-ball-one--222b939b65679f0f56a95dbf.md) | 204 | `result-track:222b939b65679f0f56a95dbf9a09b7cbea0dca6e4e5c29869acb43c0fe64372e` |
| 29 | `theorem` | [div_ball_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/div-ball-one--70afae749cc16e121d1b6d1a.md) | 214 | `result-track:70afae749cc16e121d1b6d1a6aa826de554fe2b111413fc1d47d6de7fbe33b2b` |
| 30 | `theorem` | [ball_mul_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-mul-one--7bd32f7f041f030922197ca7.md) | 219 | `result-track:7bd32f7f041f030922197ca70fdc1853f1a3a061e29e646a8a24f6f57bd1312a` |
| 31 | `theorem` | [ball_div_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-div-one--7a9fa0556f8159176ce663cf.md) | 224 | `result-track:7a9fa0556f8159176ce663cf1d8cdef68a0fcdd713df9a098ed75a14c2ec51d9` |
| 32 | `theorem` | [mul_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/mul-ball--3c8d2dfa9841109b86113ec8.md) | 229 | `result-track:3c8d2dfa9841109b86113ec853fbb0c167f5e1428e6598d8aa8df3bc112c4479` |
| 33 | `theorem` | [div_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/div-ball--9cea7cd6692aad02d2518bad.md) | 235 | `result-track:9cea7cd6692aad02d2518bad4f5ac449bd91ad221e900d11a9b2f6533bbe8079` |
| 34 | `theorem` | [ball_mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-mul--b3c7c55c6f3bd92935f65a06.md) | 240 | `result-track:b3c7c55c6f3bd92935f65a06bf0ec904ed18bafddc372282d6861cc0392642a7` |
| 35 | `theorem` | [ball_div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/ball-div--214499acf154ce24d442472e.md) | 245 | `result-track:214499acf154ce24d442472e1a569456620dc5dcd047e05e2e6673ec41f8fdb6` |
| 36 | `theorem` | [IsCompact.mul_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-mul-closedball-one--d8e88fb33d2b909451084b23.md) | 252 | `result-track:d8e88fb33d2b909451084b235093e3b1061a4bfe1316a1eaf0a1a095f491984e` |
| 37 | `theorem` | [IsCompact.div_closedBall_one](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-div-closedball-one--d26a702340827f7e6584954d.md) | 262 | `result-track:d26a702340827f7e6584954d2b89256759a216bc8c1ef4a585e659938f7d2c5e` |
| 38 | `theorem` | [IsCompact.closedBall_one_mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-closedball-one-mul--564cb542fc7f8abd64604079.md) | 268 | `result-track:564cb542fc7f8abd64604079954b7d5feb8e5ace3088e1bee730e9de5ef370ce` |
| 39 | `theorem` | [IsCompact.closedBall_one_div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-closedball-one-div--ce67f519cc6a3731f035c8eb.md) | 274 | `result-track:ce67f519cc6a3731f035c8eb5f4b79fef609432cde90280a2f0f603574737cca` |
| 40 | `theorem` | [IsCompact.mul_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-mul-closedball--03cec892cceb6c42e928a7d4.md) | 281 | `result-track:03cec892cceb6c42e928a7d42545366908b4b91edf2f4d1237dd71d46b9fe549` |
| 41 | `theorem` | [IsCompact.div_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-div-closedball--4cecfd9568a5e7cc0d0db896.md) | 288 | `result-track:4cecfd9568a5e7cc0d0db8963ab3fb0dd5f922463f9efbffd997d6d8321d516c` |
| 42 | `theorem` | [IsCompact.closedBall_mul](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-closedball-mul--875b5cbacdb569d522914336.md) | 295 | `result-track:875b5cbacdb569d52291433679a0c45ab58764951fdbca0cbf7819338a7effc2` |
| 43 | `theorem` | [IsCompact.closedBall_div](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/declarations/iscompact-closedball-div--acc085ff541c254992b77942.md) | 301 | `result-track:acc085ff541c254992b77942e4e6730e242f7c703067a8372172a4e2d710679f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
