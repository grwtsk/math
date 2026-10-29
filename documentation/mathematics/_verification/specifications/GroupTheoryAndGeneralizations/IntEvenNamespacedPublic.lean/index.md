# Verification target: Int Even Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5965dc813c6cb6d4d223d71294569a474b48cf6e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Variantd2dafcf6496f9403ac07953c908a6e964ac4fa9d1543eb1516b9ede06cf2c00e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5965dc813c6cb6d4d223d71294569a474b48cf6e`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Variantd2dafcf6496f9403ac07953c908a6e964ac4fa9d1543eb1516b9ede06cf2c00e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Variantd2dafcf6496f9403ac07953c908a6e964ac4fa9d1543eb1516b9ede06cf2c00e.lean.json)

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
| 1 | `lemma` | [emod_two_ne_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/emod-two-ne-one.md) | 35 | `result-track:460d6b590c0ec5ac8af22981221eb339fcd448bdb94187c0110f5777ceae4cbb` |
| 2 | `lemma` | [one_emod_two](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/one-emod-two.md) | 37 | `result-track:89139e54cd07406c6cbc6a36828aa1d0b07dd785196dff316a1eb857c47ec6ad` |
| 3 | `lemma` | [emod_two_ne_zero](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/emod-two-ne-zero.md) | 40 | `result-track:6d62f0ca2f2254db895b625abbb6241b8ea6b18221e1efe7b924e630e0565f90` |
| 4 | `lemma` | [even_iff](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-iff.md) | 43 | `result-track:2be91c99b0f22ef6b5faa5954c2c6df238dfbf961b61a71fa2c83d7ecd110a89` |
| 5 | `lemma` | [not_even_iff](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/not-even-iff.md) | 47 | `result-track:b5d9c6dbabb01bbecb7d0ec9b3631a9e2d7c05af701b093a9cc07586fdc99540` |
| 6 | `lemma` | [two_dvd_ne_zero](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/two-dvd-ne-zero.md) | 49 | `result-track:6a2d0529eabfc0ad8f638a6d369d17518bd9d8b1a28dd4bf6cc1485bdedf4b51` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/instance.md) | 51 | `declaration-track:1e5691e64ec1140ae91f6f02a522338e9c6f0fc21ad055e3b0aefb7f1d7a683c` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 54 | `declaration-track:aa9eb5f42a04b2c3c383d82a141ce65a61b88eb184d4e5f5dd8620cb28ca372b` |
| 9 | `lemma` | [not_even_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/not-even-one.md) | 58 | `result-track:6fc2c76d433de6e6cde0a3b22eff30be1d1d55deb1c9d6f28db9c05171173c28` |
| 10 | `lemma` | [even_add](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-add.md) | 60 | `result-track:2e94647cd43940d97bf11f13bcaba53c1079556ec228f32a080c7b3d7bf8e968` |
| 11 | `lemma` | [two_not_dvd_two_mul_add_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/two-not-dvd-two-mul-add-one.md) | 62 | `result-track:5a6d094223fd321b834e0d03089b3972500105d84e9cd651e0748d799bb91be6` |
| 12 | `lemma` | [even_sub](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-sub.md) | 65 | `result-track:99356379d68a3c1a6c0ec249dcf6c13c4a3b426a5937a8afde2902521fe71c5b` |
| 13 | `lemma` | [even_add_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-add-one.md) | 67 | `result-track:d4f9468264484595c5de4fcf6fee8da9faa469374b08a5539c593ba7ae5fa2b9` |
| 14 | `lemma` | [even_sub_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-sub-one.md) | 69 | `result-track:275d80f20a93b88b9df5da499a3645c751d9e20e0654857a8ba265ec1a450be9` |
| 15 | `lemma` | [even_mul](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-mul.md) | 71 | `result-track:b36adce7c10261324a72b04dfa700a9cb88d403dad319e4cd2f0e15778812199` |
| 16 | `lemma` | [even_pow](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-pow-source-edition-2.md) | 76 | `result-track:f36e5ddd802b6014622eea5fee751a971af9bee121481669a5ecbc798dcbe9b3` |
| 17 | `lemma` | [even_pow'](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-pow.md) | 79 | `result-track:8c419d28107e00d28355436d68b6ecdacb5c248eb32a56a7fd51fe688802a363` |
| 18 | `lemma` | [even_coe_nat](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/even-coe-nat.md) | 82 | `result-track:10c066abd17e0403d3fcfed91b9e78de4f3c64dd9ad531ce688fe5e935852ed9` |
| 19 | `lemma` | [two_mul_ediv_two_of_even](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/two-mul-ediv-two-of-even.md) | 85 | `result-track:ff75e25ea1ff8e1d60ff2673b5a2c521ff984763e04a3cb169ad23c68291bf51` |
| 20 | `lemma` | [ediv_two_mul_two_of_even](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/ediv-two-mul-two-of-even.md) | 87 | `result-track:ad7a9e1a66a458f04a4471e07185db64e7e1ff93f44aeba4fcff660b995cb8b9` |
| 21 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/example.md) | 90 | `declaration-track:02f731ae485e60ba8f8a241f2d3a392f2503e3d6b95bb843dc01fc6e39461c4e` |
| 22 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/example-source-edition-2.md) | 93 | `declaration-track:fd55a816c3445d62dd2088d9ecba8dd798321f37b9d6bb5787fff353bf86f26e` |
| 23 | `theorem` | [isSquare_sign_iff](../../../../GroupTheoryAndGeneralizations/IntEvenNamespacedPublic.lean/declarations/issquare-sign-iff.md) | 96 | `result-track:f948f305f647e4123d38a940cd63665ec56c118458e47351f424c85f4f0c65e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c2f2bf6542d4a0cca7d26c3a6aa2c9a4bb1994790b43ad0c3070d4cee2671d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Even/Variantd2dafcf6496f9403ac07953c908a6e964ac4fa9d1543eb1516b9ede06cf2c00e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Even/Variantd2dafcf6496f9403ac07953c908a6e964ac4fa9d1543eb1516b9ede06cf2c00e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
