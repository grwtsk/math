# Verification target: Padic Numbers Norm Eq Pow Val

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b30895e58da5478ca46e4335cd69399ec4de965",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b30895e58da5478ca46e4335cd69399ec4de965`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PadicSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/padicseq.md) | 72 | `declaration-track:a554fc3a1d06c45b0976ef10e8c6a12636f2e5132c9b6af888d90cf3d740eb3a` |
| 2 | `theorem` | [stationary](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/stationary.md) | 84 | `result-track:ba385e09ef713b9ad5046d4bfaf6b18b49a92932aaa2ab52794737df9ffea665` |
| 3 | `def` | [stationaryPoint](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/stationarypoint.md) | 105 | `declaration-track:64bb45ace6714e4869f0af75cd6591963d06ac26182ef1f1bd69eb34f7f32033` |
| 4 | `theorem` | [stationaryPoint_spec](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/stationarypoint-spec.md) | 109 | `result-track:10ad061205c365adebe81ad31d39b858b26aa691ae8b74bcf3468b4135b78506` |
| 5 | `def` | [norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm.md) | 117 | `declaration-track:e40da0c771c476109ff169f7cab5e01c9603d2bf99f268a9bf8cdbe017ebb618` |
| 6 | `theorem` | [norm_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-zero-iff.md) | 121 | `result-track:c331b8878463dcefe59e116e03e18bc2a7582bd360b1fb46f0743065cf16350c` |
| 7 | `theorem` | [equiv_zero_of_val_eq_of_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/equiv-zero-of-val-eq-of-equiv-zero.md) | 145 | `result-track:6243b8edff442588126b7e91a5d95d16354f99f799a4da239eab2678b41f4e25` |
| 8 | `theorem` | [norm_nonzero_of_not_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-nonzero-of-not-equiv-zero.md) | 151 | `result-track:556c6fcb9e70cfbf033550c922834ea0a9402b27c3b4b1dfdd5897cb14d04cfe` |
| 9 | `theorem` | [norm_eq_norm_app_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-eq-norm-app-of-nonzero.md) | 155 | `result-track:ba6b15cffb86b395a74e5fbd6da84db6efbac062a19e0176824606c013fe49e9` |
| 10 | `theorem` | [not_limZero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/not-limzero-const-of-nonzero.md) | 162 | `result-track:ac3b483818964c15594efa86b176ec6fcb76a5a02eeb54fbe0d0990d643fae5c` |
| 11 | `theorem` | [not_equiv_zero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/not-equiv-zero-const-of-nonzero.md) | 166 | `result-track:00b164fe85a8240bf9633b76010d9711c5e81300acb800a7b763b05d056ee5cd` |
| 12 | `theorem` | [norm_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-nonneg.md) | 170 | `result-track:269c957efe1cf5db96317e2b37fc39456195bea1176faa468a992a11b69a1653` |
| 13 | `theorem` | [lift_index_left_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/lift-index-left-left.md) | 175 | `result-track:9b369b93e27d5b949ccbbf53f0ed5af3cc740c611dbd501decdbb84e84084765` |
| 14 | `theorem` | [lift_index_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/lift-index-left.md) | 184 | `result-track:bf9e5dfe15d3452cab9c9d33301816e9085281f9134448869a2fc3326f878c36` |
| 15 | `theorem` | [lift_index_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/lift-index-right.md) | 195 | `result-track:5b4f5f52b881c49ccd816bde780f25f98b3d1dd2109e58988d974b9cc780e937` |
| 16 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/valuation.md) | 218 | `declaration-track:32ccf177fd07835d4ea3daa7bc5717890c4df9c6793dab807ba4a6a96c4ba128` |
| 17 | `theorem` | [norm_eq_pow_val](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-eq-pow-val.md) | 222 | `result-track:60241b20b8804cc7f62423b036b28e854e55c7d52c86a3c0c0aa2bbc6f28c01a` |
| 18 | `theorem` | [val_eq_iff_norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/val-eq-iff-norm-eq.md) | 233 | `result-track:0db4e1cf967eada44abf35770e8af25e436d544bdf2919f55301b58491976906` |
| 19 | `theorem` | [norm_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-mul.md) | 281 | `result-track:cb9c0d2e2665f17eb1ed119c10b43e1e960985bf0744154a643d0711a661d231` |
| 20 | `theorem` | [eq_zero_iff_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/eq-zero-iff-equiv-zero.md) | 298 | `result-track:e19a6cdc296551205c4912fe26cfa18b115b34f5531f810ca6fa50662a17962e` |
| 21 | `theorem` | [ne_zero_iff_nequiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/ne-zero-iff-nequiv-zero.md) | 302 | `result-track:ea750016962dc4e41a77b7cbf8f2509194928a0de69d62d213ada4bc5e4c1157` |
| 22 | `theorem` | [norm_const](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-const.md) | 306 | `result-track:4aa036492579ec8515f66c0bd87312f5c44a140e62f577c4a93a716f05477fda` |
| 23 | `theorem` | [norm_values_discrete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-values-discrete.md) | 315 | `result-track:f09cc2733dd5423a935649ebaa875b2ea1363e47c6db2925b2fb336bdbc3db8c` |
| 24 | `theorem` | [norm_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-one.md) | 320 | `result-track:4f7234b31bece1f0101aeede90bb5751422e9f7b1572d0b365afe5059e880f76` |
| 25 | `theorem` | [norm_eq_of_equiv_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-eq-of-equiv-aux.md) | 325 | `result-track:0d61940b1fbfc81a68064b5633ee908cb8302e50cf4abed19ae81a1826151d53` |
| 26 | `theorem` | [norm_eq_of_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-eq-of-equiv.md) | 347 | `result-track:006d9c7233a4be8683e6fb4d9acec438869d5d1ce8c7d45bdb552450091c5ff1` |
| 27 | `theorem` | [norm_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-equiv.md) | 360 | `result-track:52d4a6b98dfc8de4352c998d130984e245dbb9d7f26e91a357c66f5c8771c693` |
| 28 | `theorem` | [norm_nonarchimedean_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-nonarchimedean-aux.md) | 369 | `result-track:93137bb6b0e3bcf88c7cb7cc7fff23b7f7c2f6e204b2ffb1039f76d5834ff1a5` |
| 29 | `theorem` | [norm_nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-nonarchimedean.md) | 376 | `result-track:c951fb0510865d98d455694dac8f033c6e559bf941cb53206b458c7ba29a3a38` |
| 30 | `theorem` | [norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-eq.md) | 401 | `result-track:cf7a0cfb62eb45fc89b222cda681371c0cf0e4a3a1a6286168364df6b5ca284d` |
| 31 | `theorem` | [norm_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-neg.md) | 422 | `result-track:f86bcef8eb97f87332873f655eae3d5c5d845371b3cdb3d4018d686048b23c75` |
| 32 | `theorem` | [norm_eq_of_add_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-eq-of-add-equiv-zero.md) | 426 | `result-track:064b1d5c8335dfd0d12d57d7fe12a85cc78f4065c3bb888291ef14962d6a3de4` |
| 33 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/add-eq-max-of-ne.md) | 433 | `result-track:5149c6fc42bf221ee1d75fc7e33b5ad4b188b6b84ccfe5108cb2a031b06f60d7` |
| 34 | `def` | [Padic](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/padic.md) | 463 | `declaration-track:1039cc55815224e63efe6c08ef701688eaed48d2ec60ae15e9e61171314180fe` |
| 35 | `instance` | [field](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/field.md) | 477 | `declaration-track:f26ab89ce1ad2b0e3fdc748198cf2ad9d589c2a7b17b18ebe454fbd591742902` |
| 36 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-3.md) | 480 | `declaration-track:43371146204979b87067ff14b01de9d897864f27d6dd6a4727feee2b77b96926` |
| 37 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-8.md) | 484 | `declaration-track:7e89175693194cce2367e1bacaa9426e8f94aa07d6b86b7a6c92f05ea543a055` |
| 38 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-11.md) | 487 | `declaration-track:a21b95ceb11c199b949dd1987cda49072924c6ebb70e519faba8f131f6e08489` |
| 39 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-16.md) | 490 | `declaration-track:eaf22c78ab6427b50929e205f1a733c8c57ac9a50627f1a4fc07c36090fd0004` |
| 40 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-9.md) | 492 | `declaration-track:85d450dc060b258ae6bee7130092e9a643a3206408c3ad8eb16d69179164d5f3` |
| 41 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-2.md) | 494 | `declaration-track:219b94c3bb837d0797aa031f0b4f73542ce4141a38b7e62a431952be5e6b9b17` |
| 42 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-15.md) | 496 | `declaration-track:e18fd4aca8dce7b0c78ccc07ccf2802ceed28236ca0d0f7715a4e0963f7bea48` |
| 43 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-5.md) | 498 | `declaration-track:61c6dc579f2f7f23bc86fb1cce7c7c8ededf326fa2bb274b7ae44c44c7d72931` |
| 44 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-7.md) | 500 | `declaration-track:786cc84397ba90273493c4e63de480b45e2b931fceffebb77e813f50b52ba05d` |
| 45 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-12.md) | 502 | `declaration-track:ab8deb6bafd955b78c744440013cdb504ed488fc5259ea191a93e961a7f98ce7` |
| 46 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-4.md) | 504 | `declaration-track:5b0112131c82f1539178abbe63ad88a86d8e8d166e6037a3656be1eff5415f1e` |
| 47 | `def` | [mk](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/mk.md) | 507 | `declaration-track:4067710f62603695a2300693c4807b1f5a25ebb608359924de2dd798cd9efc6c` |
| 48 | `theorem` | [zero_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/zero-def.md) | 513 | `result-track:7738a43b94d650ec45155ffa9e02fcde491fae930561251c70147f976478b40c` |
| 49 | `theorem` | [mk_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/mk-eq.md) | 516 | `result-track:da3ef3643a9ebd2235409dc4315077007a4336cc2bc6d74b6ac7c52128814b4d` |
| 50 | `theorem` | [const_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/const-equiv.md) | 520 | `result-track:7bf0bddb68cb1159cbdbb732160751a055c3f21bf02bcd07750fec0c677b8707` |
| 51 | `theorem` | [coe_inj](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-inj.md) | 526 | `result-track:e45cb1daaf016cafadc79b1785740ec2b22035d032c9db43856879e496d34d65` |
| 52 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-6.md) | 530 | `declaration-track:6b9866b8de5be6f5165878e57b79a1594adb565a91dd442deac80d4ec98d66e8` |
| 53 | `theorem` | [coe_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-add.md) | 537 | `result-track:9f24a54a5a9315618c913ca6b1697efe761a286b22c13eddbc69c198bba3a134` |
| 54 | `theorem` | [coe_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-neg.md) | 542 | `result-track:dff26ca18496157813a64493fe8d56e4d8e48eed2133c28aa9b83d15f74056c2` |
| 55 | `theorem` | [coe_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-mul.md) | 547 | `result-track:71c9a53d64e2d73bf0b0da9afcd4295962a4df8c50e19c0ef719e9b946386738` |
| 56 | `theorem` | [coe_sub](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-sub.md) | 552 | `result-track:ab59e0b891ee996dd29256313163955605e61028f4ca88a8bb60f5dbced4d575` |
| 57 | `theorem` | [coe_div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-div.md) | 557 | `result-track:205f21eb642b0be75361708daf874b4a91738deea4df698597cb91de7018c19a` |
| 58 | `theorem` | [coe_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-one.md) | 562 | `result-track:a4d3c914c1659de3c68bcc862637c33da350d2fdca5ddec535ba057d8c1e56e1` |
| 59 | `theorem` | [coe_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/coe-zero.md) | 566 | `result-track:5b02d62f78208e9c6b3a24f8dd97d4b7f3cdebfd53e36aa174904bb206043ef6` |
| 60 | `def` | [padicNormE](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/padicnorme.md) | 575 | `declaration-track:76b577d497c51af7be2dca7c74af4bcfabfa16e40eb74736dbb96864d6f936df` |
| 61 | `theorem` | [defn](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/defn.md) | 600 | `result-track:a74954c5889ec2be15fb2af22ef88201f7f47fea811c5e5da19be04db2a9515e` |
| 62 | `theorem` | [nonarchimedean'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/nonarchimedean.md) | 622 | `result-track:276f9f7ba9578a60a0f14c74410807e268bac6463aec8173c8ed84a65f7a4e9b` |
| 63 | `theorem` | [add_eq_max_of_ne'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/add-eq-max-of-ne-source-edition-3.md) | 629 | `result-track:6c081689d79f9731687d77039b08768b555eb999f71725fc89960c132c8fea56` |
| 64 | `theorem` | [eq_padic_norm'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/eq-padic-norm.md) | 635 | `result-track:f0902bb4ae9869908d54fae6cebe48861cbaf89362a213a4a230908020c173c8` |
| 65 | `theorem` | [image'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/image.md) | 639 | `result-track:c14bf425c6fcab23bf4c25cc50409f3a33258f1a1cf07549f654231cb66e4aca` |
| 66 | `theorem` | [rat_dense'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/rat-dense-source-edition-2.md) | 657 | `result-track:f42b2c1da96fddbb51d6862ebdf9e1d8d86e6f2cbff0a2c68822c75ac2f38ea6` |
| 67 | `theorem` | [div_nat_pos](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/div-nat-pos.md) | 680 | `result-track:a87abb82da6d336d6f7da32397d9cf907c3e324a716269a0bc3cdb4d6dd9e31c` |
| 68 | `def` | [limSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/limseq.md) | 685 | `declaration-track:c5719d0a76fe55f578751d4e7d9fde9ed106f1ac7b3ca5179dbcc8d0f27d64f6` |
| 69 | `theorem` | [exi_rat_seq_conv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/exi-rat-seq-conv.md) | 689 | `result-track:64721920863b9115d41c1a4bff6f9a3c28be1ca284df132486eb3e4cb8a823bf` |
| 70 | `theorem` | [exi_rat_seq_conv_cauchy](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/exi-rat-seq-conv-cauchy.md) | 701 | `result-track:62576dddc443f57f94782488956e2d8b7bab1a3c6e95e29fcbf6820880789c07` |
| 71 | `def` | [lim'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/lim.md) | 729 | `declaration-track:80e7569f1b0aef3515415ace14d177bed91af1bde43cc5809a650ef6a18e5170` |
| 72 | `def` | [lim](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/lim-source-edition-2.md) | 732 | `declaration-track:a70968cb3cdfa71d59e341aa7340d5dc83106b56da4543d57dd64d7cf0ebadcd` |
| 73 | `theorem` | [complete'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/complete-source-edition-2.md) | 735 | `result-track:d1a46122c9524abb727dfb69bcb321a5ac1836c0ab2f6d31690718c45f4fec5d` |
| 74 | `theorem` | [complete''](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/complete.md) | 749 | `result-track:2e996263ed06ac138370e901a7823c9da69defd8235cc99bda7a555a684ea159` |
| 75 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-10.md) | 762 | `declaration-track:98c404719a2005e821a55e1a4e45699388e76bfc78867f6a3c4f36da04fb4f8f` |
| 76 | `instance` | [metricSpace](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/metricspace.md) | 765 | `declaration-track:e460464433fdcff6fafa2ade0f48a7f5843f65d895b539e5c02446e076631de2` |
| 77 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-14.md) | 780 | `declaration-track:d6f49244147e1e2d240ea318dd7d00415043809821f53f73ec169ac9e1c1ba39` |
| 78 | `instance` | [normedField](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/normedfield.md) | 783 | `declaration-track:ce9f7fe78fb9c32c61b195889bf123d972b95a36339da22180b0af10cb694d77` |
| 79 | `instance` | [isAbsoluteValue](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/isabsolutevalue.md) | 790 | `declaration-track:14a2eb0a8111d29db4e848ccf1da0554351ce387cb6887a9bfb119df2f8c5c2c` |
| 80 | `theorem` | [rat_dense](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/rat-dense.md) | 797 | `result-track:341ff833e7ef7f67c9d0b1fe98caea447ba9f7ee8a24253572ebd5b9ba2261de` |
| 81 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/mul.md) | 814 | `result-track:e50ffa2d8e9397dd99aca57ccfd27c47a77170e3d7b0289bdf027c2ad377ef21` |
| 82 | `theorem` | [is_norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/is-norm.md) | 817 | `result-track:2702a88241926e065c9b8d7f262ab125b2d774d4e553e8064974d7e0586a3c6b` |
| 83 | `theorem` | [nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/nonarchimedean-source-edition-2.md) | 820 | `result-track:e803b58d23f6bf7f039d682c8acab2e52ac9f28c7d53488eadcc5eaa26f01086` |
| 84 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/add-eq-max-of-ne-source-edition-2.md) | 825 | `result-track:6bc85b4cf53d1b9a9616955a01705e480f7221dfd94ec9586b18164b5bc06936` |
| 85 | `theorem` | [eq_padicNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/eq-padicnorm.md) | 832 | `result-track:d578460469eceb1b4006ebb9b220122102860392315c4c0fa9fe2662bb305ece` |
| 86 | `theorem` | [norm_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-p.md) | 838 | `result-track:790a01199bb5ac330b3f283de4d2cb682cadd36b7f43cf5a658034300ea40a3e` |
| 87 | `theorem` | [norm_p_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-p-lt-one.md) | 845 | `result-track:763bc72f59fbe1b2d6cc105d66716d3d9e917f554a3ef1b86b8b803a8486d1be` |
| 88 | `theorem` | [norm_p_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-p-zpow.md) | 853 | `result-track:90c72c5b91770204fba1b228511211f3c4e512cc20f530abb2939e043b14821c` |
| 89 | `theorem` | [norm_p_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-p-pow.md) | 859 | `result-track:0776b2b91b66a0495a090d10d7234ad4d0274cc40f717f9b08119149a5f124e1` |
| 90 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance.md) | 863 | `declaration-track:20ad378470abcade2be47f21f5fd77b22ad51708ec64dada7850a308860f8c8c` |
| 91 | `theorem` | [image](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/image-source-edition-2.md) | 870 | `result-track:c312e952966297e1da254b9fe45c51b95830ee0a0bb6eb552a5d0b51717e2903` |
| 92 | `theorem` | [is_rat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/is-rat.md) | 877 | `result-track:2f13d620a658a7fd7883a57239668d2755d124728262c326b1bacf5cfd9fc251` |
| 93 | `def` | [ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/ratnorm.md) | 887 | `declaration-track:1309400c558d25d927627dfd32bd20c765d972d0ff412e572bfcc7a9cf8d394e` |
| 94 | `theorem` | [eq_ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/eq-ratnorm.md) | 891 | `result-track:b57393863a0c1201c0e871eb23690b0c021e0138c17a9a5ac511d98b175127e4` |
| 95 | `theorem` | [norm_rat_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-rat-le-one.md) | 895 | `result-track:f2d9b99742ad3b08d46af88baa70c6deae0c50c662dbb6f76ce2d628a1270fa3` |
| 96 | `theorem` | [norm_int_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-int-le-one.md) | 913 | `result-track:7918904f0b0ff159a25f08b9f163444316f631baeb0e7562beb248271b9990a6` |
| 97 | `theorem` | [norm_int_lt_one_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-int-lt-one-iff-dvd.md) | 918 | `result-track:2dba0b3f49795ab8b5f30200e349cb050ff197421d2ab1a16a30f37b5f7183ac` |
| 98 | `theorem` | [norm_int_le_pow_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-int-le-pow-iff-dvd.md) | 940 | `result-track:f52e92954999286c31c2971a0642dc17aa9ceb20555241e0216a1b3442761408` |
| 99 | `theorem` | [eq_of_norm_add_lt_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/eq-of-norm-add-lt-right.md) | 948 | `result-track:0f8fc10b011bf94acd5177553ad1d18f7822db9f9ef7602541d55c59a3dee688` |
| 100 | `theorem` | [eq_of_norm_add_lt_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/eq-of-norm-add-lt-left.md) | 953 | `result-track:9835d855761a3fb9368174c4c1a48c4d7d19e5912e463d724d81b606090e54b2` |
| 101 | `instance` | [complete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/complete-source-edition-3.md) | 968 | `declaration-track:f44d3b417173b31e700d3145554302cffcd164428c9d275243b5567d3bce5943` |
| 102 | `theorem` | [padicNormE_lim_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/padicnorme-lim-le.md) | 991 | `result-track:40bdd1f6ee3c05154c8d29b9a42a61b3a373b678c5b195936d7475e36f87395a` |
| 103 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/instance-source-edition-13.md) | 1010 | `declaration-track:c33ce685ccde0c7f5bbd0fc1d0cc46aad01902f25aa73c020b979c1bff1e75d9` |
| 104 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/valuation-source-edition-2.md) | 1024 | `declaration-track:8bf94560261ed869830bd68783ddab07a8d8a5bda592fc51ce0f929f1beecba1` |
| 105 | `theorem` | [valuation_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/valuation-zero.md) | 1035 | `result-track:08e186940bfc5da6d971429589d6426db25b1aef1fc6d0a71c3b266971963c40` |
| 106 | `theorem` | [valuation_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/valuation-one.md) | 1040 | `result-track:ac6e073ad82de9ec12cb62b235c94f54e4eb6fa9c661fc839ce98ba36989c3b6` |
| 107 | `theorem` | [norm_eq_pow_val](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-eq-pow-val-source-edition-2.md) | 1050 | `result-track:b3bed6d6651027e353d31872f316516cec128c5ed6417cdf706372e923693492` |
| 108 | `theorem` | [valuation_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/valuation-p.md) | 1065 | `result-track:b97e0ba45a08ff5c56d4c16cb656989e7703e0ded31200c5e64adebdd9c80a22` |
| 109 | `theorem` | [valuation_map_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/valuation-map-add.md) | 1072 | `result-track:9acc88488a2bbd7890244b4b043bf8cfeab05eb4170815edde075da1d454a687` |
| 110 | `theorem` | [valuation_map_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/valuation-map-mul.md) | 1089 | `result-track:91a50dde2b72100ee2288937e8238d466ef9a22107908b50fd7c57e9ddb4fcff` |
| 111 | `def` | [addValuationDef](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/addvaluationdef.md) | 1104 | `declaration-track:b027c15c0e69617955dd1fdf9c7a6c013058c3891ef541356107eb02f6fe96ad` |
| 112 | `theorem` | [AddValuation.map_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/addvaluation-map-zero.md) | 1109 | `result-track:c1303aac46c12d3ed219ab257ad05012c2cbea0b0005452c95735223b7905801` |
| 113 | `theorem` | [AddValuation.map_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/addvaluation-map-one.md) | 1114 | `result-track:26de487f11cd6d06675edb82ac216c7669034716d301835084822c927ff07cfd` |
| 114 | `theorem` | [AddValuation.map_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/addvaluation-map-mul.md) | 1118 | `result-track:9a94f8350f138a7c68f44a91bcc7780dd6534f742d1fd1e331a30d69724f93cc` |
| 115 | `theorem` | [AddValuation.map_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/addvaluation-map-add.md) | 1129 | `result-track:783d548b9a76751c240b256ae16c6ebf726b05482057e7e329a7270391d037cf` |
| 116 | `def` | [addValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/addvaluation.md) | 1146 | `declaration-track:4b3f0df597320bc57605473099f67758522b26a63ca1df8ea975fa0c559262f9` |
| 117 | `theorem` | [addValuation.apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/addvaluation-apply.md) | 1152 | `result-track:eb2aec6bd83e31655e6b914635a69e6987d6de54e0f123084697fa0cfcd5ffb7` |
| 118 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 1162 | `result-track:b87429a6f4efdd7bb2c573b377b542b567a76ac6da1fc76922b1243f937c755b` |
| 119 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 1175 | `result-track:d6aaf876cb61107a6cfbedc0b5b0829bc6e92f12ea8fbde55d64da0d33bc4431` |
| 120 | `theorem` | [norm_le_one_iff_val_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqPowVal.lean/declarations/norm-le-one-iff-val-nonneg.md) | 1180 | `result-track:696771d783c4b2f4093c68793dc90a6461c903c59b68d407cc58f9cf7647944f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63af483432522dde52fa7073cf80aaab8bb72c078bd17d31fff2610d311446fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
