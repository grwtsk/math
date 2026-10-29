# Verification target: Power Series Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d97725da63704badce5500c09be11e3826bbde33",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d97725da63704badce5500c09be11e3826bbde33`.

Source path: `GRWTSK/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean.json)

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
| 1 | `theorem` | [exists_coeff_ne_zero_iff_ne_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/exists-coeff-ne-zero-iff-ne-zero.md) | 45 | `result-track:1fd85093144a9a5725b6b0c66d10738aa1709fa46f58cc32a425abc489ca3bc9` |
| 2 | `def` | [order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order.md) | 51 | `declaration-track:bd983872f1acc7a63871d28ae4cbdbcd862ba26b80ac75608615a8e0cb677710` |
| 3 | `theorem` | [order_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-zero.md) | 58 | `result-track:4bc0bf594b0d41bf0f6aa53b134e4beddd44ff7fad0b37d0f5dbcfe4ac10e8b0` |
| 4 | `theorem` | [order_finite_iff_ne_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-finite-iff-ne-zero.md) | 61 | `result-track:9d036f3e5296de47d89989fc3b2d5d3691d7fd040f981ad2b845883544634610` |
| 5 | `theorem` | [order_eq_top](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-eq-top.md) | 67 | `result-track:4d8ee4a3d22e797da001f15e8020a1628cc04e02a9ec88eb47e9dd4b4e74f8fd` |
| 6 | `theorem` | [coe_toNat_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coe-tonat-order.md) | 70 | `result-track:371d031ddc6c3be914c9b236ac2edf68bd64d4f114efa3fb7aeb8e38db77e3a4` |
| 7 | `theorem` | [coeff_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coeff-order.md) | 75 | `result-track:f10a857de4771c38d56300453b9bdd4fefce70b1af3f5e959fe87e281197cf9d` |
| 8 | `theorem` | [order_le](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-le.md) | 83 | `result-track:8c95341f3438b077974d4fc780f8fda9b2dabe65658deeb9bddd9f69303ef947` |
| 9 | `theorem` | [coeff_of_lt_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coeff-of-lt-order.md) | 90 | `result-track:54ff9a4d09fc3b249d40721c7d6a1f3eafb641136a3b88d6692a968264738023` |
| 10 | `theorem` | [coeff_of_lt_order_toNat](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coeff-of-lt-order-tonat.md) | 94 | `result-track:c5217d361b5307fed8210215dfd44c9b4e3cc4bb97b1f680c7f42da628260846` |
| 11 | `theorem` | [nat_le_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/nat-le-order.md) | 102 | `result-track:3ede810dad7860ac738af824bf3736fa6d13dae6a7f540f4d5f2073449ad3ca0` |
| 12 | `theorem` | [le_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/le-order.md) | 110 | `result-track:5ccfee409a06b9645bc2aeb112ee920c9821b9e0c09e2cc0c494393705a9182a` |
| 13 | `theorem` | [order_eq_nat](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-eq-nat.md) | 120 | `result-track:c123faf54be55d4f5d76e955ac83d14ccbdbbc7e6f9995b2e27a0c44324f9ac0` |
| 14 | `theorem` | [order_eq](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-eq.md) | 128 | `result-track:d1906826a1880024137208bfaac22db346619afc10f1e3e30f9635e5855fa66e` |
| 15 | `theorem` | [order_eq_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-eq-order.md) | 134 | `result-track:6b021416bbf1e260d44a910df639a96a407028d8b8cb64dcf36156774779e0eb` |
| 16 | `theorem` | [min_order_le_order_add](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/min-order-le-order-add.md) | 146 | `result-track:f5bfb9fc18d828986dd0e9027950a98a911e70fa1946092bc037c514aef974ff` |
| 17 | `theorem` | [order_add_of_order_ne.aux](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-add-of-order-ne-aux.md) | 150 | `result-track:e5e6c9b5acbaa4b7d41225aed24667ef376862c6a809696c39b93a72b1c4da6a` |
| 18 | `theorem` | [order_add_of_order_ne](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-add-of-order-ne.md) | 167 | `result-track:d3e330c287211174ccf392326ac0c46737a1fe0b0b32524fe6a6099f1af06b0e` |
| 19 | `theorem` | [le_order_map](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/le-order-map.md) | 174 | `result-track:ddcec743f07b144efd166291319e7951cfbac8d340b52fa3659c60b439b73bbd` |
| 20 | `theorem` | [le_order_smul](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/le-order-smul.md) | 178 | `result-track:32900c489ecdf45ed970d42ef81a77af81e75e4829322b8752464b815297172e` |
| 21 | `theorem` | [le_order_mul](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/le-order-mul.md) | 184 | `result-track:b25a1ea962670a9fccee1b82c0d673283522016f9fcfa41990bcc20b59f3d532` |
| 22 | `theorem` | [le_order_pow](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/le-order-pow.md) | 197 | `result-track:80f05a3a5859bf1461360b6251a8865037755593570b0e1bed2c630046e5ae36` |
| 23 | `theorem` | [le_order_prod](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/le-order-prod.md) | 202 | `result-track:2fbe9a367452e846f839eea9c88908654c395c0541ae7ed5cd22a3dc2bf9b84c` |
| 24 | `theorem` | [one_le_order_iff_constCoeff_eq_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/one-le-order-iff-constcoeff-eq-zero.md) | 210 | `result-track:55773f4cec78c0cd9937a3e943a6e66a42b7f9fe2d284d88504ff8d5530d0ca6` |
| 25 | `theorem` | [order_ne_zero_iff_constCoeff_eq_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-ne-zero-iff-constcoeff-eq-zero.md) | 222 | `result-track:b77c3f1c02af9e5bfd9918c1393fe8db6ae33c6a000d2badb148b61664fba907` |
| 26 | `theorem` | [le_order_pow_of_constantCoeff_eq_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/le-order-pow-of-constantcoeff-eq-zero.md) | 226 | `result-track:a2b03065bed7047ae7a127f1eb6cd218a1a306478f2ca1ee1871d85fd6fb662f` |
| 27 | `theorem` | [order_monomial](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-monomial.md) | 232 | `result-track:da68659ed2c0910745c2f62a5b47360c128794060a93ba1546f0cc36e40e0d23` |
| 28 | `theorem` | [order_monomial_of_ne_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-monomial-of-ne-zero.md) | 245 | `result-track:e779fa496466de931ace34cc10d5de370524cc8803c6bc2da0e5313f658a9f42` |
| 29 | `theorem` | [coeff_mul_of_lt_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coeff-mul-of-lt-order.md) | 251 | `result-track:479f89c4df417156c16066967f36ea9f8a9e7a3283f06e6f1f9444b0d7e7653b` |
| 30 | `theorem` | [coeff_mul_one_sub_of_lt_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coeff-mul-one-sub-of-lt-order.md) | 262 | `result-track:d5e32fdd60048ddf9adf78299a90b38c10fccc0bba27be5349563c2aea818730` |
| 31 | `theorem` | [coeff_mul_prod_one_sub_of_lt_order](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coeff-mul-prod-one-sub-of-lt-order.md) | 266 | `result-track:a5a33d3cdf2650e4fb2e1d525eb5a494a74e94de69853fc0fe8dcfcc8a78c477` |
| 32 | `theorem` | [order_neg](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-neg.md) | 279 | `result-track:520076e40d1c5c376ef0f4103fb3dd7298734e2295d884bb7aaafc35fff0772b` |
| 33 | `def` | [divXPowOrder](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworder.md) | 286 | `declaration-track:62b3af586b9b9ca8dd4182675fd5252e6e70cbc72e435efdf3908e0692e7c14a` |
| 34 | `lemma` | [coeff_divXPowOrder](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coeff-divxpoworder.md) | 290 | `result-track:db6dd47391cbbf0b3eb275e9da716ca6bcce3524ea0543dff97a797d43c1dc1a` |
| 35 | `lemma` | [divXPowOrder_zero](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworder-zero.md) | 295 | `result-track:1843233f69b6004ada88fb9f06513b61c1b57adc9b7ea3071171c4cd075e0d5b` |
| 36 | `lemma` | [constantCoeff_divXPowOrder](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/constantcoeff-divxpoworder.md) | 300 | `result-track:96782c027b2a6c034465023a9b5b63188c39172c073d6df13fae6bb58dc8d7a0` |
| 37 | `lemma` | [constantCoeff_divXPowOrder_eq_zero_iff](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/constantcoeff-divxpoworder-eq-zero-iff.md) | 304 | `result-track:6f9aec7d5e6e0c5d7eeb628998bf3029bb2b487d40fe8b20dc8c4b5cbcad09c3` |
| 38 | `theorem` | [X_pow_order_mul_divXPowOrder](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/x-pow-order-mul-divxpoworder.md) | 310 | `result-track:c1ab04b35b390f10e1ac007e3276ce016105a537e3aee3484f7a6cf689ee82be` |
| 39 | `theorem` | [X_pow_order_dvd](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/x-pow-order-dvd.md) | 319 | `result-track:4f887a7f250283357d93b5485fb70a4fc0a288576a5b017f50e8c42a22cfaaef` |
| 40 | `theorem` | [order_eq_emultiplicity_X](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-eq-emultiplicity-x.md) | 322 | `result-track:1fd1b7f12ce1bf7b3ec1d048a33564594a7c34e25cef06fc38786d01e912b28c` |
| 41 | `theorem` | [order_one](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-one.md) | 355 | `result-track:e4b4a15ec821a5c330c67750fd3d28253eb03fda655395cae9b2d4c8ba3fe23a` |
| 42 | `theorem` | [order_zero_of_isUnit](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-zero-of-isunit.md) | 359 | `result-track:6fc71c4d44d37889b20fc2e42204c3802c4e41a17a44d75f2bb51633f30630f3` |
| 43 | `theorem` | [order_X](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-x.md) | 370 | `result-track:a48d9fef05e279eb31d1c6411519a3ca1cefc3e2969fd71b0523c89475ec4fe6` |
| 44 | `theorem` | [order_X_pow](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-x-pow.md) | 375 | `result-track:2c145926bd4d93f2bc3b96f9b943891abbd7b5944995a57c9add36fbd26c3922` |
| 45 | `theorem` | [divXPowOrder_X](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworder-x.md) | 381 | `result-track:76e96d78447e0bab16a58ca322eaecc2c4eb1596390ceab76e1b570769fb7c9e` |
| 46 | `theorem` | [divXPowOrder_one](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworder-one.md) | 386 | `result-track:0ee83bfcf3a81a19cf6008d7c5e77de5a97fa59426fe071dfcb57cba91d9822d` |
| 47 | `theorem` | [order_mul](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-mul.md) | 398 | `result-track:feda6a1bd9f048f3259fe1d3a6690f03778e02674f427ab77cca5514811742a4` |
| 48 | `theorem` | [divXPowOrder_mul](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworder-mul.md) | 414 | `result-track:f75240ef8f845d47eb61db1cc63df53262053f7ebcef3e920d72c9793ba70a89` |
| 49 | `def` | [orderHom](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/orderhom.md) | 434 | `declaration-track:f250f5753e59e407cc2bc3c081e13c9224e5f45c182f0e83b4625fc161b3777a` |
| 50 | `lemma` | [coe_orderHom](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coe-orderhom.md) | 440 | `result-track:8f57884d1c1f46b8f637d20016081e574e92b3288c5dd754c71a048697e60956` |
| 51 | `theorem` | [order_pow](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-pow.md) | 442 | `result-track:b4bac4da7d941b68535bb32dbbb481de56509fa22d25d5f0e7feab76df67b2e0` |
| 52 | `theorem` | [order_prod](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-prod.md) | 445 | `result-track:6b96fcafb9f8c9d74a8e433f01c93e02874a397835774c9c25278036633c9816` |
| 53 | `def` | [divXPowOrderHom](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworderhom.md) | 450 | `declaration-track:2c6880d366f77130bfca87dfc7332b5884a150c77ae2ea43229bf3dfad34b908` |
| 54 | `lemma` | [coe_divXPowOrderHom](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/coe-divxpoworderhom.md) | 456 | `result-track:b67de70c9e7845e90886735f78c7a63c67d3bcbcf972b90cff69ad9f9ec456e9` |
| 55 | `theorem` | [divXPowOrder_pow](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworder-pow.md) | 458 | `result-track:990f48bbf18d099bf8dd781894e19aefc805c0937367c3bd06f7d140a97002ac` |
| 56 | `theorem` | [divXPowOrder_prod](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/divxpoworder-prod.md) | 461 | `result-track:4706944b89b7f8090f82ec0b64b0c2a5f4d63746b7693c71801800beb5f72039` |
| 57 | `theorem` | [order_toSubring](../../../../CommutativeAlgebra/PowerSeriesOrderPublic.lean/declarations/order-tosubring.md) | 472 | `result-track:b6ec1dac6d80d454ca4d42ee378bba8dc7592c1a8fdb72555f7739ce7e916c67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e39ab1189eef7dda90b8b42f080194081b1e43abb381b482e5e54f213535b7e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean","GRWTSK/_verification/specifications/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
