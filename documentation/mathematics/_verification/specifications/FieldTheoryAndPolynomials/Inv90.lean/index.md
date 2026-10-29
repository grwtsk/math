# Verification target: GRWTSK.Algebra.FiniteField.GF128.Inv90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edbec30a7c3e5a2dc578002b6c4b9de1797f7054",
  "lexical_observation_count": 385,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Inv90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/Inv90.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/Inv90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edbec30a7c3e5a2dc578002b6c4b9de1797f7054`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Inv90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Inv90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.InverseSteps`](../../../../FieldTheoryAndPolynomials/InverseSteps.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv90_square0](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square0.md) | 6 | `result-track:23ff655b7cfffc79b5482b6c123b54a6f7f27e644567bf6de259c2655ff561af` |
| 2 | `theorem` | [inv90_square1](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square1.md) | 7 | `result-track:5f641cd602117f4e87160b9f9fa162cf4414a1474229e7daabea01c833c26ec3` |
| 3 | `theorem` | [inv90_product1](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product1.md) | 8 | `result-track:5c10111916908d49bafbd98efd051c61b5b67072e5a53aeb969ed3574b5bf07b` |
| 4 | `theorem` | [inv90_square2](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square2.md) | 9 | `result-track:efa39d674582b8d969060a442929fcdc6df32a49536ee798a888ba6c825573d3` |
| 5 | `theorem` | [inv90_product2](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product2.md) | 10 | `result-track:ffbf2cb451a27c59a5e0e41463fa0e8edc2c379129e3dcdbf936e04049dadbc1` |
| 6 | `theorem` | [inv90_square3](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square3.md) | 11 | `result-track:2dec76053925ed90da05f888fa1d8054e3925bc489deacd36baed0c1ff9f92f9` |
| 7 | `theorem` | [inv90_product3](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product3.md) | 12 | `result-track:5b6fc6912893a2e33b98a9d76d6d2ecd04d6ff9faaf95a8e7e7d305655aa45cf` |
| 8 | `theorem` | [inv90_square4](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square4.md) | 13 | `result-track:a7d27f7240d8991dd698169f00d75e1edf8adc278b76b07cbafa2a8d91c0768e` |
| 9 | `theorem` | [inv90_product4](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product4.md) | 14 | `result-track:27088453bdb00570907486cfdccab82e9e0d77139ae6fa30681b6118da836b78` |
| 10 | `theorem` | [inv90_square5](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square5.md) | 15 | `result-track:0ca3fbdd339d3f3786acc3108a98e516637beff6a8474841058afd1a42c89aaa` |
| 11 | `theorem` | [inv90_product5](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product5.md) | 16 | `result-track:bc8afeaf54f33e2d016fe9dc68c8191cd5f5ca7a5dc3e76605fe30e6350d7d08` |
| 12 | `theorem` | [inv90_square6](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square6.md) | 17 | `result-track:89acfb2eb65eaaab3cd779b613a4007d2685f378d976b9024bb89f36f659eee6` |
| 13 | `theorem` | [inv90_product6](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product6.md) | 18 | `result-track:a882329452d29d1925625806c2d49289dca5a75a32c9ad79a558831ab5b404cf` |
| 14 | `theorem` | [inv90_square7](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square7.md) | 19 | `result-track:3aff385a1b5dc296363743f3addeeb80c309fbd7207c625a8a22dec85ffcbaef` |
| 15 | `theorem` | [inv90_product7](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product7.md) | 20 | `result-track:4cd4f90d9deb7bed58d47aaace893ec09ce5a5657edf33d8ee2bc89481ba2b2d` |
| 16 | `theorem` | [inv90_square8](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square8.md) | 21 | `result-track:3ce69c27b44c1831a87d5d1785da63077cc06b2804e5384817a429fae3460b0f` |
| 17 | `theorem` | [inv90_product8](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product8.md) | 22 | `result-track:7d8f0873afd9b02e2681384968c6578bf6a13d18034043ce0b01e226c1d033d8` |
| 18 | `theorem` | [inv90_square9](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square9.md) | 23 | `result-track:31dd2cca24861a8555d615068e7e8fb0a691e913b131f87669ebc34558872fea` |
| 19 | `theorem` | [inv90_product9](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product9.md) | 24 | `result-track:9d7a02eb842231fefed17b58612fe745b93e3aa34ab96244c96286daaec8c617` |
| 20 | `theorem` | [inv90_square10](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square10.md) | 25 | `result-track:4ae53d15599667e48c40076c76334e64acb482bae50ec13b9f8a87098774bda5` |
| 21 | `theorem` | [inv90_product10](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product10.md) | 26 | `result-track:63978403c7a1fb2669707764a2c2aa254d9bfc3a3c002bb7799f8cebc7a5a9e0` |
| 22 | `theorem` | [inv90_square11](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square11.md) | 27 | `result-track:2ec01f70c9d9c9d1b2597a620a39256bb109c120d322d8dbd3cca6e71ebedfe5` |
| 23 | `theorem` | [inv90_product11](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product11.md) | 28 | `result-track:3d14beb063a23aa5829d030663e57acd1bf07bc980e845392aef48da6e3d45ca` |
| 24 | `theorem` | [inv90_square12](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square12.md) | 29 | `result-track:8176da9e226ba680dc0f8e15fad452c79100898cb1843b27a1679f474c419f53` |
| 25 | `theorem` | [inv90_product12](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product12.md) | 30 | `result-track:e47d26f0cd16db3091c2f983f126d8736562eb14d0c8a17f9393770de8bd052d` |
| 26 | `theorem` | [inv90_square13](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square13.md) | 31 | `result-track:fc269edfce815651650f5cb0c81e4c849f87fbdd08b46e3bea0d2cd726e09744` |
| 27 | `theorem` | [inv90_product13](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product13.md) | 32 | `result-track:c3f2685b72d860ede183640fcf98f5b3b906e48204c0e0cae58fca27eb71e2d8` |
| 28 | `theorem` | [inv90_square14](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square14.md) | 33 | `result-track:f5233ac4229533a7332db9f823758346ab5a41829e651f678f4f6f758b986524` |
| 29 | `theorem` | [inv90_product14](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product14.md) | 34 | `result-track:73b75c29643415d55e3cbd611a982b088374f0cb9a6c6f7ba58bccd6ed01befc` |
| 30 | `theorem` | [inv90_square15](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square15.md) | 35 | `result-track:dff093c1d708da7561be1f3952afdf049371252828ff9abc13af970126afd749` |
| 31 | `theorem` | [inv90_product15](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product15.md) | 36 | `result-track:823e3c7326cbb7f22f10071f3879e3059f9ad8ccf7a556ac369021fee0918749` |
| 32 | `theorem` | [inv90_square16](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square16.md) | 37 | `result-track:91e22d85f3b65017e395d056b6af0e4b7bd42a440239b735dee32267cb742550` |
| 33 | `theorem` | [inv90_product16](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product16.md) | 38 | `result-track:f0ec2a16025ef3814b3bdeb12a1ab4fd26b0edad05dcb9a2684f94ffc974b1dc` |
| 34 | `theorem` | [inv90_square17](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square17.md) | 39 | `result-track:f009363ff1f9c70b4c31c8b22b3743e2da4d1e49aa7e9d53a6e70d43c7852e6e` |
| 35 | `theorem` | [inv90_product17](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product17.md) | 40 | `result-track:515c5d4839cf63cf61a180624988e51248fd4053076ebc506cf9202363038058` |
| 36 | `theorem` | [inv90_square18](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square18.md) | 41 | `result-track:126ade297cc5e9d0c20d4fac34466338fda8130d3764e6d6f1e12c663065719e` |
| 37 | `theorem` | [inv90_product18](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product18.md) | 42 | `result-track:6af31c2e931e2fb571fdef10431a3de61245bbdddb97bee30ff1b2ee589bf4f1` |
| 38 | `theorem` | [inv90_square19](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square19.md) | 43 | `result-track:578b282866700b3cde45d02bcc7a02a5f2e58a6bcf96ba116b16e9361bf9e4cf` |
| 39 | `theorem` | [inv90_product19](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product19.md) | 44 | `result-track:0be0b76b6accba6307a7a19658fc7f8970b9e315949d713393c566cb15ffba5b` |
| 40 | `theorem` | [inv90_square20](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square20.md) | 45 | `result-track:65a16e79ae918775de48a30d8fcb794b57cfb5af8a7c0206ff5d54b13bc2646f` |
| 41 | `theorem` | [inv90_product20](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product20.md) | 46 | `result-track:1473c7e4f50ccc4d7a9c05250032e71f6fcc10b5eb21c652c3068b569f78e43c` |
| 42 | `theorem` | [inv90_square21](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square21.md) | 47 | `result-track:d4c2c9a89969e56c232c6d4c06b14b35409a0f2b0dff470b829092bd20f05162` |
| 43 | `theorem` | [inv90_product21](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product21.md) | 48 | `result-track:0948f3af575deb76380eb2001541a3ff986ea10cc332b6a0e7b304cd4855fe0a` |
| 44 | `theorem` | [inv90_square22](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square22.md) | 49 | `result-track:6773b145fcc584374eed49556b1094bf1ced009586a6cc028b5d4b531fae00b7` |
| 45 | `theorem` | [inv90_product22](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product22.md) | 50 | `result-track:a1ed40a47fa96a77e017d4c42093dc95b949fd7a7022947bc20ae98436711ab9` |
| 46 | `theorem` | [inv90_square23](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square23.md) | 51 | `result-track:e76cac619f438240d6118fcec6f3e0af42a7b8d41890a85376698f4d951e6ff2` |
| 47 | `theorem` | [inv90_product23](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product23.md) | 52 | `result-track:8a38325e099d9edb0565c58a455ac61cd30d3fdf92add53938da151e3bed6337` |
| 48 | `theorem` | [inv90_square24](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square24.md) | 53 | `result-track:d7a6839e612056a4fdcd456489d6278a688cc687036ee8ff2ac32fc2329f13f7` |
| 49 | `theorem` | [inv90_product24](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product24.md) | 54 | `result-track:12079a01c1cbe2f89cf79075f71b01599770db98db5bf841d3ee6a35625e2b1c` |
| 50 | `theorem` | [inv90_square25](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square25.md) | 55 | `result-track:9e46eee14e7f7948bfe9496d50be66dd857e81216bee22757d77b02c985fe8db` |
| 51 | `theorem` | [inv90_product25](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product25.md) | 56 | `result-track:9b0e977cd9c6ab79787e82ace9bdea5e2daf2e465bd4059c9303cd51987e8f83` |
| 52 | `theorem` | [inv90_square26](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square26.md) | 57 | `result-track:ce93b97935a7264760e67e51d9cb6fe7b0d50b6172f4ef2e5b35f719b4222154` |
| 53 | `theorem` | [inv90_product26](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product26.md) | 58 | `result-track:308891cb125bccb6c05127afe8a55c890350037820059f6152e2905ac7019172` |
| 54 | `theorem` | [inv90_square27](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square27.md) | 59 | `result-track:ec1f0914e020d4f40691e00814409e8c92cd60a85d4b72835dcc5a2f44a805c7` |
| 55 | `theorem` | [inv90_product27](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product27.md) | 60 | `result-track:a7d9cf6c4ff363c48920748f36f067f64d28e983654a0b2daf8b79a5aee3dcb0` |
| 56 | `theorem` | [inv90_square28](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square28.md) | 61 | `result-track:abe1714980e66f15aa518e2ecf62b81742da16538a634258635f7b1bd4b89ca9` |
| 57 | `theorem` | [inv90_product28](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product28.md) | 62 | `result-track:7946dd50a1573821623f32b52da3c03594af9f65bde0fcd4eff5addf5219797b` |
| 58 | `theorem` | [inv90_square29](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square29.md) | 63 | `result-track:94c473116d3db9c575b3fb75242f5d3e1504ac4f995d81986dbbe1f3de391371` |
| 59 | `theorem` | [inv90_product29](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product29.md) | 64 | `result-track:1d4140abed2c39337c0dc34d20cb394d0b53013b5ddef4cc9c737309133481bf` |
| 60 | `theorem` | [inv90_square30](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square30.md) | 65 | `result-track:e1bfac5d77d7364ad32f13227b29613d50c374d7f79ebbabbd16be5b2290c87f` |
| 61 | `theorem` | [inv90_product30](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product30.md) | 66 | `result-track:32fc3fc26fa878e9cf2dc94d8c9cbdef18043455aebec670fef5c16852b2ba37` |
| 62 | `theorem` | [inv90_square31](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square31.md) | 67 | `result-track:ed45caf9a1d7d111e8936ceb671a599281d9eb50a19ae4db687f5f17cf448c69` |
| 63 | `theorem` | [inv90_product31](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product31.md) | 68 | `result-track:88650adb0dbbd5dddf08e673e6edc74d3dea5e8028d6d0eb7735645a5827caa5` |
| 64 | `theorem` | [inv90_square32](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square32.md) | 69 | `result-track:14eb9f49ccde509254057ad3932e0ecdd6551379bad9f551b5329325d236d01f` |
| 65 | `theorem` | [inv90_product32](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product32.md) | 70 | `result-track:583fc34e1851ea13a3933e4f16670a69125828221c06f0be714a0093eaff20e8` |
| 66 | `theorem` | [inv90_square33](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square33.md) | 71 | `result-track:58e38cc204a852c3aea558d9c839d0e3b69bb597dc2e492c91fc66afe08cac19` |
| 67 | `theorem` | [inv90_product33](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product33.md) | 72 | `result-track:f60f1610f86285a2082abeeeb3f22c21b11ee61106dac49c72f94bd8f70bdfd0` |
| 68 | `theorem` | [inv90_square34](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square34.md) | 73 | `result-track:c8bb7da6af1d9d5eacf0f6ad8a856d13fca567c65b8218c59da8ff6e74b60cb0` |
| 69 | `theorem` | [inv90_product34](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product34.md) | 74 | `result-track:1542d4c5bc6a4f421c6b3103b67371944eef943ba5c90ae916f3d0bd99e91779` |
| 70 | `theorem` | [inv90_square35](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square35.md) | 75 | `result-track:6255b7bae0c7d061a42f34a2da6a5251b0b49595984fc8450ae98b30472aa3ab` |
| 71 | `theorem` | [inv90_product35](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product35.md) | 76 | `result-track:b8c73d46d597254065a278c1ed8ff19f14e246f8f11437069f5d66a23d793b14` |
| 72 | `theorem` | [inv90_square36](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square36.md) | 77 | `result-track:3517515965ff0d0b3cfb7576542006fcb2dc64a88917ba689985d8f0f7933813` |
| 73 | `theorem` | [inv90_product36](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product36.md) | 78 | `result-track:188be6a374dd3dd177df5a82edbab1bbfe791a0373b3f7decce9525e74970d2d` |
| 74 | `theorem` | [inv90_square37](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square37.md) | 79 | `result-track:b2ffed213ea029686535735e4b5815e0c42cb1e9438de05b1f96872d3aba6acc` |
| 75 | `theorem` | [inv90_product37](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product37.md) | 80 | `result-track:b01937f56dfbca48a4e33f20992092cb9d2f97d9c4e907784ba6d655505ef44e` |
| 76 | `theorem` | [inv90_square38](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square38.md) | 81 | `result-track:b3bb6c16aaf2d686082793c6cc950b395fc668a3351b133d83cd5e9290481308` |
| 77 | `theorem` | [inv90_product38](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product38.md) | 82 | `result-track:f495cd8654e0f4884df4ad169cb148fe8fed58e1b8160590883ccdbdb6b42d03` |
| 78 | `theorem` | [inv90_square39](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square39.md) | 83 | `result-track:46e6a884d0df832a810e8f84e63cd69e8e7102ce4c12b395e797210e5be33b68` |
| 79 | `theorem` | [inv90_product39](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product39.md) | 84 | `result-track:607e62cf595a5d0f1e7ae38306440eb4fb7eeb878d5ef858c6356c046df3f346` |
| 80 | `theorem` | [inv90_square40](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square40.md) | 85 | `result-track:06d459d816af88a0b2122ea5eeead025bddfcd8f05ab563c1aa137e13f5ce115` |
| 81 | `theorem` | [inv90_product40](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product40.md) | 86 | `result-track:6e87b88877860acde13008ee8d75df0da0bee06c4e57cf0a2188629b411f5db6` |
| 82 | `theorem` | [inv90_square41](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square41.md) | 87 | `result-track:fe835f130c327ca52002c700aa6e378db2ce58e1f860698204cbba35fc6490ca` |
| 83 | `theorem` | [inv90_product41](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product41.md) | 88 | `result-track:7962655503e7ddae47806ab34c785d475ce4b71eff8a496636ea96b3cc339ae6` |
| 84 | `theorem` | [inv90_square42](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square42.md) | 89 | `result-track:5c6abc9d283e6e22c6503a7cdff294125160d8ecbf06582b15df7f1a13b017de` |
| 85 | `theorem` | [inv90_product42](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product42.md) | 90 | `result-track:e4bd0ec0a6eab358acac51c4f80ca1123573c1d9efd5847641faf72ce5325e2a` |
| 86 | `theorem` | [inv90_square43](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square43.md) | 91 | `result-track:360603e0cf2fea87da8bba03a43b1af26b0e2fdd6935397a4ce1f73777cae8a8` |
| 87 | `theorem` | [inv90_product43](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product43.md) | 92 | `result-track:594f397c7220b9badbfc3b8d86ddeadd2fcd9e9c8c9a7b5d590108b79c6e8359` |
| 88 | `theorem` | [inv90_square44](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square44.md) | 93 | `result-track:a8e4de283ba23f500eadf134ac25b15373e9e6fd43f15236faaeb82edf3039a2` |
| 89 | `theorem` | [inv90_product44](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product44.md) | 94 | `result-track:0fd57ae7986056135591a46ba72f356c9a29b42e5ac27e24bbaf5fbaa626f6e4` |
| 90 | `theorem` | [inv90_square45](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square45.md) | 95 | `result-track:5482894960e6f1b1fe04af596e45688293086258b48f11990ad0015308777354` |
| 91 | `theorem` | [inv90_product45](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product45.md) | 96 | `result-track:8c06fc38792f9dc848611c30a5f5f1f81dfc3fed9c4d4ac0ebfa9f4675117566` |
| 92 | `theorem` | [inv90_square46](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square46.md) | 97 | `result-track:4a79036923a3f2de5c5bc1cd3660548f8ff2751cee7ca67aa5999f7d12c38800` |
| 93 | `theorem` | [inv90_product46](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product46.md) | 98 | `result-track:16550f5cacf724bd3d0928326bb2cfdffb266cb84e4893d534040330967ecab1` |
| 94 | `theorem` | [inv90_square47](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square47.md) | 99 | `result-track:0993a590d0906f2a2a3a7743eb28a122b05c406ea9c954c4e42c3185f1d2f757` |
| 95 | `theorem` | [inv90_product47](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product47.md) | 100 | `result-track:685bb5efa69dab30313b30d2686df5e1067c7653a4cf7613fc8feb13243dd612` |
| 96 | `theorem` | [inv90_square48](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square48.md) | 101 | `result-track:dea1b29cabf2e08cc60cc636a2ded2f169d6b902d45ab4dfe27f70fd6b864e00` |
| 97 | `theorem` | [inv90_product48](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product48.md) | 102 | `result-track:44478ca10bdb87c5f8307b960f7b15a86a79792ca04a3e18e5283408888c3102` |
| 98 | `theorem` | [inv90_square49](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square49.md) | 103 | `result-track:35355ce954509841f3c1ed03996754dee21049f51f50aad35d4b9df0c17bd744` |
| 99 | `theorem` | [inv90_product49](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product49.md) | 104 | `result-track:d25f44581c6137c17efcae6f55ffb0d257685b124eecfeeb28aaba18b56f76d2` |
| 100 | `theorem` | [inv90_square50](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square50.md) | 105 | `result-track:6fefe26ddf4a142c61e5e9d31b9d67cf60251aff777fab22f5f253b101c1f7d3` |
| 101 | `theorem` | [inv90_product50](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product50.md) | 106 | `result-track:6f0373ed3976ca1cebd0717e90d9444e1adc5a5855b189b29c6c979153cc4cd6` |
| 102 | `theorem` | [inv90_square51](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square51.md) | 107 | `result-track:a3af58196ef141a2733e996d77c6a8c6c7452274f9ee0f10b038418d0c5c3208` |
| 103 | `theorem` | [inv90_product51](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product51.md) | 108 | `result-track:851c007f88bde6e8a1deb3a68ce8287cf023389c642f266e4aa7f076c8f1a171` |
| 104 | `theorem` | [inv90_square52](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square52.md) | 109 | `result-track:e46fe5ba4cc0370dcbbde4cc26fddc927e4950f84be32573bd01741bfa07b3fd` |
| 105 | `theorem` | [inv90_product52](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product52.md) | 110 | `result-track:24da63cee5c10b54bc9f806c20d442a0bbbb942a87d8a0782bdbf74d0678a6a4` |
| 106 | `theorem` | [inv90_square53](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square53.md) | 111 | `result-track:7bf37d0053bc710864dd82802a959504471f8f18411b1ba43cb57b09bff48cd9` |
| 107 | `theorem` | [inv90_product53](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product53.md) | 112 | `result-track:17a0b11f73f442b122e46f7fd53ad7a8ea9cfb8c5d9566c1f15d1b98c2cacec3` |
| 108 | `theorem` | [inv90_square54](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square54.md) | 113 | `result-track:be91da112f85754ec560039cca0f6e84956dc994354f223f1cb8c18e22433df9` |
| 109 | `theorem` | [inv90_product54](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product54.md) | 114 | `result-track:37f042c0d38fe45a853bc35444172fb85af289b11551a265e67f285b0778a347` |
| 110 | `theorem` | [inv90_square55](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square55.md) | 115 | `result-track:0d6576c9c722215d77cdf8425406abddc087e7942e951feb5ec46fec2227eef8` |
| 111 | `theorem` | [inv90_product55](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product55.md) | 116 | `result-track:413dd3e14237bf301ae4197c0210a5d6ba4e6e189e3ce3bf0a2bdefe55e0752f` |
| 112 | `theorem` | [inv90_square56](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square56.md) | 117 | `result-track:502a6e0315e4f7f2ed4bf3541caea2565e1a98558c8b6f06e13955f405e4eb84` |
| 113 | `theorem` | [inv90_product56](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product56.md) | 118 | `result-track:de72130af3e7cea24c90d8b926f034332d5f6ab60ea2f577a7f0d00f2ed106d6` |
| 114 | `theorem` | [inv90_square57](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square57.md) | 119 | `result-track:4077f9370a9dd6768ae4a94692a975ac8a26495226b27ef6664750d3dcf71999` |
| 115 | `theorem` | [inv90_product57](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product57.md) | 120 | `result-track:d1db55f4fdfb5d821bb5e2a872427022320b8aadeb199e3adb9d88a60dba0252` |
| 116 | `theorem` | [inv90_square58](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square58.md) | 121 | `result-track:c1c1fedb4803d76e9669232873560a559f3eaca5b30f4ac118959bcb20544c86` |
| 117 | `theorem` | [inv90_product58](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product58.md) | 122 | `result-track:6db6309052210c9ca9eb0438479bcfb1ab78f295be3a3f59f007121d352701b3` |
| 118 | `theorem` | [inv90_square59](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square59.md) | 123 | `result-track:f3f2cda6d07357a5faa45460a9b4623863563b4e409a6641d5cf6d00b7da2962` |
| 119 | `theorem` | [inv90_product59](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product59.md) | 124 | `result-track:8a22b9c7ed4ff638216985b59bf2f0ce75914c63943fb4d5d84aac831ae2b09a` |
| 120 | `theorem` | [inv90_square60](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square60.md) | 125 | `result-track:41255d2cb5ee28547d3b43b0340fc8e6969341be21829d5adcdb6007632a928c` |
| 121 | `theorem` | [inv90_product60](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product60.md) | 126 | `result-track:3312b94e63b02bf935300780d03bcf4f4be6335fa9f237d24e6bc4a932e59512` |
| 122 | `theorem` | [inv90_square61](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square61.md) | 127 | `result-track:e88e690f9b040c5160802f0252c27fd0f6b659ebfd004090d568b88189d067a8` |
| 123 | `theorem` | [inv90_product61](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product61.md) | 128 | `result-track:f9236176210a79074fbbbb254c842691164569b597348aa8a7c533518762a5b3` |
| 124 | `theorem` | [inv90_square62](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square62.md) | 129 | `result-track:67012fc9dcdd3540a8e2a7cdf124b9515ad12e5ded083fe6f539e0a21bbaa697` |
| 125 | `theorem` | [inv90_product62](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product62.md) | 130 | `result-track:4af065168fc854be484d55339f18e75e2398683aa838f13bbcf602f88b005e50` |
| 126 | `theorem` | [inv90_square63](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square63.md) | 131 | `result-track:0b69c44b60385a9a6775d0eb3d17ef6073d65b12651d6e96b06274d6754a7f58` |
| 127 | `theorem` | [inv90_product63](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product63.md) | 132 | `result-track:63ead23ec36484723792835219716eba68e27acae4a7f2c23be6d7fd808ebf58` |
| 128 | `theorem` | [inv90_square64](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square64.md) | 133 | `result-track:a45b3578915d8dca772ac118177ee14900de160802b1450db79456cfb4ae15a4` |
| 129 | `theorem` | [inv90_product64](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product64.md) | 134 | `result-track:0de4b7535c152133b0220906c1c0e2bb42d3e50c1776cb8dd5f6e02701f13252` |
| 130 | `theorem` | [inv90_square65](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square65.md) | 135 | `result-track:51c59c2267e8a34eda6fc95c4631aa8174b9fac01b64896de609b97a5d015ffa` |
| 131 | `theorem` | [inv90_product65](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product65.md) | 136 | `result-track:b264d6e6d20932bec19cf140057146f3e3fe3620d3b6dd8f8eed5d13e5874079` |
| 132 | `theorem` | [inv90_square66](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square66.md) | 137 | `result-track:b888fe213594a37cbff77b5512934d80fec72076e1ad701af1d124a450822266` |
| 133 | `theorem` | [inv90_product66](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product66.md) | 138 | `result-track:2f2eddd45c2a24f9aea46d93948835705a97f42795025359e2fa0c45c565c1df` |
| 134 | `theorem` | [inv90_square67](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square67.md) | 139 | `result-track:7087621bf232cb04b1d7ce8e907ac6c515c7557ad71470b12b5e01aec81c8a7b` |
| 135 | `theorem` | [inv90_product67](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product67.md) | 140 | `result-track:ca72659a97bf2c913cd146f2a6366f0f44e0a014fa0b3775f0ed2ecf10c89cde` |
| 136 | `theorem` | [inv90_square68](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square68.md) | 141 | `result-track:8aa1a92d40196acc110288a774ff881abd7204f4930b91e8637090ccecf41f73` |
| 137 | `theorem` | [inv90_product68](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product68.md) | 142 | `result-track:580f89a5f4d7675b5a34d0b166afe62570be4376c633c6c44c10124f1e2395a0` |
| 138 | `theorem` | [inv90_square69](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square69.md) | 143 | `result-track:7fa5f51912c12ef4d8486cfa290e4095a909d5172e0bfd0a9417b8aea1629aab` |
| 139 | `theorem` | [inv90_product69](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product69.md) | 144 | `result-track:4e0eb22ff64f48e7a7e41c6e4f92b5c3c8020b262953b4a39f84d551a862facc` |
| 140 | `theorem` | [inv90_square70](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square70.md) | 145 | `result-track:ae9cdd4c0fd82be545430d43260c66cb5165b912d1124a06edb496fc8e30c640` |
| 141 | `theorem` | [inv90_product70](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product70.md) | 146 | `result-track:0b09a1aae3c53c47acb24726b159771b038a4ff9ba55b597e4f2181453110de8` |
| 142 | `theorem` | [inv90_square71](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square71.md) | 147 | `result-track:2d855817fba87c93abcd679085872c73e695869447e54173eb3945221f3fe5e3` |
| 143 | `theorem` | [inv90_product71](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product71.md) | 148 | `result-track:7017800245190b14b66b9563a1237f1b86f4bc1c1b73d5625b899e26aba35b75` |
| 144 | `theorem` | [inv90_square72](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square72.md) | 149 | `result-track:ceea21f7aca0c1f65df88878995bab3e3583ed1d0eeffa7bb9ad8b81b52fbb06` |
| 145 | `theorem` | [inv90_product72](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product72.md) | 150 | `result-track:1efbdbbd1003f694c42f95fa1aa6a5715085f30ae463090d9eb7f88b01c026a3` |
| 146 | `theorem` | [inv90_square73](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square73.md) | 151 | `result-track:b9c6ee5971ee65b80d97239dbdb5dc919d13bf4c6817c65836ecdae76d5d5991` |
| 147 | `theorem` | [inv90_product73](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product73.md) | 152 | `result-track:bf602e236df5293ca474d67bf49a21cec9de0c8c2cba6f6223803fd95f064faa` |
| 148 | `theorem` | [inv90_square74](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square74.md) | 153 | `result-track:707e081f3c9fbf2cc381995688c76ba26a18e875a076a7620a19a8b684e1edbc` |
| 149 | `theorem` | [inv90_product74](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product74.md) | 154 | `result-track:7b09a1cc502dbd3518fd2c04c780463ecd54b60c34d873257d2426fb81eb3bf7` |
| 150 | `theorem` | [inv90_square75](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square75.md) | 155 | `result-track:f6c12e5c040c00c8ac1668fd314d1d204bdfe9fa089c446c2a214846e1b64b63` |
| 151 | `theorem` | [inv90_product75](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product75.md) | 156 | `result-track:52e07f7f4aa82faa47c0f2f6139e39b0b171bc5b7080795a21ab62f4ae6b0947` |
| 152 | `theorem` | [inv90_square76](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square76.md) | 157 | `result-track:ddeaa8f004ebe09e1e685dcf19f958513f209dcbd52ca14da8ad3c68e028618d` |
| 153 | `theorem` | [inv90_product76](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product76.md) | 158 | `result-track:b07ac711dcd63d3f96ed8adc9012d6fea85b478137a71ad14fc9d7016b10f1b1` |
| 154 | `theorem` | [inv90_square77](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square77.md) | 159 | `result-track:b91ae96d3edbe56c1fd9832250bca44c265e4c863c94bb4905e42780b294a53d` |
| 155 | `theorem` | [inv90_product77](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product77.md) | 160 | `result-track:0acaa9fa34beedf64cf770a356ec7033a0583add4c3c14a0b4ffd2fa6b25076c` |
| 156 | `theorem` | [inv90_square78](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square78.md) | 161 | `result-track:29c0f996fa17f622a08fe240cf7b4ebed1985c836253e8c6daabb77221c72425` |
| 157 | `theorem` | [inv90_product78](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product78.md) | 162 | `result-track:bf956ec1b1ae83eb4a4fac55ec359ad9deb7a80e0dd66c21f2ce20fad4d6268e` |
| 158 | `theorem` | [inv90_square79](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square79.md) | 163 | `result-track:7d16659eb5c1c879c74d6433f9ec79eb0f4d1c9c575d88d08f523867fec1a414` |
| 159 | `theorem` | [inv90_product79](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product79.md) | 164 | `result-track:63aa94b99f7d6284f1fef4c36d27aded6e84f0741034ef644b2f9fcd4af179c2` |
| 160 | `theorem` | [inv90_square80](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square80.md) | 165 | `result-track:9a7d29be26e93511949e8274804e0f8c0a0a394cd6684f26c7a1f1b20069cec8` |
| 161 | `theorem` | [inv90_product80](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product80.md) | 166 | `result-track:f5dc1a07ba1bdd58b0b268f6fe3fc9e926ac5a7873f5574ef2a9abaee7e76655` |
| 162 | `theorem` | [inv90_square81](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square81.md) | 167 | `result-track:9b6ea7bbb0e217bc6f84a73b74d09c99edd4efa07cc51c92806126c871327b01` |
| 163 | `theorem` | [inv90_product81](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product81.md) | 168 | `result-track:fc971d53bace7c1937aa3012539d56992372b654979d2efad13e298aff628782` |
| 164 | `theorem` | [inv90_square82](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square82.md) | 169 | `result-track:bbdd28142f966b27292e91197ed03ada59f689b7d8d57fff2c9f771a53bc5f58` |
| 165 | `theorem` | [inv90_product82](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product82.md) | 170 | `result-track:4ee8e343b94d48bc02c9a7efe4a788a363dbc494c008b9166f5338d0e535f0b1` |
| 166 | `theorem` | [inv90_square83](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square83.md) | 171 | `result-track:b5e6a675bf965f0828185b72331ce862b6839e7def582a7d9a219aa3f3991451` |
| 167 | `theorem` | [inv90_product83](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product83.md) | 172 | `result-track:22997e425e475b59c2e11e5cb2ffd55980eaf63a5862eeda1ca62b12927d2af9` |
| 168 | `theorem` | [inv90_square84](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square84.md) | 173 | `result-track:c0171b73c53efeca1a5b224f2e57efcbe84ff03215f547826d6af16a3476e79d` |
| 169 | `theorem` | [inv90_product84](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product84.md) | 174 | `result-track:5e63672c1793af163fefb35c5861b8a8b8de2a99a8d342c20dec04a62040bef0` |
| 170 | `theorem` | [inv90_square85](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square85.md) | 175 | `result-track:e8a1ab3f3aad29adfeebfe664ee3510e38955532b0a072b7d742eda2fe8b003b` |
| 171 | `theorem` | [inv90_product85](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product85.md) | 176 | `result-track:10a60f7e6dc6b6dbcac70fdd08daef6af436470dabffaaf6137da22705165e04` |
| 172 | `theorem` | [inv90_square86](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square86.md) | 177 | `result-track:6adbabc44ff3f9c0f186f9885bae005307cacea696995b31229b6feadfdc097a` |
| 173 | `theorem` | [inv90_product86](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product86.md) | 178 | `result-track:7365fa718371cace7efd3a629646f1cc37e76d1ee09188abaa75dd5cb50da9db` |
| 174 | `theorem` | [inv90_square87](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square87.md) | 179 | `result-track:151cfefa8dfe935b60a29f61b20f428f9d2ebe6f1b2e743e63f195e698d18767` |
| 175 | `theorem` | [inv90_product87](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product87.md) | 180 | `result-track:1fc80bf45daf2e3518400f90fe95818e71991cafb7a1a03ca26adde8e753cf20` |
| 176 | `theorem` | [inv90_square88](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square88.md) | 181 | `result-track:d07fdd1d79f6bcb02da35f73533565217d745988379f8807fb53f701fb592d90` |
| 177 | `theorem` | [inv90_product88](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product88.md) | 182 | `result-track:59e71fefc524bec68bfe2008170b0c05241e6360a38ce05e426068c75b7dd284` |
| 178 | `theorem` | [inv90_square89](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square89.md) | 183 | `result-track:eafeb022b721be0a5efaeff9a93195664a3a9e4bf2a2a80559616c17b9297a07` |
| 179 | `theorem` | [inv90_product89](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product89.md) | 184 | `result-track:c0736cd1a94e7fb8f1df8a8139e37675f851f189842d3857469ce3d30423efca` |
| 180 | `theorem` | [inv90_square90](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square90.md) | 185 | `result-track:f5daf2f6b14fb7c608918c9326d2c268096cc86841cb15a0127a4b093629fdd3` |
| 181 | `theorem` | [inv90_product90](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product90.md) | 186 | `result-track:a0b2d183fbbb7328a2743c8f61832b640e557384e1f5890ae400293445649e41` |
| 182 | `theorem` | [inv90_square91](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square91.md) | 187 | `result-track:589140184e490e882caa9b910b7eac735b72b6827031865ff36bb4ade13c402e` |
| 183 | `theorem` | [inv90_product91](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product91.md) | 188 | `result-track:aa092aa7e86f10a9de02f8f4aa26b119aaaa657b8688f076a1cc1af78b512930` |
| 184 | `theorem` | [inv90_square92](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square92.md) | 189 | `result-track:4634c5446e4a54bcbcabcdca8a93a520289a19f7060679f8c618b11e74aa8447` |
| 185 | `theorem` | [inv90_product92](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product92.md) | 190 | `result-track:463e6511210b35d95cb2348a03c3e1f2debdb2221de9e6b4932d8f9e2f87ce0d` |
| 186 | `theorem` | [inv90_square93](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square93.md) | 191 | `result-track:c6a26025bee5254a37db3d572d1f4b720b72e1e403a47a76a4a09028da8e07a0` |
| 187 | `theorem` | [inv90_product93](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product93.md) | 192 | `result-track:0f6cac38dbc9798573a20e9ca42b2130881c286558b48a65ff122bab188b6085` |
| 188 | `theorem` | [inv90_square94](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square94.md) | 193 | `result-track:b1a6aba78e724e5e9ec9b6d208e5cbccb4d4b6213f87ed3272d4b80c4d226aaf` |
| 189 | `theorem` | [inv90_product94](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product94.md) | 194 | `result-track:a83234a4fe9356c03693384193e35100b4ebedccbd0cf4dfcf32ec5cd3e76218` |
| 190 | `theorem` | [inv90_square95](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square95.md) | 195 | `result-track:7da659bddb3e4565b2eb9e65f4384fc229f4b849f992273daf3f0da19b6112d0` |
| 191 | `theorem` | [inv90_product95](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product95.md) | 196 | `result-track:94b65353bcfdd9bd131059512434991cadbdc017a9d18ba50b31a241d25db2ff` |
| 192 | `theorem` | [inv90_square96](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square96.md) | 197 | `result-track:f49697dc9f6de4b02fe47a1d14e65587ba0392303f2aca30a88976999ffdfd43` |
| 193 | `theorem` | [inv90_product96](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product96.md) | 198 | `result-track:1644e51c3270296dd52979c14d37299c0544a30786016bb08e24d05db9c71005` |
| 194 | `theorem` | [inv90_square97](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square97.md) | 199 | `result-track:9294a6a66e37ffe855400d1cacfadcdae45306383e935c36cc422ab90cb8bcc7` |
| 195 | `theorem` | [inv90_product97](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product97.md) | 200 | `result-track:007d9809f6ef2af0af299c3bbfbe2525ecfe0390e940af0138b281b718447463` |
| 196 | `theorem` | [inv90_square98](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square98.md) | 201 | `result-track:180f1bf72284e50d1a692fa30aca2da30aa1afabe8abc64b640eb1acf60f5a7b` |
| 197 | `theorem` | [inv90_product98](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product98.md) | 202 | `result-track:b30fc534d97838169f4b36473896dba4130beb7a3e36b08becfa26430da856e0` |
| 198 | `theorem` | [inv90_square99](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square99.md) | 203 | `result-track:a566da047107503fb7399741bd085e18cea01ffea0b22fdc8e49c15d5c644ad4` |
| 199 | `theorem` | [inv90_product99](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product99.md) | 204 | `result-track:7b5bd305bfe632f1c252162d3a39905787e71e0ec7e2f0cace056a369c987829` |
| 200 | `theorem` | [inv90_square100](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square100.md) | 205 | `result-track:7d794d53bc25fdeac63b6ff7594964beedeb00a4a0595649e0b063aa5523ed7a` |
| 201 | `theorem` | [inv90_product100](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product100.md) | 206 | `result-track:218cfa3e9fb250c1be96345d1433095cec1c4f15c6ea8ed840586bc0bdb6d8e7` |
| 202 | `theorem` | [inv90_square101](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square101.md) | 207 | `result-track:23354241a0af0d009169ec66a3ed35c264b9ad3e832f519bd3c137db5fd96c1a` |
| 203 | `theorem` | [inv90_product101](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product101.md) | 208 | `result-track:9cf19e03c98caea4411d0d4c50f1a37e557f24ceac5c0002b0e0f4669f23c8f6` |
| 204 | `theorem` | [inv90_square102](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square102.md) | 209 | `result-track:ebadcf823b18b48b9746c944adeb5a997126123976600adebd5ed3540c35e663` |
| 205 | `theorem` | [inv90_product102](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product102.md) | 210 | `result-track:5c0da0d179e6d35184125b8c55ff1f9520fae7d70f7b6d41da66c1343621e737` |
| 206 | `theorem` | [inv90_square103](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square103.md) | 211 | `result-track:d640802b4be02624a757e2abadb39c80cf884582dd0d04c7b9f82a7e6a2555f9` |
| 207 | `theorem` | [inv90_product103](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product103.md) | 212 | `result-track:91ea87061e0f503c88c39fd1a06cd31153efd377888ef883be141fa8283a52c2` |
| 208 | `theorem` | [inv90_square104](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square104.md) | 213 | `result-track:6d4e5931c7cf86a2f002d5661a77b21000e60961d20fdf3a1840c5ae637a3252` |
| 209 | `theorem` | [inv90_product104](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product104.md) | 214 | `result-track:6a570fb7d1c5f00552d486f38fdecf0e917d32a4dbd9ddc3d07aa966bd547a14` |
| 210 | `theorem` | [inv90_square105](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square105.md) | 215 | `result-track:6cfac6f9009e9e4bfbbf3a8bfd0371405f770be3f6844cbe8a6d920c0f38c80d` |
| 211 | `theorem` | [inv90_product105](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product105.md) | 216 | `result-track:cb7bf145e476c0f0f679efa911e3e39034a646bdb8f889ee3328fa722aaff60b` |
| 212 | `theorem` | [inv90_square106](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square106.md) | 217 | `result-track:5505a73161fdbde27816ac66fd43fa9f89bbc5d7849a9ffac66080c575403cfc` |
| 213 | `theorem` | [inv90_product106](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product106.md) | 218 | `result-track:19370c27b2d0f692100e1c1214bea3cfe678e1d12a46a9f35ed59630d3f128da` |
| 214 | `theorem` | [inv90_square107](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square107.md) | 219 | `result-track:584009ba9fb908dd71fe7d4ad1d67d252a2c733a36b693ab947a52b9a2f5c735` |
| 215 | `theorem` | [inv90_product107](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product107.md) | 220 | `result-track:6e031732d81fb5f6817a270d180dd6dbb757541a327efd2522f42a6b4e2a82ff` |
| 216 | `theorem` | [inv90_square108](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square108.md) | 221 | `result-track:e7aa6926efcf95d36b701af46c49b0f68b963a51de5b8343160ec9aa3d85c9cb` |
| 217 | `theorem` | [inv90_product108](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product108.md) | 222 | `result-track:41558ac5b5917bf91775d1795af2ff2ec4216d96e99b61c49188ea90844973e3` |
| 218 | `theorem` | [inv90_square109](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square109.md) | 223 | `result-track:bab1194329c9294ebf7309196e4c77ba2d16142a1e25b6f986db2bc1ff067ca4` |
| 219 | `theorem` | [inv90_product109](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product109.md) | 224 | `result-track:e706417f54d1d50c78cecf70c2f84c1bb99bbcdd7422dad677f80116fdc9f906` |
| 220 | `theorem` | [inv90_square110](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square110.md) | 225 | `result-track:b602b373e42c157e3e823d3dbfb4f692283b2426c33728b61c99fe8c7a2490b9` |
| 221 | `theorem` | [inv90_product110](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product110.md) | 226 | `result-track:785d9f75f7342e36704f25c05c97da984023d3582e03fd2c9e92499afd2f9e62` |
| 222 | `theorem` | [inv90_square111](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square111.md) | 227 | `result-track:144a0ac91ab4588d12580e1b402ae976cf38d314a2360094593393349e8750b8` |
| 223 | `theorem` | [inv90_product111](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product111.md) | 228 | `result-track:a821f0e82581bd6583c73604aace490ddb2921b26e03304a8bdf5815588bb2ac` |
| 224 | `theorem` | [inv90_square112](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square112.md) | 229 | `result-track:0d9c3e0ab62842ab2ac1af1294ccea41365be1f67b3142a253733bb5883929ab` |
| 225 | `theorem` | [inv90_product112](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product112.md) | 230 | `result-track:f56208d0a92fd205c4d1997a6f9113b95fd350a6827b3eb42f2f6b9fbb9dc705` |
| 226 | `theorem` | [inv90_square113](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square113.md) | 231 | `result-track:d6f75c6ae8a9ec6ba0c4c0893295533660f361660dc485578e2b5a16addef033` |
| 227 | `theorem` | [inv90_product113](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product113.md) | 232 | `result-track:19d1197cf041ed8f0d7b4295f0f8a3162fc594ec8e9f0e031144e4a39097daf4` |
| 228 | `theorem` | [inv90_square114](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square114.md) | 233 | `result-track:7c77e7877a8ca5780fc8fe7d617be7cd07c0c9cde8c9e408799f5e247f0df984` |
| 229 | `theorem` | [inv90_product114](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product114.md) | 234 | `result-track:ba551ea432cf87a3309e56c3e1098bffd8a060851d96a105229540f179c52c21` |
| 230 | `theorem` | [inv90_square115](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square115.md) | 235 | `result-track:94ea3dd65624772d1f5a41f9ff27dbc1430e1648056caa8c6ab2cdd67cc53229` |
| 231 | `theorem` | [inv90_product115](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product115.md) | 236 | `result-track:922ee15a289a5e7b592feeec93212c7284ba1ab29290128bab054101c89c8bdc` |
| 232 | `theorem` | [inv90_square116](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square116.md) | 237 | `result-track:bf065dba99e109aa5e359d7b0bf7cd912a2de1991e7a1ea6ee3f534149bbb198` |
| 233 | `theorem` | [inv90_product116](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product116.md) | 238 | `result-track:d561d1757ed54d5267fda059579eb9ada467c0587c41922c85dd94a5ee409e24` |
| 234 | `theorem` | [inv90_square117](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square117.md) | 239 | `result-track:0aaf09a6ecc53eed6d922808e36842ddb5d451ccfc028178f50e3af5b1e773be` |
| 235 | `theorem` | [inv90_product117](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product117.md) | 240 | `result-track:a39caa2545985443e52c90629bbcf4b5b0dcb08647ff75bb9dd5746f50fb3dc0` |
| 236 | `theorem` | [inv90_square118](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square118.md) | 241 | `result-track:a27497575bb8b1d4d264953f641bbff5c46a6a4034a783768475aa8ca6e24f0b` |
| 237 | `theorem` | [inv90_product118](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product118.md) | 242 | `result-track:3ddd2e8d575d429ac57fb6ad55de216ac7778501cb6c33587c1213cb945488c7` |
| 238 | `theorem` | [inv90_square119](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square119.md) | 243 | `result-track:99d7996f02fe76e7ec575598dc64dd93e9e57bc41ed013954e2d817d016ae5b4` |
| 239 | `theorem` | [inv90_product119](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product119.md) | 244 | `result-track:0914c074acb507be169e07f426b505ad05f5877283e4e425926ed41b66952f3a` |
| 240 | `theorem` | [inv90_square120](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square120.md) | 245 | `result-track:1fea41d2446a6f2d989279210fe34b6877b4aa7f4e017bbd4e9ee49588e0ed95` |
| 241 | `theorem` | [inv90_product120](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product120.md) | 246 | `result-track:d33db2267823eb4679f944c481a1858af0c0531d344071a650d0802db9440c9b` |
| 242 | `theorem` | [inv90_square121](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square121.md) | 247 | `result-track:4aebc681ae59df73d7a5d8603d412a1ac6e3078ee296907e1e73e912264101e5` |
| 243 | `theorem` | [inv90_product121](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product121.md) | 248 | `result-track:063eede8e0260a47014c6aa14f7564b698fd4ba3cadf566547211e77ec596768` |
| 244 | `theorem` | [inv90_square122](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square122.md) | 249 | `result-track:d8ed85c9b5e852faff6fbb09ebfbd47992d61d7d1140dd0d10b054b07c1085bd` |
| 245 | `theorem` | [inv90_product122](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product122.md) | 250 | `result-track:af3fe2f89422a06833cca67852288c8b328c193ac9d166a50f6ce030ac8b1ebe` |
| 246 | `theorem` | [inv90_square123](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square123.md) | 251 | `result-track:be095e0235d91985be36c2bd98151127bf92f3313f5fdc02891869ac40fee15b` |
| 247 | `theorem` | [inv90_product123](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product123.md) | 252 | `result-track:0c6ab311c1f31c70828fbacd57eaa583bc2c3ebfe79db489fcd2700adf00497f` |
| 248 | `theorem` | [inv90_square124](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square124.md) | 253 | `result-track:d95c957267cbdf99bb01d05aac40f12a1425cb906ecbf1e5b3ff8d994f0d20b2` |
| 249 | `theorem` | [inv90_product124](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product124.md) | 254 | `result-track:a02985356fbd342627a078a8dcac8c25c722cf6bf122d2122b5f876a76555183` |
| 250 | `theorem` | [inv90_square125](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square125.md) | 255 | `result-track:c432971540842e1f2d5520583e80c354955ea297850b91eb3ffa63a074f7844e` |
| 251 | `theorem` | [inv90_product125](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product125.md) | 256 | `result-track:3f6431050d78ac31706406832bf8803726755631f9ca10fbda1c7867d92a477f` |
| 252 | `theorem` | [inv90_square126](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square126.md) | 257 | `result-track:9c5897dbdfe00bde68b9574020b1779bafd5e24ff3e53ae9cfdd00fcd7707cd7` |
| 253 | `theorem` | [inv90_product126](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product126.md) | 258 | `result-track:d999c0e736dd08649ff11a8b2f7b6c96f8cc1989e44d33993ac20910f3a33a30` |
| 254 | `theorem` | [inv90_square127](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-square127.md) | 259 | `result-track:11fe9cb0ac808190d0165a55b85c3fb2e498c724d4e5887173a10351864d21fb` |
| 255 | `theorem` | [inv90_product127](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-product127.md) | 260 | `result-track:d93cf1b3e59b8a44093975374264dbf55d471f341f26a8ba4c2e66b317fc62e1` |
| 256 | `theorem` | [inv90_trace128](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace128.md) | 261 | `result-track:7cad51c82bf427e0d461346af6144537b6851fd0f2fe5eb36124dbca2e2a8cfb` |
| 257 | `theorem` | [inv90_trace127](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace127.md) | 262 | `result-track:8c03c25bb30ea129392e8322afc175446b12d6c62d39a3d87f5bbdc2341e6ec9` |
| 258 | `theorem` | [inv90_trace126](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace126.md) | 264 | `result-track:1c08690514bea2c084e15d6ed2a383fa1cadb6bfeb31ca4b4420366b15702700` |
| 259 | `theorem` | [inv90_trace125](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace125.md) | 266 | `result-track:a59e94947bc7183c48aa236e881d8641da0a4056c36b7ddf8434b9656ba88a4b` |
| 260 | `theorem` | [inv90_trace124](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace124.md) | 268 | `result-track:8b64e13a615e266f2aae4ef0c8ce0ce508a6f7fbf4002552045d308e0c3f40c3` |
| 261 | `theorem` | [inv90_trace123](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace123.md) | 270 | `result-track:dc159723305a106ea2a4b6dd29557cd9fe32d4a82a52b019334dde6325745aff` |
| 262 | `theorem` | [inv90_trace122](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace122.md) | 272 | `result-track:3207fbf26d3f34c2c0ca46b230886f7bc81a0b627559c22661dada762adbf250` |
| 263 | `theorem` | [inv90_trace121](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace121.md) | 274 | `result-track:3ecbfbbe6a6309fb8a5aeb4ad04a0ac49bb8b983b5e62bfe192108d2da8b576d` |
| 264 | `theorem` | [inv90_trace120](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace120.md) | 276 | `result-track:24b996c305ddd0aaf0cbaa5c4978731d47de53ddf622960c151ca376742ee84e` |
| 265 | `theorem` | [inv90_trace119](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace119.md) | 278 | `result-track:843be41801ca55bca15396f6a518ad922a8a5bbbc0fb0d06192c8cc5956305ba` |
| 266 | `theorem` | [inv90_trace118](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace118.md) | 280 | `result-track:08df9df345881fba5214b5f7418063318f7b3f39750dfcf39ae3a29b3393558d` |
| 267 | `theorem` | [inv90_trace117](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace117.md) | 282 | `result-track:d863295953c75c616c3e6668d0803a239e9220491e018077894b7161da86c7f9` |
| 268 | `theorem` | [inv90_trace116](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace116.md) | 284 | `result-track:03bfcb8b22df464b91e6edeb1076c79725c496fac79fa55bac2fcece707511e1` |
| 269 | `theorem` | [inv90_trace115](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace115.md) | 286 | `result-track:5b0f031e631055e5ac2f867fa9bbf8da4cbc44d3986d1fd8af443d4980948c44` |
| 270 | `theorem` | [inv90_trace114](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace114.md) | 288 | `result-track:a52b55548944b09064de0f09c9e88ef406254f313864d6c6e7988b108f0b654e` |
| 271 | `theorem` | [inv90_trace113](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace113.md) | 290 | `result-track:2b8b7681e4102d2e23d420978b64ef795cd4cd85d13e0382af0943c9d3150ddb` |
| 272 | `theorem` | [inv90_trace112](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace112.md) | 292 | `result-track:7c66f29e004977571c1efcc3537f528e1bb5f49a7fc2c2fa8b8e0ae2dfb91b1b` |
| 273 | `theorem` | [inv90_trace111](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace111.md) | 294 | `result-track:a9e1c90c2e41d9f25dfb9a4f69158dfacd139b7b4202ef72b873054287ace467` |
| 274 | `theorem` | [inv90_trace110](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace110.md) | 296 | `result-track:60d0ce4b82a5654f90383b64d50e6985857e223d3d6f200862a9294d7b909a80` |
| 275 | `theorem` | [inv90_trace109](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace109.md) | 298 | `result-track:2199949ea5f28ff3b85cad66c0886a76be00379716364824150db15395dfc6e5` |
| 276 | `theorem` | [inv90_trace108](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace108.md) | 300 | `result-track:6b88be9faad9c706106ff4c4998b44e7c8de21e4d944ded264c6518feebd56ec` |
| 277 | `theorem` | [inv90_trace107](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace107.md) | 302 | `result-track:3845a260b3d14726dfae0cb85b75e58dc11da88a17408165175a3310fd0675c5` |
| 278 | `theorem` | [inv90_trace106](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace106.md) | 304 | `result-track:d8e65e05d9e4fe5826b141211d6b85451586cfeaa10f9d0226a889844055098d` |
| 279 | `theorem` | [inv90_trace105](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace105.md) | 306 | `result-track:fa5294ca90b89fc1caeee84a79803ebce8bc40b85e8b481ba716839f98726e52` |
| 280 | `theorem` | [inv90_trace104](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace104.md) | 308 | `result-track:b04eb0b57c8d48dc1949ad125e60d8c1549d50a436fa967b8752a2377f4eab4c` |
| 281 | `theorem` | [inv90_trace103](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace103.md) | 310 | `result-track:c1676278654b9fd91f7cdc0621067f86503c123a0ec24e78554321084d26f07c` |
| 282 | `theorem` | [inv90_trace102](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace102.md) | 312 | `result-track:f3127df0d8f9dcd8f6c401b5298e7c89d8be32689745e16a2ad6885e711c49f2` |
| 283 | `theorem` | [inv90_trace101](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace101.md) | 314 | `result-track:904c133ff2f61dc3217cd3cc9234329dceb0c206387fdf68a3b8abdb764795f2` |
| 284 | `theorem` | [inv90_trace100](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace100.md) | 316 | `result-track:882aa1f97947fa72602dc446fe3ae62397bcd612b6c175eb6f7f1e84a4cf379a` |
| 285 | `theorem` | [inv90_trace99](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace99.md) | 318 | `result-track:2459ac6eeae7fc8a8f289a6eb7af5256dac9d51b3a69ce113f7415d6dddee7bc` |
| 286 | `theorem` | [inv90_trace98](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace98.md) | 320 | `result-track:8cef527d617de784a8e0485de7588fd78604ce30ce8116dc70c7c1b7888b6955` |
| 287 | `theorem` | [inv90_trace97](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace97.md) | 322 | `result-track:aee1c3690cf9585efed8ce4495467fa58382296a653ee685a97aa168f66f87d4` |
| 288 | `theorem` | [inv90_trace96](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace96.md) | 324 | `result-track:e4e7a6494a18696e07f8a268ef063e30a827f49b2298599e1284fc478c8a14ce` |
| 289 | `theorem` | [inv90_trace95](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace95.md) | 326 | `result-track:bee60ae6ee87d24cba056d64772d74ccde03bb07f042cb95663aa66faad3d940` |
| 290 | `theorem` | [inv90_trace94](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace94.md) | 328 | `result-track:6a65665711f805857beaf146fd5f2845c4bac1c3c6f89f61435f6fc23bff3f54` |
| 291 | `theorem` | [inv90_trace93](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace93.md) | 330 | `result-track:87e0191c3f50e7af1802270d75e8b0195f190e63d4eb8f953432c7b2fbe394c2` |
| 292 | `theorem` | [inv90_trace92](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace92.md) | 332 | `result-track:6d0b433bb05be8a35fc6ca2f19d7e7419118f8382956d25015e532c1cf98fcaa` |
| 293 | `theorem` | [inv90_trace91](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace91.md) | 334 | `result-track:41b9ac4684211af1e6d4bfc6e12324edf8c54cf74740d7e21cb3cd047e7f0cbe` |
| 294 | `theorem` | [inv90_trace90](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace90.md) | 336 | `result-track:fb448a0272bd209b50dc30fa331738dad19be46e9ed0f7d57c5ce2ccf05c5e1c` |
| 295 | `theorem` | [inv90_trace89](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace89.md) | 338 | `result-track:8969e24bcd876ac0b7ce9957d018b1992fa052cc920c055d9803f9eec5d0972f` |
| 296 | `theorem` | [inv90_trace88](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace88.md) | 340 | `result-track:c9bfbf1114fd90030100db6d92e6814f07e876da5daf0c134ec47cde8ee4800e` |
| 297 | `theorem` | [inv90_trace87](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace87.md) | 342 | `result-track:c7176a100b8603bd2fde4630d5d3e5a7a2dd454962e51c39d7389771487424d6` |
| 298 | `theorem` | [inv90_trace86](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace86.md) | 344 | `result-track:dc650e5738557679706817af8f9d5353b90561e4bde35c4e1580e4f70bea0096` |
| 299 | `theorem` | [inv90_trace85](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace85.md) | 346 | `result-track:9e470e2fdf4f4ae811d9fdf7fd8de75bbe08ce45f006bcebeabe67eeaed8aa27` |
| 300 | `theorem` | [inv90_trace84](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace84.md) | 348 | `result-track:0d727e2a5eb85d2dbb0d9d5e603ea7956262131d25251eb5ae44960bd1bed93e` |
| 301 | `theorem` | [inv90_trace83](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace83.md) | 350 | `result-track:a59d194fbd987705802675a1e3dac3fd653b32361c4de6f751830027fd1f7e4e` |
| 302 | `theorem` | [inv90_trace82](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace82.md) | 352 | `result-track:e3923633fb4ec94fd8b5d63fca327c01a6e46d8051013f442492594a4fd91b4a` |
| 303 | `theorem` | [inv90_trace81](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace81.md) | 354 | `result-track:020f952b4ad73b47d49a87b4e210c2a7945333704fc67c1f59f089e0d64f4eae` |
| 304 | `theorem` | [inv90_trace80](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace80.md) | 356 | `result-track:b608ea8fde79be5587be04c6100bdbb648bb98f4e1c3e9711d36ed0e6810044b` |
| 305 | `theorem` | [inv90_trace79](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace79.md) | 358 | `result-track:c7a65a9a21a89fe8a9ed2e895af28d448c6fefa0099344c082bba2346f4c8f47` |
| 306 | `theorem` | [inv90_trace78](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace78.md) | 360 | `result-track:03ade31e9f773cb25cff90d9347115c19b7e8b5f54cbb2310d8083fdeecb14d0` |
| 307 | `theorem` | [inv90_trace77](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace77.md) | 362 | `result-track:59296364970f554d2ace4ff7f8feea4e0209065396428afdf6b7792d39b7dc17` |
| 308 | `theorem` | [inv90_trace76](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace76.md) | 364 | `result-track:d0bc26503c55b8f2dd7e06b04cf440799641d9c301c0feef28bf4d8905687ab6` |
| 309 | `theorem` | [inv90_trace75](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace75.md) | 366 | `result-track:779be11c140eca550c623bc12d1f8619f0338fcb0c4f2d61fba8e6d7cfc24a41` |
| 310 | `theorem` | [inv90_trace74](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace74.md) | 368 | `result-track:973053f4637b07d2f56ad3018529117879b45ff1100abacd7e5bb3835c384d36` |
| 311 | `theorem` | [inv90_trace73](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace73.md) | 370 | `result-track:69559b4fc85200b83930da26cf636d856f87a0b2427837b1ca0cccfa13f28b87` |
| 312 | `theorem` | [inv90_trace72](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace72.md) | 372 | `result-track:b72d7e56f6aaa84516205c6645d2726d170a62b2c0cf5975e7714b0cc9f970ac` |
| 313 | `theorem` | [inv90_trace71](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace71.md) | 374 | `result-track:be7ad57dfda6e8a333d64c40965ad076e68f3c740733ef162f784ee9ea6674ed` |
| 314 | `theorem` | [inv90_trace70](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace70.md) | 376 | `result-track:65f1f1724058ccf23c1687184f48d3069d2e6605756be84c349902d50ef7d454` |
| 315 | `theorem` | [inv90_trace69](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace69.md) | 378 | `result-track:f2dfdabf77d8ef93cc1b6ef49b995aa81a5045270e0c21ba4dddeda3229f4978` |
| 316 | `theorem` | [inv90_trace68](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace68.md) | 380 | `result-track:76ef47eab44accc6beb441fcca23b2b18fc32252589b7344d5cf5ef76dc9be6c` |
| 317 | `theorem` | [inv90_trace67](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace67.md) | 382 | `result-track:60617c0f3f88b9c5b3bd946dc0ce59dd187111114913f3d7b7ab686f646e9522` |
| 318 | `theorem` | [inv90_trace66](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace66.md) | 384 | `result-track:e06c09127fa7572de2b2f0d798fc72696ccee5c66011c4f7efda31d25bbccaad` |
| 319 | `theorem` | [inv90_trace65](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace65.md) | 386 | `result-track:33189e89b545ff4a9a8083d139299eca03ec0350f80535ad78faee7cb95b087c` |
| 320 | `theorem` | [inv90_trace64](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace64.md) | 388 | `result-track:3f749de83de66c1d7112ef2d1e4c46017cf98e330e2c1ee5891ac0c56981a93f` |
| 321 | `theorem` | [inv90_trace63](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace63.md) | 390 | `result-track:d5eb68c281472e66b3f3d93944850423e9bbb15592880390209f5bb5f9a53a51` |
| 322 | `theorem` | [inv90_trace62](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace62.md) | 392 | `result-track:742d56f13a061710b8671f9410cc5c4e26a0f6cce3cc40c455e9a00db2866b96` |
| 323 | `theorem` | [inv90_trace61](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace61.md) | 394 | `result-track:8bb4c616106d9e402149141c082f49b99229da3fc7b19c23ca693784b4c6bfa0` |
| 324 | `theorem` | [inv90_trace60](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace60.md) | 396 | `result-track:a1ec0e1f2f996c06daf1219aefb9a41c34161a901c6d169d53a3380247f28f0f` |
| 325 | `theorem` | [inv90_trace59](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace59.md) | 398 | `result-track:d977644dbadfb0310f3a1e0b59c77a374e8e9d68f6951d51305e804d8eab3727` |
| 326 | `theorem` | [inv90_trace58](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace58.md) | 400 | `result-track:1721ba83baa11f22b90f1af4b065cb0241aaba0ab30a4572ab50fd4546333cbe` |
| 327 | `theorem` | [inv90_trace57](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace57.md) | 402 | `result-track:1cdb082e99c4aacaacbaa916e04a5b0db5e699ac4ac4e5386a7b392f4f1c29d5` |
| 328 | `theorem` | [inv90_trace56](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace56.md) | 404 | `result-track:47dc2f03afe169bfef9d2236fb1e82a4e7b45cd78a117455756bfd7a54303448` |
| 329 | `theorem` | [inv90_trace55](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace55.md) | 406 | `result-track:f7d996f23c4cfec35ea42ce3e90620740b60c78a798a044bee898bf745482f40` |
| 330 | `theorem` | [inv90_trace54](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace54.md) | 408 | `result-track:28dff03cc593cb4e151ff986060bd0f1aa57618765dbeb83cced97d0a11c2c24` |
| 331 | `theorem` | [inv90_trace53](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace53.md) | 410 | `result-track:9e2ed4f825bce7f5753e42006314c61b48591642f260d03bd2e7b83d1255f0b5` |
| 332 | `theorem` | [inv90_trace52](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace52.md) | 412 | `result-track:ab8bfeaae8ddca46e21194a440af5635f2022096af5bf404bc25f12ed2f1705d` |
| 333 | `theorem` | [inv90_trace51](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace51.md) | 414 | `result-track:f855be79dfa731f0c1af5846932d46206313f60cab859c8e9d50dba36053177b` |
| 334 | `theorem` | [inv90_trace50](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace50.md) | 416 | `result-track:3eb8cc22c59549f36dde2547245f55c49f24213efa1e39e6d10ed22308fff210` |
| 335 | `theorem` | [inv90_trace49](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace49.md) | 418 | `result-track:9ba5e8d5a2db396c948f052aedfeddb0b287fedaaf5c71bd9cad863df55213cc` |
| 336 | `theorem` | [inv90_trace48](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace48.md) | 420 | `result-track:ebe28e99bbc4b4dfd275bde8a386db873a5f6856879d1bc33319b8478ecb6638` |
| 337 | `theorem` | [inv90_trace47](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace47.md) | 422 | `result-track:34b9e8aa1bdb2dcb92900cde020a3c959e4ab0a9ff9fcf743a0a7c470aa9d9d5` |
| 338 | `theorem` | [inv90_trace46](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace46.md) | 424 | `result-track:319e302382c7bfaa18a821970bbf9970f2143d212aeecb4eda32fd070e30b1f7` |
| 339 | `theorem` | [inv90_trace45](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace45.md) | 426 | `result-track:24cac80110ba35b542072295abd2e99a878c17e8a0830e2011414c763ed11b78` |
| 340 | `theorem` | [inv90_trace44](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace44.md) | 428 | `result-track:8366478a037889b2e1800ad901cea5148bc518b34763ed86f489cef92012bec1` |
| 341 | `theorem` | [inv90_trace43](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace43.md) | 430 | `result-track:fe824b06b6a37ad485c8375ee0fa3d1fb9d5249a69bfdd8aa568546de01a5b1d` |
| 342 | `theorem` | [inv90_trace42](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace42.md) | 432 | `result-track:6cac42c27b22bda69301c3e1c005568c6ce457c23c27d23fcdadd3870c010ac3` |
| 343 | `theorem` | [inv90_trace41](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace41.md) | 434 | `result-track:83aa60ebc5ca2c5e3fb4c5a297eac243bcfa64915ba0c5b6e9aa3d4fdb611059` |
| 344 | `theorem` | [inv90_trace40](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace40.md) | 436 | `result-track:723324d0bdc8b9c9e9358b3e4fda102a8dc09f92b83329571fee9d64a8f5d1e1` |
| 345 | `theorem` | [inv90_trace39](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace39.md) | 438 | `result-track:b2e8cba02d60ac4c48d83d3961959e64c4d742953e4b3b0d1e870931abefa8b9` |
| 346 | `theorem` | [inv90_trace38](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace38.md) | 440 | `result-track:3ba514ca03ee4b1c884cbd94495a1fa3e1b4e5bb47dbfd536678e1a6beabee96` |
| 347 | `theorem` | [inv90_trace37](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace37.md) | 442 | `result-track:716678bbae1153c4966ce38da35456efe5f1f1b3dc3111d0204334884ba6d144` |
| 348 | `theorem` | [inv90_trace36](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace36.md) | 444 | `result-track:183d8d86e385774cfdd1618617fd36269398738d3e1ea9556bc7a331089e0698` |
| 349 | `theorem` | [inv90_trace35](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace35.md) | 446 | `result-track:3c15f8508eb049f224cc76c8cc742ef34f1b741d3642a0ccf70478145e6f462c` |
| 350 | `theorem` | [inv90_trace34](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace34.md) | 448 | `result-track:34f40fef5d2ea33c936456fdc6ddc77c2283e24b11c03106828b89c8c596c899` |
| 351 | `theorem` | [inv90_trace33](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace33.md) | 450 | `result-track:a4d1e9ffc960753d9540443fa3b2d565bc1720991ec9c035d852c45b6556bbc8` |
| 352 | `theorem` | [inv90_trace32](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace32.md) | 452 | `result-track:78d75a5b44f91ced4d0fbbb9ff0a7a2ba143092fd4cd1281bd4ea7f77c394845` |
| 353 | `theorem` | [inv90_trace31](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace31.md) | 454 | `result-track:27da6fce3ac18baf55a0b81c00ad1dbc8848a955b84ab5535bb3e317304fc6be` |
| 354 | `theorem` | [inv90_trace30](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace30.md) | 456 | `result-track:1aadec8c5a0dd11450d27b5a3b5ac690d11471da411abb46e6ebb9aa3bec72db` |
| 355 | `theorem` | [inv90_trace29](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace29.md) | 458 | `result-track:18e0fea5f9f1a3b98fc80e3bd6d05825f6bb8c3a9d829491bd1647837a600608` |
| 356 | `theorem` | [inv90_trace28](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace28.md) | 460 | `result-track:44d48471acaf1ce614adc0a67614f90f1a3b24a1284435174246db9f3a2e4566` |
| 357 | `theorem` | [inv90_trace27](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace27.md) | 462 | `result-track:4b336c190a53554e24e7c6e7b2c6af5821a5666b83953b38ffed49756f99e456` |
| 358 | `theorem` | [inv90_trace26](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace26.md) | 464 | `result-track:f2c73000119dd225b8354058eb54ba592edc8afe95c6fc08e3640c961870017f` |
| 359 | `theorem` | [inv90_trace25](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace25.md) | 466 | `result-track:0b8a658714e6811c8907cd90c2871bb0a60a0f62409ccfa515e4270d8bf7cb7f` |
| 360 | `theorem` | [inv90_trace24](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace24.md) | 468 | `result-track:37219ffaf88977f4c8d5caf5ef1f480a27fc4aded93c547f57e506feef4ed33a` |
| 361 | `theorem` | [inv90_trace23](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace23.md) | 470 | `result-track:54347919887549210e153a3f62ec65f21347c52623ad98f110f77b99be25c161` |
| 362 | `theorem` | [inv90_trace22](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace22.md) | 472 | `result-track:668b8ecafb342ada2139bc6253d7170d1d90b5ee5efc86ada61e2facabe5efe6` |
| 363 | `theorem` | [inv90_trace21](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace21.md) | 474 | `result-track:b0f7c3c8effbf00081d7570210a8f071a953f0c2ce6781b0fb894a4bc0185999` |
| 364 | `theorem` | [inv90_trace20](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace20.md) | 476 | `result-track:cfcbb1d776dfaffba65691567df6a3eb3b636326b9c41e773e1b315a2ee48187` |
| 365 | `theorem` | [inv90_trace19](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace19.md) | 478 | `result-track:651b99ccad1663776f2adf76fd56cc32c64a663f0026de58e0dff09775583cf0` |
| 366 | `theorem` | [inv90_trace18](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace18.md) | 480 | `result-track:57779f10146dac49e5ec7a061b1a7e09c4dafe8bd70acfd67d7395a2d68c9a43` |
| 367 | `theorem` | [inv90_trace17](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace17.md) | 482 | `result-track:6797eafeb14e2e4845ab3f71b5ef79ca4be74876a2f3f9ddf6003672b24eab4e` |
| 368 | `theorem` | [inv90_trace16](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace16.md) | 484 | `result-track:c02107295bf533c86563a958fd59b719ed2100e58bdda7ada1741d30a874422b` |
| 369 | `theorem` | [inv90_trace15](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace15.md) | 486 | `result-track:36495c2d48cc08911b5441e0ad3ef12b1a452b450175ba218278227cee590075` |
| 370 | `theorem` | [inv90_trace14](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace14.md) | 488 | `result-track:e291d6d7c8519c0aef25b65ec0e7e4e440fb993641492b4035ea7fbf78e86a3b` |
| 371 | `theorem` | [inv90_trace13](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace13.md) | 490 | `result-track:03c94fe1511dc5bb74ed2affaa00a8be5d246d345cc080ea38d09903c27ddccc` |
| 372 | `theorem` | [inv90_trace12](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace12.md) | 492 | `result-track:372dfc01eb855d9cacb46b99958c4ad7df780a91ea73d40096bc60828371d41f` |
| 373 | `theorem` | [inv90_trace11](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace11.md) | 494 | `result-track:3b27ac587263d8c8825eca1ebecaead977b8221f95a27bbdac95865aa9eed09f` |
| 374 | `theorem` | [inv90_trace10](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace10.md) | 496 | `result-track:3f0d7660dba2fa524b29bc1774aa47b80cc74fabbb9ed6f9f635ac5800106a72` |
| 375 | `theorem` | [inv90_trace9](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace9.md) | 498 | `result-track:3bc2f04ccab6b03237e71c6298df201e71d7b938b74caef68eb906fa472e5835` |
| 376 | `theorem` | [inv90_trace8](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace8.md) | 500 | `result-track:e1ddced6847238b4149686633feddefd9939ecaf01882796464e31e8e8067fef` |
| 377 | `theorem` | [inv90_trace7](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace7.md) | 502 | `result-track:d97916fcbcf7314f915090f59aafda0a80931526bae39131e34cbd602cdea532` |
| 378 | `theorem` | [inv90_trace6](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace6.md) | 504 | `result-track:f85a6d44f5a34157ce589f32a45b072cff7051596a2e0b5ddffa9bd710e778c1` |
| 379 | `theorem` | [inv90_trace5](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace5.md) | 506 | `result-track:50782e8e4d5b80f814af9e48b52217837ea207b840a4448fa1cc356100b3ec7c` |
| 380 | `theorem` | [inv90_trace4](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace4.md) | 508 | `result-track:2d603d9b8e1d197efebc2dafa2ee87b15f57aea25cd0a951c5a4b7fa99227c05` |
| 381 | `theorem` | [inv90_trace3](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace3.md) | 510 | `result-track:b262de711b5e4715a49933f46221c4fe2bcf2e044b6cdac69fc39349e89009db` |
| 382 | `theorem` | [inv90_trace2](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace2.md) | 512 | `result-track:539c53efa81e323505c4382883ec1563418a0b09ef9a9cfb0ac3199c454bd346` |
| 383 | `theorem` | [inv90_trace1](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace1.md) | 514 | `result-track:5fe720fcdb47b22f62b925b851de2fc7a890dda8410a0e92ff3499a58fd5d1c6` |
| 384 | `theorem` | [inv90_trace0](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-trace0.md) | 516 | `result-track:8dc1f1b8d45bd58cf6b22c24e450e46fd37df31e2dd64dbfb637f86a51cde7a7` |
| 385 | `theorem` | [inv90_exact](../../../../FieldTheoryAndPolynomials/Inv90.lean/declarations/inv90-exact.md) | 518 | `result-track:7b6aba42d0cfd44305435ef8af36ddb2f85d8c0238dfffe5d3d6bf1863780045` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3785150dc40cf6ffa2dc69ac59c26a673c8cfa115d7e97cae37c5fc8e45170e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FiniteField/GF128/Inv90.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
