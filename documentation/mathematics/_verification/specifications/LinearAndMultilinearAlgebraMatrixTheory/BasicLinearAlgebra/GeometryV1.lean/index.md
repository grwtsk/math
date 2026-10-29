# Verification target: Geometry V1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52ca3a1e6f05b37729821e425c1db72a01302135",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52ca3a1e6f05b37729821e425c1db72a01302135`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [d4A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4a.md) | 8 | `declaration-track:63ad4ec3bc25043f059ca4341eee36198895c4584aa563bb3b1f2d989594d4f0` |
| 2 | `def` | [d4C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4c.md) | 12 | `declaration-track:6b2d185b1dfaf97ea36d4b431b4e26e4191d02c3520339b901efaf6add426cf2` |
| 3 | `def` | [d4Coxeter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4coxeter.md) | 16 | `declaration-track:5c723ab91f9a861cd080d954e4ab6d80a3797364634a0c53c2f53e541697bf94` |
| 4 | `def` | [d4Powers](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4powers.md) | 20 | `declaration-track:fa4e5bc09f2769b2a7dd3adb11a861d228bdcaa237db3f670ccc81144da48d89` |
| 5 | `theorem` | [d4_matrix_metric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-matrix-metric.md) | 44 | `result-track:b1d978c5fb2a06150afa204483c5686158bc6a6650c373f7cff51d67c8d23678` |
| 6 | `theorem` | [d4_coxeter_word](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-coxeter-word.md) | 48 | `result-track:883ff95e9bfe22f11a90006188440da645aab2e036f2b8add87a604bb8ab718d` |
| 7 | `theorem` | [d4_power_recurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-power-recurrence.md) | 51 | `result-track:725f7911ce92e9269c377ec29c6ed67637c1acf08a89f462b5fe0387ee9f4f4e` |
| 8 | `theorem` | [d4_pow_certificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-pow-certificate.md) | 55 | `result-track:9d48c255b9df7af6f878d2b7e267110e0e9bf1cd6cfc729df5e0046b565f63d1` |
| 9 | `theorem` | [d4_coxeter_exact_order](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-coxeter-exact-order.md) | 62 | `result-track:e41060c5824f8200e0674b5ca533fb68735caecffa7975853388f47af21d500f` |
| 10 | `def` | [d4CQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4cq.md) | 72 | `declaration-track:02fa859cb732a80e0081a9110c6a7f761c0df4e49ecb7416fa52b2e0a833d2cb` |
| 11 | `def` | [d4L](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4l.md) | 76 | `declaration-track:6b80ee377194445c7c0d9022d16a59a1e81f601187eb25d876ac2523967fb063` |
| 12 | `def` | [d4D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4d.md) | 80 | `declaration-track:507bd5aa71359be28bd9fc9574e8c3d11b29782e05b920b9c1bfd43cf28fed44` |
| 13 | `theorem` | [d4_ldl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-ldl.md) | 82 | `result-track:7a9f9c53bf517a709b313c520b280a38ea2a3f8c42a3df2deff8b709a6049e52` |
| 14 | `theorem` | [d4_lower_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-lower-det.md) | 85 | `result-track:f466ed687e4f463e735bb65dc63bd04085d0ded7c8f08d21370519d53f8ec7a5` |
| 15 | `theorem` | [d4_positive_definite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-positive-definite.md) | 90 | `result-track:22d6d02dfe2fe4c9fe8eef8d0e218cf9ae21edea357c757cd29552be9595699a` |
| 16 | `theorem` | [d4_determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/d4-determinant.md) | 100 | `result-track:0d896bd2c48cb297ee3bc2dd6d5a62451865a6b863524a3c2325c383b91d86b4` |
| 17 | `def` | [e8A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8a.md) | 107 | `declaration-track:95c9765d41c274c9c20d82e1c95aa6671c5888d8301a9c782e42da4f2665a18e` |
| 18 | `def` | [e8C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8c.md) | 115 | `declaration-track:c7c782b33f7b03a0514acca2a0286ba8ac48b626fb5bc8abbfb17068c6f9ffae` |
| 19 | `def` | [e8Coxeter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8coxeter.md) | 123 | `declaration-track:3fca9a67298937d50d82bea47234760ca20067aa2aad51fe561b47edd68a98f9` |
| 20 | `def` | [e8Powers](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8powers.md) | 131 | `declaration-track:defa7db6aa39735408309bb9c9416b470beb62f11044f23eea3960b98f969051` |
| 21 | `theorem` | [e8_matrix_metric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-matrix-metric.md) | 351 | `result-track:789a27237f2ec431a6725195fef6da7c8274fb63d3795d77e1dcaf41e9476522` |
| 22 | `theorem` | [e8_coxeter_word](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-coxeter-word.md) | 355 | `result-track:ca6ffefb0d93fd395dc8f804d6705b300935636e3c1df4e7ac2b0d9e46f3cfc3` |
| 23 | `theorem` | [e8_power_recurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-power-recurrence.md) | 358 | `result-track:691b1442779cdd7a6be9d24c25be74f195388ec7c0c8f765831d2fe2e8b9d9f8` |
| 24 | `theorem` | [e8_pow_certificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-pow-certificate.md) | 362 | `result-track:3178980e77de9abde97cad7461652252dc8927e6d26e05cd12ab30424a278d9d` |
| 25 | `theorem` | [e8_coxeter_exact_order](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-coxeter-exact-order.md) | 369 | `result-track:662b913a01f38555d61b0634dc078918971b15f43c3253b78408db22dfe501a2` |
| 26 | `def` | [e8CQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8cq.md) | 379 | `declaration-track:f4ba9e4b729ccdce6ada952c7e0e9daabada8f44fe156bb3aa1d7aff18008e70` |
| 27 | `def` | [e8L](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8l.md) | 387 | `declaration-track:74422fa3d5236907bc6495efc0fd12f5a6f60cee713960756786d31a0ac2ac46` |
| 28 | `def` | [e8D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8d.md) | 395 | `declaration-track:2dc82b6a519ac7e34400ff6f3f2479c4ac0341a633972654c8c554a10c8a0519` |
| 29 | `theorem` | [e8_ldl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-ldl.md) | 397 | `result-track:bbe8c02b44454148511b16cfd474f35304b971960acce8310f4da713a07c01ee` |
| 30 | `theorem` | [e8_lower_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-lower-det.md) | 400 | `result-track:d3c8a1c9f31ca5db227ac54f19f85781475ecf99f7bed9e9411a96e2968b8418` |
| 31 | `theorem` | [e8_positive_definite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-positive-definite.md) | 405 | `result-track:cd6f3d85063bcc4c58babe2231c1efec1628684629de84b6f0961c5cc8978e48` |
| 32 | `theorem` | [e8_determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/e8-determinant.md) | 415 | `result-track:e63f50a5fae279456fdecfa43b1ddb9a750dbeda023df358761a0d02e673d874` |
| 33 | `def` | [rootBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/rootbasis.md) | 422 | `declaration-track:9b334be1aa73ffcf3f9dbe91cf2114dc42034cda77e184a056d762505e354c5b` |
| 34 | `def` | [R](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/r.md) | 426 | `declaration-track:9f3a729b4bb3aeb5c1465ee1a84c818643545e2e00d2186d15cde0e1a5e3bdea` |
| 35 | `def` | [T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/t.md) | 430 | `declaration-track:16795c6955f3cfaea40b34c7b396d1733940ba8a509c76aa72f50689374e944f` |
| 36 | `def` | [REuclidean](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/reuclidean.md) | 434 | `declaration-track:f4fed00befb63bcfa3df588c765a372a330509db84750b37ba1f3ef13d150baa` |
| 37 | `def` | [TEuclidean](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/teuclidean.md) | 438 | `declaration-track:f20824a88d9258165f1680199ba1721f071079b83eace5731e0121572fd1297b` |
| 38 | `theorem` | [quarter_turn_adapter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/quarter-turn-adapter.md) | 442 | `result-track:64004c7a7002cca890c0dd3d9e99299418afe10a94b10aecc3c2212859bb056c` |
| 39 | `theorem` | [quarter_turn_words](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/quarter-turn-words.md) | 445 | `result-track:fe1a87009c4031880ae3f63934a4bf157c88fb33dc40b9351df30cdd47023788` |
| 40 | `theorem` | [quarter_turn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/quarter-turn.md) | 447 | `result-track:5012406e30c32526c778e7a4a947b1191b8edb044aa11295835eaa809fa6e934` |
| 41 | `def` | [embedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/embedding.md) | 451 | `declaration-track:031ed7d75ad68156713abd8abbc479ce7d1ba7fca5a06204e11e5a519eaf2fc2` |
| 42 | `def` | [vertexMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/vertexmap.md) | 459 | `declaration-track:8a67bfb3163d01e528302c222c920fc3033fefd74b2e3a638869173eb2ce4a37` |
| 43 | `theorem` | [embedding_gram](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/embedding-gram.md) | 460 | `result-track:81a702e00ad1755fc627a7cb0b6e17f38baf08f52a497ad60082a4af4d418b31` |
| 44 | `theorem` | [embedding_intertwining](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/embedding-intertwining.md) | 461 | `result-track:8b1fa2a28b8cc8216d3634194ed7db8114c82f22a44cd481adfc5eda0591fef7` |
| 45 | `theorem` | [coordinate_complement_not_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/coordinate-complement-not-invariant.md) | 464 | `result-track:d60d31d10914f59015aa806a302265519cec04d2921f3f45937b5a2dcb4ff72b` |
| 46 | `def` | [RExt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/rext.md) | 466 | `declaration-track:b2447781e1d28949a2484a472a192fb0b9ef90928f70f54965c813436b353462` |
| 47 | `def` | [TExt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/text.md) | 468 | `declaration-track:8947a12df055c66e4c834281db24b3eea79ed32a88f2d3cd5f80dd8928bf0e33` |
| 48 | `theorem` | [extended_words](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/extended-words.md) | 470 | `result-track:6cf9b49c192bb4a444c1584d1552ea059ae3472200538e6db30e69ca68e7d7ad` |
| 49 | `theorem` | [sector_anticommutation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/sector-anticommutation.md) | 472 | `result-track:282540b5584dfb2cbdfd20daa7fe2758b4fd0686132c87fc9a5d495b33b14a13` |
| 50 | `theorem` | [ambient_anticommutation_fails](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeometryV1.lean/declarations/ambient-anticommutation-fails.md) | 473 | `result-track:7b9361505475052764e2840d1c28d2cf2cf90d0a55b7e2276a0ca4fb8c88d96a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15c3d28a34c72bcb4435f09e0d9275663569d731a7388a512e6af963079ac3ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
