# Verification target: DFinsupp Big Operators Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83981a2bb064075fa2feeba970b0e7221c8485a3",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83981a2bb064075fa2feeba970b0e7221c8485a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalAddMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/evaladdmonoidhom.md) | 57 | `declaration-track:5e5f6db7dcc3d099959b8a36d61358a9f1a3462bd61145da2ad68da62e36a89a` |
| 2 | `theorem` | [coe_finsetSum](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/coe-finsetsum.md) | 61 | `result-track:e0cad6bd38ff3992275674eca3a75682505c337bd515701b0ef8fd3c3be045e4` |
| 3 | `theorem` | [finsetSum_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/finsetsum-apply.md) | 68 | `result-track:54b179ffd7776de1e9744ae121b8a03e799075828a30c9bede209e3367efeb84` |
| 4 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod.md) | 82 | `declaration-track:4413c765bc133df5f2e802a185a8417ab2a921f1c32f2a66392ec5af3ed39a59` |
| 5 | `theorem` | [prod_of_support_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-of-support-subset.md) | 87 | `result-track:99103229d44cdb5ce2db1114d99b7d45fb195201543076e9e70d830c1414493a` |
| 6 | `theorem` | [prod_congr_of_eq_on_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-congr-of-eq-on-union.md) | 104 | `result-track:1ba97d21d5d2a410257a37cfc0088fe1a9080c67f44c236999c24cd409953a89` |
| 7 | `theorem` | [_root_.map_dfinsuppProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/root-map-dfinsuppprod.md) | 116 | `result-track:bb189f3f1edca50346827ef6b2c24859f762ad1e2f2a7c80a0fde1678a17fe18` |
| 8 | `theorem` | [prod_mapRange_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-maprange-index.md) | 123 | `result-track:b00a2078918ab85ebb54519b9ca7714f1fdfa23abd03519af14b7d626ab774fc` |
| 9 | `theorem` | [prod_zero_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-zero-index.md) | 140 | `result-track:919c429c152c3a630a4be123c1ee099bc3c6a5bc88035d78ef36e55579ce7dfc` |
| 10 | `theorem` | [prod_single_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-single-index.md) | 145 | `result-track:d27bb84162f2d5e6432a71452d88cccc9351a3f79854fe012a5c9e216a5a05e8` |
| 11 | `theorem` | [prod_neg_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-neg-index.md) | 154 | `result-track:913d0ec17c9b0d79c920dce52bb56ba22784c92c19f644f03ce35ad2ae1beaca` |
| 12 | `theorem` | [prod_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-comm.md) | 160 | `result-track:eddd3f624aca6eac570bcb69b972ca89f3ac55b9949d9cf3e39b0d26f8d13231` |
| 13 | `theorem` | [sum_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sum-apply.md) | 169 | `result-track:2822d761c11e8edfa00cd1e145cbfb3a60cab21af9c78f8c6835b1e35f572772` |
| 14 | `theorem` | [support_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/support-sum.md) | 175 | `result-track:994ba5cdf64022fd2b20374df3ca6552730bcfc620f9a67416d25e5998712a9d` |
| 15 | `theorem` | [prod_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-one.md) | 188 | `result-track:7ec3e9299f8a7080b20f459f7b12e07de2adfb457e0a657438dddace182116fb` |
| 16 | `theorem` | [prod_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-mul.md) | 193 | `result-track:a68abac9534545f09779ef45c058d6e301f859b60a38ed32ca3c64433f6575a2` |
| 17 | `theorem` | [prod_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-inv.md) | 199 | `result-track:303f1df4627bc8a984b99bd9d6cb051aadc97d0fa27babfd595e9d02d6b7ee5d` |
| 18 | `theorem` | [prod_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-eq-one.md) | 205 | `result-track:4a5db7f2e460e8a37644ce2f0abcbe77e9e9ab46159773d3b039c5cb27fb5b0b` |
| 19 | `theorem` | [smul_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/smul-sum.md) | 209 | `result-track:659e30c8a669dc4c6e189f14ea2ecc5843717eaf187e55ac7dbaba0d6aae5d7f` |
| 20 | `theorem` | [prod_add_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-add-index.md) | 215 | `result-track:78250bae7be918f6555df24fc0d5c739c4021743f7d4fd37f6d55c8248af9524` |
| 21 | `theorem` | [prod_eq_prod_fintype](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-eq-prod-fintype.md) | 233 | `result-track:f14a7fc0c057c383c1ad65726cf4e526607c8a18fc534e1ed09187599d205224` |
| 22 | `lemma` | [prod_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-eq-zero-iff.md) | 247 | `result-track:442084f779a38d2032285369cefc914f999f3f378084bc031f77fb336ce5e909` |
| 23 | `lemma` | [prod_ne_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-ne-zero-iff.md) | 248 | `result-track:24e60962b2d2ab503a38ca4e34dbeab3f95ed1179ba644d029a8eed704995982` |
| 24 | `def` | [sumZeroHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumzerohom.md) | 256 | `declaration-track:6be971114f7cad961f01c2dc59ed7a914cd1135af39adc35f18f9ad669928aed` |
| 25 | `theorem` | [sumZeroHom_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumzerohom-single.md) | 283 | `result-track:767fae6f0a777798fc1d01d9dd6ab2d7f553b90290740a63fd5406e1053eae2b` |
| 26 | `theorem` | [sumZeroHom_piSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumzerohom-pisingle.md) | 290 | `result-track:a6d0c973cbc8d24f5a2a7be7c9edd3f7e17905ee5447e741f2036f9bb57c6403` |
| 27 | `theorem` | [sumZeroHom_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumzerohom-apply.md) | 300 | `result-track:32d27b83c9550661fe81619d000f251a5ef3d18a0f596ad7e3d3b8451ae2b162` |
| 28 | `def` | [sumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom.md) | 318 | `declaration-track:6a97be62afc9e5a50a8daff69b879f5b378e440e324d0d14b69429d76b332936` |
| 29 | `theorem` | [sumAddHom_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-single.md) | 343 | `result-track:aa3233ebe6dbb8ecd0c0ca6f0e3e25473b3e200b0fc1071ba7a8a442f5a14846` |
| 30 | `theorem` | [sumAddHom_piSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-pisingle.md) | 347 | `result-track:0d262336b742a0a1b228ac326a4a384b97a38fbde2c2d1321dff2061b35caad7` |
| 31 | `theorem` | [sumAddHom_comp_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-comp-single.md) | 357 | `result-track:1026a4489f500e1e0cf8e90438a2f58265b71dbbe491cd729ccc108a684ff4b0` |
| 32 | `theorem` | [sumAddHom_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-apply.md) | 362 | `result-track:27f3a4fb39c7c9860a86ce660a1027566d164715010e36d0119ad93b467abb22` |
| 33 | `theorem` | [sumAddHom_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-comm.md) | 366 | `result-track:9aa375cb4885db86e7a218109b7f1e0ab186fd7c28355c4644e62d4a4a8eea02` |
| 34 | `def` | [liftAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/liftaddhom.md) | 378 | `declaration-track:99126d74ff27a70379fbb257188b68027f8b03bfc399f02f31d531e1f8e364c6` |
| 35 | `theorem` | [liftAddHom_singleAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/liftaddhom-singleaddhom.md) | 387 | `result-track:b2a4482aba4179098b086627dbfa34b327c7786a45bbcdf2922574ef0d04cd12` |
| 36 | `theorem` | [liftAddHom_apply_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/liftaddhom-apply-single.md) | 392 | `result-track:ad9d795c1b37bf55d3ecdc53ff32e3ad3c5404b8b74ddcbebff2ced53bad47d5` |
| 37 | `theorem` | [liftAddHom_comp_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/liftaddhom-comp-single.md) | 396 | `result-track:7b4d6b829cd2993562fbeaba1bfa0071760459ca0318ed438203a1e846a3d018` |
| 38 | `theorem` | [comp_liftAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/comp-liftaddhom.md) | 400 | `result-track:9fb081dfe192dc8dff7c00a1f1d791233bfb59d699a59dd3671c3e6ba05ab3f1` |
| 39 | `theorem` | [sumAddHom_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-zero.md) | 408 | `result-track:d0c1bbf9177134a576dbd9c874ae69d5b7ccc7efb824a3f0ce994c28211350a5` |
| 40 | `theorem` | [sumAddHom_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-add.md) | 413 | `result-track:aede5d09df3cc1b410120e4e84923a8cb66db48619fec0696eff85022ca8e952` |
| 41 | `theorem` | [sumAddHom_singleAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sumaddhom-singleaddhom.md) | 418 | `result-track:bb56195351ceb5897ba2f8113cb835364988a1c2d5eb1f070d78b859c1fd49d8` |
| 42 | `theorem` | [comp_sumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/comp-sumaddhom.md) | 422 | `result-track:a8a068bd307abfb42a6f800507446d5c3fc3bcad72be4e5015ecc6e0d0f24c38` |
| 43 | `theorem` | [sum_sub_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sum-sub-index.md) | 426 | `result-track:be17adf01c25332b7a55e4fa1395691b61a97a840d80aa7c79b4aa0a3e36f4a5` |
| 44 | `theorem` | [prod_finsetSum_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-finsetsum-index.md) | 434 | `result-track:4b08d0eaade3e11050d21d36bd7efe9bd2cd499442e2350f3069839f765278e8` |
| 45 | `theorem` | [prod_sum_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-sum-index.md) | 449 | `result-track:505ce6be624d2786501085ba7b3375c5fc92b29f96a371ae41bb0968290de7ad` |
| 46 | `theorem` | [sum_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/sum-single.md) | 458 | `result-track:adb3dda225dce3c3a5f31b6bd3ac623124258671e59dd8266e5645c7e60fd5d3` |
| 47 | `theorem` | [prod_subtypeDomain_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/prod-subtypedomain-index.md) | 465 | `result-track:36f5ec854334fa3ca805f0f653e00507a44d43da8a0710b929b128ceab2c4171` |
| 48 | `theorem` | [subtypeDomain_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/subtypedomain-sum.md) | 470 | `result-track:3f39055c03db9bc8da30ba9c322c1c733c4db781e50093a4bc3afd6f48fb9da3` |
| 49 | `theorem` | [subtypeDomain_finsupp_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/subtypedomain-finsupp-sum.md) | 475 | `result-track:b74c8d88064119eafe337cb312b5a58dbdb2135eb85f9dd4dcf2cc36bc27939e` |
| 50 | `theorem` | [coe_dfinsuppProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/coe-dfinsuppprod.md) | 508 | `result-track:4714ba52d631b3cd70bb16b715eb0bd1185a8548aa3cdd130c7f43d09f24f1c6` |
| 51 | `theorem` | [dfinsuppProd_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/dfinsuppprod-apply.md) | 513 | `result-track:f52d00977e4cd75b6f3296f2a83bc83eb4736e3cb96527f4603e4b9e29aac4a6` |
| 52 | `theorem` | [map_dfinsuppSumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/map-dfinsuppsumaddhom-source-edition-2.md) | 529 | `result-track:de0baafde26ae9cde462bb994e61c9049dc86e316399dec21fd00713a0ce10ed` |
| 53 | `theorem` | [dfinsuppSumAddHom_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/dfinsuppsumaddhom-apply.md) | 534 | `result-track:6beb9b75fc25bbb19e5878897a1201e7cb201be19474a93df29776f65e423a3d` |
| 54 | `theorem` | [coe_dfinsuppSumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/coe-dfinsuppsumaddhom.md) | 540 | `result-track:b25748fc9e42a20c43168e2bcebad30c2b90d6a776cc366ae26fd7ba5ba8cff4` |
| 55 | `theorem` | [map_dfinsuppSumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/map-dfinsuppsumaddhom.md) | 554 | `result-track:6808a03c6b55c49a238b62cb297826779a289e2b12a82d3344501bf7a174e5ea` |
| 56 | `theorem` | [map_dfinsuppSumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppBigOperatorsPublic.lean/declarations/map-dfinsuppsumaddhom-source-edition-3.md) | 568 | `result-track:ef339e9c64baf25136204b12df37a5fc3edbf6db97cbaf338118cf7ef25ff1aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eea1ef10052a87c1af2fbc82b31a2ae239db7812afd951ebbecb54ea13047e0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
