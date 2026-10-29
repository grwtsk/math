# Verification target: Normed Space Pointwise Metric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af8038672bf3420e9316d19aea958764bcef69c2",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af8038672bf3420e9316d19aea958764bcef69c2`.

Source path: `GRWTSK/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ediam_smul_le](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/ediam-smul-le.md) | 32 | `result-track:e13ac5fafccf935683ac633f429e439263fb0ed2aade1cdd5c1be56b5c74af38` |
| 2 | `theorem` | [ediam_smul₀](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/ediam-smul.md) | 44 | `result-track:e00aad2c028f98ad82cc0e89f01f6afe55d604787f6ca5fbf71f1749103ea810` |
| 3 | `theorem` | [diam_smul₀](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/diam-smul.md) | 55 | `result-track:4982df4116a8930823b599db53e9d0409e9f90b69b4ca1e802d15975739d8500` |
| 4 | `theorem` | [infEdist_smul₀](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/infedist-smul.md) | 59 | `result-track:277abf0b7d2bf51957197970b038094a9c6cc70a31bbeea72e26d7202d38d5eb` |
| 5 | `theorem` | [infDist_smul₀](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/infdist-smul.md) | 71 | `result-track:d574684367e4e9bc3921173819385e65c9a1e982247a2fa8a5c3208e526c9273` |
| 6 | `theorem` | [smul_ball](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-ball.md) | 86 | `result-track:fb52297f8f504c72f0a6e54afdce7821d463bc72de85efb9579d495c371a550c` |
| 7 | `theorem` | [smul_unitBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-unitball.md) | 93 | `result-track:646f455791c243dc982a902288550f70b4a08d3655482b6681c1a42bca0ba118` |
| 8 | `theorem` | [smul_sphere'](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-sphere-source-edition-2.md) | 97 | `result-track:6e5d273e113e349b3e65f555e6449ac01de5b44e9804c512a53726ce8b89cc88` |
| 9 | `theorem` | [smul_closedBall'](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-closedball.md) | 106 | `result-track:2e0abd6b51ee98b53705041557b560c442539cf0373909c9d590fb395fab9c8b` |
| 10 | `theorem` | [Metric.Bounded.smul₀](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/metric-bounded-smul.md) | 113 | `result-track:a2d24d9140d647644c8253849c87bcfc7a56e7d99a7d3b6a2724d337eeae7b8e` |
| 11 | `theorem` | [eventually_singleton_add_smul_subset](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/eventually-singleton-add-smul-subset.md) | 119 | `result-track:749feb799ea1b9c6f3167374e7d4f4e2d4a66f2abcedad5d40049ec3eadab823` |
| 12 | `theorem` | [smul_unitBall_of_pos](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-unitball-of-pos.md) | 144 | `result-track:a2994ac3dea185c2d8c0b495b3e713ec6dbf03b8db87dae0945e74c13442e1f4` |
| 13 | `theorem` | [exists_dist_eq](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/exists-dist-eq.md) | 149 | `result-track:4d9d30e95d42f4108fcc83f1dbafddcfc6e4821111c463a7960f9cd1e4698eb9` |
| 14 | `theorem` | [exists_dist_le_le](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/exists-dist-le-le.md) | 157 | `result-track:966e1fcee346f1a611aaf415af51fa3b0bee1d7df522a06e3638ee7f5230f0c9` |
| 15 | `theorem` | [exists_dist_le_lt](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/exists-dist-le-lt.md) | 172 | `result-track:a5c1bffaed5703795c2572378d8c80f3ce8c469f132cd4d9b0d638a339354111` |
| 16 | `theorem` | [exists_dist_lt_le](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/exists-dist-lt-le.md) | 184 | `result-track:2778f8a220077426eb8006378c936bf3a9278876031c45ba3a12dcf953141d29` |
| 17 | `theorem` | [exists_dist_lt_lt](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/exists-dist-lt-lt.md) | 192 | `result-track:62121848dda0cc94aa1f8793efdc680ccac233eb2c389d1c5aca3bb0e9c8d227` |
| 18 | `theorem` | [disjoint_ball_ball_iff](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/disjoint-ball-ball-iff.md) | 204 | `result-track:a1e198dd11708dadb35b1840be1e668c0beee0737656c9a57a56f6716ae66e37` |
| 19 | `theorem` | [disjoint_ball_closedBall_iff](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/disjoint-ball-closedball-iff.md) | 214 | `result-track:8272fdebbc0f1d6c8743e32c4338a48aec405c9288f5a63acc2c3587263c01d0` |
| 20 | `theorem` | [disjoint_closedBall_ball_iff](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/disjoint-closedball-ball-iff.md) | 224 | `result-track:af562f11771d040a264acc2ad03e035cb116b40e1667c7a599a9e2f511503b9c` |
| 21 | `theorem` | [disjoint_closedBall_closedBall_iff](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/disjoint-closedball-closedball-iff.md) | 229 | `result-track:cef43aa874c0857186d8c90fcc26417d05fe2492a46a7c0cbce056436c7a0947` |
| 22 | `theorem` | [infEdist_thickening](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/infedist-thickening.md) | 241 | `result-track:d01d04e5f3c0c798c877a91ce97afc184718a9a5863c7b2a4f5703c9239e9c37` |
| 23 | `theorem` | [thickening_thickening](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/thickening-thickening.md) | 266 | `result-track:57623938b49c71a4d9b8f6bb03c12b6a9a62be0e3dc9e97b17679fbab5284de1` |
| 24 | `theorem` | [cthickening_thickening](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/cthickening-thickening.md) | 277 | `result-track:2ab7a172d6849eae2b73fca4d44e789a48f79648573f092dc24f5b7072951507` |
| 25 | `theorem` | [closure_thickening](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/closure-thickening.md) | 286 | `result-track:46281e9ea0b470417ffc9b9f11cfe8d356df5965401bcfad159536867cda4581` |
| 26 | `theorem` | [infEdist_cthickening](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/infedist-cthickening.md) | 292 | `result-track:1c13db652cb5b49ff6310faae45e4b260c2e77ecc7db928a29c0dd77271a86c7` |
| 27 | `theorem` | [thickening_cthickening](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/thickening-cthickening.md) | 300 | `result-track:b52fc69e1646bfae9f0f0f916a8819f6414f3dcac42e12572d18bf1157952e4e` |
| 28 | `theorem` | [cthickening_cthickening](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/cthickening-cthickening.md) | 308 | `result-track:124cfed928d734cd03f45f64a0d0722afbd567312d78dfcca8872b7cbe88a315` |
| 29 | `theorem` | [thickening_ball](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/thickening-ball.md) | 316 | `result-track:40567f85490da370154bd7d623ed31763d9c7474cf822a7b925271d55d553e18` |
| 30 | `theorem` | [thickening_closedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/thickening-closedball.md) | 322 | `result-track:c99b18e59ce06610c395351e6e451d5efac17281c03630ac77bc8d6b2dbd58ae` |
| 31 | `theorem` | [cthickening_ball](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/cthickening-ball.md) | 328 | `result-track:6ea247c6b5b6d0c4497c873d9a69b4ab1b9edf61ce41e2876dc0b73b2627ade4` |
| 32 | `theorem` | [cthickening_closedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/cthickening-closedball.md) | 335 | `result-track:7444fc30beb2fcba7c93cfd204b117e7ef1fd8eef8cb3560f42a1baea48486b0` |
| 33 | `theorem` | [ball_add_ball](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/ball-add-ball.md) | 341 | `result-track:83903e3fd31d378fa72873dcb44f98603a33598d48910651f2d1006c61082d0a` |
| 34 | `theorem` | [ball_sub_ball](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/ball-sub-ball.md) | 346 | `result-track:dc9df60ee07adcd6db1464280cb51c179e214f9fba7b27f8ba1ba84dad4f29cd` |
| 35 | `theorem` | [ball_add_closedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/ball-add-closedball.md) | 351 | `result-track:74a834cfaf2d6f13cd1bbc3291522a4ebea8b81914f507694e37d60faf6536a4` |
| 36 | `theorem` | [ball_sub_closedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/ball-sub-closedball.md) | 356 | `result-track:4217b9b3a5a44f4290acfa989af02481d486f75fafac83f9d1de6a104d8b835f` |
| 37 | `theorem` | [closedBall_add_ball](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/closedball-add-ball.md) | 361 | `result-track:3853c528fb8e159ebd568588640bc1b207f6961acf6d1ab3d0101a3d9dad70d1` |
| 38 | `theorem` | [closedBall_sub_ball](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/closedball-sub-ball.md) | 366 | `result-track:a4b9366687f8d9ddbce52d44347c92b502d69f903281fa5760317f59a591c732` |
| 39 | `theorem` | [closedBall_add_closedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/closedball-add-closedball.md) | 371 | `result-track:22e03417acea867307f5b392fe8f3f5bb9d4ba3fc6fb31b0524ba72bc704189f` |
| 40 | `theorem` | [closedBall_sub_closedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/closedball-sub-closedball.md) | 377 | `result-track:b68b23fe458f0cc9b9f733228ced751faf1cd35f4dc36e011cf311d1bc681771` |
| 41 | `theorem` | [smul_closedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-closedball-source-edition-2.md) | 388 | `result-track:d3397e89c932ba2131b889f5b4ef42c240e42f0838a7961d3fdab352eb52227b` |
| 42 | `theorem` | [smul_closedUnitBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-closedunitball.md) | 395 | `result-track:9aae913ea4e5cfa0413a5aa7041a13e771b38a99bad70f9f3a037a7a1f288a05` |
| 43 | `theorem` | [smul_closedUnitBall_of_nonneg](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-closedunitball-of-nonneg.md) | 403 | `result-track:fef24aceb320043568b8ead5a45dbf58189cf8d6367eaabe24feddd821f2f9a7` |
| 44 | `theorem` | [NormedSpace.sphere_nonempty](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/normedspace-sphere-nonempty.md) | 411 | `result-track:44a03ad7dcd67ac9989e33a8f7c6f44a21fe7ca80671747a64807a0404986153` |
| 45 | `theorem` | [smul_sphere](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/smul-sphere.md) | 421 | `result-track:32e1e8d13f0b84b804d8a83cbc0cc7d7e488a67b78f337491dbb2d67bedd1504` |
| 46 | `theorem` | [affinity_unitBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/affinity-unitball.md) | 429 | `result-track:805c1f47563f07445a2c134f554a5bf862fddd0611f417d5522219afb4b633b5` |
| 47 | `theorem` | [affinity_unitClosedBall](../../../../FunctionalAnalysis/NormedSpacePointwiseMetric.lean/declarations/affinity-unitclosedball.md) | 435 | `result-track:c22a885345702cc459b29ee9f0e9752e23c20d6b03e1958944b3f3b2bb3a9fd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecdd886747bb2f2858aab4cd7deb65a0c4e0125aa1c5d00fa665c3512a8663b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
