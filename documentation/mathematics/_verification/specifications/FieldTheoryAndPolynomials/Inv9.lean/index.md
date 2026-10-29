# Verification target: GRWTSK.Algebra.FiniteField.GF128.Inv9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "164ea85b38966080e8e88961d54d615765350fad",
  "lexical_observation_count": 385,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Inv9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/Inv9.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/Inv9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `164ea85b38966080e8e88961d54d615765350fad`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Inv9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Inv9.lean.json)

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
| 1 | `theorem` | [inv9_square0](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square0.md) | 6 | `result-track:92a1dce765eed52011c5abdac2de777034a04c6e19d3486c3bccca8b559ce2ae` |
| 2 | `theorem` | [inv9_square1](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square1.md) | 7 | `result-track:1d95a4d0fe8fe3760c0f6cd0876145b18d42c942465e0dfb4116c54ee238d367` |
| 3 | `theorem` | [inv9_product1](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product1.md) | 8 | `result-track:4677954d208ff6385a0e6df9f8b9237eeb4122d26628c25fd1c6b3700a351f67` |
| 4 | `theorem` | [inv9_square2](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square2.md) | 9 | `result-track:b10eaa4e24da558303dd888bf9bb923caa726b1c842c20a8fdd6c8be25d50dfc` |
| 5 | `theorem` | [inv9_product2](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product2.md) | 10 | `result-track:c504034bf6d0892154c140cb5b8c68f03c5006b93fd1197b379dd3b8fc5f5246` |
| 6 | `theorem` | [inv9_square3](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square3.md) | 11 | `result-track:2e1e420b966dc3f09ec6a15a69f7ebd051ead8d975fd8b4d715e19531310482a` |
| 7 | `theorem` | [inv9_product3](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product3.md) | 12 | `result-track:9430671f90a52063dbd9670347d10392acc910d54ff8342b64f3331b085cbe88` |
| 8 | `theorem` | [inv9_square4](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square4.md) | 13 | `result-track:17b36ce01bff3c27da26d76a2ea082254ef893df5c71d3fd2157c8e2933a340f` |
| 9 | `theorem` | [inv9_product4](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product4.md) | 14 | `result-track:5abab337a69a93923148b86d4be74bb9b9ee08aa0dfc3fecba968226ecccb85b` |
| 10 | `theorem` | [inv9_square5](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square5.md) | 15 | `result-track:405ecaaea476d302b13c0efe937b992bbef6dd0c5b6e66c03ac3dd410a54a189` |
| 11 | `theorem` | [inv9_product5](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product5.md) | 16 | `result-track:8783243e107e59290c820c49dfc6d481c690ade822b7bfa9f0feb767fda77554` |
| 12 | `theorem` | [inv9_square6](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square6.md) | 17 | `result-track:51e3a11ab20c5aab61662e2bedb04d531eeb244974e0f2903b94e54df8655b25` |
| 13 | `theorem` | [inv9_product6](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product6.md) | 18 | `result-track:c244ecb6c78dea0a44d896f3ff0a81231e442e28569a57d9f3b6f3d4fe8acbcb` |
| 14 | `theorem` | [inv9_square7](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square7.md) | 19 | `result-track:ab0a960316b7cc4554befbd6f83f1727ac9c2e9335ce4ce7b230a27e80fde688` |
| 15 | `theorem` | [inv9_product7](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product7.md) | 20 | `result-track:ea1531132486741e661fa296e8be7b86516d3da495751a1b9ccd150f386a25ae` |
| 16 | `theorem` | [inv9_square8](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square8.md) | 21 | `result-track:b613d3803e814cf8b8b847856f786f174147f7762b1c8a3bc78162c9975bc279` |
| 17 | `theorem` | [inv9_product8](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product8.md) | 22 | `result-track:84f38b7e983117ebab61ab9e3444fab973b2cbe270b01d9236fe35c4377185f3` |
| 18 | `theorem` | [inv9_square9](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square9.md) | 23 | `result-track:455eadfbc625cf11072f8a4de94c5cf677bf151408b0fff6c47dcccff5f0559e` |
| 19 | `theorem` | [inv9_product9](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product9.md) | 24 | `result-track:51caf796eb85ea392c6bb1a01ecab6d972714dfc59050c748592f798f9383fab` |
| 20 | `theorem` | [inv9_square10](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square10.md) | 25 | `result-track:a6e2838ff49c63250f9b721b9ae8497627e67e1efad3c35c5bb4b5a29fdeeed6` |
| 21 | `theorem` | [inv9_product10](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product10.md) | 26 | `result-track:05e4337535860f10f6d1716ffb65b22cdc6ce6ef566bdc8c18aee1acaa83f267` |
| 22 | `theorem` | [inv9_square11](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square11.md) | 27 | `result-track:97a0f071b0316702a41824efc4bbb53dcd0fee1faeaabf4eef35e76b089c8f5e` |
| 23 | `theorem` | [inv9_product11](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product11.md) | 28 | `result-track:8fc47d9eb28cd3c4d633adf77e33aab714cd6603ab19300ff46b79541c91f5aa` |
| 24 | `theorem` | [inv9_square12](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square12.md) | 29 | `result-track:43fa8c9ece77b7e43d93797e23503d5cec1781d8868c612f09ea565e6601a665` |
| 25 | `theorem` | [inv9_product12](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product12.md) | 30 | `result-track:cf2135ae5828bfafbe0a202dba10769614e433eea894a586d32d63204e3c32bd` |
| 26 | `theorem` | [inv9_square13](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square13.md) | 31 | `result-track:7d24d1855dc07b7d743d67a1fb23a744d704bfabc2de7ca65a5086f03cadb80f` |
| 27 | `theorem` | [inv9_product13](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product13.md) | 32 | `result-track:3456c65311948bee4699af4d345f9a8b42f3f7809dd8f57e56c07b73e9129cdc` |
| 28 | `theorem` | [inv9_square14](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square14.md) | 33 | `result-track:4cb92bf0b1e314bf5650d15a3d2e74bff723329a42c4dea03481f589c1fde54d` |
| 29 | `theorem` | [inv9_product14](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product14.md) | 34 | `result-track:77f248de5b3cfe81710581fd6024a94168cc2385546e376d04b1af4c82074dd4` |
| 30 | `theorem` | [inv9_square15](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square15.md) | 35 | `result-track:fcfddb5a541788ca92432e243ab1ca7036e8cfdea97dcff086b5a45d4244def0` |
| 31 | `theorem` | [inv9_product15](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product15.md) | 36 | `result-track:145963518a861aede29fcce76704e593296c7e2c611867754a0ae4046e2773ec` |
| 32 | `theorem` | [inv9_square16](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square16.md) | 37 | `result-track:bff0e6e509131fc992c5cf1f8a54a2287ab137d01627114099143183782246e8` |
| 33 | `theorem` | [inv9_product16](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product16.md) | 38 | `result-track:fd6c76d0040fdfb44143b3680bda478363696dada85f07dd27426ce7ef9637f9` |
| 34 | `theorem` | [inv9_square17](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square17.md) | 39 | `result-track:43e233b3b5fe7fea22459e4e3cbec945507b204fc94b5a3a8daab843f8054585` |
| 35 | `theorem` | [inv9_product17](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product17.md) | 40 | `result-track:8a4c6b5da42b5420ee5a9ccf47d55052badc4c222b5457cfd1db1d0ddc963dd4` |
| 36 | `theorem` | [inv9_square18](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square18.md) | 41 | `result-track:cb52792343f5eccdbb585e74a66518eafd287a15feef9bd56589b4faaba1eb0c` |
| 37 | `theorem` | [inv9_product18](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product18.md) | 42 | `result-track:5272a5fbff8cd26a8203995c3c53ed227ccf2b0f2ec7be80e8e7de7b437a3d58` |
| 38 | `theorem` | [inv9_square19](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square19.md) | 43 | `result-track:af21acbf41768831ba426dd3468d5a40b31414f968382fe3b97687741b93d4b8` |
| 39 | `theorem` | [inv9_product19](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product19.md) | 44 | `result-track:511845d67a881174b3f60559f13ab9a11f2681e2f8550fb63ee036d28c47f783` |
| 40 | `theorem` | [inv9_square20](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square20.md) | 45 | `result-track:03dbe8553ce90360d90b9746269b597b1560b8c35e1904fa120415422eadbb81` |
| 41 | `theorem` | [inv9_product20](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product20.md) | 46 | `result-track:829a6d04eac1d6d5392891e14d3899339a2784f7ad748657997e442cbca62211` |
| 42 | `theorem` | [inv9_square21](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square21.md) | 47 | `result-track:837f986d6bd388a7495c50a6b1b582344f493cec57fe8a84d714b29a30385af0` |
| 43 | `theorem` | [inv9_product21](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product21.md) | 48 | `result-track:042f82ab37e5076128b37ddea350d8361c87f21b97d4debbf94d402909945871` |
| 44 | `theorem` | [inv9_square22](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square22.md) | 49 | `result-track:778e60b9f896fa3bbec674dbd186142a3f1ec84b071beac6398c47642c45027d` |
| 45 | `theorem` | [inv9_product22](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product22.md) | 50 | `result-track:d24702405fc1c061c62107692a192aa0b38c57955984403e23c547b55cded5bd` |
| 46 | `theorem` | [inv9_square23](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square23.md) | 51 | `result-track:3fba5579438e39cae3c8e008057613e7a309a3374e3beed4f7997c865ade37a2` |
| 47 | `theorem` | [inv9_product23](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product23.md) | 52 | `result-track:c44de67bac6aab6521c2e7584b56929496cfdeaaabcc567aabbf0e13d24818f2` |
| 48 | `theorem` | [inv9_square24](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square24.md) | 53 | `result-track:d77d4ae44e2f5f4aa6d0efe4b1ee5988cff9260495c6c774d145d90b38f5fab0` |
| 49 | `theorem` | [inv9_product24](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product24.md) | 54 | `result-track:7116a492fc4fca76434bd01cb0b2b78f598f9d397246024bc8eb3b2aa3c5c050` |
| 50 | `theorem` | [inv9_square25](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square25.md) | 55 | `result-track:ff21847e53beda3cba04aac4951def89adde05591888f3a7fe500e4239e25817` |
| 51 | `theorem` | [inv9_product25](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product25.md) | 56 | `result-track:a029a845db8c7334c04a3ba294b90302ed35750c89a5b6a74161f0485e07c636` |
| 52 | `theorem` | [inv9_square26](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square26.md) | 57 | `result-track:5abbe9efb76eff422be63d8a74807c06b9e7e1c7dc56cf3e3d4b4203cd22ad93` |
| 53 | `theorem` | [inv9_product26](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product26.md) | 58 | `result-track:e58cdd2fe1b78fd2c36cd3c8751fcbdd70640cb7c961a7d79d0a17606c6b5d6c` |
| 54 | `theorem` | [inv9_square27](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square27.md) | 59 | `result-track:042667c16d8b2c245db8afb0a4290f8f8922a11d27ffa464dbb335686193a330` |
| 55 | `theorem` | [inv9_product27](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product27.md) | 60 | `result-track:dda8e27e204c371774b2c85a93dba0f843c37f36088b8e797ad40d7a4a5db1c5` |
| 56 | `theorem` | [inv9_square28](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square28.md) | 61 | `result-track:477b1b683dcea5716416302cca929831108836b44ffdc28748e227d2c73f3627` |
| 57 | `theorem` | [inv9_product28](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product28.md) | 62 | `result-track:da5ac06b4a464be287f8e73e06cd97f4f00db2e775d6005bad62b9a325bc67b7` |
| 58 | `theorem` | [inv9_square29](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square29.md) | 63 | `result-track:776e901396af3253c4ae3baceeab5ed4a6e3b73357fa8a8a4b6085ca8f3a0254` |
| 59 | `theorem` | [inv9_product29](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product29.md) | 64 | `result-track:d9b152e35390efd3d1ecb82758d2ecf4471cddc89200efe594caa015bf2cb8fa` |
| 60 | `theorem` | [inv9_square30](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square30.md) | 65 | `result-track:6a437d98ae20bc8ae262437c278c08234d8a4bd3e0f45baf82cd17f18fad54f5` |
| 61 | `theorem` | [inv9_product30](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product30.md) | 66 | `result-track:08aabdccc250fe5e5fe9fa0f10d5d3f7910c71f290b214f8312d8a88bb9d3135` |
| 62 | `theorem` | [inv9_square31](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square31.md) | 67 | `result-track:72437ccbb45bdbb6190ec532b5f47137e27baed49cee655e4462ab10b2515ef0` |
| 63 | `theorem` | [inv9_product31](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product31.md) | 68 | `result-track:a9002d58a76d206119f4fe66a0ed1ed1bc8a874f19b99802a75f17e0e6b4d9de` |
| 64 | `theorem` | [inv9_square32](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square32.md) | 69 | `result-track:430d91229152772a45d94260372575f4325792634ba3d33494f7ca18800f645e` |
| 65 | `theorem` | [inv9_product32](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product32.md) | 70 | `result-track:0b4bb43be25e4cce047f96d60dc97a614b033786f5a7b3bd21fa1c431f17186d` |
| 66 | `theorem` | [inv9_square33](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square33.md) | 71 | `result-track:9507b954e87df93d1200bffd470eec5610616a05f5f816a484a5503cde1f9b0d` |
| 67 | `theorem` | [inv9_product33](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product33.md) | 72 | `result-track:a4a41e832a4c2d349a74ce44edf147324b05c0cafe03e20471a2e83f314c2e5c` |
| 68 | `theorem` | [inv9_square34](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square34.md) | 73 | `result-track:61d65666f6d41f5bb272abc0f2477c01546f8a8d53d2ed8b5a4dc1a847feb3e1` |
| 69 | `theorem` | [inv9_product34](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product34.md) | 74 | `result-track:982fb57fe1683d7b043c32b022b19aee24f9fe8788c193f81fe88d9d6a22c87c` |
| 70 | `theorem` | [inv9_square35](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square35.md) | 75 | `result-track:952e9d074adec4f3c750fbdd9afecc826a7446929cd4ab0adbe8a6e0e5af3a9b` |
| 71 | `theorem` | [inv9_product35](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product35.md) | 76 | `result-track:f7d92de5c0c2927d6b5daf85687682e8da2faf4dfd71cbc82d3505d2dd895fd4` |
| 72 | `theorem` | [inv9_square36](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square36.md) | 77 | `result-track:a67ea1ff48ae1eadbeac1cd53e9dcc7e9864b9c8bd24814b33e32a6b40c64c1c` |
| 73 | `theorem` | [inv9_product36](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product36.md) | 78 | `result-track:9fc3ba191f2cf10571a28e0708b4cbd56f046cc902ef3503463c7806e5bd8c5d` |
| 74 | `theorem` | [inv9_square37](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square37.md) | 79 | `result-track:28de76a15414ca2d193d84229ca48cdf1f106e850ddb13bc5364e4a443d71a69` |
| 75 | `theorem` | [inv9_product37](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product37.md) | 80 | `result-track:21056ba5f5539c017bac671ac9e6c1ed028b1a0594fa0161b9c247a14ae4d8c7` |
| 76 | `theorem` | [inv9_square38](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square38.md) | 81 | `result-track:34654d334c78e28964e49e2cf42c0c5799792788686bd767a33774d369d590d8` |
| 77 | `theorem` | [inv9_product38](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product38.md) | 82 | `result-track:96ff0b72010221928b2d4c2e36e9142a446926040e90f3846f5136dc95c6463b` |
| 78 | `theorem` | [inv9_square39](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square39.md) | 83 | `result-track:56eeab9759567841f758a2b2e94b67078d7062c333f49459e78927b580eff0ab` |
| 79 | `theorem` | [inv9_product39](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product39.md) | 84 | `result-track:b7b981da01b78259136c510744a7ed764371c542f7f96d34df1ff8e5b5adced9` |
| 80 | `theorem` | [inv9_square40](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square40.md) | 85 | `result-track:b83d588451518442ed395d02be1adf8403bb8b8bc33cc145e3aad53d01c394c1` |
| 81 | `theorem` | [inv9_product40](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product40.md) | 86 | `result-track:d46e744180ba3ae81880581a1ae09e1c099d1c39f733afd45fea0144dd45356e` |
| 82 | `theorem` | [inv9_square41](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square41.md) | 87 | `result-track:49b2b9321c9c87c15418e2b34261231045629e037b42a75fb75f2d184dcfa376` |
| 83 | `theorem` | [inv9_product41](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product41.md) | 88 | `result-track:687ed1fbb3ba04c995030af31bea407752865e5e1ae8fe112e6f117d1d404ac3` |
| 84 | `theorem` | [inv9_square42](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square42.md) | 89 | `result-track:2dc70f10a6b183a465f1f64e9cd7c8b597b29a750c2755a31655d590afcb4cdd` |
| 85 | `theorem` | [inv9_product42](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product42.md) | 90 | `result-track:46fb922764bd3130a8451371ff498e8628a7ac27e80b0d4eec70e2fb53bbf453` |
| 86 | `theorem` | [inv9_square43](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square43.md) | 91 | `result-track:07e4107ac726749e057236b5e42471f7d63ac0603acae6c7cc08ef1c1e22a9c8` |
| 87 | `theorem` | [inv9_product43](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product43.md) | 92 | `result-track:15d190f0a2cfa91b15b22a4947a829b5db66ca86726a71e7646bff293a413727` |
| 88 | `theorem` | [inv9_square44](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square44.md) | 93 | `result-track:f0fae2753c26580f0b4b47336cbf73c1ee273bf4b3369e611ab08efcf9278cd6` |
| 89 | `theorem` | [inv9_product44](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product44.md) | 94 | `result-track:53e319b367c96ff93405bc20c5ad5f93567139e884742f39637aa65c99832f32` |
| 90 | `theorem` | [inv9_square45](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square45.md) | 95 | `result-track:d8b292f294c395c0095ff49ff0d0c84904327eafaaaeaa212e8c5079f64a84a8` |
| 91 | `theorem` | [inv9_product45](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product45.md) | 96 | `result-track:cec3a8f54896266129ff20a08375126250c38c9cc3c2f5c9b82fa1c2d8ac69b8` |
| 92 | `theorem` | [inv9_square46](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square46.md) | 97 | `result-track:595dc242ee09aaeec2b568c9d1e64cc70d914859c713f4870b919f99238e8615` |
| 93 | `theorem` | [inv9_product46](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product46.md) | 98 | `result-track:6968601b59d00bbe9afcf89f20615ee42b5fe16b9300bb4f46b7f2edea9bde10` |
| 94 | `theorem` | [inv9_square47](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square47.md) | 99 | `result-track:35864e33ca4719918f4b90a9bf60c7c334a53227f48120e8bd43b46497ad6e26` |
| 95 | `theorem` | [inv9_product47](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product47.md) | 100 | `result-track:97d9ee7d7ecf3358bcec820db95ecd736de70bfcc105310b99b9e55595b98862` |
| 96 | `theorem` | [inv9_square48](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square48.md) | 101 | `result-track:22d3604f7cc0ad911928fce6f5d1181e6cbd920a4bb22409b5189e6135edfa2b` |
| 97 | `theorem` | [inv9_product48](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product48.md) | 102 | `result-track:4f0ea64a29759128faa09d08551b1b21ea14abc93cf650786182eae0b9f22760` |
| 98 | `theorem` | [inv9_square49](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square49.md) | 103 | `result-track:d768837596af87a6150aa7dc50d9acda6d1705c4b3c369cef31199285d1cb5f0` |
| 99 | `theorem` | [inv9_product49](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product49.md) | 104 | `result-track:dde369cb586d82243e21f3236602f3c6585f8fc55ad6ebcfca1e15671f3996e7` |
| 100 | `theorem` | [inv9_square50](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square50.md) | 105 | `result-track:89646cc10f0d7c2c1c3b7c00c14d31f97b4b54c0cd473f892a70589bdffba8f6` |
| 101 | `theorem` | [inv9_product50](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product50.md) | 106 | `result-track:ada99dd0de7673146972610072e1d3fe7b9e66cf99a1c38f99ce287349a5d16b` |
| 102 | `theorem` | [inv9_square51](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square51.md) | 107 | `result-track:6385a0c315db7568c76d8eb2b4077e71a3075684da0e4abfbf874cce20911741` |
| 103 | `theorem` | [inv9_product51](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product51.md) | 108 | `result-track:9299cf0cf36fa6f673039ada96fed9ab1083181b511bcb97d3ed65acea06ae79` |
| 104 | `theorem` | [inv9_square52](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square52.md) | 109 | `result-track:9a40d0a5d06a942604e26e67ecdd4f81aa2ee2af8bd6ed17ca8ba2a3e6036224` |
| 105 | `theorem` | [inv9_product52](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product52.md) | 110 | `result-track:b66d6fb2591429ea88a60ba9984cd57f15c33ee25747022ffdf3f3f516c26123` |
| 106 | `theorem` | [inv9_square53](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square53.md) | 111 | `result-track:847a5a152f8750131f461cf71efd36f681bda44258c2622882a3b06db255ca2d` |
| 107 | `theorem` | [inv9_product53](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product53.md) | 112 | `result-track:2bbc61cbb8cdd8cabc8f98e231a0d126a07581a1192fc4aadf714412e0fa59b5` |
| 108 | `theorem` | [inv9_square54](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square54.md) | 113 | `result-track:120adf2d4fbe9b11481dc2476519ebf79e5c70a63154f595be57c6f7e43022bd` |
| 109 | `theorem` | [inv9_product54](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product54.md) | 114 | `result-track:1c20aaefb8112d8fac617393855cc613df9c96ec2eca54d2dacc366746f3d051` |
| 110 | `theorem` | [inv9_square55](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square55.md) | 115 | `result-track:651da7efd01e91a07b69fc93f9384ede30ec0b16beb106065faf91c80507dd81` |
| 111 | `theorem` | [inv9_product55](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product55.md) | 116 | `result-track:eda395797bd1215235865c8b587adf544a1b7206eb753ee9f073ce4138d5764a` |
| 112 | `theorem` | [inv9_square56](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square56.md) | 117 | `result-track:f37cc0c102f0250f5829774753567d658915562639a6309f72729ec01c55d724` |
| 113 | `theorem` | [inv9_product56](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product56.md) | 118 | `result-track:2b8ebe1db56aa59ef279a3d7990e82d715c49d330122476e1762470adff800b2` |
| 114 | `theorem` | [inv9_square57](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square57.md) | 119 | `result-track:55645f218e080acfc9a3f1e07ff7db68202dacb43da18c2e9f5966e79b4e7417` |
| 115 | `theorem` | [inv9_product57](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product57.md) | 120 | `result-track:41a981f913e839fcb4b6778402c17201e06697320776a137a318a4feae0d859d` |
| 116 | `theorem` | [inv9_square58](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square58.md) | 121 | `result-track:9be96daf6765be2756c71ee673b545cb8ffa21a0c753e9fe1211391ef181329e` |
| 117 | `theorem` | [inv9_product58](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product58.md) | 122 | `result-track:bd6f20892c7d76e13bdbfa767450e28997d656ab1dcf09786816a8c6e901450f` |
| 118 | `theorem` | [inv9_square59](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square59.md) | 123 | `result-track:fabbcda0ca3f61d9d34064ffc5010314b153e169ecec18a36f6dde1e1e88e231` |
| 119 | `theorem` | [inv9_product59](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product59.md) | 124 | `result-track:080c8e2cb3e0d8880de461d12fb64208bcf3b5ef4727f6010986d50741729399` |
| 120 | `theorem` | [inv9_square60](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square60.md) | 125 | `result-track:3c605d1a711bda4f7528bdc3c631dded4ad759d9c1dba10caae7fd1e9ed32480` |
| 121 | `theorem` | [inv9_product60](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product60.md) | 126 | `result-track:c4bfa5ca3ebdc5af4cbbc0e3b695f008cdacf784bfb0edd9ca826e32653addb5` |
| 122 | `theorem` | [inv9_square61](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square61.md) | 127 | `result-track:7efca8e736063bb2b827a6876af0575e110d520a95ce235ee04a8a7b903c93ed` |
| 123 | `theorem` | [inv9_product61](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product61.md) | 128 | `result-track:239bacb0c592111f1c91eb7a74a72d35a476db4d121fd4557508390a224939d6` |
| 124 | `theorem` | [inv9_square62](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square62.md) | 129 | `result-track:b8e90d46c43ba972ede6d035ccf2c73effa4dbfe2b6941893ad47b50c841b8ee` |
| 125 | `theorem` | [inv9_product62](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product62.md) | 130 | `result-track:3dd9a8627af32e7fa3107164fb390106c30462362a13f96e6b027edaa410f9e4` |
| 126 | `theorem` | [inv9_square63](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square63.md) | 131 | `result-track:59e9943429aff4095d9c1229b6993d46bc7472de8272c1efe41a69fef603403e` |
| 127 | `theorem` | [inv9_product63](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product63.md) | 132 | `result-track:783321267ca5ac2824ed26c17dab278f28709fbefe66970c27736f574dac7d51` |
| 128 | `theorem` | [inv9_square64](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square64.md) | 133 | `result-track:4f4fad354a4c47a3d8754de7e5328b57683c7b413a0ebc8218bad08967f8db18` |
| 129 | `theorem` | [inv9_product64](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product64.md) | 134 | `result-track:0caf37916d4595c03567c8d6c04692937e35bf207fa21c9a899856a1f4f1432d` |
| 130 | `theorem` | [inv9_square65](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square65.md) | 135 | `result-track:d93820fbf147104168f9e3d62ea1bbd3c55c68db6848ae7435a7d1ad75064434` |
| 131 | `theorem` | [inv9_product65](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product65.md) | 136 | `result-track:9dfff00fac469ed6ddaa35b1fb373416c10f339fce23103943d8e54707fcc500` |
| 132 | `theorem` | [inv9_square66](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square66.md) | 137 | `result-track:e153a3d83ddb7c657fe4af0f41f9e9239e1d8a929897e0d2e1c3e99b97dbbf66` |
| 133 | `theorem` | [inv9_product66](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product66.md) | 138 | `result-track:41fe5e327dd661e94ffdc4c9b79adfc236fabc207dc214c01cadfd7ee9be842a` |
| 134 | `theorem` | [inv9_square67](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square67.md) | 139 | `result-track:0391b18f9adb9d6e0a5262b248cfc86cecce95c805f329d56a72dce87b1501d4` |
| 135 | `theorem` | [inv9_product67](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product67.md) | 140 | `result-track:2436ab2e831af86e832f630087aad092b43a5787e9e230d322acd16a5e5aaf4f` |
| 136 | `theorem` | [inv9_square68](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square68.md) | 141 | `result-track:29acce3bcb9e51a5a8a4e224b251857963666805a3ea4a1be67ac136ca633e30` |
| 137 | `theorem` | [inv9_product68](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product68.md) | 142 | `result-track:1059827475015f0f4cf3eba58603590d6467364560914431436d517a8833bfb3` |
| 138 | `theorem` | [inv9_square69](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square69.md) | 143 | `result-track:8874a26611b4da13cdc27d535b31eed3477337e50d36837a9abe8003d64ed85d` |
| 139 | `theorem` | [inv9_product69](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product69.md) | 144 | `result-track:668b91cfbe49f708f64d61b8e202d4d59fb349d7eab30b7cdbaa4c58b9304a6d` |
| 140 | `theorem` | [inv9_square70](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square70.md) | 145 | `result-track:3c4c0dae9cd831c8a706753a3dffb8f5cd78b7b5b13b11ac8ff602a9d2ca98f9` |
| 141 | `theorem` | [inv9_product70](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product70.md) | 146 | `result-track:3e09d01754360c49a7bfa3cee983203de83afd9c8eb00328a7e3ef0623bc04b1` |
| 142 | `theorem` | [inv9_square71](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square71.md) | 147 | `result-track:0b50913fa7c386b4f67f39cbcde152d5da989cfdd4ec1e1604b526972ddf911a` |
| 143 | `theorem` | [inv9_product71](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product71.md) | 148 | `result-track:5b41f12058389b94d4990012b2bfd72a24ab5aed399321be9e9f27d6995d7eab` |
| 144 | `theorem` | [inv9_square72](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square72.md) | 149 | `result-track:f144a1eff00ad84f1ae5adb749ccd2fac31ebe4ce6703982e89c04bfd45c980b` |
| 145 | `theorem` | [inv9_product72](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product72.md) | 150 | `result-track:6a4001f110ea4dfa8d5b7ee910e63a56ff269de849623f99374e100b0c2232c0` |
| 146 | `theorem` | [inv9_square73](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square73.md) | 151 | `result-track:676ba882be06e7ce1e4fd40d8ff09dd80f2cca40fab4af41c2537e161eea06cb` |
| 147 | `theorem` | [inv9_product73](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product73.md) | 152 | `result-track:42a67e9cb1111a5acf5f4b177c988c7d58a166de7fe5c028b4caec73f5f11f60` |
| 148 | `theorem` | [inv9_square74](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square74.md) | 153 | `result-track:71ce126611a6fd9bcd63974da957ff6bea415c4d6b3987597a949691f5640e24` |
| 149 | `theorem` | [inv9_product74](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product74.md) | 154 | `result-track:25c6c5365450f3354452d3efcd3cc7fe7e8dad85be43f1fa0d37ca1d752f2967` |
| 150 | `theorem` | [inv9_square75](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square75.md) | 155 | `result-track:b2465fef174ae0e5f809b7263b997466a6a7047850c2bb7c3f0a453d9a4709ef` |
| 151 | `theorem` | [inv9_product75](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product75.md) | 156 | `result-track:89d5cde016e32f8e84f51b5f4a4202b0188e0285c459a3c0d15b4bf471191620` |
| 152 | `theorem` | [inv9_square76](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square76.md) | 157 | `result-track:6b5fdae88ace29ae56b0b4cbef0748dbb9f8b93ff50a4230bc8f05be476173eb` |
| 153 | `theorem` | [inv9_product76](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product76.md) | 158 | `result-track:be1bf8af54e786c0ca6b9bf82057e1da8bde30a38331cf2c480645acb60b88a7` |
| 154 | `theorem` | [inv9_square77](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square77.md) | 159 | `result-track:4aaaceda8a1de5569bc0b8d50da88fd741c86afccade81eeff901161859b7d9e` |
| 155 | `theorem` | [inv9_product77](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product77.md) | 160 | `result-track:7302a9e88d81604911b84874fc5bb6bb94aeb665e5319cf5dbd8d504c15027f4` |
| 156 | `theorem` | [inv9_square78](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square78.md) | 161 | `result-track:fbc1944939a4891d50e3c0be21006d9720c526684d34ec1cee4f8b70dc5dd63f` |
| 157 | `theorem` | [inv9_product78](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product78.md) | 162 | `result-track:a0daa778da0f04630ffdca124d343e0217f5ecaaa83ff5b203b48eb5640ee71b` |
| 158 | `theorem` | [inv9_square79](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square79.md) | 163 | `result-track:ac7d53311bfc633c7e10f354a4c3d72c8ba0105be814f9f4d8aa4c099f8f9e77` |
| 159 | `theorem` | [inv9_product79](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product79.md) | 164 | `result-track:a7fa63fa128ae19fce86b61e5ffd9108b51e981a7d7c418b1a113356d001b303` |
| 160 | `theorem` | [inv9_square80](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square80.md) | 165 | `result-track:4d2c4b20603cbd335accc4fe5224c15e1709b4c413411641e4f9981533ad07dd` |
| 161 | `theorem` | [inv9_product80](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product80.md) | 166 | `result-track:20c4c9130d4620ff98b35353543459bee01eff56580c96b182eed894e009a00f` |
| 162 | `theorem` | [inv9_square81](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square81.md) | 167 | `result-track:bf1a6b955e3260e1f993848477e71ff8198c82e886def45f8c40e6d1fdafe272` |
| 163 | `theorem` | [inv9_product81](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product81.md) | 168 | `result-track:8d5358bf5a2413b7da322b93920342e7cb4fcc4a377516e7ef169412865775f0` |
| 164 | `theorem` | [inv9_square82](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square82.md) | 169 | `result-track:9d066f01b4ac6811144d077df791416e85b0102cfd9f72e3ebb13e0438413759` |
| 165 | `theorem` | [inv9_product82](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product82.md) | 170 | `result-track:da412c4b9692febff759033b1b81c1fa70e8dfa3c042945415d6f7ce1db6258d` |
| 166 | `theorem` | [inv9_square83](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square83.md) | 171 | `result-track:71cb021ebb8be36c070186ec9cd314ad15f411a75ed5afdd74de9f9590fb7151` |
| 167 | `theorem` | [inv9_product83](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product83.md) | 172 | `result-track:ea455357cde2cd380223e449e97c3fad21a5a40e5dcd0b6900b5a15181a11388` |
| 168 | `theorem` | [inv9_square84](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square84.md) | 173 | `result-track:8edb49aa90845458fbc787b2f947945de107789153c1a5dc58a9ef60b10a679f` |
| 169 | `theorem` | [inv9_product84](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product84.md) | 174 | `result-track:b1bc06aa9265908005e15b435dbc0484168fa8031168405473e85ea60fb3a65a` |
| 170 | `theorem` | [inv9_square85](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square85.md) | 175 | `result-track:8e18216f7659b40543679790737500ab49106bf1bfc8063ffb63630257f1c24f` |
| 171 | `theorem` | [inv9_product85](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product85.md) | 176 | `result-track:b01251d0214e25ccab8bfe4d23dc018b90cbddcb7edfab9ada089fb991c242c5` |
| 172 | `theorem` | [inv9_square86](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square86.md) | 177 | `result-track:879869648b89c6097e1b7a5e9937bc127e0392d4f9b9ec17db23a29aaf1db9cf` |
| 173 | `theorem` | [inv9_product86](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product86.md) | 178 | `result-track:563c63b8c20f79e84570afe27c9282a04fb6654df2ccb8ef3a948836ebf776ec` |
| 174 | `theorem` | [inv9_square87](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square87.md) | 179 | `result-track:85bdcfaf0674d1b135a49208d57b9214b7073b6252218d9861c3e61529bf4999` |
| 175 | `theorem` | [inv9_product87](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product87.md) | 180 | `result-track:c87fba2d3fa8cdc419919d0320e84509402bfc544ed361bf77b10a1e229b45d6` |
| 176 | `theorem` | [inv9_square88](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square88.md) | 181 | `result-track:0da6aa95e87a6e1a9beaf6960e0188540a6e3d9bde6b7e962223bc0b8253b97c` |
| 177 | `theorem` | [inv9_product88](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product88.md) | 182 | `result-track:7a5b58832a0ab015c208321dc89f04301d2a2d7486dc127e1988095dc2dda15d` |
| 178 | `theorem` | [inv9_square89](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square89.md) | 183 | `result-track:b1e7fa6ce24d58a393e289a4d3537d13fff2092da7afd3df7e66643d4e52cd19` |
| 179 | `theorem` | [inv9_product89](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product89.md) | 184 | `result-track:93f5b41b8c561b2cf4d58069e28d0a30ab24aeefe72779c1c985b553fb7e8c4a` |
| 180 | `theorem` | [inv9_square90](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square90.md) | 185 | `result-track:17d8c071a178513949efb4ff7cd187084bc6828f6793f873eb0121ec550db23b` |
| 181 | `theorem` | [inv9_product90](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product90.md) | 186 | `result-track:278345ed7a13ce14a1a25f5593c9f34be9a789f67a43ed2538182d7f849e1953` |
| 182 | `theorem` | [inv9_square91](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square91.md) | 187 | `result-track:e948ee925c91ac8079a6caf73f9c01fd17c0beb781f352ba6a321a0d0842f43e` |
| 183 | `theorem` | [inv9_product91](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product91.md) | 188 | `result-track:f8d6f76f8e16a1e80191a573ae3341a774d8396394bab0c0acd416aec041ba91` |
| 184 | `theorem` | [inv9_square92](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square92.md) | 189 | `result-track:36898cebc1e0b4bd58b4dfdbcbeb4c1af096c9de792218982195d17c840a6ca9` |
| 185 | `theorem` | [inv9_product92](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product92.md) | 190 | `result-track:9f6c61f373de21151165f4d2851cab435215ed64c673eb576623519d7106c971` |
| 186 | `theorem` | [inv9_square93](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square93.md) | 191 | `result-track:04b9057ff3c068e1668d98cfd170bf0a981bdfd508731a6bd53c4230f7dadf0b` |
| 187 | `theorem` | [inv9_product93](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product93.md) | 192 | `result-track:f547c31ab34d2134e1efb1af8e92209bcf766e1ed7549bb1465599e296b6c825` |
| 188 | `theorem` | [inv9_square94](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square94.md) | 193 | `result-track:e4cf27ebac0f0087290a6e7679fff8ac31ce191e45bf2ad449cc2d8418f8d036` |
| 189 | `theorem` | [inv9_product94](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product94.md) | 194 | `result-track:79644bcbc115e5d8bd159435b9ee2c7daf1b3093e2fc4d6be84323e7b940d4ee` |
| 190 | `theorem` | [inv9_square95](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square95.md) | 195 | `result-track:2e112c264b0479bfed71a7af7eadccbe33447e3cceffff02561aa97e5794fd9c` |
| 191 | `theorem` | [inv9_product95](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product95.md) | 196 | `result-track:72c63e9bc5f0bbc97cfa3fd6fff60d2fb082d2ae856025bffb6ecdc0ff87a4ce` |
| 192 | `theorem` | [inv9_square96](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square96.md) | 197 | `result-track:f736b72b3ee27b76bd095ef9330d9311c80d26e28f4f499dcc8bf687864bf979` |
| 193 | `theorem` | [inv9_product96](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product96.md) | 198 | `result-track:84c2c80c1c3fdee162e3d8792413a91812add8dce819cf66a8cc79188c658f81` |
| 194 | `theorem` | [inv9_square97](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square97.md) | 199 | `result-track:fc9983668d7e8ace55e2afb63eb8bf71b6813c243b2eb63639c36ffab1970a79` |
| 195 | `theorem` | [inv9_product97](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product97.md) | 200 | `result-track:94e5d5407b42bc2e2a8916962c92e90eeb4b76c02b953be749c647c7e9f24f08` |
| 196 | `theorem` | [inv9_square98](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square98.md) | 201 | `result-track:f80b288bbdb27fe4712bf7343b8f3801207b0f29e5c69160ea822f547352cadd` |
| 197 | `theorem` | [inv9_product98](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product98.md) | 202 | `result-track:25d4f66cf6a388d39b6ce6b80fe7566b8729d9978960c35cb966f023e116e3b6` |
| 198 | `theorem` | [inv9_square99](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square99.md) | 203 | `result-track:d319894dfef7c0495129c17a687091c4be099c4737609909bf0f09309b501162` |
| 199 | `theorem` | [inv9_product99](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product99.md) | 204 | `result-track:4fee01b3086d0520709d7e67b3abee4893e3ecbfb4731a28888068f9379a364d` |
| 200 | `theorem` | [inv9_square100](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square100.md) | 205 | `result-track:a68c3b04353e6446e7318ff04aba6a1acf9d2ce370fcaaf9839f9a653b907f44` |
| 201 | `theorem` | [inv9_product100](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product100.md) | 206 | `result-track:db554e9296236aa9e5bf02f83ee295e95ea74530f6d013ae5b6583283f9ee36e` |
| 202 | `theorem` | [inv9_square101](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square101.md) | 207 | `result-track:8504b0344a69a9a2c5042c29dafa2325ff3bd66319df0f7872c112834c424c13` |
| 203 | `theorem` | [inv9_product101](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product101.md) | 208 | `result-track:4a65ddb0f6229bdb59bc82fe1d59e946da6d7e0b2cd86e9d8af73d84f065c66a` |
| 204 | `theorem` | [inv9_square102](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square102.md) | 209 | `result-track:05bc1009c0ff73d542bd426d898242b33fad10dc82545eb2ee8af9ea20d2e2ab` |
| 205 | `theorem` | [inv9_product102](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product102.md) | 210 | `result-track:5ea5286038921b7d3c6275e85645a3cd0c4853afc41ef13c49a18d5658ca71ad` |
| 206 | `theorem` | [inv9_square103](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square103.md) | 211 | `result-track:011a018b2ab1c3bc3eaca29045c84db3efbcc4aa3c8964b863c8370fc4ad5345` |
| 207 | `theorem` | [inv9_product103](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product103.md) | 212 | `result-track:1ca9a3e46da92997586f9712fa96304ec7688a5a50b6601352b5badd96d58e45` |
| 208 | `theorem` | [inv9_square104](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square104.md) | 213 | `result-track:5dcf79485c0f71394a2542c8067eaac6f71b54b7d2464af85ba1c7f527606c57` |
| 209 | `theorem` | [inv9_product104](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product104.md) | 214 | `result-track:88799196b319b6873929516691156e6c2bf0aa43e3c42d45e0593145577ed1f0` |
| 210 | `theorem` | [inv9_square105](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square105.md) | 215 | `result-track:1d39f5f8f2bcfe1063cdb866cebde720b05b65276fe292dfe9aa322bbe667767` |
| 211 | `theorem` | [inv9_product105](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product105.md) | 216 | `result-track:de913a173e628831511ffefd0a2ff631eb74fe40884f8ba1852a41f4afcfe2f7` |
| 212 | `theorem` | [inv9_square106](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square106.md) | 217 | `result-track:3b2a374af65bdb4ce0a09ed68cc13ddd2a35a7b8c3eded95170123bccdc33458` |
| 213 | `theorem` | [inv9_product106](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product106.md) | 218 | `result-track:e366549e44521245a9218e1258b320e50fdbbf143cbb465562a88d7e70463e11` |
| 214 | `theorem` | [inv9_square107](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square107.md) | 219 | `result-track:10ad730320d8535895d01566d06495eb00ebe59c99a4547b3d9e6fa0897cb403` |
| 215 | `theorem` | [inv9_product107](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product107.md) | 220 | `result-track:693e5cb4b1b87780205af924e33691e387ea74b7bebe9d95da6c1c821560a78b` |
| 216 | `theorem` | [inv9_square108](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square108.md) | 221 | `result-track:388df65a5e665df17be5a81a0c1c7dac48e5f0668689db9da648507c30182e10` |
| 217 | `theorem` | [inv9_product108](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product108.md) | 222 | `result-track:e00b513a991a812370e8605d6d185a33dcdbc786e0b8641977d8772ccb67bab4` |
| 218 | `theorem` | [inv9_square109](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square109.md) | 223 | `result-track:22057c0c7bb53738b1451c6eb5486cfa1de300bb5e05b105429535144da9be6d` |
| 219 | `theorem` | [inv9_product109](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product109.md) | 224 | `result-track:490941fae231d9489ce647a260b605442074e6389d5dfd7f0c2dbb2b1f5e3176` |
| 220 | `theorem` | [inv9_square110](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square110.md) | 225 | `result-track:90c1652d729a666a8f1fce7d83161a56d1ff0f68634a3e91a99bb0c5ca7687ec` |
| 221 | `theorem` | [inv9_product110](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product110.md) | 226 | `result-track:d1c8942da33f8972e314500e30f64ddeb0759c8e9284f00ec6095ac6863dbd98` |
| 222 | `theorem` | [inv9_square111](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square111.md) | 227 | `result-track:2e104179f2188186389d9ea5a98462d7105bcbc0c4bb7de381c124061395671e` |
| 223 | `theorem` | [inv9_product111](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product111.md) | 228 | `result-track:e0252ff5c8b569c4f0ee3462f372bb3c95b9f4d04b8c379982726d642001f8ef` |
| 224 | `theorem` | [inv9_square112](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square112.md) | 229 | `result-track:9ea12fa20c7c405e4ee0fadc8b66a972f3ab5f041f78bbb2651b0b66387b4112` |
| 225 | `theorem` | [inv9_product112](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product112.md) | 230 | `result-track:029df66aae1e7777acd8b4dfb2ec26806f8bdf60d8ca8e8598786c2664ba169f` |
| 226 | `theorem` | [inv9_square113](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square113.md) | 231 | `result-track:ba459a479a291f3a8e5ac93a6aae5fb73687cb7630ecdac7c33e37d0f72bc59f` |
| 227 | `theorem` | [inv9_product113](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product113.md) | 232 | `result-track:ac3436be4f0c06475663e8d4465219b54d8b080106f9580fe2e4be188af9c684` |
| 228 | `theorem` | [inv9_square114](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square114.md) | 233 | `result-track:f216a64d3f7a5956a5a23ab16b81d1102b0b78bbb30c1983e852cc555dd0431b` |
| 229 | `theorem` | [inv9_product114](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product114.md) | 234 | `result-track:6650b630340b481baab051068841914c4a1435efd5f5762ca29dceaa09e39da9` |
| 230 | `theorem` | [inv9_square115](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square115.md) | 235 | `result-track:470b21dea2cff217907d47addce70941a1b87cf53ac35dd6ec7f9c82614fad85` |
| 231 | `theorem` | [inv9_product115](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product115.md) | 236 | `result-track:38faa55d617a4ecdd2099c3ddaa82f32ce2bfa55a16226f5f41a7ac399d73872` |
| 232 | `theorem` | [inv9_square116](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square116.md) | 237 | `result-track:d74abed0ddb2db9d349f3845172e326eecee75ddfca899a921f44d5e19c408cf` |
| 233 | `theorem` | [inv9_product116](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product116.md) | 238 | `result-track:03929a0bcafa889b97ed78ac14ee318ec9913cf2f629d0ca5674bd9763c7ab0e` |
| 234 | `theorem` | [inv9_square117](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square117.md) | 239 | `result-track:4b68a404dc6bc0e628acdf6a334904e64f6c4b97d61070c9036faeaef46ca114` |
| 235 | `theorem` | [inv9_product117](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product117.md) | 240 | `result-track:3a2c6da112d092899ee014277f5014f8e5183a573c724d311c94f672887f61eb` |
| 236 | `theorem` | [inv9_square118](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square118.md) | 241 | `result-track:522256ce52281f0ff3e4eb5bbf8b6011de1fa990877c34cfdbbe784fae1a6cc7` |
| 237 | `theorem` | [inv9_product118](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product118.md) | 242 | `result-track:3cc7f889acc4336777e3c484c15533aa1145aace9877293549be0e68c90e5fa6` |
| 238 | `theorem` | [inv9_square119](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square119.md) | 243 | `result-track:afb3772dedf524ab8564524c7ce3bf134d53f711e01548e284910ba51d43c55a` |
| 239 | `theorem` | [inv9_product119](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product119.md) | 244 | `result-track:9e2f2189ed8f9ad824f52262c191927702d82378a6a7d85c5fd53a9a92d97eae` |
| 240 | `theorem` | [inv9_square120](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square120.md) | 245 | `result-track:640eabc3b3f5c008562d2f44e61d82e387fc0c725a79923c71226ce5dba9accd` |
| 241 | `theorem` | [inv9_product120](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product120.md) | 246 | `result-track:6ac851753f6bc02e70f3d2c72a721cb0e8ece825a6237688ed106cc9c1ec87ca` |
| 242 | `theorem` | [inv9_square121](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square121.md) | 247 | `result-track:19ef8b75ac6a6408189d48fdecbd7fe14362f92470f409cfd1f5fbf981604c4e` |
| 243 | `theorem` | [inv9_product121](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product121.md) | 248 | `result-track:7d72f8c311612e0c30537f37620fdc495f55ceebd0e32490932bcfc077e25e43` |
| 244 | `theorem` | [inv9_square122](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square122.md) | 249 | `result-track:3dc6c17649794c1449701c4c37f300ec8e9e9e8f13960f546d08e7126f6d5743` |
| 245 | `theorem` | [inv9_product122](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product122.md) | 250 | `result-track:8df422e278c8d813699337a26adb7916217616c74aa83777e9435be365dc7652` |
| 246 | `theorem` | [inv9_square123](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square123.md) | 251 | `result-track:e2899ec68e6d27184540d8a98c09bd0eda531947f4881a81a3dcad1db30f2bce` |
| 247 | `theorem` | [inv9_product123](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product123.md) | 252 | `result-track:a05f3924d314cc78a72919572384db5d03d72e8e88c5fff4c498c780964f16d1` |
| 248 | `theorem` | [inv9_square124](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square124.md) | 253 | `result-track:98e195778014fcf3aac8622bcc677eae7278f21db39c930a541a2e98e530d688` |
| 249 | `theorem` | [inv9_product124](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product124.md) | 254 | `result-track:57b0904cc8d2d57068270821829fef591baeb4f35397caa9ed2fa08173600aa3` |
| 250 | `theorem` | [inv9_square125](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square125.md) | 255 | `result-track:611fb30ae4fba6552720aba1d06b881637bad5477d67e7f3e9c41731319417fa` |
| 251 | `theorem` | [inv9_product125](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product125.md) | 256 | `result-track:cbbf01d50a63f8059cc2dfcd953a3855dcef7a9b8172ca80753ce27784e64b2e` |
| 252 | `theorem` | [inv9_square126](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square126.md) | 257 | `result-track:12fc6d7800c2c23e934763f0d0818194eca7c245631398b3a5ed18cae0ebec49` |
| 253 | `theorem` | [inv9_product126](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product126.md) | 258 | `result-track:63a3bb8d52f24aca371797edd8cc7e72ff89255eaad4696a5f40c2dcce4fa5a1` |
| 254 | `theorem` | [inv9_square127](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-square127.md) | 259 | `result-track:396c40b61f13ffa4b84c25dc8f04c81346e5024aef0d591b0fb8b67531801eff` |
| 255 | `theorem` | [inv9_product127](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-product127.md) | 260 | `result-track:2cf7293046c192813ced25402b89896c2b556a012791ddffc5b2db3d1f1cb1aa` |
| 256 | `theorem` | [inv9_trace128](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace128.md) | 261 | `result-track:1185d1636244c6231024fec34ad570d10b0e8a7725a29245a1bee166d0223c1e` |
| 257 | `theorem` | [inv9_trace127](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace127.md) | 262 | `result-track:4af78f0864321c2cbea1b591d94964d92fcbb796386541ef03a7415ff1af81c4` |
| 258 | `theorem` | [inv9_trace126](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace126.md) | 264 | `result-track:0822bb048f88acc313406235f2f7165f3d3c4aed7786d9a6e644edc8d5a7068d` |
| 259 | `theorem` | [inv9_trace125](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace125.md) | 266 | `result-track:f23bcaaa5d08d5f6264044d6aef0047b7f447ab7587ca183ab9fc7a00a363d69` |
| 260 | `theorem` | [inv9_trace124](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace124.md) | 268 | `result-track:ff897c284e188745781865e88e2442f657bd4d85e60745aa86dcfb3692a21a4e` |
| 261 | `theorem` | [inv9_trace123](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace123.md) | 270 | `result-track:b93bcfa3f35b8dc5ee55f1c87c1ba655d6a633bbcea585811e1ad6aec7e28863` |
| 262 | `theorem` | [inv9_trace122](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace122.md) | 272 | `result-track:2ff42b41db3320648e5b058352e03a60a135d9553584717f3adc9e96f722aa1e` |
| 263 | `theorem` | [inv9_trace121](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace121.md) | 274 | `result-track:649a9c0f83d408259d79c79686e4f05aa57b940bea33bc1777e3b6fa912e9804` |
| 264 | `theorem` | [inv9_trace120](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace120.md) | 276 | `result-track:563427acf25ea9e525d78dbdbd39aa6c889a6a3f2b10f42dc52e437c9399f87d` |
| 265 | `theorem` | [inv9_trace119](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace119.md) | 278 | `result-track:1320bb1f491733cc93d7393e12bb982ca33a66cca088c6fed399bc640b15e877` |
| 266 | `theorem` | [inv9_trace118](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace118.md) | 280 | `result-track:4754c5139a8d8ce333f04e677c08fee6abff9137de8364f870e397f0caf92c80` |
| 267 | `theorem` | [inv9_trace117](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace117.md) | 282 | `result-track:f362ab2f5b96ef6cf5adb4a2237e68f228b64ab712f6841a72fa2b01e578dedb` |
| 268 | `theorem` | [inv9_trace116](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace116.md) | 284 | `result-track:514c1588715a7f86f0f8519ef96a8e3a4b8a7c1e88b47a57605ec16a0ff8fe4b` |
| 269 | `theorem` | [inv9_trace115](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace115.md) | 286 | `result-track:79b540f5a43a33d632fea14115662415d3aa462ace013d2bb5e60bcc5d399424` |
| 270 | `theorem` | [inv9_trace114](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace114.md) | 288 | `result-track:149290d322ee35d9a0ce10b5700559395233e39e558361a25a3bedfb2631f1f2` |
| 271 | `theorem` | [inv9_trace113](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace113.md) | 290 | `result-track:0f20b802fba9d3fe414f5a520d8a7023898fe2bd14519b69793f58573c43eec5` |
| 272 | `theorem` | [inv9_trace112](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace112.md) | 292 | `result-track:9dbb7df0d198c754705c807d3c5f85abcf41b81fbc579631b25b0e58ae499fb0` |
| 273 | `theorem` | [inv9_trace111](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace111.md) | 294 | `result-track:470578acd71f099fbe7656c20aa426726dfd635d91fcaa3d2baf20a998183bc6` |
| 274 | `theorem` | [inv9_trace110](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace110.md) | 296 | `result-track:5bb5455c85cdf9db27cda3124e161d433e866945b7e1cac30fde0f592a74d6b2` |
| 275 | `theorem` | [inv9_trace109](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace109.md) | 298 | `result-track:bccab00ce7c3255ac3c8d0f93e95be4f59bdf7da8e9b176f6d62204011d01eff` |
| 276 | `theorem` | [inv9_trace108](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace108.md) | 300 | `result-track:6dbea45c5ef0aaa66227344ab64daa7e2f7b7cc23f09b4ce02e13626705dd254` |
| 277 | `theorem` | [inv9_trace107](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace107.md) | 302 | `result-track:33d3f65b673c61cd990237766c164a59125563b3d94ce84c6c851a761f848d09` |
| 278 | `theorem` | [inv9_trace106](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace106.md) | 304 | `result-track:994b735463e34fd79dcc6dff6b56701ef546923b905ecf6b92f258adaa09b072` |
| 279 | `theorem` | [inv9_trace105](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace105.md) | 306 | `result-track:b5fdac4983bb0c6fbd532bb924b03c003c805ca9c7328a4924ea66e461c78863` |
| 280 | `theorem` | [inv9_trace104](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace104.md) | 308 | `result-track:587ca21271819fdb1641fcd612ccac1f31b1758a19b26b13b89c6dc85e790ecd` |
| 281 | `theorem` | [inv9_trace103](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace103.md) | 310 | `result-track:2138f67ff4f8cf8cf245fa4d534a6de6c37d44fa88b2eec681a856c0f6268a79` |
| 282 | `theorem` | [inv9_trace102](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace102.md) | 312 | `result-track:d11f66527a8a061a978cc44683b5f08485490cd1a62799d53700450dec7c052b` |
| 283 | `theorem` | [inv9_trace101](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace101.md) | 314 | `result-track:885cfb057ee20d75da4ce89b351432426d3fc48d1f798194c21c1a7fb571763f` |
| 284 | `theorem` | [inv9_trace100](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace100.md) | 316 | `result-track:06407797446fec4e0a8b3cf377d438aa5c53f04522325837b89d5307f62bff76` |
| 285 | `theorem` | [inv9_trace99](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace99.md) | 318 | `result-track:00a669e3d36d3a8f7d1d9bf8bc0a5f034977080c5ec05612daadf7193a908f86` |
| 286 | `theorem` | [inv9_trace98](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace98.md) | 320 | `result-track:cbb98857a8c80645c8537b5c08e250a1c5e86e63979b46211effba23d9a5ec93` |
| 287 | `theorem` | [inv9_trace97](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace97.md) | 322 | `result-track:ee6315985075876d55c5aec2c54cc2a20dc4ed462a5d809b94e5f60eeeb65694` |
| 288 | `theorem` | [inv9_trace96](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace96.md) | 324 | `result-track:401da11d60425da2205df72fe225234437825a4152919fd8e811c54556eae7a1` |
| 289 | `theorem` | [inv9_trace95](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace95.md) | 326 | `result-track:178a2225b04b224764c5cb6163c893e76899e3a81abf574b662404d080b13de6` |
| 290 | `theorem` | [inv9_trace94](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace94.md) | 328 | `result-track:edf32309670a83a565de7fce46f140a7b48ed728d4ed8abf42413e0aa78c9381` |
| 291 | `theorem` | [inv9_trace93](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace93.md) | 330 | `result-track:62bfeffec02abe64b04d9b133b3b5a60096d47b3a346b853a3ee53460d29b2c2` |
| 292 | `theorem` | [inv9_trace92](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace92.md) | 332 | `result-track:286bb6ca974f69db20567a02efe61685394fdf6a3cd11cad8bf6940a534ef432` |
| 293 | `theorem` | [inv9_trace91](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace91.md) | 334 | `result-track:71ec55b414734ef555f78a5672bf6a105f7227e03e65f17f618337c61e414aa7` |
| 294 | `theorem` | [inv9_trace90](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace90.md) | 336 | `result-track:3743f7e47e117c7aac315e4e5981914e8c4177af27a1594ee1262059a1d9f074` |
| 295 | `theorem` | [inv9_trace89](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace89.md) | 338 | `result-track:523f23f4c7cbadb24f7efcb6b7706599723a540458977ad5006a5ce663408484` |
| 296 | `theorem` | [inv9_trace88](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace88.md) | 340 | `result-track:b24dfe17da081eb57d12593b5411b52dc247cf33811273a95efc4553d4496556` |
| 297 | `theorem` | [inv9_trace87](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace87.md) | 342 | `result-track:c69d2c97476ac602c615ee6e4a79ef2139028a5e9f9dcbfe535b42391e5a9984` |
| 298 | `theorem` | [inv9_trace86](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace86.md) | 344 | `result-track:726372daccfe461a010e31a246f15662db32800b8f41cbd4e40947718fa94fa3` |
| 299 | `theorem` | [inv9_trace85](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace85.md) | 346 | `result-track:9582c8bef3b4d9f77cf9afe2b9d1fed4f43ad183722daf7144a2998d1a3a723b` |
| 300 | `theorem` | [inv9_trace84](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace84.md) | 348 | `result-track:66fbb8322fdc908a79394a5d7266c2dfb1ffcfa46d70472602de404bb72ef2ab` |
| 301 | `theorem` | [inv9_trace83](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace83.md) | 350 | `result-track:7e17dbc0397aa86f4d1507db9b080c3ee0013c9370a6e50a2e33283d51a43e26` |
| 302 | `theorem` | [inv9_trace82](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace82.md) | 352 | `result-track:09d0bf307fc4d7365b0a4796c2a42991b8f73bc4e25b607dff594a79e29a8411` |
| 303 | `theorem` | [inv9_trace81](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace81.md) | 354 | `result-track:634ab32cecbb27361f7645471fd2e43a5659e38d0e0882c6e8756a51781b076d` |
| 304 | `theorem` | [inv9_trace80](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace80.md) | 356 | `result-track:6cd9d835e7a1c15481157e5b53d5489bb443f6e6ea3c668e117e268c4253b66e` |
| 305 | `theorem` | [inv9_trace79](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace79.md) | 358 | `result-track:a9092def2af00efeda83b014e62e247b7cd5d48a376c5ee0e60c6a0567c8de5f` |
| 306 | `theorem` | [inv9_trace78](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace78.md) | 360 | `result-track:6e79031c6ecee624de269afa17f35626b19f85cfd6c2cb87bc97007d34f97955` |
| 307 | `theorem` | [inv9_trace77](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace77.md) | 362 | `result-track:d7a3c320ba4f2f7ddc723559d6da7a8526b7b569c9d930f7380404698095c69d` |
| 308 | `theorem` | [inv9_trace76](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace76.md) | 364 | `result-track:d67f9cdf63e22163d0ef5d89024268b75debbf5741544b1251e5ea6beeb748a5` |
| 309 | `theorem` | [inv9_trace75](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace75.md) | 366 | `result-track:b8f4c7c8a2a05ae9d85078c12036cc05808ed7df7854a8a06e74947008ae1f40` |
| 310 | `theorem` | [inv9_trace74](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace74.md) | 368 | `result-track:3fea6c1cbfd82d23ee04eed96ef63467833a2990614dd775a8fb0e7abe981f9d` |
| 311 | `theorem` | [inv9_trace73](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace73.md) | 370 | `result-track:29231e404a0d41e50f7886f4dee62e3d5ee2c7fb677c33b8466a253f7ed79fc4` |
| 312 | `theorem` | [inv9_trace72](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace72.md) | 372 | `result-track:f89c1f04963969dad87aecb6df8b33bd265c786c08e34995af965d4f6e35f315` |
| 313 | `theorem` | [inv9_trace71](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace71.md) | 374 | `result-track:d32c4093d3b8759fe5c6daa78cbecfabc910d59d54d9af76c396b848c34f3364` |
| 314 | `theorem` | [inv9_trace70](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace70.md) | 376 | `result-track:6ec8c4881662383417dbe5cee33cfd7860f77c888f523aa7fa0f2664016d2471` |
| 315 | `theorem` | [inv9_trace69](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace69.md) | 378 | `result-track:08b696bbea3111ae60e808551ce7ea22a55c7786e556b7da987e334ae42f3290` |
| 316 | `theorem` | [inv9_trace68](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace68.md) | 380 | `result-track:8c8ec3efae507d8ebe8e7d63fdea7ae24d0c8abf9599b48c77576e3587f7b613` |
| 317 | `theorem` | [inv9_trace67](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace67.md) | 382 | `result-track:42a9c37361eeb594d21bb0465cae4dc1cb9e27f907ed5e86c7d4c36c00f1bc62` |
| 318 | `theorem` | [inv9_trace66](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace66.md) | 384 | `result-track:5abe4de29590768b02651bd39724a4aa2461f95d525d10f79757fd6079661ff2` |
| 319 | `theorem` | [inv9_trace65](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace65.md) | 386 | `result-track:075dd9b127a7698baec857feedfef7a76bea68cc8e626c8bb6152ca63b091e68` |
| 320 | `theorem` | [inv9_trace64](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace64.md) | 388 | `result-track:55fb4934580be36e7393bcd7b83e22c0605dc3cfda183f8e3878bc89920a611f` |
| 321 | `theorem` | [inv9_trace63](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace63.md) | 390 | `result-track:a6c1dd81a2706edf94398601f32871e5ea3a027d69d8385964ee80e4b1517171` |
| 322 | `theorem` | [inv9_trace62](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace62.md) | 392 | `result-track:681fb12b788b88dd2f891cfe2da5f3a646fb21eeaf35da69faa714e2975013f8` |
| 323 | `theorem` | [inv9_trace61](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace61.md) | 394 | `result-track:65c2f8f4b0f2b6ee4fd21bca154bb3f740678a7475570e760e8e25b89477c442` |
| 324 | `theorem` | [inv9_trace60](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace60.md) | 396 | `result-track:46c01ca3750a0e4a3e9f83ad6eb33962f9b4015b966432aadf9b93a1cd95f7b8` |
| 325 | `theorem` | [inv9_trace59](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace59.md) | 398 | `result-track:780b79b980c8d2e491f5ce80f38dd7fd6512f783829ff456bbb8286dd67ea9db` |
| 326 | `theorem` | [inv9_trace58](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace58.md) | 400 | `result-track:a69a1cc05dc471131e8a56c34698e6a4c68e763763f09a4709e853435d7d9af2` |
| 327 | `theorem` | [inv9_trace57](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace57.md) | 402 | `result-track:2a38e1f7e457923e726421aea977a297df2c13ca4ae16af208ea1625af1bea47` |
| 328 | `theorem` | [inv9_trace56](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace56.md) | 404 | `result-track:d66513fb5f465ace649382e96783980fee4f89daaebb906a7485081037b549e4` |
| 329 | `theorem` | [inv9_trace55](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace55.md) | 406 | `result-track:942ede131b34f700faed0544f8640dfb546fa4f993dde4fe71d00d896e52608f` |
| 330 | `theorem` | [inv9_trace54](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace54.md) | 408 | `result-track:4cc9e8a24d8ecfbe4af7804aaa71c92be9d44f94f9388ebed2b3831cde458849` |
| 331 | `theorem` | [inv9_trace53](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace53.md) | 410 | `result-track:0a11c86ef978b012e3827c25282bb708f5a9081cc518499f0135c638c54edc0c` |
| 332 | `theorem` | [inv9_trace52](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace52.md) | 412 | `result-track:17e36255f9dc5bcf7153fc594ce824f8545dcecf3818a522713da8eadc3ea8c5` |
| 333 | `theorem` | [inv9_trace51](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace51.md) | 414 | `result-track:3c464804f1f6b11d327c7610aecadd3af13a7016e1973b9394a52e6bef015443` |
| 334 | `theorem` | [inv9_trace50](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace50.md) | 416 | `result-track:c784ea3eced5b0caaf26d5778269c6db1dcd9b0a14bbabffcba29dde04876032` |
| 335 | `theorem` | [inv9_trace49](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace49.md) | 418 | `result-track:2708da52644bbfde8087ac6f62e505631953dac48996f2f916e5573b1b3c9476` |
| 336 | `theorem` | [inv9_trace48](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace48.md) | 420 | `result-track:6851d157a2401518306ba5ef21d7a9dff47ec6252c244971f46a5bb33f3cea13` |
| 337 | `theorem` | [inv9_trace47](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace47.md) | 422 | `result-track:9f9098356020673b470d58320852fd8f049446278c55f5e001b6f8f465f2c784` |
| 338 | `theorem` | [inv9_trace46](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace46.md) | 424 | `result-track:9ff91f90a4f36ccd3a0c9817d889f8d23807c87a2b4edfb1f801b23ca0272bc5` |
| 339 | `theorem` | [inv9_trace45](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace45.md) | 426 | `result-track:eded3be82e8f3eee2b5b588437b6b05c8bbe48af4741fea8b6822df7065b33d5` |
| 340 | `theorem` | [inv9_trace44](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace44.md) | 428 | `result-track:a07a8147c9f43bd1776a3710ae97dc88e7086340f31fa147f6b00e1ae84a0897` |
| 341 | `theorem` | [inv9_trace43](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace43.md) | 430 | `result-track:bbeafc930b08e877d2d2cb5168125bc0e19f158a45f122de6e17fdbe6cd308df` |
| 342 | `theorem` | [inv9_trace42](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace42.md) | 432 | `result-track:4c985c7bc62f91e12e7944093eda80fb34514bab902e2ab307464a138fe45d31` |
| 343 | `theorem` | [inv9_trace41](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace41.md) | 434 | `result-track:0de40b4d1ca3431b2041cf45c3a3de75e439dd1885e7532e67356e66e82d38e1` |
| 344 | `theorem` | [inv9_trace40](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace40.md) | 436 | `result-track:eca23e994536f642c2a84aaf9a7bfb934b161d4e2d96819d0e6874c06bec3a9e` |
| 345 | `theorem` | [inv9_trace39](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace39.md) | 438 | `result-track:099c58fb679970ac2574ce245473c4180c9eac50fea17e9372a2dd8e8bf19230` |
| 346 | `theorem` | [inv9_trace38](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace38.md) | 440 | `result-track:1159a1f5a4455055246454f991a65e577f834ec9fd9dce0518c25a5d7e81d017` |
| 347 | `theorem` | [inv9_trace37](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace37.md) | 442 | `result-track:41f17a6dcd2554337944e7b968747d210241f271f4273add373ff9c3eaf39a2b` |
| 348 | `theorem` | [inv9_trace36](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace36.md) | 444 | `result-track:6b4c250c434f0b94fbfa73459c30bf2818535afaff1b6bc19fbc73d6b06a572b` |
| 349 | `theorem` | [inv9_trace35](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace35.md) | 446 | `result-track:4659cb75df2de03e5656ffb5b2ef60b61326b7c1d04cd463c931bd6858e48c95` |
| 350 | `theorem` | [inv9_trace34](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace34.md) | 448 | `result-track:7281ce36cf86ec29ddb5b1fd0e4189b3c542478a9ef1ca12c727e80f4a5f454e` |
| 351 | `theorem` | [inv9_trace33](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace33.md) | 450 | `result-track:a5db97926bb14918b35779916809607ace79adbab6cf30d811a2f25a99e4390b` |
| 352 | `theorem` | [inv9_trace32](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace32.md) | 452 | `result-track:a05bba03cb2e3ce23f21a6be3e3b01ebafa0610a0d08be1e142f2b3533eeb121` |
| 353 | `theorem` | [inv9_trace31](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace31.md) | 454 | `result-track:9a9124f9813f752b14307750069af4e357d56dff26089d9a53d236b210b985d0` |
| 354 | `theorem` | [inv9_trace30](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace30.md) | 456 | `result-track:311f9672b01ce9bb9a8825916fe18ea9a624091f0c7ffd1289f26329685db1b8` |
| 355 | `theorem` | [inv9_trace29](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace29.md) | 458 | `result-track:efcc97179574f2695b75248da0cb9e73bb06be0dce04d1c7160a9fe9c7e9d4eb` |
| 356 | `theorem` | [inv9_trace28](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace28.md) | 460 | `result-track:d23e21398416679ed05d81fe44987970cd48b69be7cc37b839356670482d2b8e` |
| 357 | `theorem` | [inv9_trace27](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace27.md) | 462 | `result-track:fa1211ff6eaf13ddb5a9f89e0b1966cf2549f22f6c7512173e1aaf849db5021d` |
| 358 | `theorem` | [inv9_trace26](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace26.md) | 464 | `result-track:f6d22f15c21d9c6567f20190b371d6f28a9a53a70eff2f9e43378b8436a82a78` |
| 359 | `theorem` | [inv9_trace25](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace25.md) | 466 | `result-track:f24f17beba95c9d7adc1794330e53cbff33987091efa2e6ddec9e4a608e9c1e7` |
| 360 | `theorem` | [inv9_trace24](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace24.md) | 468 | `result-track:f8f748b1e20286bfcec77b975fe4f38c8a60bc370ead7e8023f849e062346e8f` |
| 361 | `theorem` | [inv9_trace23](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace23.md) | 470 | `result-track:7fb1fa9f49dc0713256d14534e4bb9ea97007bdcda55014c7ea8637cdff54f84` |
| 362 | `theorem` | [inv9_trace22](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace22.md) | 472 | `result-track:b25c69109279911af04a67f2020a16c427a8e52fedd39c79ff34ab8dc8a53190` |
| 363 | `theorem` | [inv9_trace21](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace21.md) | 474 | `result-track:17247835e9414c2b08fbb8cc711dac8cd5a9e80af297f34f5e99ce14a02028b0` |
| 364 | `theorem` | [inv9_trace20](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace20.md) | 476 | `result-track:24ce8f79d570003d5cd38187d51d01e92aab217e7f68974b755438bac661bd9d` |
| 365 | `theorem` | [inv9_trace19](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace19.md) | 478 | `result-track:2219469ffa3d0d35a08ff5f2ed2a595edd0962ed9fafdfe6c0f6bbbd19edcdd1` |
| 366 | `theorem` | [inv9_trace18](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace18.md) | 480 | `result-track:6ec0dd19d318a02ae05daccf7d882fcc9f69be52d1110e6f60c292660f67aff9` |
| 367 | `theorem` | [inv9_trace17](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace17.md) | 482 | `result-track:c1e85c678bb8a066ce82c13f12e8f82d3a67de33c9cdb48eba26cae78b736a2f` |
| 368 | `theorem` | [inv9_trace16](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace16.md) | 484 | `result-track:bfbde79c989a2c0734abaff38aef9ff5530d7f5b77cced124afcc2799ccc67a4` |
| 369 | `theorem` | [inv9_trace15](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace15.md) | 486 | `result-track:df466e0c88fcefa5b27009311275144bd6f7b9300452339bb67247ed8156dd40` |
| 370 | `theorem` | [inv9_trace14](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace14.md) | 488 | `result-track:73d5e4ad69118cafa509614b61d739127be4e022b9328186529d9e9c0518e670` |
| 371 | `theorem` | [inv9_trace13](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace13.md) | 490 | `result-track:caa89a94cf35993c0948d35cba0c923e9db69750232f6ffaff9d14acebd56c08` |
| 372 | `theorem` | [inv9_trace12](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace12.md) | 492 | `result-track:8823618bc7e970e109884c1a3ff365cf7ef83d7db8eed7323f22044f78de745d` |
| 373 | `theorem` | [inv9_trace11](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace11.md) | 494 | `result-track:eb555c886b20eb4550da03a3380f8e5b2b8565fa18c0d8ee2ba984730874f267` |
| 374 | `theorem` | [inv9_trace10](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace10.md) | 496 | `result-track:723e2786f54759321524fa987f325e4b16a5a028af69f46f423fea304038c56d` |
| 375 | `theorem` | [inv9_trace9](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace9.md) | 498 | `result-track:e9a5ca6997617db72e6b36f641d487cbca060bc0e59ba3fbeb1a37c08c54b89c` |
| 376 | `theorem` | [inv9_trace8](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace8.md) | 500 | `result-track:fdb8170d2d20af25a551f4ad1aff0aaf21e9857abbad7b0387421ad205054907` |
| 377 | `theorem` | [inv9_trace7](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace7.md) | 502 | `result-track:ab3a9133370210b3ad0c886db7b16c47bf670d5496429df66615cbef5ffb6dc2` |
| 378 | `theorem` | [inv9_trace6](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace6.md) | 504 | `result-track:e847ade36ef21635dc5617ef2fe7d255fbd690597db1e5f88bd5a02fdb66ad97` |
| 379 | `theorem` | [inv9_trace5](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace5.md) | 506 | `result-track:3e8796659ef9f8c5691de92421deb7178bce07354b12cd1f105a084c340235e0` |
| 380 | `theorem` | [inv9_trace4](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace4.md) | 508 | `result-track:7998f417f3d427c2d04b379eff1c705ca7b3be68ba51da113fb44cf1a4d20bec` |
| 381 | `theorem` | [inv9_trace3](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace3.md) | 510 | `result-track:7e30efad9635735c252341339254709e9a3fcef121c7808c8808b50801dcd037` |
| 382 | `theorem` | [inv9_trace2](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace2.md) | 512 | `result-track:3fa50aee372a90ec3e8d8fa9562b766bdc1a96e4c1d87d55664782a4bbc6e740` |
| 383 | `theorem` | [inv9_trace1](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace1.md) | 514 | `result-track:ac6b6d08a65d3caa068c986904c1c96b1ae89fbaeaf2ec296c9e19a23c60ac15` |
| 384 | `theorem` | [inv9_trace0](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-trace0.md) | 516 | `result-track:c64ce06f6e81d2f910322ce7b87943abc8819186f4c3b60c17d401389752cdba` |
| 385 | `theorem` | [inv9_exact](../../../../FieldTheoryAndPolynomials/Inv9.lean/declarations/inv9-exact.md) | 518 | `result-track:08771a5e961d911de091dd2f10e3fb52738d0cf5ea6c15910c5903474f174a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85ca6e57442651fda7ad2edda2ba94d873432cdc9d55c56f2e25ac251b5449a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FiniteField/GF128/Inv9.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
