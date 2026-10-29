# Verification target: Geometry V1 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90b64fcf8e9dd99531f6339f8a565b7456b7da0e",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90b64fcf8e9dd99531f6339f8a565b7456b7da0e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [d4A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4a.md) | 16 | `declaration-track:e5718a4a14f10456b7e1c3b15882556de5a44bc288617ac559ba42158a7f3996` |
| 2 | `def` | [d4C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4c.md) | 20 | `declaration-track:3576e80f67b48fef5cad1aa9bb7c8e89ccefc5b96e1b1a3bed5c494de6225752` |
| 3 | `def` | [d4Coxeter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4coxeter.md) | 24 | `declaration-track:be067274f6181156dc2992c4793d5d86da17a239c5395d6115bd133a2841d827` |
| 4 | `def` | [d4Powers](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4powers.md) | 28 | `declaration-track:e925b8cd6441533448d23ad18f7abd6f5ac983ef55eb826be61026d7e5d8d9b5` |
| 5 | `theorem` | [d4_matrix_metric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-matrix-metric.md) | 52 | `result-track:0b75c1e4bad9d8a70319c1e5b47ebdc9e3ec46069183b3ef5fdecb70d84b0cc0` |
| 6 | `theorem` | [d4_coxeter_word](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-coxeter-word.md) | 56 | `result-track:4301bd9e6d5a2428a369a41c95a5a90d42f88efe5fcf923e2fc9993cdcfff443` |
| 7 | `theorem` | [d4_power_recurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-power-recurrence.md) | 59 | `result-track:68676baa8991180f43329d9cf3a3c50ca94d7efe3b74ad3066a83a7bf955a92b` |
| 8 | `theorem` | [d4_pow_certificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-pow-certificate.md) | 63 | `result-track:c24904409b59e084d0059628a96bb71ad8649b1ea3a43a355ffee3d2bcca4e6a` |
| 9 | `theorem` | [d4_coxeter_exact_order](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-coxeter-exact-order.md) | 70 | `result-track:59fc19ccb47372c4be6d01ffc96c354f0ef1aec044b566c645740cb6cc878288` |
| 10 | `def` | [d4CQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4cq.md) | 80 | `declaration-track:17a1882c62ff3a972828f5f62878eff58f3cd301c53813f896a81064ee5d6a23` |
| 11 | `def` | [d4L](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4l.md) | 84 | `declaration-track:0a4beac7963f0c71f824d8cbedae94e046813df8421b4d9b4100909747f408d5` |
| 12 | `def` | [d4D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4d.md) | 88 | `declaration-track:96d1d1105329c9001b9337dd36b5d3eea511bd1ca4a00e96a96ff21f1ce3e74d` |
| 13 | `theorem` | [d4_ldl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-ldl.md) | 90 | `result-track:34b84af9deae325915a26aa62f62df231e8470d2e0d20693d4df1ab46a13ba9e` |
| 14 | `theorem` | [d4_lower_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-lower-det.md) | 93 | `result-track:4c9f24f9ad33d97273fcdd4e62e10ac3b261d90aae1cf6e899043a6378ca0b26` |
| 15 | `theorem` | [d4_positive_definite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-positive-definite.md) | 98 | `result-track:f596f7ba006ad87f0349ee3014d3ce8b99c75464d126f01cf5f90395d3440d06` |
| 16 | `theorem` | [d4_determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/d4-determinant.md) | 108 | `result-track:5cded871d08094d40015817f8ecf8e0fa560d6302a719c102c9cab01fc6950d6` |
| 17 | `def` | [e8A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8a.md) | 115 | `declaration-track:9a40d155551451b8f8dbc427c96facdf4968d14a088e27f7f348e7f806230f5d` |
| 18 | `def` | [e8C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8c.md) | 123 | `declaration-track:1a3ba01373e72e177f58416959ef551b0c069febf71a2338e134cf240396a608` |
| 19 | `def` | [e8Coxeter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8coxeter.md) | 131 | `declaration-track:235feda3bb8ebf5413c17c9957c9b5aaf5ed4f26e615ca8e953a5ea97e297a6f` |
| 20 | `def` | [e8Powers](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8powers.md) | 139 | `declaration-track:d46fa90e390b68ba2ee12e9246ea0e4d2e8fd10ba8b8e21b027467db09591abf` |
| 21 | `theorem` | [e8_matrix_metric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-matrix-metric.md) | 359 | `result-track:af5060d8fbcc522e8a64977253a2114d67890bee3a961fb94d7bbf0be677bcf0` |
| 22 | `theorem` | [e8_coxeter_word](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-coxeter-word.md) | 363 | `result-track:a8ff29103954bef0a28f4855abbb26298df23efab6a99b27539d6fb1280126af` |
| 23 | `theorem` | [e8_power_recurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-power-recurrence.md) | 366 | `result-track:5bcdda0b58521ec1aaa1fc0d9e2b9cd03a806cc052a087764d4f088eb0eef4e5` |
| 24 | `theorem` | [e8_pow_certificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-pow-certificate.md) | 370 | `result-track:05da558b87a81ef0b6b97c6642676cb90478c5b3cd9c284d17161add23139165` |
| 25 | `theorem` | [e8_coxeter_exact_order](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-coxeter-exact-order.md) | 377 | `result-track:c4f5e41a7a58f8058c430450a9c298f4930ed9cea478763edc5b334a383f24a2` |
| 26 | `def` | [e8CQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8cq.md) | 387 | `declaration-track:47039946670f891c5f9091cab07b3de527eced4bf7eea915b25c67e899f1cde4` |
| 27 | `def` | [e8L](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8l.md) | 395 | `declaration-track:7b3474ccbcccc4e0aaa827f1c7350f3d7a3d5f3d51abef72d53658e36110045a` |
| 28 | `def` | [e8D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8d.md) | 403 | `declaration-track:7aa8773b03ff20228331f467605731e7637326cc2f55d9a525edb7d42ec265ee` |
| 29 | `theorem` | [e8_ldl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-ldl.md) | 405 | `result-track:2788b6bf1192bc235bf566b912f9c5845693827a6bfb0b8a21bd157a5bfcd47c` |
| 30 | `theorem` | [e8_lower_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-lower-det.md) | 408 | `result-track:5dbb8487360b46d6ba434a5e1d5ec6251decbdcf3292a051f0696fb1d50eff57` |
| 31 | `theorem` | [e8_positive_definite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-positive-definite.md) | 413 | `result-track:f615f4f4ba973f0a85db2f0f4019620016bba0ec56b1a7dbddf4766996accc37` |
| 32 | `theorem` | [e8_determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/e8-determinant.md) | 423 | `result-track:92d887046990f2b63672fbdf00198d63cb176d20ef346af8b0406e6d98d23721` |
| 33 | `def` | [rootBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/rootbasis.md) | 430 | `declaration-track:4384b80b3c60147536e233f3500a48926caa1958ec186617de4bef6f503fb9b4` |
| 34 | `def` | [R](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/r.md) | 434 | `declaration-track:03e783c1cf36aac6aac60c5357fc89d78d82388adb6ff87eedc9be3c49e01188` |
| 35 | `def` | [T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/t.md) | 438 | `declaration-track:30c201072fcea0b04dd57efc4d86583d84f4410f7ba96324cc924e96fb56dccf` |
| 36 | `def` | [REuclidean](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/reuclidean.md) | 442 | `declaration-track:e0551afc89c492fdc2cb3d2d41187a964586d7f5bde1479dedc4aa0df53d565c` |
| 37 | `def` | [TEuclidean](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/teuclidean.md) | 446 | `declaration-track:0c3e47083e2dab07cd3840248199a283b6a427a8f798a3abc5ee07408623a052` |
| 38 | `theorem` | [quarter_turn_adapter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/quarter-turn-adapter.md) | 450 | `result-track:c99bd763f0cf658cb449e470eec2fbee82d06a0241b07b908c51cb2ba9284b74` |
| 39 | `theorem` | [quarter_turn_words](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/quarter-turn-words.md) | 453 | `result-track:4470d511e636e4937d87b089a417588b65b7689bb7c58f4de0897795603b6427` |
| 40 | `theorem` | [quarter_turn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/quarter-turn.md) | 455 | `result-track:eb0e52836c802ce23e97740d9e300cac0856d8a58f7c0d68c2eeb8228f8df4c9` |
| 41 | `def` | [embedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/embedding.md) | 459 | `declaration-track:344769649d1114f5b885e171d17193fbd038d07cb2136108775b5a323ed7ca07` |
| 42 | `def` | [vertexMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/vertexmap.md) | 467 | `declaration-track:9fb353cbd5ac52b35d892e32e87fbccbf101a79618c64bcd13693ee70233a705` |
| 43 | `theorem` | [embedding_gram](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/embedding-gram.md) | 468 | `result-track:78a113eb29338c631153b091da574b7b880532265842402845619d9aaa903d3e` |
| 44 | `theorem` | [embedding_intertwining](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/embedding-intertwining.md) | 469 | `result-track:0692edca0c4fdc558622f88654b16084226a338b3734621f35d47345928aa68c` |
| 45 | `theorem` | [coordinate_complement_not_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/coordinate-complement-not-invariant.md) | 472 | `result-track:4638ede906cbc9d2577fdfb918cbaf8983ad4881620a318ce13f461c28266448` |
| 46 | `def` | [RExt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/rext.md) | 474 | `declaration-track:25d3e76113f28993f7b0b6c8802bd2698d81221c9b3614839f1279a63562adde` |
| 47 | `def` | [TExt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/text.md) | 476 | `declaration-track:c13d1a4980b55b5f6e7674602269e01d61c8cfb74349bc2d92c87a9981aca706` |
| 48 | `theorem` | [extended_words](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/extended-words.md) | 478 | `result-track:e22ece0d30dccb9ae21feed7eacd06506e85797243cc47cfe3e58370353c9327` |
| 49 | `theorem` | [sector_anticommutation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/sector-anticommutation.md) | 480 | `result-track:abfc6e141d4fcf23014a04653b0bfc5cadbf95c16f5b21bca9993e38b1cc5d38` |
| 50 | `theorem` | [ambient_anticommutation_fails](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1Namespaced.lean/declarations/ambient-anticommutation-fails.md) | 481 | `result-track:66aeb0e2667393c24bf4c5a3ea63bcb39b3eaaa9081af099eb67da2a1b691fac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=594206ed536a1d9393ddfcf419a240bd5d5d78fb0bc795f31b272646a297f219 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
