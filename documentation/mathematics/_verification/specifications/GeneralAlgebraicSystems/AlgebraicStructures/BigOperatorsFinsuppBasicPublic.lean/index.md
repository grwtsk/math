# Verification target: Big Operators Finsupp Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15c0485a229ea474752effd892aab6864d2e0860",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15c0485a229ea474752effd892aab6864d2e0860`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean.json)

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
| 1 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod.md) | 48 | `declaration-track:59e54eb3ad30a63fe3acdc26ebbbf34d16426be24cfe6dfcc24a3d1fd391fa45` |
| 2 | `lemma` | [prod_fun_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-fun-one.md) | 54 | `result-track:0fffbf62e3b64898be31524dee5680193d416a3475df104cdacd90cb8c7981ce` |
| 3 | `theorem` | [prod_of_support_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-of-support-subset.md) | 57 | `result-track:e3ace94aed4a59cc7b8146dc4d799bfc730e168a27f081b814e357b9328abdd8` |
| 4 | `theorem` | [prod_fintype](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-fintype.md) | 63 | `result-track:8870db76720339a165f6c7d0726f24410ad3f727a72374c1ff21f23b5f723ec8` |
| 5 | `theorem` | [prod_single_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-single-index.md) | 68 | `result-track:2e3a8c0b9909e5bb83c0c0a2a527e8214fb4173a74f2e9bd6f4c4820e64361e0` |
| 6 | `theorem` | [prod_mapRange_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-maprange-index.md) | 77 | `result-track:5baeb17b8eda47661686bf6274f0cf3695da95d2da3182b61e5b2b2930952b51` |
| 7 | `lemma` | [prod_onFinset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-onfinset.md) | 82 | `result-track:e061fae61e6ebd858d09f7bfc093f43915da173115a3efd179acd88d2ba61068` |
| 8 | `theorem` | [prod_zero_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-zero-index.md) | 87 | `result-track:89afaa4466d08fdc9d139ba74fe03afc74c8664dd20121e5481462eba4429460` |
| 9 | `theorem` | [prod_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-comm.md) | 91 | `result-track:8f0595bc8afee64617d9cfdd9b45ae2fabb05d9439b70d0d5c9c5b3ea154e610` |
| 10 | `theorem` | [prod_finsetProd_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-finsetprod-comm.md) | 97 | `result-track:110deb7a3f345e71985e83855f51a0b2bf28a0c6c4c8a3802b11d1103eeb9a51` |
| 11 | `theorem` | [prod_ite_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-ite-eq.md) | 101 | `result-track:9dbac9be6c4ed755f4ac979c7e5a07a449a2b5dce8ce2c0b946e3f00b4f9159c` |
| 12 | `theorem` | [sum_ite_self_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-ite-self-eq.md) | 106 | `result-track:a94edcdaf8cf5d07f5cdf7265244ff2e5aa691a35fd476235f62578faeac3c56` |
| 13 | `theorem` | [if_mem_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/if-mem-support.md) | 114 | `result-track:a4612317d152a19f2e84228008eae7093f67fcb2ba59d4c7dda29ab6f91ef7e3` |
| 14 | `theorem` | [prod_ite_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-ite-eq-source-edition-2.md) | 121 | `result-track:d900e773c524eb5951703d05cdf48e403c1d4dfaa1e51e1479e559680f49efb8` |
| 15 | `theorem` | [sum_ite_self_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-ite-self-eq-source-edition-2.md) | 127 | `result-track:b162bb83b53be43931c849b6fe44d709057ff1a8467971a5f6ec9700989f30f5` |
| 16 | `theorem` | [prod_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-pow.md) | 132 | `result-track:2d16d5efeceef8238e5fedfebca415f3a98503b018288b061d982c2ab4ec5e48` |
| 17 | `theorem` | [prod_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-zpow.md) | 137 | `result-track:0df621c88862ef8b8322c3edad2c9e9e471a2e9f5a94c4fed0980eb0bdbcedd2` |
| 18 | `theorem` | [onFinset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/onfinset-prod.md) | 146 | `result-track:ff5711ca937f7c906508f9642c7accbad2dd1e37054edb80cd24ca3629a951d3` |
| 19 | `theorem` | [mul_prod_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/mul-prod-erase-source-edition-2.md) | 155 | `result-track:b5b4ba0d58290761dde31d252b31c81d1a026d296f3c79fc9f8c193243b27a03` |
| 20 | `theorem` | [mul_prod_erase'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/mul-prod-erase.md) | 170 | `result-track:8abaa7c9e1fafc9e558e191d61e55811e39d09b1d39c1615d04943037207aa09` |
| 21 | `theorem` | [_root_.SubmonoidClass.finsuppProd_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/root-submonoidclass-finsuppprod-mem.md) | 177 | `result-track:2fcde53086f2f2e0d86b31837a12ef03b77da69a284e39922fe7b03d8eebe647` |
| 22 | `theorem` | [prod_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-congr.md) | 183 | `result-track:f99529e3910a8be61b3f00c848a46e8b63a88f9c8eaa065b80b24b8f308a5229` |
| 23 | `theorem` | [prod_congr_of_eq_on_union](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-congr-of-eq-on-union.md) | 192 | `result-track:d0cea92a56ae4400ffb404da390887210a7d8fb6e2b33633227565e4a90fac76` |
| 24 | `theorem` | [prod_eq_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-eq-single.md) | 202 | `result-track:45658bfb177208fb6131a1d9cde14e501e67ea4570d798faa693c7c3f93a4019` |
| 25 | `lemma` | [prod_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-unique.md) | 212 | `result-track:65c0929dfabb8a1ba16ff3dc75343c0c79fe5033bec3ee56fda9bd3a5ad9bfeb` |
| 26 | `lemma` | [prod_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-eq-zero-iff.md) | 223 | `result-track:b7b2721f339db208f0728e8f29f9f6ca6c097a4d2b77e35476412658743a5389` |
| 27 | `lemma` | [prod_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-ne-zero-iff.md) | 224 | `result-track:032e46bffa42bc78c4843d5c7a86c14acb63efe609b3b69f103ff9a3a352312c` |
| 28 | `theorem` | [map_finsuppProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/map-finsuppprod.md) | 230 | `result-track:7942ed04f3fe51ab1c6cead96f3d34f49e2a454566371cecccabec3e9d43a7d7` |
| 29 | `theorem` | [MonoidHom.coe_finsuppProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/monoidhom-coe-finsuppprod.md) | 236 | `result-track:ebfa55dfb6e99cbe60f34b1b7842086ff2cc14b599b864428fe802f0e6af3a57` |
| 30 | `theorem` | [MonoidHom.finsuppProd_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/monoidhom-finsuppprod-apply.md) | 241 | `result-track:c6056aaa480e54924cc62875b1f999ae869d90377eca7acaa1b6f22be2450665` |
| 31 | `theorem` | [single_multiset_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/single-multiset-sum.md) | 247 | `result-track:7d222e6a07128d11c7569d3811f48ebe63f2472fb9e35bcda0b486d9d088f449` |
| 32 | `theorem` | [single_finsetSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/single-finsetsum.md) | 252 | `result-track:18741409eecbce4bbbf3d7ca916af5aa76a94a9fa08ce4c14a3336773130f093` |
| 33 | `theorem` | [single_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/single-sum.md) | 261 | `result-track:2cfff4763edd6166d5677a82967381d41c4c9d91c2687cd483fbd35fabc5482b` |
| 34 | `theorem` | [prod_neg_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-neg-index.md) | 266 | `result-track:a849f46b32746b2f832d370240f5f56b290fb1fbf50b33e89d8c6f3053076c57` |
| 35 | `theorem` | [finsetSum_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/finsetsum-apply.md) | 270 | `result-track:4c489b66e4e5fe37e322d7be974de917f89acb73a7604da374020bf626bc8543` |
| 36 | `theorem` | [sum_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-apply.md) | 277 | `result-track:b10bb2746282385be7ea8993834dab5cb8f5b8bd89f1c0ebda15676d29d760aa` |
| 37 | `theorem` | [coe_finsetSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/coe-finsetsum.md) | 281 | `result-track:0f7933755080af161ea22276c44b8cd47b6076b898be265d37d77c52ea1cf4c0` |
| 38 | `theorem` | [coe_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/coe-sum.md) | 287 | `result-track:90a5db7b10bede0a826ab9d92bc711731a02afa22e461cf854e0946ad369d696` |
| 39 | `theorem` | [support_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/support-sum.md) | 291 | `result-track:a331c26890e547447ea518b6d76edef4e440bce458108e3bece05b4ed5f66913` |
| 40 | `theorem` | [support_finsetSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/support-finsetsum.md) | 298 | `result-track:b17d69c34d261ca422ccef2acacddbc7d1f0884e23546fe02e3e63ecec997dc2` |
| 41 | `theorem` | [sum_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-eq-one-iff.md) | 309 | `result-track:04982eec1cde3c7283bbe2d360cdead8b0f77a006dd86ae8a6089ba71b92b779` |
| 42 | `theorem` | [prod_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-mul.md) | 327 | `result-track:6b4a3baca638a989a69ccbac2509d33650a96faef6b9da8c397a4563e75bc969` |
| 43 | `theorem` | [prod_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-inv.md) | 332 | `result-track:e26318a9df154e84cb7f24634a5343de3a42f6c9bf94e0b5853bbf0c906006c4` |
| 44 | `theorem` | [sum_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-sub.md) | 337 | `result-track:f7fc0f72daed5699e7a304d101d7b911d4b223b8ccbde63a8b42424f63f94ab6` |
| 45 | `theorem` | [prod_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-add-index.md) | 348 | `result-track:008deda175debe01dae4886378fc35442d0557198a605110b841b43fda95c061` |
| 46 | `theorem` | [prod_add_index'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-add-index-source-edition-2.md) | 364 | `result-track:c29004a67fee79f71510aa19b1c40665b9d137efc26461e9010006d7c36445ad` |
| 47 | `theorem` | [sum_hom_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-hom-add-index.md) | 370 | `result-track:af663f5a6c11666717041ff982fd3494e27624a277d270ec9d7e1afa7d6c9308` |
| 48 | `theorem` | [prod_hom_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-hom-add-index.md) | 375 | `result-track:c6448a8538d2d7a32ea70fefb3a4882629c656ef523dc41011c074ee04ebfcde` |
| 49 | `def` | [liftAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/liftaddhom.md) | 384 | `declaration-track:b1d0f4b773ba41d9450e153ffaf3902e8f5b6c8306b24772fbcc55c75bd4cb7c` |
| 50 | `theorem` | [liftAddHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/liftaddhom-apply.md) | 395 | `result-track:aa390e4517205e477bebb7abba89d24a080a9c9771d6eded95b581627fb4fd4d` |
| 51 | `theorem` | [liftAddHom_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/liftaddhom-symm-apply.md) | 400 | `result-track:c88e2ddaded758b1c47b952f5ce71234512cbaeccf0efe36c4bf818cab1cac43` |
| 52 | `theorem` | [liftAddHom_symm_apply_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/liftaddhom-symm-apply-apply.md) | 404 | `result-track:73b1b75237d021c96773ac3411076d7101a9193fe1d5d62bc480496ef21e522a` |
| 53 | `theorem` | [liftAddHom_singleAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/liftaddhom-singleaddhom.md) | 409 | `result-track:a4329e233c7080a946cfc0273b402bc68073a21d22f12236c476d895bf56565c` |
| 54 | `lemma` | [sum_finsetSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-finsetsum.md) | 414 | `result-track:17da5e959b2ef91d94759442e9fe80f99174914c451b1e0a6ee1774b834f67ab` |
| 55 | `theorem` | [sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-single.md) | 422 | `result-track:a3169f5cf1ddf17e03a4876d78f55de242ee45d99ba3b055bbce63c9d6b0fa34` |
| 56 | `theorem` | [univ_sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/univ-sum-single.md) | 427 | `result-track:b2295765741abb8062a097b10327565966589ed5235c5dc1e14268f7caf6c1bb` |
| 57 | `theorem` | [univ_sum_single_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/univ-sum-single-apply-source-edition-2.md) | 434 | `result-track:bb43ba73c54f44958edacf9eb626063f26fa2861a589cf89909a34eba9cbeab5` |
| 58 | `theorem` | [univ_sum_single_apply'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/univ-sum-single-apply.md) | 440 | `result-track:b58b0356d5eb7844d23e20f613ab3c2bda67b5cea9d9ae1e4ce4b875e6f2f6e1` |
| 59 | `lemma` | [sum_single_add_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-single-add-single.md) | 446 | `result-track:5c0829f3e0481eb71db96e4082213c943605699d9a8e3fadac64d972673083f8` |
| 60 | `theorem` | [equivFunOnFinite_symm_eq_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/equivfunonfinite-symm-eq-sum.md) | 452 | `result-track:21698469b3b715755e285c22b1879b442eb350c02656525e42d42d4e1296705c` |
| 61 | `theorem` | [coe_univ_sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/coe-univ-sum-single.md) | 456 | `result-track:9ef80e2b70fcf2c75f198e326f3fe4a16336effb7ec416a6ddbc6e51aa519fe4` |
| 62 | `theorem` | [equivFunOnFinite_symm_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/equivfunonfinite-symm-sum.md) | 460 | `result-track:cf3aacf309a3f82f78cabfe6fb3e6050102f133e0da8415e97d8e516471fff6d` |
| 63 | `theorem` | [liftAddHom_apply_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/liftaddhom-apply-single.md) | 464 | `result-track:469a7e4598d0621599e04ad8c43b252ccd114a3e2f621e0926f5d470e04e01a9` |
| 64 | `theorem` | [liftAddHom_comp_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/liftaddhom-comp-single.md) | 469 | `result-track:34c503ea2ee5e6d2b97bc825ce5564a9622b075be84c74ee236966e193542d5c` |
| 65 | `theorem` | [comp_liftAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/comp-liftaddhom.md) | 473 | `result-track:c033c03cd1c7ef9fd05325db9d4c274baee5c8760d6a8c81b1b058a7259c7b8c` |
| 66 | `theorem` | [sum_sub_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/sum-sub-index.md) | 481 | `result-track:858240a0f4cc7df8f319af0154cc89341696e3cce99c8c88d1f49219c9f2d418` |
| 67 | `theorem` | [prod_embDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-embdomain.md) | 487 | `result-track:c8b8d8c546fb5406faf02b2810a794cfcfc8dacc025b0c113ad33be50f2c8571` |
| 68 | `theorem` | [prod_finsetSum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-finsetsum-index.md) | 493 | `result-track:49e20e6f822fe675d5c62876457298509f58677517f339609ccc6b97339d349b` |
| 69 | `theorem` | [prod_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-sum-index.md) | 505 | `result-track:9810b81c08a43c3daa859b4adb4cad4ce1014889fcbe06b5af56a0fc5d50d469` |
| 70 | `theorem` | [multiset_sum_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/multiset-sum-sum-index.md) | 511 | `result-track:83a874e1d6c1ad05408e93a117871b7e91e5fdbf21e740e7d79d1a4f66842aef` |
| 71 | `theorem` | [support_sum_eq_biUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/support-sum-eq-biunion.md) | 518 | `result-track:57b22edf672806e5929dbb39382379d9713288855b4c9689b80f56b49f76aee8` |
| 72 | `theorem` | [multiset_map_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/multiset-map-sum.md) | 533 | `result-track:5e1b67cba3ddf0f687bfa167a1a27774e5ef50737831d0f95cb91b43f7417c14` |
| 73 | `theorem` | [multiset_sum_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/multiset-sum-sum.md) | 537 | `result-track:497956824920c372ddfdec0f1088f61768213a117c845162da7aec15c8443de1` |
| 74 | `theorem` | [prod_add_index_of_disjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-add-index-of-disjoint.md) | 546 | `result-track:f6720c385c27f6b4030a1e46219b89b76c78d721f2dd2e34c93f2bb0ce185b31` |
| 75 | `theorem` | [prod_dvd_prod_of_subset_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-dvd-prod-of-subset-of-dvd.md) | 558 | `result-track:c0f4e282d0250d710b12d74d50bfd849d262230b7f48253d5749ad9ad259bee2` |
| 76 | `lemma` | [indicator_eq_sum_attach_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/indicator-eq-sum-attach-single.md) | 568 | `result-track:5e00b31c589058421b3fd2201341a1baf05905357bf410e0ce7c6d5dedd99ef3` |
| 77 | `lemma` | [indicator_eq_sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/indicator-eq-sum-single.md) | 576 | `result-track:c4033795b948fd61ffabcf4ff83858818497362debc16d702933a26f457a5623` |
| 78 | `lemma` | [prod_indicator_index_eq_prod_attach](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-indicator-index-eq-prod-attach.md) | 581 | `result-track:d67dc5789187808b61d8bddbb1e7beeffb14866154e9177ed668019d60565321` |
| 79 | `lemma` | [prod_attach_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-attach-index.md) | 589 | `result-track:d5503cef607b7f22941e2875309faaf52edc5fa64a1b9988490ba2304ad3782e` |
| 80 | `lemma` | [prod_indicator_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-indicator-index.md) | 594 | `result-track:6a5fb92bbcea494160d0487631a4f24f520366938e7b87eec6b42047b39a415a` |
| 81 | `lemma` | [prod_mul_eq_prod_mul_of_exists](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-mul-eq-prod-mul-of-exists.md) | 600 | `result-track:471d61b018f85ec6d45258dabc2aa4808941fcd4f6a7f7cfb994d0a8a1a30a1d` |
| 82 | `theorem` | [Finset.sum_apply'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/finset-sum-apply.md) | 609 | `result-track:6f47de96c34f205ce3eee219c07b31293cddd1d6504199b9d9e252b655022fe1` |
| 83 | `theorem` | [Finsupp.sum_apply'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/finsupp-sum-apply.md) | 612 | `result-track:6d14a0741c47fd075d1a7923cc46d695055c64f67dc2aa8e4f0571ddc53f56db` |
| 84 | `theorem` | [Finsupp.sum_apply''](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/finsupp-sum-apply-source-edition-2.md) | 620 | `result-track:95b8e4cebe95833b4c967fa07746b3b74c304be99a16ca1ab7bd67b9c575cd47` |
| 85 | `theorem` | [Finsupp.sum_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/finsupp-sum-mul.md) | 634 | `result-track:1c34daa469fb76253f1a3fb30cfef320d17475e8579467f9428db32038349087` |
| 86 | `theorem` | [Finsupp.mul_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/finsupp-mul-sum.md) | 637 | `result-track:b008a21f0bb0428691fea4860b7a6740a6bfaffb9d24c2635e4aa0c2f897b269` |
| 87 | `lemma` | [Multiset.card_finsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/multiset-card-finsuppsum.md) | 642 | `result-track:5b58de2342e908efd8de93ec5590ae680aaee3cae8a9671a60f87b6ead78aa35` |
| 88 | `theorem` | [prod_pow_pos_of_zero_notMem_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/prod-pow-pos-of-zero-notmem-support.md) | 648 | `result-track:9be1dae2768925b624edbbd447980e244423220d514ebf4d312e81e740c95eb2` |
| 89 | `lemma` | [op_finsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/op-finsuppsum.md) | 658 | `result-track:a0a4c2e21b78e796a49da0cbf80a25ef67d596326d9f53312c5d81c3e8e1accd` |
| 90 | `lemma` | [unop_finsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/unop-finsuppsum.md) | 661 | `result-track:ee6ed655471e0842e06637a3be5323411bec0f515ce266ae14e95882173c051c` |
| 91 | `lemma` | [op_finsuppProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/op-finsuppprod.md) | 669 | `result-track:412cd47ecfbd9418f5fc898ba8189ea6b780ed713d8d869d5709f2af69f26b1f` |
| 92 | `lemma` | [unop_finsuppProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasicPublic.lean/declarations/unop-finsuppprod.md) | 672 | `result-track:52ab44e8849e0b2eefd8fc79c5d1801d2ed1b73a04c5e5c1728b31d9fa837ec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=450705e11f1483a2276366b1d28af2b214cd9186f7e11a3984c09ae5a8184076 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variante432dc8a10f83e90ebc9207ab8d8d8e0b4fd569fc7730337ae778c21c3e5d153.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
