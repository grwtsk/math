# Verification target: Pi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e5a2b6aaad20f340b204f870463f99ddd6330e6",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e5a2b6aaad20f340b204f870463f99ddd6330e6`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Prod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPiSystem.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ispisystem-pi-source-edition-2.md) | 80 | `result-track:a407e03dd518907fd267721b772dbee628ff542ea3c1efd4eb9b98ed54ea1364` |
| 2 | `theorem` | [isPiSystem_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ispisystem-pi.md) | 88 | `result-track:218857a7c13423b45b586f5ec07d6795b275dfd037a7ce852ff0304bb37eee78` |
| 3 | `theorem` | [IsCountablySpanning.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/iscountablyspanning-pi.md) | 98 | `result-track:c87b0cb6e9977b4d64fb4cc119d5e5d951ed05226b1edec365c5c75e973d35ac` |
| 4 | `theorem` | [generateFrom_pi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/generatefrom-pi-eq.md) | 111 | `result-track:8a029a5e728b2683da5573c55c3d52fc8a47d41b72187aa041aed6932d15f11c` |
| 5 | `theorem` | [generateFrom_eq_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/generatefrom-eq-pi.md) | 141 | `result-track:b833ff0f5597acf2b379511fe608f2f744a17e28338f806cb80ab5aace77060e` |
| 6 | `theorem` | [generateFrom_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/generatefrom-pi.md) | 149 | `result-track:c432b567674cd028167efffb899c2105d7052c8237f0d4698e2013f37fe7f312` |
| 7 | `def` | [piPremeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pipremeasure.md) | 167 | `declaration-track:f30278c100553c31d1f76a1a033dfbf3d9dc8b824ce9e04f7b102a229113a09d` |
| 8 | `theorem` | [piPremeasure_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pipremeasure-pi-source-edition-2.md) | 171 | `result-track:2c3f7607b15de3a39d5d46fcc8cde01ac94c08f5a447b3200cb67f573ee1363c` |
| 9 | `theorem` | [piPremeasure_pi'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pipremeasure-pi.md) | 175 | `result-track:2584d4ccefe8338de786a1a5a1dd8790a08dfa99b585c6319351c63ef45a5def` |
| 10 | `theorem` | [piPremeasure_pi_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pipremeasure-pi-mono.md) | 186 | `result-track:a80fede7403eb76c9c4b6b55631589bf6b99233edeb3a9c39f56a14aab3a8beb` |
| 11 | `theorem` | [piPremeasure_pi_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pipremeasure-pi-eval.md) | 191 | `result-track:3fa8279a15f64b0fae4b714e523f361bfbd2696864ae46572ef5d5f85feb93e9` |
| 12 | `def` | [pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-source-edition-2.md) | 202 | `declaration-track:b0e994467d96449af8aed829d1910e726b3be777b8fa9ef750a87a2a2d383b79` |
| 13 | `theorem` | [pi_pi_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-pi-le.md) | 206 | `result-track:77170edcddc4ea8652d6e5f4c6508314abadbdc3314495adb7175c8a0df29c29` |
| 14 | `theorem` | [le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/le-pi.md) | 212 | `result-track:698f176f5859e3cc62df28d25f8da32b667c0d65b5abf07f92a3959dfb25bfc4` |
| 15 | `def` | [tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/tprod.md) | 235 | `declaration-track:1ee1fdb7188f5193ef5087632d1190ca506dd45ff68a56e765fa6647f797faca` |
| 16 | `theorem` | [tprod_nil](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/tprod-nil.md) | 243 | `result-track:ce89a8f7e03699c9efb23a5cde9cda45d108b1840fa6599436d760a775bcf490` |
| 17 | `theorem` | [tprod_cons](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/tprod-cons.md) | 248 | `result-track:0653a6b720c30f6f2552e545e260b51cfa36bac6435f862c7c7e7c9d537bd952` |
| 18 | `instance` | [sigmaFinite_tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/sigmafinite-tprod.md) | 253 | `declaration-track:19d08d93045f022fe3c044001e30d9b6b914fb402840fedec319ea4238077722` |
| 19 | `theorem` | [tprod_tprod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/tprod-tprod.md) | 260 | `result-track:a47186b3a7c73e5dcfb9982055c22c1857a089c39a69b5a8ad25cdb9565280a3` |
| 20 | `def` | [pi'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi.md) | 278 | `declaration-track:a8adc7c166d845f8cc1d16c2ce753185248cc5aa8d0cc9ce1daa06a6df3b5c35` |
| 21 | `theorem` | [pi'_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-pi.md) | 282 | `result-track:5f773db824997eef02ca68db80e8eed8d696cb36b2ed475b2595ca7b31bdc6fd` |
| 22 | `theorem` | [pi_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-caratheodory.md) | 294 | `result-track:e3b4ab445655d91fc39fa183c39fd27d3e38fdbf0b08a93642e38ddd0cdac62e` |
| 23 | `instance` | [Pi Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/root-grwtsk-differentialequationsanddynamicalsystems-dynamicalsystems-is.md) | 317 | `declaration-track:ebc82a2f9c561f9e6da41ab6e957a8b60196c9d46863cdaba6879abff76b61f9` |
| 24 | `theorem` | [pi_pi_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-pi-aux.md) | 322 | `result-track:9546bb36bf26cc4dbebf480a0800318e4d5b2a6379399ff25f87861b6a8c4063` |
| 25 | `def` | [FiniteSpanningSetsIn.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/finitespanningsetsin-pi.md) | 340 | `declaration-track:d57e5d257669d6c773e9d9510155e775409acd56a77c3a0a383821735d97fa84` |
| 26 | `theorem` | [pi_eq_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-eq-generatefrom.md) | 368 | `result-track:622ee35c50088eff656e87e75a9669824b98eb32c733744033941bd84a18eda8` |
| 27 | `theorem` | [pi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-eq.md) | 388 | `result-track:b1cbad45006c7fcf5f3c0e5c73f523a52e4310250da1886b8058caed18c896bb` |
| 28 | `theorem` | [pi'_eq_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-eq-pi.md) | 397 | `result-track:2997f353b31af83741e93242a9df691c0866d8a3344c00f55c8f8c717be5b8c5` |
| 29 | `theorem` | [pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-pi-source-edition-2.md) | 402 | `result-track:c49d19a7cd98fce2ffb7d6f8f4694bbda63245af234e4b107c5cb1b352fab899` |
| 30 | `theorem` | [pi_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-univ.md) | 407 | `result-track:e51820d043d195faa040ee9c8af93cc9955fa9db63281761ea8a97ccb846781c` |
| 31 | `theorem` | [pi_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-ball.md) | 410 | `result-track:f0280f3d5d12848c818062d1f125e3064db23000b6ada788a35df30d0f382da9` |
| 32 | `theorem` | [pi_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-closedball.md) | 414 | `result-track:f17da665b68774c66829561d47a58b14370455609f15302c73749da314632d9b` |
| 33 | `instance` | [pi.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-sigmafinite.md) | 419 | `declaration-track:a30da1929e3da3b5026a45f5bb119cd558fb6667c7bf2b1cc88dc8b43f348306` |
| 34 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-4.md) | 423 | `declaration-track:ad57509f5611c665af2c3b25ce0f153bcc770dfbc8ac1fcec3b8b57195c39114` |
| 35 | `theorem` | [pi_of_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-of-empty.md) | 427 | `result-track:a2767c95f78690ffb499eda928b6e1136ca45f7d7e56283ba8e6e1f749888bab` |
| 36 | `theorem` | [pi_eval_preimage_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-eval-preimage-null.md) | 435 | `result-track:0732004dd9e77ce8f191c598360bd10f95c7c3fa6f349a4dffccc0f3829cfa85` |
| 37 | `theorem` | [pi_hyperplane](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-hyperplane.md) | 448 | `result-track:2d9716825442abe6af9632046ce90cc7111b73a040acc00b8e8b3885e1c640ad` |
| 38 | `theorem` | [ae_eval_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ae-eval-ne.md) | 453 | `result-track:18a373db2235982be48208b425a75d781991f9e41ec5c1001df34764eb91a4ee` |
| 39 | `theorem` | [tendsto_eval_ae_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/tendsto-eval-ae-ae.md) | 459 | `result-track:abdb0bab05aff5bd2ca58e07c675ba77ccc93342fb154398381f6d82204d9a76` |
| 40 | `theorem` | [ae_pi_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ae-pi-le-pi.md) | 463 | `result-track:33cc7dee7b0d71e7ad6aba6a6b7201bfaced88837527affcea77fe7cd98ad636` |
| 41 | `theorem` | [ae_eq_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ae-eq-pi.md) | 467 | `result-track:68a1b7d0019a601234a8fc219c862432368e75993ce72d07241f91b6fdc8d47e` |
| 42 | `theorem` | [ae_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ae-le-pi.md) | 472 | `result-track:fa29f088179981709d841340644b22464ffafbddd1e6791c5a3a4346f2bdee5d` |
| 43 | `theorem` | [ae_le_set_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ae-le-set-pi.md) | 478 | `result-track:88a8d2aeb3081f73eb11cafeb668932aed7074dbeb8e27fd31bc31b6670d838b` |
| 44 | `theorem` | [ae_eq_set_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ae-eq-set-pi.md) | 484 | `result-track:e2536285963b504cde62406bf5efe800b3c5893276d25eb6f4788e28f6ec8c3e` |
| 45 | `theorem` | [pi_Iio_ae_eq_pi_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-iio-ae-eq-pi-iic.md) | 493 | `result-track:ecc568c9676f3d16a5547c92190f16271b07db576615c68f05e71218be251692` |
| 46 | `theorem` | [pi_Ioi_ae_eq_pi_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-ioi-ae-eq-pi-ici.md) | 498 | `result-track:aff4d8b115bdf5f59a154473a26374c841b122458d172d6dd0ce6b3a46c6561b` |
| 47 | `theorem` | [univ_pi_Iio_ae_eq_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/univ-pi-iio-ae-eq-iic.md) | 503 | `result-track:e6f699735567d04dbee84245037a25382074470fd5a7d3a29c3027c2b9e9503e` |
| 48 | `theorem` | [univ_pi_Ioi_ae_eq_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/univ-pi-ioi-ae-eq-ici.md) | 508 | `result-track:af7f877208a177ab2f71de96943a224b0c9ce9eadf7c55aad12e97bd26dfc6e1` |
| 49 | `theorem` | [pi_Ioo_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-ioo-ae-eq-pi-icc.md) | 513 | `result-track:0496f218ffe684a78682c618ba06d4839eb045dc20407956cee6d93110968b63` |
| 50 | `theorem` | [pi_Ioo_ae_eq_pi_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-ioo-ae-eq-pi-ioc.md) | 518 | `result-track:b41840d9870a60627536877bd513834454dad0191c84d4fa2dee1759c7ae72a2` |
| 51 | `theorem` | [univ_pi_Ioo_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/univ-pi-ioo-ae-eq-icc.md) | 523 | `result-track:9fdf91e22d8af3a2e82d421d51c01077b3840b998569dced933855172319fd3b` |
| 52 | `theorem` | [pi_Ioc_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-ioc-ae-eq-pi-icc.md) | 528 | `result-track:3452fffac1ae4a32cfd0bc9e3afcbac67d9b71e20b096f82b03e62d91459dce0` |
| 53 | `theorem` | [univ_pi_Ioc_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/univ-pi-ioc-ae-eq-icc.md) | 533 | `result-track:ef6008301a6398216742643a825d79d7464364a66feb0b4cb914e5304581c82c` |
| 54 | `theorem` | [pi_Ico_ae_eq_pi_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-ico-ae-eq-pi-icc.md) | 538 | `result-track:22f57ccf4e62973da62eba0f4850f11dc2d1d2bfedef124b009d5ed36db74862` |
| 55 | `theorem` | [univ_pi_Ico_ae_eq_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/univ-pi-ico-ae-eq-icc.md) | 543 | `result-track:6de9222454cb4f771bc5f4dfde119e6358c5a58deb77d7e73994285a64ff8695` |
| 56 | `theorem` | [pi_noAtoms](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-noatoms.md) | 552 | `result-track:aed787fb822c170cf67dcfe532fd410616aec88f509afe1d1408d1a74775e55b` |
| 57 | `instance` | [pi_noAtoms'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-noatoms-source-edition-2.md) | 556 | `declaration-track:e1fc7a413aac2f3d01ab2e8cc6a20be01de49ad4e068dfc19c11ef8fada65b1c` |
| 58 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-9.md) | 559 | `declaration-track:e8aae0810bd653a2b68d152558aea58df4851237fbb8aeff0d571040cb53231c` |
| 59 | `instance` | [pi.isLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-islocallyfinitemeasure.md) | 564 | `declaration-track:e8ed05b5dfda6283b610a7b2ec87d1adf7e6316400c4497c378d686cd68687e9` |
| 60 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-5.md) | 573 | `declaration-track:b0187a6319f92fa0c22d1c89b1ba98e02dd18397fe9a3cf91ed810cecece756b` |
| 61 | `instance` | [pi.isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ismulleftinvariant.md) | 582 | `declaration-track:7bfeca76bb5a10c92b544e44c971a5676718a6d3c606d22ba9704c18822f3144` |
| 62 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-6.md) | 592 | `declaration-track:b4f2c30815841245b6c351e667f42d2e5cd94e88872cfbfb7fa49af8ff1a7259` |
| 63 | `instance` | [pi.isMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ismulrightinvariant.md) | 598 | `declaration-track:b5b4f55f94be4a9fccb45606bbeea858905aa32d2a618b09d8426224fcc9459e` |
| 64 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-8.md) | 608 | `declaration-track:d4298c435fcf9c8b25eb15bbfcb6ebef25325f66a8bee195a8b3c489103db494` |
| 65 | `instance` | [pi.isInvInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/isinvinvariant.md) | 615 | `declaration-track:a6a9246c3ab3a55b569c22f58b38f2f7c65867273e843c3f096b474345cdf149` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-3.md) | 625 | `declaration-track:ab644dff4dfae4ede72d455846023678e75ee1ccde3061aa4df89e1a6c8b4883` |
| 67 | `instance` | [pi.isOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-isopenposmeasure.md) | 630 | `declaration-track:db551e74c7e39c67f157f4201b9f1454f72a1c4c9fd926a3ee9a5ee45ed1b198` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-2.md) | 642 | `declaration-track:9b74394dfbcc757fa8f001cf38b7d0bdb9b9675d9d6e14fd93d1bc5a69cb84cd` |
| 69 | `instance` | [pi.isFiniteMeasureOnCompacts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-isfinitemeasureoncompacts.md) | 647 | `declaration-track:b187d1f363c77c0e69ed5de2e788fe429b4a6e9d2c0ff5b64174064bdc9d5bb7` |
| 70 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance-source-edition-7.md) | 659 | `declaration-track:bd7d464a2cd14723feae85f0b0a02da6c3fa2639920c6c1a26606ca4de87072b` |
| 71 | `instance` | [pi.isHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/pi-ishaarmeasure.md) | 666 | `declaration-track:1908965a2f46a218d251101f6d4d206f00626a263af5cf0043e8e777f1afa35f` |
| 72 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/instance.md) | 672 | `declaration-track:739d2e0fa93bb750602ca9ab4ac00a037191f7eb690bd58b8db81cf93766a24c` |
| 73 | `theorem` | [volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-pi.md) | 679 | `result-track:683a71f41277950215a18fb15683f1feeb7619b22b4703a28fa8b0578d4430b7` |
| 74 | `theorem` | [volume_pi_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-pi-pi.md) | 684 | `result-track:e8b84a946d6c30153188cfcc3ea4fa81ebcfde863648b528daec7a1021d7d490` |
| 75 | `theorem` | [volume_pi_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-pi-ball.md) | 689 | `result-track:c43c586157dcb527e1e09ead0fecbd055a0a2d0c82b4a0760ee4b803d187a445` |
| 76 | `theorem` | [volume_pi_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-pi-closedball.md) | 695 | `result-track:12c24f2f3fd7fb709cc305545cfbe07f127107209b15c1bd3fadd4bbb0fa6f99` |
| 77 | `instance` | [Pi.isMulLeftInvariant_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/ismulleftinvariant-volume.md) | 708 | `declaration-track:a853ec06b9578b806c33c97c6c2267be030faf557f610c70e98fbaf59355ec90` |
| 78 | `instance` | [Pi.isInvInvariant_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/isinvinvariant-volume.md) | 720 | `declaration-track:044fba26dbd790b76e5dbd191a67155662c44ed0fe25892095e58faace00b50e` |
| 79 | `theorem` | [measurePreserving_piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/measurepreserving-piequivpisubtypeprod.md) | 739 | `result-track:c3df632fe0f68b506bdbed76615426ff20591819c4af4cda095ba67051f20112` |
| 80 | `theorem` | [volume_preserving_piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-preserving-piequivpisubtypeprod.md) | 754 | `result-track:6d55517104b2daf65c729eb4b3e4322af353b40164fbe04fb7b1ef9dea3a991c` |
| 81 | `theorem` | [measurePreserving_piFinSuccAboveEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/measurepreserving-pifinsuccaboveequiv.md) | 760 | `result-track:ee28593c271c71b356d03a6a2a776f85bb6dbd33826d4286820bc74065efe5aa` |
| 82 | `theorem` | [volume_preserving_piFinSuccAboveEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-preserving-pifinsuccaboveequiv.md) | 773 | `result-track:c46a166b635e77cce441a598d9d76cad0c929adcb3484d056728553adc536563` |
| 83 | `theorem` | [measurePreserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/measurepreserving-fununique.md) | 779 | `result-track:c0e06e4e2aaeb7a8b8b4ae05e9e69851a7933b8acbaf2834a42640be5ea0efc1` |
| 84 | `theorem` | [volume_preserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-preserving-fununique.md) | 791 | `result-track:1d04c816618f7206f092dff72f28ab21f3d7a2659e796bff4dde42ecccb0c3f6` |
| 85 | `theorem` | [measurePreserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/measurepreserving-pifintwo.md) | 796 | `result-track:2da492b6971a4cbdef614fa061804da81d77d6e6ae19d26fbf2e2b72963a96ea` |
| 86 | `theorem` | [volume_preserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-preserving-pifintwo.md) | 805 | `result-track:2c90895087899ceec14da50d3b5ba70111c15c6b8657150601a653dc54c50888` |
| 87 | `theorem` | [measurePreserving_finTwoArrow_vec](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/measurepreserving-fintwoarrow-vec.md) | 811 | `result-track:724c21d10dcf6046eabae5344248606d072a786d7ba8e563a094f1f5b32a4225` |
| 88 | `theorem` | [measurePreserving_finTwoArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/measurepreserving-fintwoarrow.md) | 818 | `result-track:e5dd05c640be3d97ad2d68c2d8d703e22a89c69be36b48bfc2a3c936891fc669` |
| 89 | `theorem` | [volume_preserving_finTwoArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-preserving-fintwoarrow.md) | 825 | `result-track:8af87bad56221ee095e5e7c568ac4f2a3e0f44c8d314a51f4c5684a992f7115c` |
| 90 | `theorem` | [measurePreserving_pi_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/measurepreserving-pi-empty.md) | 831 | `result-track:2c720026fc404f84bb8c50881a74627e9ebfd9fcee9db47fff1fec367d161059` |
| 91 | `theorem` | [volume_preserving_pi_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiNamespaced.lean/declarations/volume-preserving-pi-empty.md) | 840 | `result-track:3b972eb9151ecb5ab8a5df8d0dc585dc49c61107e509ba7202ba538af5220678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b831f903c722438eedbf9493ee642bf80155995742318ceea334b69ee573563 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
