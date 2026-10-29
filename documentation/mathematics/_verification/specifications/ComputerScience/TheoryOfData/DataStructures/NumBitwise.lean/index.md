# Verification target: Num Bitwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d92367d9e7dafb722e6ad579000c070edbfeba",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantcca3ba9459d8905f43ab290b0c7d665ee5482608b349960848e06a67286ce6e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d92367d9e7dafb722e6ad579000c070edbfeba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantcca3ba9459d8905f43ab290b0c7d665ee5482608b349960848e06a67286ce6e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantcca3ba9459d8905f43ab290b0c7d665ee5482608b349960848e06a67286ce6e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Num.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lor.md) | 24 | `declaration-track:35fd4d1a25ab77790de66cc06fdd3b5a9994de6bbacc0e0e204341dbe2aa60bf` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-16.md) | 34 | `declaration-track:d8864b1b8e66f4e7a122ae91e8e4450f805b1df4df88da3b3268f602ef080a03` |
| 3 | `lemma` | [lor_eq_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lor-eq-or-source-edition-2.md) | 36 | `result-track:cc369f91ff22264e3c23d0b660113ab0b1e586c3a04c75e8604191d2a6b2e160` |
| 4 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/land-source-edition-2.md) | 39 | `declaration-track:fb93dff2972f066b693e1356d5deba47d4da63a02609fb70e2ca5c5d1ea030c0` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-17.md) | 49 | `declaration-track:dedc4c7fa771b50a9cc37367b7fa6d742777c8876c0c7b1f0d6b4c4d3130c304` |
| 6 | `lemma` | [land_eq_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/land-eq-and.md) | 51 | `result-track:55ec20d7d41848fd69d412a3ce910b990569df54bedf3fba26a0e156e1d58b90` |
| 7 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/ldiff.md) | 61 | `declaration-track:0616f917dc0f891d3aa641f2c95c7bc1b14d9c77a42a77ffd72de6c5e5592c22` |
| 8 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lxor-source-edition-2.md) | 72 | `declaration-track:f8a67fbd77a730983e28e643625cb2329d9c30eaed47713e9c80804ad56d3079` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-13.md) | 83 | `declaration-track:c8153adc1d6152bd5d1c6d543de3b32797bd07b673a042f7c70708bfe38e6a5a` |
| 10 | `lemma` | [lxor_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lxor-eq-xor.md) | 85 | `result-track:2654a3625f4d69eef17598de7eed1df0c762680545766c6d397bb863da9d79ee` |
| 11 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/testbit-source-edition-3.md) | 89 | `declaration-track:9d8a163bafb53e49a9097a4be5f7221927a7a0b7506c556b423571c10ce8dfa0` |
| 12 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/onebits.md) | 98 | `declaration-track:b8e69e58f210da8977d3bf92f3246cf33f2e712f3115222372106b9c782ea3fc` |
| 13 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftl.md) | 104 | `declaration-track:531673de971327addb228228972c25bbc8015074f44f0c19f1219a0b65577c37` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-10.md) | 108 | `declaration-track:ad1c34188b4d9da34d00922e42ba09aa0007cd9cd3fc16c366f3445b42a5cdce` |
| 15 | `lemma` | [shiftl_eq_shiftLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftl-eq-shiftleft-source-edition-2.md) | 110 | `result-track:beb991810c85215ac9cbacd91b00f1f790602c3eff3b6873e7edbffcb4fcd333` |
| 16 | `theorem` | [shiftl_succ_eq_bit0_shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftl-succ-eq-bit0-shiftl.md) | 113 | `result-track:e1a8cd003e99c94498089c71d24084a9e4513eb19bac687bd6be53f6fd2d7a0b` |
| 17 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftr.md) | 118 | `declaration-track:c398eac1cc3ccd8b14d7afaa43c14cbb546c498a1a066846422f8933cc0006ca` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-7.md) | 124 | `declaration-track:88f9e646ad6b0741171e9c03aa3adb38aad9a785a92faae251e56124ca07be55` |
| 19 | `lemma` | [shiftr_eq_shiftRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftr-eq-shiftright-source-edition-2.md) | 126 | `result-track:db031a5a66fc9d191b38f5b93fba096b1c46692f082179c7f02ebabee4e66426` |
| 20 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lor-source-edition-2.md) | 133 | `declaration-track:f3000111a8bc29e32c7b1b0922216c895be828cfaffcb0c271db0f9fa257f988` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-8.md) | 138 | `declaration-track:8dfeb6931f08fe510926da14a92aa231a6821efaaa35e8f928d7492bf06a4269` |
| 22 | `lemma` | [lor_eq_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lor-eq-or.md) | 140 | `result-track:a455de561d623570109367005de8f2c28912101b572376aea81a8992427ff1a8` |
| 23 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/land.md) | 143 | `declaration-track:99f5787e8fac51c21ebfd55e8e0b6227550a1204e5f8c6acec82ce073ae3a802` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-14.md) | 148 | `declaration-track:cbc5e21aad01b097135ca955913322c8178eb5a95eb14932d58bbec9c0af0c57` |
| 25 | `lemma` | [land_eq_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/land-eq-and-source-edition-2.md) | 150 | `result-track:b3bc664cde982b45e7e694e010df56498a4ca913052b413b00722e51ced91292` |
| 26 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/ldiff-source-edition-2.md) | 160 | `declaration-track:3b20748219c1eb348d98a5a7ea68340b627c7b41605a3ea65d3681cadcfb42f2` |
| 27 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lxor.md) | 166 | `declaration-track:56a626539f7f6c733ded69a4b5ba700437021f0aaee4e8767b834ef4130d83ef` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-15.md) | 171 | `declaration-track:d3ebaa0641509a048973fcb36ef203325c047bf121989bf6883ad418c2768fcc` |
| 29 | `lemma` | [lxor_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/lxor-eq-xor-source-edition-2.md) | 173 | `result-track:5253d4ae80104e878c688ae1e6fa89d76e50cbe03b9346c2c3750947ea65210d` |
| 30 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftl-source-edition-2.md) | 176 | `declaration-track:7ab7f589f1a4944642c5c0d62b5c6ec2cce5749435b9af7439d29705b579d630` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-4.md) | 180 | `declaration-track:4039a0be6a1adfb020c84b82ec0a6aa8e66db8f30dc79f7c8d9e6dbbca9b568b` |
| 32 | `lemma` | [shiftl_eq_shiftLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftl-eq-shiftleft.md) | 182 | `result-track:13c91a39ee9d51fc7767e520829c7b3dbe8308371d1c86b1883ae1618a20e4e5` |
| 33 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftr-source-edition-2.md) | 185 | `declaration-track:ee424b7c1ab223d3890e4e2786ecaa51ab76736a8ca49c7e903a2351f8bbde28` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-9.md) | 189 | `declaration-track:95aae8700ce9379c486be0a8adf99c3bd597e8eff89e39cb0670df533163a716` |
| 35 | `lemma` | [shiftr_eq_shiftRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/shiftr-eq-shiftright.md) | 191 | `result-track:a28d2228f1b5a3b199c0c0231cf3561fd698c7f89e5f34bd32334eaf07a124e3` |
| 36 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/testbit.md) | 195 | `declaration-track:3c3401eabbb0bc234675637e49d853dc2912839bf147673db08c88ed17eb8230` |
| 37 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/onebits-source-edition-2.md) | 200 | `declaration-track:fed8ce50d2c84387612ce873d603052bb70a646370b21b3fe1da2c85afcc2452` |
| 38 | `inductive` | [NzsNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/nzsnum.md) | 208 | `declaration-track:028e0646cce8f609868b4e828aad5fe14b77dc4f882f0c4232de7451e6508c79` |
| 39 | `inductive` | [SNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/snum.md) | 228 | `declaration-track:7ac83c784f3fda163132464956ae21488dddaf2ec599b164cf984df9992898ef` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-5.md) | 233 | `declaration-track:427a2ad3b7c755e467a6e64080f0c47a2cd4b24bed6d17c1caeb6b65d7392e61` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-2.md) | 236 | `declaration-track:323bab3587a5df999f75f63cc860e5d8d25b1649e82e158bac2ebb7289ca0d4b` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-12.md) | 239 | `declaration-track:b68af64ebf3e870e8d8a8fe09165509f97a189e15761d62238cc5ef05fca966d` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-3.md) | 242 | `declaration-track:399cbba5fa44af823c247ad8e0a804f2510cf6ed1f4d70aa7c862dee94a5bd46` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-6.md) | 245 | `declaration-track:8206b7c3e4d778831f93723400c5eb32c5715b211e0e20fcada512e218d55f54` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-20.md) | 248 | `declaration-track:f04a56c1c340b395b8507cce48e80ea520b062f5f6a0ace291deb004c1fd99c0` |
| 46 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/sign.md) | 263 | `declaration-track:853943abc6147593d7547afc929d600f87562e8acbc37e77602369208bdb755b` |
| 47 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/not.md) | 269 | `declaration-track:60a6d3d24de1e372a82bd923713cc532b26b466655f0389eb800c468c44876a9` |
| 48 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bit0-source-edition-2.md) | 277 | `declaration-track:93cd6629c48ba4ac5c70a15c7da2b928dfa23c2a3f25a5440e8fadab68907b54` |
| 49 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bit1.md) | 281 | `declaration-track:0379649a381fc3958476521d927b7bea425e763eee28eda169107707ad7f0518` |
| 50 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/head.md) | 285 | `declaration-track:0499fbaa226a9b835774b755bbd270040d44eaf0642fc19040f2a448f0809fc2` |
| 51 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/tail-source-edition-2.md) | 291 | `declaration-track:98801a3973918cb324a78a6524e160fb89633870744a2d8ca682f418ba201a0f` |
| 52 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/sign-source-edition-2.md) | 302 | `declaration-track:ece54d4006db02e129f5e933bbde4280344770971db4b01fe11a59070b4f2741` |
| 53 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/not-source-edition-2.md) | 308 | `declaration-track:7ef7a40acdea467ed45f60b19eea5a5b8c5f8c467718518cdfbffa5c3af03ac5` |
| 54 | `def` | [bit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bit.md) | 318 | `declaration-track:07b3092de0cc4eac0be98108205cfb9fc6037ac4c072f8e5cf5d28cfba8a2e7d` |
| 55 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bit0.md) | 326 | `declaration-track:846a5860191f6884e5fa2b7da95fb2150fcf2045055cb462b7b3db5e45be1550` |
| 56 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bit1-source-edition-2.md) | 330 | `declaration-track:7f816d71f2405267a84b5378400c064f750e624306cb0d9c5757b505b250f368` |
| 57 | `theorem` | [bit_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bit-zero.md) | 333 | `result-track:abc11d4f559dd45b06c3ded01439572dd15448fba049624c2ccf6eff469262fb` |
| 58 | `theorem` | [bit_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bit-one.md) | 335 | `result-track:7bc1caccb16387a54aed30f19ca205bff11c7422f6f6568787912aed7e1458c9` |
| 59 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/drec-source-edition-2.md) | 345 | `declaration-track:dc8d80d80ddbdc3b11aa43a1575cf7984781a28ccbe158e854813ece14f30730` |
| 60 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/head-source-edition-2.md) | 357 | `declaration-track:ffc481afab54b2fb9da08a4fe165d624fe996664dac17711a651dc6ca17d4862` |
| 61 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/tail.md) | 363 | `declaration-track:8086b774dd25c9466c267f050001dab8941679fd86b4c58b92187d085bf2d8c2` |
| 62 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/drec.md) | 368 | `declaration-track:5ec9190c38fde4697c14cf17d46b1491a80e4b8036f7ab2b6b5f4820097c3613` |
| 63 | `def` | [rec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/rec.md) | 373 | `declaration-track:23a14e7035f325dc51ac113370532831ab8935ab247c27791fc6781250611e03` |
| 64 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/testbit-source-edition-2.md) | 378 | `declaration-track:44679e0864335f69ab5a9b89e4a5828f0ebbcece04b0552f61c1d55bca58b968` |
| 65 | `def` | [succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/succ.md) | 383 | `declaration-track:68a9f0864b4c491853aa8b3437ab38e5f230c8070dafa2f85bda72a961f485c2` |
| 66 | `def` | [pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/pred.md) | 387 | `declaration-track:c87ced8c49208204236ca342e6cc1f8ca3023fa0f5951b94d3c06bac519869c5` |
| 67 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/neg.md) | 391 | `declaration-track:9b43924e3dcc4edba758a290485d5856292a38e2227256a308e89190cdc43fce` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance.md) | 394 | `declaration-track:0131e5cbe8e097fb3b31bfc2bf77abbe184bf75dbc2be3326bec7e224730949b` |
| 69 | `def` | [czAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/czadd.md) | 399 | `declaration-track:4eb958c03a2507de3e34697ee1e78999592e5f7e51aeec004e34be128b64d072` |
| 70 | `def` | [bits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/bits.md) | 410 | `declaration-track:e1a69835f6b1b8b7a03b8c797d2ccfb444f0fd652b01dbf7903c4ff1bc9912ec` |
| 71 | `def` | [cAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/cadd.md) | 416 | `declaration-track:f30bb25a12570a3c3f8aeaa2cbb6c797a099f6e772315386e1f8ef013738e233` |
| 72 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/add.md) | 421 | `declaration-track:e8b5a77a6e166302d3ee344c8b176e7e7aadad6d210b7152f856ec276553e569` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-18.md) | 424 | `declaration-track:ec80b8bf5cdffab6a178c405cbc37d8591dfe520e04e1ba7df625c2e143608ae` |
| 74 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/sub.md) | 428 | `declaration-track:9e8feb8696576a790531a6c6d8b00e1301333e21897a39e7cb7b5a1eeb860f6d` |
| 75 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-11.md) | 431 | `declaration-track:ae0939511a270807b55ec59b765564c140c661f15ba35101ab45e9eeec6d088a` |
| 76 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/mul.md) | 435 | `declaration-track:4a20589f733b2b7e785906c1b17118f573ac00c7c45174bf2ff201baba5f44ee` |
| 77 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwise.lean/declarations/instance-source-edition-19.md) | 438 | `declaration-track:ef9cc0338b9253c89501e80ccdc6653f0a1c64d131fa16625353a55c19323d2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=420123d40b4cf0c3c841147db4eb2b1de1000e3acb0e8bdefbadf3169b8a6b37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantcca3ba9459d8905f43ab290b0c7d665ee5482608b349960848e06a67286ce6e6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantcca3ba9459d8905f43ab290b0c7d665ee5482608b349960848e06a67286ce6e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
