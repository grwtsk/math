# Verification target: Euclidean Domain Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97d61caa997e3ccd59facebbf086d592a268dbe4",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97d61caa997e3ccd59facebbf086d592a268dbe4`.

Source path: `GRWTSK/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/instance.md) | 44 | `declaration-track:224c244d3e3e7beb901838e3efa35f861067cf9d7d13345d05e2f78d44e2a172` |
| 2 | `theorem` | [mod_eq_sub_mul_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mod-eq-sub-mul-div.md) | 52 | `result-track:8e98a79b739df74cd206753e24f9a620b641b1e79678f5e2a123d91f4d223707` |
| 3 | `theorem` | [val_dvd_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/val-dvd-le.md) | 57 | `result-track:b78fedd40439492300f88429ffcd32a87e91d6e905d3b024d7426dfd600aeed5` |
| 4 | `theorem` | [mod_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mod-eq-zero.md) | 61 | `result-track:84d0a45cd484925f03ccafa095db1363cebba98223d2d25d97fa2e3a24730c51` |
| 5 | `theorem` | [mod_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mod-self.md) | 72 | `result-track:d80b2586ca8b0a4f15eb2d8e336b0a67e5bcf0ce133345dc1aa87298ccd69153` |
| 6 | `theorem` | [dvd_mod_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/dvd-mod-iff.md) | 75 | `result-track:a8a13faf78f3a7fbbd9fb4352942b5c570937d92730b25c1362ab3d2fad14895` |
| 7 | `theorem` | [mod_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mod-one.md) | 79 | `result-track:e0cf081417a4fd92d9f8fdff6d2f8f9161e7a32329c75e6281791eb7dd79c9f6` |
| 8 | `theorem` | [zero_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/zero-mod.md) | 83 | `result-track:d8ff45c12265d252a52d9ff261c639a5892f8f6129a48a8c0e367fdbd3626991` |
| 9 | `theorem` | [zero_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/zero-div.md) | 87 | `result-track:b7a6fda9df7852a5fec1dfb4b6851bb510fc60917a3d231072bd5c2b2dd45e4d` |
| 10 | `theorem` | [div_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-self.md) | 92 | `result-track:d9011ae27ccd2b4319038065070900061d1e32d9f160a7ee58ec9c0cead64240` |
| 11 | `theorem` | [eq_div_of_mul_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/eq-div-of-mul-eq-left.md) | 95 | `result-track:5e88b8668a3b619d488de76b0e4356dfc6482b84875062c78dc077ad3cb3c1f8` |
| 12 | `theorem` | [eq_div_of_mul_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/eq-div-of-mul-eq-right.md) | 98 | `result-track:1ac9642dd8c435e8cd760b7c0ad5b9924a6b160a456317bb8f0f94ca987bb7af` |
| 13 | `theorem` | [mul_div_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-div-assoc.md) | 101 | `result-track:3d7625d1e76eb6ad15d750675e46a5a83988aafe72e19109a371c087b3c67cc3` |
| 14 | `theorem` | [mul_div_cancel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-div-cancel.md) | 108 | `result-track:aa87de66e2c8ba97317398bde7ebd6fa5c06d01963d9d71da681bb08a8abb843` |
| 15 | `theorem` | [div_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-one.md) | 113 | `result-track:1c53629c0faf86667c0e0ed82b631d2dd57ba37890099fb4b96137fbc18d8520` |
| 16 | `theorem` | [div_dvd_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-dvd-of-dvd.md) | 116 | `result-track:3de562dc0da44cd18b9b828028e7ba7cc0b6e05cc35f730db00e046c5c289970` |
| 17 | `theorem` | [dvd_div_of_mul_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/dvd-div-of-mul-dvd.md) | 124 | `result-track:80559a3a637acbd9e80f3dcef8cecaed72ef9d0b8661cef10268cfe8da0bd5ea` |
| 18 | `theorem` | [gcd_zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-zero-right.md) | 136 | `result-track:32fc9cf1898a6d1026892683ccc91200aeb59a9394429cb721214afcec7f924f` |
| 19 | `theorem` | [gcd_val](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-val.md) | 140 | `result-track:660021fac1e7fa893a73ccb7ee42c7feb511ae821f6490cf699015c7b08b4265` |
| 20 | `theorem` | [gcd_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-dvd.md) | 144 | `result-track:a608aa78b7afa1424db84bbe57e0879be1cea304e3f4cd32d5da5c2829f5c117` |
| 21 | `theorem` | [gcd_dvd_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-dvd-left.md) | 153 | `result-track:7b3f902a48bcf885679131a679eea18955028b5dfcacd7f2585649e9b1f67e6a` |
| 22 | `theorem` | [gcd_dvd_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-dvd-right.md) | 156 | `result-track:7452c81846c8faca9c9d1723eef81ccdcfdf991b2d5c77f0733f9098e6a47c0b` |
| 23 | `theorem` | [gcd_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-eq-zero-iff.md) | 159 | `result-track:351b47ef5342e382402ccdf95e9678cd2feb6f139111b46f0b6b43b08b7163db` |
| 24 | `theorem` | [dvd_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/dvd-gcd.md) | 164 | `result-track:c92773b54ef3b886625ec8dfab20bf1d4d583006b290453775241ec1dc11142f` |
| 25 | `theorem` | [gcd_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-eq-left.md) | 169 | `result-track:96802f496a603e8491bd2a6f1d94b875e2adc21136253969308eef1e6da80ec4` |
| 26 | `theorem` | [gcd_one_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-one-left.md) | 175 | `result-track:f494498d734b835c2d533d9f21045f2d7f6555e39898b16e6484b0a7abebdb9a` |
| 27 | `theorem` | [gcd_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-self.md) | 179 | `result-track:3da9aa3c5d234ef89494c77bd09943282c9ae9baf886cc9e480175ca87f2a91a` |
| 28 | `theorem` | [xgcdAux_fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/xgcdaux-fst.md) | 183 | `result-track:5eb0d31b2051469fc9bb71c8b173beb68df7756f154d5cb848d25e8f2f04d466` |
| 29 | `theorem` | [xgcdAux_val](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/xgcdaux-val.md) | 192 | `result-track:2b63cd56c6729df1998c3206758405fb44e1838c6d6c7450b56c800fb7b7d839` |
| 30 | `def` | [P](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/p.md) | 196 | `declaration-track:0ff1a9825a4764df761917f87560e70119ef1b0ab067a1a6ab4e0ce36a2d193c` |
| 31 | `theorem` | [xgcdAux_P](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/xgcdaux-p.md) | 201 | `result-track:f4b589123c876312a0e5f59ac84bfc99e148dc08a328226a2bb19e57d9e235a9` |
| 32 | `theorem` | [gcd_eq_gcd_ab](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-eq-gcd-ab.md) | 214 | `result-track:bf64e5409d788d3e805f01e5cc54071cd4388eac3bb849dc28d6523974fe4b63` |
| 33 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 221 | `declaration-track:c675892299b16d0a27542c9767db0403272291a47f1fadbed7d2a4291aa99c3f` |
| 34 | `theorem` | [div_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-pow.md) | 228 | `result-track:0785090f5cdd627d18411c3de8252d1f4977e4419658469067e2b7ec9d662346` |
| 35 | `theorem` | [dvd_lcm_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/dvd-lcm-left.md) | 241 | `result-track:04772c880ce908a91bf54b8f689b1d35e70034930de4592074554dd30879cdf3` |
| 36 | `theorem` | [dvd_lcm_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/dvd-lcm-right.md) | 250 | `result-track:b3b175e4841a515cbb98f045141a745f8e737ff4efcc30ae0b7367ee498321cb` |
| 37 | `theorem` | [lcm_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/lcm-dvd.md) | 259 | `result-track:d0bfa586b498854d797ac6ae3c01aa112831e63a5ab5caed8db5cb7664968f3b` |
| 38 | `theorem` | [lcm_dvd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/lcm-dvd-iff.md) | 284 | `result-track:8f4dc4ba4f22c479f9b7f8672d830a38e2dabe53d0f0f19d246a42f86294ee44` |
| 39 | `theorem` | [lcm_zero_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/lcm-zero-left.md) | 289 | `result-track:89d68711f7cb9790da71994d2e62599d38fb38ce379dc6e902b64117046413aa` |
| 40 | `theorem` | [lcm_zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/lcm-zero-right.md) | 292 | `result-track:565be274831419df900c6421d2e11ca339a7ff18dad9ccec316a0dc5401712b7` |
| 41 | `theorem` | [lcm_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/lcm-eq-zero-iff.md) | 295 | `result-track:9281e7a14c45003f70897a6da4d91c1f85992af91f23790ad059869a993159d7` |
| 42 | `theorem` | [gcd_mul_lcm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/gcd-mul-lcm.md) | 314 | `result-track:2029123f47f5173fb5f155f8d268b8b23d58811ee2a33ecc639d34e0355cc916` |
| 43 | `theorem` | [mul_div_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-div-mul-cancel.md) | 327 | `result-track:1e8fdbd768cf8f2aa76e7d27e415295ccf4120128678b34944c1c0b0de79d20c` |
| 44 | `theorem` | [mul_div_mul_comm_of_dvd_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-div-mul-comm-of-dvd-dvd.md) | 332 | `result-track:8315b1de8dd4daed7a646baca93379c881b0f40063529e4aaf59f9571555a22d` |
| 45 | `theorem` | [add_mul_div_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/add-mul-div-left.md) | 341 | `result-track:a169eaa0ed547590af44320be9c78a07b5bfc9206de9571794d96ba1a6c46471` |
| 46 | `theorem` | [add_mul_div_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/add-mul-div-right.md) | 346 | `result-track:737dddd9ccf9af0bfc44e08fb25357a27832cf8c55be11c9fd844e6f6c35ed2a` |
| 47 | `theorem` | [sub_mul_div_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/sub-mul-div-left.md) | 350 | `result-track:ecd7890e39c897a46b27af3090075d3d26590015efeda9b1df937e86f7c20724` |
| 48 | `theorem` | [sub_mul_div_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/sub-mul-div-right.md) | 355 | `result-track:c3c2b31a5909467cee5f5c615aa94300431dd959e050b92e6306de318b01ce54` |
| 49 | `theorem` | [mul_add_div_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-add-div-left.md) | 359 | `result-track:4b86c5e2688e393f380c67f324d017cf995c20404b1979bfcf7100ceca1d3f47` |
| 50 | `theorem` | [mul_add_div_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-add-div-right.md) | 364 | `result-track:16bc63949c88c6d47a03ad0616bf06972a336d859ded510b51eb84ae8ff30107` |
| 51 | `theorem` | [mul_sub_div_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-sub-div-left.md) | 368 | `result-track:47f93912b82c2d55e4ddb0a214911f946ac1b51461c711f4b78e991ff89c08b7` |
| 52 | `theorem` | [mul_sub_div_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/mul-sub-div-right.md) | 373 | `result-track:390e1ef705d8765aa76f6e2584fafd51cfe13bc77a3d530d6a2420e2c7200a5b` |
| 53 | `theorem` | [div_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-mul.md) | 377 | `result-track:a18a2a0c08dd76626c44feda3c480beb174f28cb569d550e87106041eece3f12` |
| 54 | `theorem` | [div_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-div.md) | 384 | `result-track:22bcd7a2f7a72815bc7fc71aac67f12550dd1cc2d3a657df4511ad13508c2d98` |
| 55 | `theorem` | [div_add_div_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-add-div-of-dvd.md) | 391 | `result-track:a3d253d5ee3cb6c75a9d8489ed56f4d56eaa4c28075008f5a3bf5d55c02feb33` |
| 56 | `theorem` | [div_sub_div_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-sub-div-of-dvd.md) | 397 | `result-track:57b8e1878ee4e209bfeffc03b2e8a9be00674b014f28603a2f03979cbc6d78ca` |
| 57 | `theorem` | [div_eq_iff_eq_mul_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-eq-iff-eq-mul-of-dvd.md) | 403 | `result-track:8a5582f11893e373311db188eb57d4e90dbdad6e81312b7addb4b051a742e1b7` |
| 58 | `theorem` | [eq_div_iff_mul_eq_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/eq-div-iff-mul-eq-of-dvd.md) | 409 | `result-track:c5436f5be26a05200de7f026ca9d37e5844d8ec61805af85d1b4a16808d7db6c` |
| 59 | `theorem` | [div_eq_div_iff_mul_eq_mul_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/div-eq-div-iff-mul-eq-mul-of-dvd.md) | 413 | `result-track:191f364f1d5a6b035960a94aee736834c9d4e32af5f54d27578893c571935058` |
| 60 | `abbrev` | [RingEquiv.euclideanDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EuclideanDomainBasicNamespacedPublic.lean/declarations/ringequiv-euclideandomain.md) | 431 | `declaration-track:85d76f771da9228028ed674c9ded8491f47f2cf245207c9170c70c67a59f1ebc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=438eeceb626abfa13ddd07648b4b2d11591e690298a082a53dc678db136cf37b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
