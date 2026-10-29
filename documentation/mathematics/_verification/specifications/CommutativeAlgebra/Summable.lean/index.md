# Verification target: Summable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81441c549dbb3bde76290ddba8384ffba7094cac",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Summable.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Summable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81441c549dbb3bde76290ddba8384ffba7094cac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Multiplication` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SummableFamily](../../../../CommutativeAlgebra/Summable.lean/declarations/summablefamily.md) | 60 | `declaration-track:27d521c4a53ed2f0ab8674c32ed58e30899b29666640bd5cc609994a23e8aa62` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:2a0bcb606e47de14d9b3b6db5cbd886dbda25285048d1a616975c856440f7a88` |
| 3 | `theorem` | [isPWO_iUnion_support](../../../../CommutativeAlgebra/Summable.lean/declarations/ispwo-iunion-support.md) | 78 | `result-track:6ba6e1a1de944a0ec09086876ab5044ebe3961fff816c3edf95d1a1c208c305c` |
| 4 | `theorem` | [finite_co_support](../../../../CommutativeAlgebra/Summable.lean/declarations/finite-co-support.md) | 81 | `result-track:933290dff0a1d1c2b387d96e11b91c0ca8245e3b73f30bbdf3d9afbe6b804961` |
| 5 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/Summable.lean/declarations/coe-injective.md) | 85 | `result-track:b8c026e5109b91cad24c67e7f69d8bbf55b34a84f4c09c4bff320b2c0d74009e` |
| 6 | `theorem` | [ext](../../../../CommutativeAlgebra/Summable.lean/declarations/ext.md) | 89 | `result-track:982e1517b966ecf88f2db05455bbfc8905a7b5d6177c8e5b1ecc63e6dd1e6fa7` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-6.md) | 92 | `declaration-track:7c09350f6fccf2cd8be9e8ad54f474e44d19a699744d77057e041e38f06ba1dd` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-7.md) | 109 | `declaration-track:af32ee664cbbd6638cd2afd10d370527c2717ed52ddd0e4467ede602133a6a17` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-3.md) | 112 | `declaration-track:4757ea25e90b25c4220626673f93a546985e07d9c7c03c54d6c5ac57221f0b05` |
| 10 | `theorem` | [coe_add](../../../../CommutativeAlgebra/Summable.lean/declarations/coe-add.md) | 116 | `result-track:f82d5dd5a2aca9b22f8009cbe9882fdfcd352c72d51cc899b562f5efd926a66e` |
| 11 | `theorem` | [add_apply](../../../../CommutativeAlgebra/Summable.lean/declarations/add-apply.md) | 119 | `result-track:fcc862b67b97423d5ea431d00a76d8ec9e08a82ab2afddb72db7ae7122ac7df5` |
| 12 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/Summable.lean/declarations/coe-zero.md) | 123 | `result-track:d70e10a9c6f50cdd2f7b6dbe6af76596668dab765f537a3d54b0f14dac680084` |
| 13 | `theorem` | [zero_apply](../../../../CommutativeAlgebra/Summable.lean/declarations/zero-apply.md) | 126 | `result-track:9f44f4bbd220c66cb5593ccd8910a4c77e1ee5de6354a62c00a91a51b638be4e` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-10.md) | 129 | `declaration-track:e2a837daa5180682842c96dc13d4a75fca612913f8ccded41b84f0110fd54d53` |
| 15 | `def` | [coeff](../../../../CommutativeAlgebra/Summable.lean/declarations/coeff.md) | 147 | `declaration-track:6799b7356c38eb4c13b0f0b7a69069dfa768be3115c7d8c77ce0699b67a32624` |
| 16 | `theorem` | [coeff_def](../../../../CommutativeAlgebra/Summable.lean/declarations/coeff-def.md) | 153 | `result-track:4e23a12cab5bc3fb35ac2b013966af13642154746d6de672477fc35ed1bef8b3` |
| 17 | `def` | [hsum](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum.md) | 157 | `declaration-track:9a831d68c6b3ccc71e9942924d13bec6fb8263d5fdaa61752b29b03b9018b70c` |
| 18 | `theorem` | [coeff_hsum](../../../../CommutativeAlgebra/Summable.lean/declarations/coeff-hsum.md) | 168 | `result-track:c6bd8af69daf539cca6892abf9ed447f06faacf15bf4eb2c60dc26cf3b25f88e` |
| 19 | `theorem` | [hsum_zero](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-zero.md) | 174 | `result-track:fb158e20d3c401f66df827db1038e362afd5204d5f16d87c5f560814ad6c04b0` |
| 20 | `theorem` | [support_hsum_subset](../../../../CommutativeAlgebra/Summable.lean/declarations/support-hsum-subset.md) | 178 | `result-track:5512b84d9d34869a4e4d1d3b847ef7def0350cf206e33b085c84f4f5deaf434c` |
| 21 | `theorem` | [hsum_add](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-add.md) | 186 | `result-track:1f0f1c67e113bfed415f1a60d552a5270299cc74d598c53ba286f3183085029d` |
| 22 | `theorem` | [coeff_hsum_eq_sum_of_subset](../../../../CommutativeAlgebra/Summable.lean/declarations/coeff-hsum-eq-sum-of-subset.md) | 191 | `result-track:982164107754ea779021d757b8db487270e2d754be794ec3090c0ec8763597ed` |
| 23 | `theorem` | [coeff_hsum_eq_sum](../../../../CommutativeAlgebra/Summable.lean/declarations/coeff-hsum-eq-sum.md) | 199 | `result-track:dbc0470198a571445db4c89132c8ef87d8256b864fff00e8f33c9e80c1fdc71b` |
| 24 | `def` | [single](../../../../CommutativeAlgebra/Summable.lean/declarations/single.md) | 207 | `declaration-track:47f1725c59ffee95fdcc12cee69808e3f2d0aa0ef2e093b04657abf89adff308` |
| 25 | `theorem` | [hsum_single](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-single.md) | 214 | `result-track:198eebf2a71cddb5095db58742b868965ac48a262327132a6b8e4a96031f6a1e` |
| 26 | `def` | [Equiv](../../../../CommutativeAlgebra/Summable.lean/declarations/equiv.md) | 220 | `declaration-track:0b7d1d2dad295e0fa978a25531c50ea86b2c22d039b1f6412e5a2477d6205be7` |
| 27 | `theorem` | [hsum_equiv](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-equiv.md) | 230 | `result-track:e22d13a5b80499ae42ef27824b7240b7e10edef3afbfe718f0020228779ef3ac` |
| 28 | `def` | [smulFamily](../../../../CommutativeAlgebra/Summable.lean/declarations/smulfamily.md) | 237 | `declaration-track:007fc9db52e8b2ec8a35111c778f9618cd6a6008ef9a182833de03f947bbadc6` |
| 29 | `theorem` | [hsum_smulFamily](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-smulfamily.md) | 250 | `result-track:5d3a2a26e6cd1d9f5aae926876281d03ee8e1c2cf2c1f33edb83c75b2ca1b4ef` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-8.md) | 261 | `declaration-track:bf7e33d1588f39425e17c0027c5a8bd6ca25da22cba79cd1ad032c045e234492` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-4.md) | 271 | `declaration-track:5302aac4c4b6378596c0378fc94719cfc1b574045394568bacf15e95a6e9d168` |
| 32 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/Summable.lean/declarations/coe-neg.md) | 279 | `result-track:fc71924f139b49b3171af896875ec8e5340837c85d33be2ab6d6c20a41369357` |
| 33 | `theorem` | [neg_apply](../../../../CommutativeAlgebra/Summable.lean/declarations/neg-apply.md) | 282 | `result-track:f34087f6c5d8236b06eedcffb758c7c153f1bf423d57ee81080dfc7fcc780770` |
| 34 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/Summable.lean/declarations/coe-sub.md) | 286 | `result-track:3b7775d359a6703c0ba0dbc9aef9d237f69f96531071e3e9dd58e7be672e03fc` |
| 35 | `theorem` | [sub_apply](../../../../CommutativeAlgebra/Summable.lean/declarations/sub-apply.md) | 289 | `result-track:edfe6c436e05d4c5be83db81880e33d945bceab18a29788c076a59bd0e3c7024` |
| 36 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-9.md) | 298 | `declaration-track:c3304e5bb1329728816c841ae732fe41b8f1f9c859e422c83d16e7593dcdd373` |
| 37 | `theorem` | [smul_support_subset_prod](../../../../CommutativeAlgebra/Summable.lean/declarations/smul-support-subset-prod.md) | 313 | `result-track:a4795be8f69033c1ea42a920a1c198edad7a83bc1661405e9d9bd36c1c4ee8a6` |
| 38 | `theorem` | [smul_support_finite](../../../../CommutativeAlgebra/Summable.lean/declarations/smul-support-finite.md) | 322 | `result-track:4484b7868ed314d2275f92ec5bff34a7abf10de924dfdea5d7f8f6184b3cde12` |
| 39 | `theorem` | [isPWO_iUnion_support_prod_smul](../../../../CommutativeAlgebra/Summable.lean/declarations/ispwo-iunion-support-prod-smul.md) | 332 | `result-track:ee7b77bb65b0cbfc537b6088670ec0b8c8a2b431b46d9b6772780558f3ec8a08` |
| 40 | `theorem` | [finite_co_support_prod_smul](../../../../CommutativeAlgebra/Summable.lean/declarations/finite-co-support-prod-smul.md) | 350 | `result-track:d2d364774c56f5e31da3f4cefa8d9fd05128026989fc13393d734c6a9f000a70` |
| 41 | `def` | [smul](../../../../CommutativeAlgebra/Summable.lean/declarations/smul.md) | 366 | `declaration-track:bf2fd2edc9802f1dfc2151aed1861ac90da65f130ad60e929683171bb6e93faa` |
| 42 | `theorem` | [sum_vAddAntidiagonal_eq](../../../../CommutativeAlgebra/Summable.lean/declarations/sum-vaddantidiagonal-eq.md) | 374 | `result-track:a19be8655bc2ecf79a3941c7d64ee57c712327290f42bbb39c9650ace1b63cf8` |
| 43 | `theorem` | [coeff_smul](../../../../CommutativeAlgebra/Summable.lean/declarations/coeff-smul.md) | 386 | `result-track:75de91128ca8862038a9d00ac86254e5898fa88eecb7272e9e4c57bd81a2fe2c` |
| 44 | `theorem` | [smul_hsum](../../../../CommutativeAlgebra/Summable.lean/declarations/smul-hsum.md) | 405 | `result-track:5a82ef11be8a7eae1192e88c24242a2fa32a6bba008985eb5818466df7084879` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance.md) | 426 | `declaration-track:1537b43c89b5611e7c98e21fd990247c85cb71b3cd04473074558a8228233604` |
| 46 | `theorem` | [smul_eq](../../../../CommutativeAlgebra/Summable.lean/declarations/smul-eq.md) | 429 | `result-track:764a3890adf362473832ab251b589436c3f06d2f3639ba7e01cffb6a4bf161aa` |
| 47 | `theorem` | [smul_apply](../../../../CommutativeAlgebra/Summable.lean/declarations/smul-apply.md) | 434 | `result-track:3925fe56c4e340f1eb559aac1508d490ba49625cfef09891ac8cdcccf6c7e433` |
| 48 | `theorem` | [hsum_smul_module](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-smul-module.md) | 439 | `result-track:c4516aefba4dc6dc50f867395134fd3491941616e7f22a57ffa4b670655eba74` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Summable.lean/declarations/instance-source-edition-5.md) | 451 | `declaration-track:753ae4e08e911bd12d9908fae2a4c184c7998285dea4edc5098086d0ebd52182` |
| 50 | `theorem` | [hsum_smul](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-smul.md) | 460 | `result-track:e2678d7e44bf93778fb4cebd731cc927e751f6cf11433fb4db0a7cfb500ec294` |
| 51 | `def` | [lsum](../../../../CommutativeAlgebra/Summable.lean/declarations/lsum.md) | 466 | `declaration-track:491225625ac958628e1ee0ed6645938d0a0bbd4d4f5502969fa33b4de061f22a` |
| 52 | `theorem` | [hsum_sub](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-sub.md) | 472 | `result-track:40525f2ea6c0214d01b35fece2e8d1408f5117b8f1f97b64ea97f97cef0af0d6` |
| 53 | `theorem` | [isPWO_iUnion_support_prod_mul](../../../../CommutativeAlgebra/Summable.lean/declarations/ispwo-iunion-support-prod-mul.md) | 476 | `result-track:837a0da2069b895e3d7e07e4b7685497921aed48a56deea49585a39f75867cbd` |
| 54 | `theorem` | [finite_co_support_prod_mul](../../../../CommutativeAlgebra/Summable.lean/declarations/finite-co-support-prod-mul.md) | 481 | `result-track:4fed6d2e44df637c8ee836930b1863878e7b4e2b74d47fb29f1d72bd4d954528` |
| 55 | `def` | [mul](../../../../CommutativeAlgebra/Summable.lean/declarations/mul.md) | 488 | `declaration-track:cd1ee1195f3ff928b19bf7868592228b59277af68ab0aa448f2c1fff1a6bb1fb` |
| 56 | `theorem` | [mul_eq_smul](../../../../CommutativeAlgebra/Summable.lean/declarations/mul-eq-smul.md) | 495 | `result-track:01b2e7afb2df086c771c740aef2fab1dbfd1bb7030157b51805774be26a59f3f` |
| 57 | `theorem` | [coeff_hsum_mul](../../../../CommutativeAlgebra/Summable.lean/declarations/coeff-hsum-mul.md) | 499 | `result-track:07874d158ac7d5093225cae68233373b4473b84680a8da08af02d3e5d1e2c19b` |
| 58 | `theorem` | [hsum_mul](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-mul.md) | 507 | `result-track:8d1e92f0991fbff097252e59ad7aaf33582abb5e6a5174a159380664c5d02948` |
| 59 | `def` | [ofFinsupp](../../../../CommutativeAlgebra/Summable.lean/declarations/offinsupp.md) | 519 | `declaration-track:b25cac31c9f15e98047d3b0fdb06bc77d57efb8daa12a1ecade333286a5f9406` |
| 60 | `theorem` | [coe_ofFinsupp](../../../../CommutativeAlgebra/Summable.lean/declarations/coe-offinsupp.md) | 536 | `result-track:7705dfb4001746c21ceb9ee6a06927a678a75334ced5b8b6cd80809014f794ef` |
| 61 | `theorem` | [hsum_ofFinsupp](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-offinsupp.md) | 540 | `result-track:cbd310dea71905ade0497299f3a6bb8c3615d96ed5c9e50ed0eb40bc2591c613` |
| 62 | `def` | [embDomain](../../../../CommutativeAlgebra/Summable.lean/declarations/embdomain.md) | 558 | `declaration-track:95044a83c5790f40b97c3264f8dc926522f69ef4be594588a6b4388db3b699dd` |
| 63 | `theorem` | [embDomain_apply](../../../../CommutativeAlgebra/Summable.lean/declarations/embdomain-apply.md) | 578 | `result-track:25d987a9840c4827a3b49cdf7dd315f962e153045d15dc3c97293aaf1020d904` |
| 64 | `theorem` | [embDomain_image](../../../../CommutativeAlgebra/Summable.lean/declarations/embdomain-image.md) | 583 | `result-track:6fc77022e52818807899570e03b6210178b4974b44225f2c6dc94593a9d3c2c5` |
| 65 | `theorem` | [embDomain_notin_range](../../../../CommutativeAlgebra/Summable.lean/declarations/embdomain-notin-range.md) | 588 | `result-track:42743259813fe5aaed31e150aa2ce1a63eaffedb653f8cd53e4c550693a8e516` |
| 66 | `theorem` | [hsum_embDomain](../../../../CommutativeAlgebra/Summable.lean/declarations/hsum-embdomain.md) | 592 | `result-track:d3827cd3f4bd04a7123ca5abdd6450db002c345b546640052913256abe8bbcc8` |
| 67 | `theorem` | [support_pow_subset_closure](../../../../CommutativeAlgebra/Summable.lean/declarations/support-pow-subset-closure.md) | 602 | `result-track:0451763c216be06fd0e139efae7da32d599943b765b840b72c28f38dcc90c59a` |
| 68 | `theorem` | [isPWO_iUnion_support_powers](../../../../CommutativeAlgebra/Summable.lean/declarations/ispwo-iunion-support-powers.md) | 612 | `result-track:657215f7fcb3124b764d0dc2da275a2e585168a8c5212f6c9eb6eddef1c84376` |
| 69 | `theorem` | [co_support_zero](../../../../CommutativeAlgebra/Summable.lean/declarations/co-support-zero.md) | 620 | `result-track:df52e98afd09308acdc3c8597b16e48bcb060e3822ea0f30baf02ff676ed66b3` |
| 70 | `theorem` | [pow_finite_co_support](../../../../CommutativeAlgebra/Summable.lean/declarations/pow-finite-co-support.md) | 630 | `result-track:25827324ccffdf61c4fe864aad84e478a657f5a5481d22f46f77e12dc374298c` |
| 71 | `def` | [powers](../../../../CommutativeAlgebra/Summable.lean/declarations/powers.md) | 655 | `declaration-track:903568db91377f9f660f14e0ac49818e436d3367ba7274bce684dfdef37c748b` |
| 72 | `theorem` | [powers_of_orderTop_pos](../../../../CommutativeAlgebra/Summable.lean/declarations/powers-of-ordertop-pos.md) | 671 | `result-track:ecd567105324a2b451598b19c99f0b6da8905ab9bcd24e5b56b361ba09d3fa08` |
| 73 | `theorem` | [powers_of_not_orderTop_pos](../../../../CommutativeAlgebra/Summable.lean/declarations/powers-of-not-ordertop-pos.md) | 675 | `result-track:d55b325986a75a533e18cca26ae8ff7d95955e7042d522ac0f5a8fe9a14ba2ba` |
| 74 | `theorem` | [coe_powers](../../../../CommutativeAlgebra/Summable.lean/declarations/coe-powers.md) | 683 | `result-track:78e3b14dad3980d3187b3deab21f71c43716ea3e71846976eb4abfae24fc8459` |
| 75 | `theorem` | [embDomain_succ_smul_powers](../../../../CommutativeAlgebra/Summable.lean/declarations/embdomain-succ-smul-powers.md) | 688 | `result-track:9af1869b1b840d35228dea0f087a1c8c6d9693fbf4462c72032e859889cf72a8` |
| 76 | `theorem` | [one_sub_self_mul_hsum_powers](../../../../CommutativeAlgebra/Summable.lean/declarations/one-sub-self-mul-hsum-powers.md) | 699 | `result-track:b0e6b05dd995c83fb2b0c45bcf047353903855274a95a8e73979a12ed2185000` |
| 77 | `theorem` | [one_minus_single_neg_mul](../../../../CommutativeAlgebra/Summable.lean/declarations/one-minus-single-neg-mul.md) | 714 | `result-track:cea36d5a9059791b098caa6dd525b034a8a1e747ed8b70e11f5a7a601f1e0df2` |
| 78 | `theorem` | [unit_aux](../../../../CommutativeAlgebra/Summable.lean/declarations/unit-aux.md) | 721 | `result-track:98ce8cc2199cf37315fe3d3cf35de53fc5a1c4439df760b845c696a18836f420` |
| 79 | `theorem` | [isUnit_of_isUnit_leadingCoeff_AddUnitOrder](../../../../CommutativeAlgebra/Summable.lean/declarations/isunit-of-isunit-leadingcoeff-addunitorder.md) | 739 | `result-track:859a53e6e0d817516bd18a8dfc4a9eb6ad2a6ffff5f117571c7422effd86cad1` |
| 80 | `theorem` | [isUnit_iff](../../../../CommutativeAlgebra/Summable.lean/declarations/isunit-iff.md) | 754 | `result-track:6bce8d2e63161dcff1ac5827fa1038713619deea9f51ee6614be714f9716a992` |
| 81 | `instance` | [instField](../../../../CommutativeAlgebra/Summable.lean/declarations/instfield.md) | 773 | `declaration-track:c390a789a58079049f6dcea6390e3b82c5990776cff60f4613650cbadee19834` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5978465149fb17f3a7d31da5e195fd0470925fa3511ca8b4f514b7db67c22390 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
