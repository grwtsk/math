# Verification target: Padic Numbers Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a086f67d63d1db413964d538a37349956f65b76",
  "lexical_observation_count": 142,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a086f67d63d1db413964d538a37349956f65b76`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean.json)

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
| 1 | `def` | [Rat.padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-padicvaluation.md) | 77 | `declaration-track:be628b406bf1403f370cc55d85f721d45893f4fb5cdc9900784c8885fbc43680` |
| 2 | `def` | [Int.padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/int-padicvaluation.md) | 90 | `declaration-track:566a1cf0019c12e6adcbb68873d991a691fea7f2e8cb956a917c41eaf0f0ec7f` |
| 3 | `lemma` | [Rat.padicValuation_cast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-padicvaluation-cast.md) | 94 | `result-track:1ae919ee0bf489dcbfa41ccf52d4f684525d99f9e85dc1c725a6da9dacdd9a70` |
| 4 | `lemma` | [Rat.padicValuation_natCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-padicvaluation-natcast.md) | 99 | `result-track:c9f44db071b48057c09ee902a2fda69a67ee11c2ad16329ae7b67984fb21a166` |
| 5 | `lemma` | [Rat.padicValuation_eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-padicvaluation-eq-zero-iff.md) | 103 | `result-track:b1f569f2aff10f2f203dce710ba7d9cc3da833dd2d6fc7a4b3b6c06f0f990908` |
| 6 | `lemma` | [Int.padicValuation_eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/int-padicvaluation-eq-zero-iff.md) | 108 | `result-track:05a2f40266e94d64fd53d147fd5b87ab429ac466eaf5b9427029bacd46a3a87c` |
| 7 | `lemma` | [Rat.padicValuation_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-padicvaluation-self.md) | 112 | `result-track:d5b869d94b9b0f3e37e466342bd9c15b807a0a8b1ad8ee71a2785fdc258ef5a8` |
| 8 | `lemma` | [Int.padicValuation_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/int-padicvaluation-self.md) | 117 | `result-track:192a9ccbdf19ac9df6ad50802e96cfa462829f4f7aa115b22d71d9482c43e3cd` |
| 9 | `lemma` | [Int.padicValuation_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/int-padicvaluation-le-one.md) | 121 | `result-track:1fc2c4e95242891847efebe75926523148347c67cbc88269b133fc21ddf78d8f` |
| 10 | `lemma` | [Int.padicValuation_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/int-padicvaluation-eq-one-iff.md) | 130 | `result-track:d9000553f6ad9ebbb4900c30ffc8b78dc965c6a00ab80925ab62637704fef7e2` |
| 11 | `lemma` | [Int.padicValuation_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/int-padicvaluation-lt-one-iff.md) | 139 | `result-track:59af221fe9cf978bea60b761b22b6f72c44e486140c8d4ba3ef868c9cd0fcaae` |
| 12 | `lemma` | [Rat.padicValuation_le_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-padicvaluation-le-one-iff.md) | 143 | `result-track:6dd1ba8064f2228b981d711968cea5877f9a3886985076097c8f763c425b79f7` |
| 13 | `theorem` | [Rat.surjective_padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-surjective-padicvaluation.md) | 159 | `result-track:7d4dc3c301e21c7ffb8e6bbb82a815c700a3af7c5c29bdaeda3ddbf31e57f3ae` |
| 14 | `abbrev` | [PadicSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padicseq.md) | 176 | `declaration-track:e899c51da1aa5785a2d1fc3eb77483f2a2e41ad88027a7f8ebc54e5fa4e4cae6` |
| 15 | `theorem` | [stationary](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/stationary.md) | 187 | `result-track:01095f2a499ee34adab1a4f7726c3b4db117820f41c6c6b1a81dc865a7f86cfc` |
| 16 | `def` | [stationaryPoint](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/stationarypoint.md) | 207 | `declaration-track:5f025216a45f8563051b2d2b9dd3b9be1a178664b9898856adfa4b530885cb36` |
| 17 | `theorem` | [stationaryPoint_spec](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/stationarypoint-spec.md) | 210 | `result-track:d4c7b7e975fe411a623a1d0cf72dd60142f87c2d686b53820fa0720046b42ee8` |
| 18 | `def` | [norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm.md) | 218 | `declaration-track:e453511861bb12c1ce60d27682d4c2b6f5e775e5f53c24cfdea84b126fd9c001` |
| 19 | `theorem` | [norm_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-zero-iff.md) | 221 | `result-track:1a3a94bb19b3856c11b1d9b989a2452ed5dbc9da3910c3fcdf5b106413161871` |
| 20 | `theorem` | [equiv_zero_of_val_eq_of_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/equiv-zero-of-val-eq-of-equiv-zero.md) | 244 | `result-track:89176007fe6f0afa072f67fa495e38586b19d49b8eaca25e87e2dfcf5ad1d349` |
| 21 | `theorem` | [norm_nonzero_of_not_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-nonzero-of-not-equiv-zero.md) | 249 | `result-track:8e24cd17626a682c3e42c6defc1527c97d9c47794d95e0c5274c145a34a841c7` |
| 22 | `theorem` | [norm_eq_norm_app_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-norm-app-of-nonzero.md) | 252 | `result-track:ebad6be4c1e4826af9d3493da1600e6143bfaa24952f83e535f9b0093011f935` |
| 23 | `theorem` | [not_limZero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/not-limzero-const-of-nonzero.md) | 258 | `result-track:95178511b7e98c66b54ac4f924cae7439201ccc366f12e8a3327bdd83c94ae57` |
| 24 | `theorem` | [not_equiv_zero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/not-equiv-zero-const-of-nonzero.md) | 261 | `result-track:e80161a4740ca259c2c1b499f1daf3f10451792b36f39883c384a65b48635211` |
| 25 | `theorem` | [norm_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-nonneg.md) | 265 | `result-track:0b434deba10f2b9a9b698f48fac345be6ae715c22e2ccb79724100107f56dbfd` |
| 26 | `theorem` | [lift_index_left_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/lift-index-left-left.md) | 269 | `result-track:1c8ac37aae9fc779c5e17008eccbd03c8001e7609e68d5c88519059e6d3118bd` |
| 27 | `theorem` | [lift_index_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/lift-index-left.md) | 277 | `result-track:9522c8ae080f2e18b508268bc00f769bdb773a2e2731524bedf8c2101ba45fd7` |
| 28 | `theorem` | [lift_index_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/lift-index-right.md) | 287 | `result-track:57a39c100d287962e80806b5e4fcfb0e3b631069cadc0a01768103d97b6a8329` |
| 29 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation.md) | 309 | `declaration-track:c7a3d6f942b0d61f2b4f826172009fd8d18ba77533cb86c91dc01633778827be` |
| 30 | `theorem` | [norm_eq_zpow_neg_valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-zpow-neg-valuation.md) | 312 | `result-track:7492234d4450ebaee93bbb0a40bfc27230a374458b3586a74aba8f96f1c874e3` |
| 31 | `theorem` | [val_eq_iff_norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/val-eq-iff-norm-eq.md) | 323 | `result-track:a251ae765c2a6b56262d3baf39d999247785e154741488db579bc85c93449e40` |
| 32 | `theorem` | [norm_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-mul.md) | 369 | `result-track:70e421187ad212a01a4d1db731d2e4d7868e98f2a074a529f95d07646d09a8a3` |
| 33 | `theorem` | [eq_zero_iff_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/eq-zero-iff-equiv-zero.md) | 386 | `result-track:2cf69514b7aec2c476076f19b1444a7742811e22d258ebdc98beec1e647ce710` |
| 34 | `theorem` | [ne_zero_iff_nequiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/ne-zero-iff-nequiv-zero.md) | 389 | `result-track:d0fb995e54926123a0c461ad2817a9a88df965ac385a36af2f02794a0a3a1e23` |
| 35 | `theorem` | [norm_const](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-const.md) | 392 | `result-track:a806391f1d575ae5a0bebf192ed0b00ee56a1d13846c44addc43de3ac64c1f2f` |
| 36 | `theorem` | [norm_values_discrete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-values-discrete.md) | 397 | `result-track:aa5bb3ed1a3f30f38b3e9d469cf7040253ffffe62d52f522c12b9f9357f4ae15` |
| 37 | `theorem` | [norm_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-one.md) | 401 | `result-track:0efe371cf0c5feeeff9d66d6ad4f5f7bda84293727791f2177817be0aa29a559` |
| 38 | `theorem` | [norm_eq_of_equiv_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-of-equiv-aux.md) | 405 | `result-track:685a37efc0cd16dc38b6101bb9db1c0fdd1edac5cf4679f426ac9ad2979ac7b6` |
| 39 | `theorem` | [norm_eq_of_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-of-equiv.md) | 427 | `result-track:a06876f982bf103e61c2a26bd02e8703151715d2d39a65854831f13eb244b4c7` |
| 40 | `theorem` | [norm_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-equiv.md) | 437 | `result-track:321173233aebba34395e670cab2e91e551f8648f0887a78b73e265a172057ce1` |
| 41 | `theorem` | [norm_nonarchimedean_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-nonarchimedean-aux.md) | 446 | `result-track:f37d622cee8b372dbceecd707fd46c4f6983944d8ccbd20d3c0c770b5fbe63ef` |
| 42 | `theorem` | [norm_nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-nonarchimedean.md) | 453 | `result-track:792c24e38f712cd85bbf15ed020fb17aeca539213c71457c7fed74366c5fc88e` |
| 43 | `theorem` | [norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq.md) | 478 | `result-track:dde30eb1db2470919c4af1f0d01b42a89cdf408dd5e8d57dcbb5034051a6933f` |
| 44 | `theorem` | [norm_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-neg.md) | 499 | `result-track:8bc164e3925fb1c168b562fcfaa106e53da67788dcb96ead331a4f16c555e5fa` |
| 45 | `theorem` | [norm_eq_of_add_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-of-add-equiv-zero.md) | 502 | `result-track:9c162f56fa5de2dc7610f2dbc7dc51440131363a287835bc61470fc4c8133877` |
| 46 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/add-eq-max-of-ne.md) | 508 | `result-track:90989ea905f2ba4b23b5e8a6efca19379ce470c380e37675eff186ed3995b43c` |
| 47 | `def` | [Padic](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padic.md) | 539 | `declaration-track:3a5a6c71f9a64b4ce050749dc2f8d22a148ce39801c847cc0110ee72f14a858f` |
| 48 | `def` | [mk](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/mk.md) | 553 | `declaration-track:909966e2b9824276ce38a39926eee8b7f6ce04c4b9ec5aa1242eb3cbd44ec8d1` |
| 49 | `theorem` | [zero_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/zero-def.md) | 558 | `result-track:4efea888c790ccf8b25b7fc2fc3dadf7b3b77f949169f18f83d2fc4c5237b720` |
| 50 | `theorem` | [mk_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/mk-eq.md) | 560 | `result-track:ccfa5a0e28d9b49a3e99663a9a3781f2d56826bd35d19cf20795e6a4d6d247b5` |
| 51 | `theorem` | [const_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/const-equiv.md) | 563 | `result-track:7e7c34b1d40fb82bc3fc4591ab5be7d13039c48f7eb7636d7d80669c316aed94` |
| 52 | `theorem` | [coe_inj](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-inj.md) | 568 | `result-track:ca1d40cb23c45578605a12854a089638aa85576b38e90ab3614a073ff2cb7cd2` |
| 53 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 571 | `declaration-track:208c742f3d86c7d1f8b8b3ffde6beafbaba03a0c66ce1f436dd0d06c732b7d43` |
| 54 | `theorem` | [coe_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-add.md) | 578 | `result-track:7fc4ebb3f7ff5cb0461c3be283f7e4e404ddb734b7fb62f85e7f0a185a7e775d` |
| 55 | `theorem` | [coe_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-neg.md) | 582 | `result-track:ce381bcb97c7768716c220da23a1d8cbfcf5fc6f716ac61fb28436e51c0dfa31` |
| 56 | `theorem` | [coe_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-mul.md) | 586 | `result-track:0699b03933e4ccbffc902f169e62a7794ed66aeaf7697e0b45533934e13ae33e` |
| 57 | `theorem` | [coe_sub](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-sub.md) | 590 | `result-track:4af7076c1889f9154f84843fe9f0196a82dfd2180e5bafbbf8f9ce43ab80774b` |
| 58 | `theorem` | [coe_div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-div.md) | 594 | `result-track:fafa09cddc7cc850e8e5f0ae55fb699f9a89ccde2bae9cd7dfaf08cae41e22bd` |
| 59 | `theorem` | [coe_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-one.md) | 598 | `result-track:b4429205124b98fa4d794fc7b0228cbdcf5b6a0660d1261de5480330254a2f52` |
| 60 | `theorem` | [coe_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/coe-zero.md) | 601 | `result-track:8758bcb0c333244828f962271072cd344f183af9a97a5b64430183afde8fbe8d` |
| 61 | `def` | [padicNormE](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padicnorme.md) | 609 | `declaration-track:05fc31f6600e9c7e5b3a5ed184edab7961ff2c4a0029aa0497e4bb4998990bcb` |
| 62 | `theorem` | [defn](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/defn.md) | 633 | `result-track:c553d443a9558071ced68707e919576b93795c85d78edb361ddbe40dc79b3086` |
| 63 | `theorem` | [nonarchimedean'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/nonarchimedean.md) | 656 | `result-track:69969838375ff3075f02a1108f9b9be8b5bec02cbc9a678c4040d281cc758cde` |
| 64 | `theorem` | [add_eq_max_of_ne'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/add-eq-max-of-ne-source-edition-3.md) | 662 | `result-track:e626369fa3fc08215a3f6fddb098bd0b656bc385476f2928e308f819df296ab5` |
| 65 | `theorem` | [eq_padic_norm'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/eq-padic-norm.md) | 667 | `result-track:f07772deca44dd7bf2777942248a83ca02a084c963ff3142c744078293f37c5f` |
| 66 | `theorem` | [image'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/image.md) | 670 | `result-track:dac14711808cde18f7da8f3fd7a60e840b32bdc2612c727d5d57011dada8fd18` |
| 67 | `theorem` | [rat_dense'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-dense.md) | 687 | `result-track:89246c56fb488a94accd0424243e7b2008a74339429de3d6ea884e27f52a4899` |
| 68 | `theorem` | [div_nat_pos](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/div-nat-pos.md) | 706 | `result-track:51552afe064705c66e0a5f00e8d0574fec9525aafb4af8ec4e34e3a216de3f3e` |
| 69 | `def` | [limSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/limseq.md) | 713 | `declaration-track:f83340ae7253a71073392732831053fb2750d2bf60230fc336bf620ae9622926` |
| 70 | `theorem` | [exi_rat_seq_conv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/exi-rat-seq-conv.md) | 716 | `result-track:93d4d3fceef7f04e0a7f96cc9ab612b1940def80a8377e75ebbb8a8bca403817` |
| 71 | `theorem` | [exi_rat_seq_conv_cauchy](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/exi-rat-seq-conv-cauchy.md) | 727 | `result-track:1ba5bad9f8ab238bab7e0b55ee8dcc2cad035eeb4e403f43b6e253c355cb9559` |
| 72 | `def` | [lim'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/lim.md) | 754 | `declaration-track:8c195d8f7d64c898865141479a90364d513c1902bd589cffc26ab99d144532c6` |
| 73 | `def` | [lim](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/lim-source-edition-2.md) | 757 | `declaration-track:a7a666ce89e2dbb62f34aa0a31c144645b9f9ea480851a5cf83c7be733a55f99` |
| 74 | `theorem` | [complete'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/complete-source-edition-3.md) | 760 | `result-track:a8f088c0ee4035e0cefd6bef119b65b097b8904de77e5939b2fd9a63c39e0c21` |
| 75 | `theorem` | [complete''](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/complete.md) | 773 | `result-track:064bae5c6193644f997c23b9c41f5d6b794ebbe17a1c739db044507575b1ecd4` |
| 76 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 786 | `declaration-track:4179c92199eebe8fa67d0eb5f33b6031b1e4493ed20596fb4647e48071d03945` |
| 77 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/instance.md) | 789 | `declaration-track:1b5179749845662aaca535ac0016c1c029ec2640ff0d2a2c6f500dd6bea7a97e` |
| 78 | `instance` | [metricSpace](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/metricspace.md) | 792 | `declaration-track:99211e522752472e4dc7afc14b3313f229984316ee0cc67fc0b1969696f2a827` |
| 79 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 805 | `declaration-track:9c742ba5daa0ae879d1b855e930137a883b4244226d3e18655e2ca5a65200e84` |
| 80 | `instance` | [normedField](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/normedfield.md) | 808 | `declaration-track:1d3f6b5b45d917f7f31614d778936bb6d720af236c6c1ac4e936710b983694b3` |
| 81 | `instance` | [isAbsoluteValue](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/isabsolutevalue.md) | 817 | `declaration-track:d794139ea96e090884e59aef7a2fcae102822033efa67fabb520598f2392a840` |
| 82 | `theorem` | [rat_dense](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/rat-dense-source-edition-2.md) | 823 | `result-track:d5b8fbe4751ede9e4294c453ac4c751ebbbd7baaa2a38e8a5dd19fe9f6a50ff4` |
| 83 | `lemma` | [denseRange_ratCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/denserange-ratcast.md) | 828 | `result-track:fd169e9eb5b684560dec4f7fdc859b6b63fdc459d7a10058761c0944e74b2004` |
| 84 | `theorem` | [padicNormE.mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padicnorme-mul.md) | 843 | `result-track:071cc4acc561406c6fdb0df7509e417583225c674090171a088b8e3473af84a4` |
| 85 | `theorem` | [padicNormE.is_norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padicnorme-is-norm.md) | 845 | `result-track:d7d39b57f6d56c13342a01025192dcc5534447464d9488fc4aae82e0b790ba63` |
| 86 | `theorem` | [nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/nonarchimedean-source-edition-2.md) | 847 | `result-track:dbda0fe0c9e012c6a49d28c525966b1b39d28a380c1e4b9c743adbcbccba81ac` |
| 87 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/add-eq-max-of-ne-source-edition-2.md) | 851 | `result-track:922f951717cbd746a3a7d901f842027d6386f883b54a8ef9d08f303c81b70300` |
| 88 | `theorem` | [eq_padicNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/eq-padicnorm.md) | 857 | `result-track:e5590641538653e0145bfdc43430de5c4fe02444f7bd2642a67d8bb99752b166` |
| 89 | `theorem` | [norm_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-p.md) | 862 | `result-track:857d96fda50db08c5d4ca64a5678381cac23ce7b1bf648270132c876df335406` |
| 90 | `theorem` | [norm_p_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-p-lt-one.md) | 868 | `result-track:f4d04cd848f8ef2a4cc527058cd67f0c8df55d6532fa3496f701d74487920da4` |
| 91 | `theorem` | [norm_p_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-p-zpow.md) | 873 | `result-track:3d87cfc7649f11dbd3055da5aa94f560cf94aeb3e1a16e2bd0dffe38b8e4477a` |
| 92 | `theorem` | [norm_p_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-p-pow.md) | 877 | `result-track:5b35ce84964c948d9ae8d1b3a97a66236609a628385c15954341bc59db7e294e` |
| 93 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 880 | `declaration-track:893be86b7cb95d8e137dacfb7ba5a06557982bed11a001dbf9d7e656d7582fe9` |
| 94 | `theorem` | [padicNormE.image](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padicnorme-image.md) | 887 | `result-track:a252c22676287f24aeecac7336e701299f67ac73f2fbd74edacbaa1944e503eb` |
| 95 | `theorem` | [padicNormE.is_rat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padicnorme-is-rat.md) | 893 | `result-track:fee60b9e0436be182f01c0154baee7ca0b360f219a39341ddb4ebac052dc703c` |
| 96 | `def` | [ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/ratnorm.md) | 903 | `declaration-track:bf1d4c9110d09fb63f80bf05bb811efd0b73ebf6174604a682ac8487cdd1cef6` |
| 97 | `theorem` | [eq_ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/eq-ratnorm.md) | 906 | `result-track:aa556831945ea915aa7718dc6afa2554cee35b89fcb5ed4fc83ccc7d36d13876` |
| 98 | `theorem` | [norm_rat_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-rat-le-one.md) | 909 | `result-track:ef5acec316fc12344839b5c9777f1045a4a4895b655a8b1d9f2c0ddad1fb0c97` |
| 99 | `theorem` | [norm_int_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-int-le-one.md) | 926 | `result-track:d79a0cc9438337b598b42f86674ffe7e0d3675913a065a8d5941e1c70b746836` |
| 100 | `theorem` | [norm_intCast_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-intcast-lt-one-iff.md) | 931 | `result-track:e1762b03c4d8c95e6a8219bbbb430c87eee26f74427bc454d5a34ba917b1d481` |
| 101 | `lemma` | [norm_natCast_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-natcast-lt-one-iff.md) | 952 | `result-track:4caf654c12e79167efaac432f2b528e940faa9ee30b00751df0d347a163bc546` |
| 102 | `lemma` | [norm_intCast_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-intcast-eq-one-iff.md) | 957 | `result-track:f40be329046d46a8cd3069191d36739603d97af9aaec03d466456af1f6b9ea4b` |
| 103 | `lemma` | [norm_natCast_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-natcast-eq-one-iff.md) | 965 | `result-track:6015434a53037213a5855481975ffc0330507061b8602a74a329e00bda3d17dd` |
| 104 | `theorem` | [norm_int_le_pow_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-int-le-pow-iff-dvd.md) | 969 | `result-track:1391fce87b3c73bbfe99fd57c986dbcc030d33316cebaa9b574a6f4ea365cce0` |
| 105 | `theorem` | [norm_eq_of_norm_add_lt_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-of-norm-add-lt-right.md) | 976 | `result-track:b5361a82cceeef9776ecd626854f3e4c7eba629880ca80104a796228c31af939` |
| 106 | `theorem` | [norm_eq_of_norm_add_lt_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-of-norm-add-lt-left.md) | 980 | `result-track:e99bd7312ebd4be089ab28659f270f583590915fdf2d3fbc01f7fdb50ef2bd95` |
| 107 | `theorem` | [norm_eq_of_norm_sub_lt_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-of-norm-sub-lt-right.md) | 984 | `result-track:0fcf1d3a16da4a47ec013e4208ffffa4e1e35d1979daa10bf14fc309edbb1bbb` |
| 108 | `theorem` | [norm_eq_of_norm_sub_lt_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-of-norm-sub-lt-left.md) | 989 | `result-track:16d81ce656123ba72f996f789530d197de819bca2fb7acf452139eae07b90a1f` |
| 109 | `lemma` | [norm_natCast_p_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-natcast-p-sub-one.md) | 995 | `result-track:168199cacddf1e5c791cfe49b8eb17918619936b432a5d67ee9e9d5bd1217fa6` |
| 110 | `instance` | [complete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/complete-source-edition-2.md) | 1002 | `declaration-track:1a8a4f1b6929643dc7250c51bbce73531e784d62b3a1791406b9e29bf184732f` |
| 111 | `theorem` | [padicNormE_lim_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/padicnorme-lim-le.md) | 1024 | `result-track:63d630f17329ed89d217abb629d1223e548d0b54a126515159c298f292ce5379` |
| 112 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 1034 | `declaration-track:c0e03154442ecc920ec204eafc03cff237ecf2e1f86acd78ee82d5b30db7d35b` |
| 113 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-source-edition-2.md) | 1048 | `declaration-track:fee0e28bb6d87ec8f2fddebb25a0eb2fe90476cd29ddce7fcadcf4dc9ec817a8` |
| 114 | `theorem` | [valuation_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-zero.md) | 1058 | `result-track:17f78d820236e0aa080523c68cce67c756ae04319da6ad8a24b5529e6c1a4ae2` |
| 115 | `theorem` | [norm_eq_zpow_neg_valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-zpow-neg-valuation-source-edition-2.md) | 1061 | `result-track:ccd85d4af0aabfe77f51676e936bfaace766c8803730ca1defe7756b1d506c2c` |
| 116 | `lemma` | [valuation_ratCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-ratcast.md) | 1073 | `result-track:7de433f9156ad753ec3fb0840fabb0d0f6f83fcffe02e7e65b10310154adfcb4` |
| 117 | `lemma` | [valuation_intCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-intcast.md) | 1082 | `result-track:89a85c1431a7a4c9d315e39837e7c3f1b79b1d009217f36672ee85a15bf98f12` |
| 118 | `lemma` | [valuation_natCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-natcast.md) | 1086 | `result-track:5821179aa7e412651bb26d13532e77c606fe72a832729ca23082dcf8b52a88ed` |
| 119 | `lemma` | [valuation_ofNat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-ofnat.md) | 1090 | `result-track:bdf5dcfa21c5a94e16ddf4ee61cc446756bd6c3f68243885c15fa80788008672` |
| 120 | `lemma` | [valuation_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-one.md) | 1095 | `result-track:caf0a79a05e52cd019b42ec97bafce03cbfeee2db8f626705521b635fd28fc87` |
| 121 | `lemma` | [valuation_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-p.md) | 1099 | `result-track:bf86087398f037281a695cf573588969ae1aad52ff378886857b78437e354f28` |
| 122 | `theorem` | [le_valuation_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/le-valuation-add.md) | 1102 | `result-track:c1202176c901e13e5c4134f7f9caaf0be1be0a01a0ba13c20d72a1e4928f564b` |
| 123 | `lemma` | [valuation_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-mul.md) | 1114 | `result-track:5da36e492513489ca16d311a131c29afc98612f592a35927412e223994c10b30` |
| 124 | `lemma` | [valuation_inv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-inv.md) | 1124 | `result-track:6a76f50107e8a42e048a6c29150a4e7c460f6108589deb0583325a346a172188` |
| 125 | `lemma` | [valuation_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-pow.md) | 1134 | `result-track:7d8b492c61a9a60e45e47487a9d38b5a518734ba3eaa9f6d56b3603dad8d3950` |
| 126 | `lemma` | [valuation_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/valuation-zpow.md) | 1142 | `result-track:05cbe21a82bf1b38e939d642d5a674dd89e641562ca7c6774b6d87925ad0b1e2` |
| 127 | `def` | [addValuationDef](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/addvaluationdef.md) | 1148 | `declaration-track:d7ef4af80b34bf574382aa8f545baa4d8abf9945b986d7c8d3aa5455b0540b0d` |
| 128 | `theorem` | [AddValuation.map_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/addvaluation-map-zero.md) | 1152 | `result-track:a3a0b6cd2b9c36c658a603365b531067223f01dc90a348687b3097b19202fbad` |
| 129 | `theorem` | [AddValuation.map_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/addvaluation-map-one.md) | 1156 | `result-track:516d78eb79e6efc44fc6215fb53f0d98693a794f187d8e05856cf9de847d0c45` |
| 130 | `theorem` | [AddValuation.map_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/addvaluation-map-mul.md) | 1159 | `result-track:2ba9ee85081b7b02aa955a498b72644b7865e022bd2bca2c1eaadffabd1fa386` |
| 131 | `theorem` | [AddValuation.map_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/addvaluation-map-add.md) | 1169 | `result-track:de1c9f7760523c2818447fd774220a523c1470be4a84a01424c900b8b65beff9` |
| 132 | `def` | [mulValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/mulvaluation.md) | 1190 | `declaration-track:83f23b10535502fb0da83bf4a05ecf852cffe145a75cab2f90dfdfe5402e71cd` |
| 133 | `lemma` | [comap_mulValuation_eq_padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/comap-mulvaluation-eq-padicvaluation.md) | 1200 | `result-track:8db3deb780f2429e0a1ff847d371c81b91d0c35bc771266c41166eeb3c1bad1c` |
| 134 | `lemma` | [comap_mulValuation_eq_int_padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/comap-mulvaluation-eq-int-padicvaluation.md) | 1205 | `result-track:a6ad2506ff11eaaae26afb8dee6897473a5535297a36ff80524390c6ed8ec879` |
| 135 | `lemma` | [norm_eq_zpow_log_mulValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-eq-zpow-log-mulvaluation.md) | 1210 | `result-track:be24799d1de8030fd5c712b1635d99fe424ac0270cd9a9633dc223b67f51557d` |
| 136 | `lemma` | [norm_lt_zpow_iff_mulValuation_lt_exp](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-lt-zpow-iff-mulvaluation-lt-exp.md) | 1214 | `result-track:cc301eac0391b072088f9d30098074762ac3a3b2d4867610691348ec786b6344` |
| 137 | `lemma` | [norm_lt_norm_iff_mulValuation_lt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-lt-norm-iff-mulvaluation-lt.md) | 1222 | `result-track:d0c65a67bad2cc81563a1e557bc1baf9b725d44e9f0cae81a58160e12ef1134a` |
| 138 | `def` | [addValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/addvaluation.md) | 1230 | `declaration-track:661814ff3bcaa8affa1ee42a87f73e3b80449c77c1ef6181e60c465f281e1a08` |
| 139 | `theorem` | [addValuation.apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/addvaluation-apply.md) | 1235 | `result-track:cec5b2f5c30afbc472af6e200081f2bdd910eb8c3bfcc11c091b29c302ba97e5` |
| 140 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 1244 | `result-track:9b449b0a1144f5edad5162b9ca620566678b915ff12b70a64e28f44544794bb3` |
| 141 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 1254 | `result-track:8c40fbf57feced65e2b007cfb5d73402a60836b82198cf23c92a52a433e16e8d` |
| 142 | `theorem` | [norm_le_one_iff_val_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/declarations/norm-le-one-iff-val-nonneg.md) | 1258 | `result-track:7426b7aeeaa5c94a37734af0d1c53667a6162b0235cda7a0436bb8e9cd1d82af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c465a31c10195a4afda8690a6f27eb236a5dfd143936999e0e7296837b0833f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
