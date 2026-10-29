# Verification target: HNNExtension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caf84a812ad79352b5951af0d067db389bb80433",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caf84a812ad79352b5951af0d067db389bb80433`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.CharZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coprod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Complement` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HNNExtension.con](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/hnnextension-con.md) | 39 | `declaration-track:da44103363cd8a457c47e6de21f9c6940a1b385c03d3debdc3c59f2854da710e` |
| 2 | `def` | [HNNExtension](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/hnnextension.md) | 49 | `declaration-track:f338c208528c57da9154bbc4dae77b78c333c14060090f599fc4c128eb01c4d1` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:81f6bbe4a87bbedff2d867a163d6bada1ba0d41b677c6d4e2a9a7b046615106e` |
| 4 | `def` | [of](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/of.md) | 61 | `declaration-track:65a961de17d49a557c4c34c24fe995bb98fa32e809744c6897d73731b3fe10a6` |
| 5 | `def` | [t](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/t.md) | 65 | `declaration-track:8cdb44f2fa7fcd22adbe3bc27085c360674f11084fc1d8660dfc5d7f4745814e` |
| 6 | `theorem` | [t_mul_of](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/t-mul-of.md) | 68 | `result-track:4c12b7af83116cade98a57459b2064a62c3d76006208c8b54f29b7643de9ed8f` |
| 7 | `theorem` | [of_mul_t](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/of-mul-t.md) | 72 | `result-track:4fff0e25ac54079a19236e5dc9ab5490ef214bb3ba3d0bd13db069efd49dd050` |
| 8 | `theorem` | [equiv_eq_conj](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/equiv-eq-conj.md) | 76 | `result-track:63841c84a1611f2fc80a9c48fe6b3b98d2fe425a203dcd5f1758f779ed3df459` |
| 9 | `theorem` | [equiv_symm_eq_conj](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/equiv-symm-eq-conj.md) | 80 | `result-track:384ed5e4e7cd73621b1ceb1a3d161bd455d78f1d204c30e7c6f502f89e1a268e` |
| 10 | `theorem` | [inv_t_mul_of](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/inv-t-mul-of.md) | 84 | `result-track:d4b70f6f602a3a0d4dde13558afd4379e0a1c024f639c4979f4d5b734864e5de` |
| 11 | `theorem` | [of_mul_inv_t](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/of-mul-inv-t.md) | 88 | `result-track:8c3e23e379b2eb1f1c184a79ec53b411a8d5198504706884ba84d141b9f0c25d` |
| 12 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/lift.md) | 93 | `declaration-track:2318068f48104c5ac3fc9e03bd69787adedd7d14b2c216f8605ee7ac2488bb05` |
| 13 | `theorem` | [lift_t](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/lift-t.md) | 100 | `result-track:29d6965ec1202c2d77ac0b32340301578e62f0082bbe000b3541826e7f7a8237` |
| 14 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/lift-of.md) | 105 | `result-track:4e8a6f8d4d429ecc444cdc6f2c10d26f5f707164cad31dc9abdbe2e466d15eb2` |
| 15 | `theorem` | [hom_ext](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/hom-ext.md) | 110 | `result-track:cb3d2dbe7ff54bdbfaa3ea5523a218f5490be9358bba22a3de8be67b55de62e6` |
| 16 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/induction-on.md) | 116 | `result-track:55f69310381b2b29b80709cab1ae72eafec06c26dd9cb0253d77917c61e243ab` |
| 17 | `def` | [toSubgroup](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tosubgroup.md) | 140 | `declaration-track:e00d5a6e26c40cf81d3fbb4922e4dc7e02a081fab1741b1f47ed99424d631949` |
| 18 | `theorem` | [toSubgroup_one](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tosubgroup-one.md) | 144 | `result-track:bbabc49c136ac2d7800874950cd769bfce2ecc980fd41cdbfcfa83341ec5367d` |
| 19 | `theorem` | [toSubgroup_neg_one](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tosubgroup-neg-one.md) | 147 | `result-track:03767a3df1a9b38676d0b8d2369cb685e1a5658beda9a698497762d3349609d7` |
| 20 | `def` | [toSubgroupEquiv](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tosubgroupequiv.md) | 155 | `declaration-track:8a9226a65f2e856fe19c412eddba0493e5d888ca4c8e2b1997fb54dfd039eaf0` |
| 21 | `theorem` | [toSubgroupEquiv_one](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tosubgroupequiv-one.md) | 161 | `result-track:abac0a9acf8a5aca8a612badefe8c4f6bc6dfe9175b8949ba9e06e1b323e7584` |
| 22 | `theorem` | [toSubgroupEquiv_neg_one](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tosubgroupequiv-neg-one.md) | 164 | `result-track:19ec13406dd5aea363add6e1724ff2c55b0fefc5febdf3392105c8bcaf293de6` |
| 23 | `theorem` | [toSubgroupEquiv_neg_apply](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tosubgroupequiv-neg-apply.md) | 167 | `result-track:70defcd38c8c71116fc52235c754a015e14b348253e8777f8ab8439c0465407c` |
| 24 | `structure` | [TransversalPair](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/transversalpair.md) | 179 | `declaration-track:720aeea4cc900d59670ca1b0c1df19ba1c4787c1165c63ba6f3295bc24918e23` |
| 25 | `instance` | [TransversalPair.nonempty](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/transversalpair-nonempty.md) | 185 | `declaration-track:3e36144cff0b785b99b45306d4168ce522b46e43ea8a7f02149b894947154742` |
| 26 | `structure` | [ReducedWord](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/reducedword.md) | 192 | `declaration-track:f971027866948739628d6f7625c7cbe3e48f21f743d89af81198e9d936d65fba` |
| 27 | `def` | [ReducedWord.empty](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/reducedword-empty.md) | 204 | `declaration-track:b316ffdbe2f26f45775309c082f4a2f50ff736a24cb2a7f8fd8c03642b7df452` |
| 28 | `def` | [ReducedWord.prod](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/reducedword-prod.md) | 211 | `declaration-track:a57b77b77cb733b0eb47c64fa38169d8d4106abb50e44a1b62f51af969564130` |
| 29 | `structure` | [_root_.HNNExtension.NormalWord](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/root-hnnextension-normalword.md) | 219 | `declaration-track:d156662ac4fad18c9b2abd413d0fe8f694b6e44da62889129271b35454ff458c` |
| 30 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/ext.md) | 227 | `result-track:b10be3f2e5964492b3a5ace3bf4100e309e04e92ce5483e55a6e3782460475db` |
| 31 | `def` | [empty](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/empty.md) | 233 | `declaration-track:ac685634d9437db37aaccae649cd1c3c0e71a019d002c91bada90cd484e7ec80` |
| 32 | `def` | [ofGroup](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/ofgroup.md) | 242 | `declaration-track:636b03a6d5d2f23e7b4c53cd768bc28674a024eb7deb6d3fd81f03c0385c7d0d` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/instance-source-edition-4.md) | 248 | `declaration-track:e784e0cbe344ce19e46e089f0afeba423b6ae06c1ab68a58a6bd10f9a19832c7` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/instance-source-edition-5.md) | 250 | `declaration-track:f803d9671ab3978277406ddbf0a11b5eef17ef5a1e59cd7d31f4cb9f334ecc4f` |
| 35 | `theorem` | [group_smul_def](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/group-smul-def.md) | 255 | `result-track:bc664713e441d162e731cebec4fa681eb91b2281877dbd7134bb14d768c5ac32` |
| 36 | `theorem` | [group_smul_head](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/group-smul-head.md) | 259 | `result-track:ff05d8f2cc30abadfc92599d161f2b49568614d731a61bc7dd8bc71cac9beb67` |
| 37 | `theorem` | [group_smul_toList](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/group-smul-tolist.md) | 262 | `result-track:04d2bd1e158b320f85b3889919c0b82cc647a9a889148fed746c6c4b952f7ee5` |
| 38 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/instance-source-edition-3.md) | 264 | `declaration-track:be08db5b6b5f91f29b8c98ca62abfe62e40e47dbe956778a089100aa97f5e15c` |
| 39 | `def` | [cons](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/cons.md) | 270 | `declaration-track:86c515279a3dde003be8375ac2ff9f31efedeb6eb9fbb11ec8ab148c83b6de1f` |
| 40 | `def` | [consRecOn](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/consrecon.md) | 288 | `declaration-track:8104f30f41e9449b9ad20a46e3aa757801c275bcf84abd1c10ba8493cb5db382` |
| 41 | `theorem` | [consRecOn_ofGroup](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/consrecon-ofgroup.md) | 308 | `result-track:68871dac4a88576cb261340cf0983b1e65f2a93d50707388aba3e18c6bff6bc9` |
| 42 | `theorem` | [consRecOn_cons](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/consrecon-cons.md) | 317 | `result-track:98c86e4caa76521f4a991459464eb21c0a71c912c6e3c7b18a19b95739ecd0ba` |
| 43 | `theorem` | [smul_cons](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/smul-cons.md) | 329 | `result-track:796389c78792bb32fb70387f00e2ebdcaa473ee4b3d7d55e0434592d2c65baf0` |
| 44 | `theorem` | [smul_ofGroup](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/smul-ofgroup.md) | 335 | `result-track:63f9c1abc90b7c3b1d84969a3d28dd197438598b044b97c9c2062e37315b8140` |
| 45 | `def` | [unitsSMulGroup](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmulgroup.md) | 341 | `declaration-track:57263e04682cfa73767be5288e8d9938134753b4b225e40484d10dfcec6a1cce` |
| 46 | `theorem` | [unitsSMulGroup_snd](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmulgroup-snd.md) | 346 | `result-track:b4b311f56c2153048e75ba8ae891dfb58d8be7a042107c159762b5d74b23f5b0` |
| 47 | `def` | [Cancels](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/cancels.md) | 354 | `declaration-track:b63adfdc6f6d201514c4844621ce213c1a8b78f37c45fa59d699ca33d392ea32` |
| 48 | `def` | [unitsSMulWithCancel](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmulwithcancel.md) | 358 | `declaration-track:0961486e25e7a44dcc707747783d6b9d44adfbece927cf9aa1361a5bc457991f` |
| 49 | `def` | [unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmul.md) | 365 | `declaration-track:319274180e835c261ff9c3f612e7e6c47fcbad9c83f73c9d6cc5f0b7ae49ccb7` |
| 50 | `theorem` | [not_cancels_of_cons_hyp](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/not-cancels-of-cons-hyp.md) | 387 | `result-track:921c74791d0e96ef4a0753f25878b5306df5a83f881883620e4052e1f32095fe` |
| 51 | `theorem` | [unitsSMul_cancels_iff](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmul-cancels-iff.md) | 397 | `result-track:8265bf7369815c65ac21fc4177f3d99e421851c743c62c8cc2c872a2ca949e9e` |
| 52 | `theorem` | [unitsSMul_neg](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmul-neg.md) | 414 | `result-track:e13065d74a0274e49f6f18eb0bfc01f95046541ea88cad64856f7b9aae0a9942` |
| 53 | `def` | [unitsSMulEquiv](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmulequiv.md) | 450 | `declaration-track:82aaa3bbf46193506a6982f64e393eb80b9b7c0e44a64681efa94c250da39f78` |
| 54 | `theorem` | [unitsSMul_one_group_smul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/unitssmul-one-group-smul.md) | 456 | `result-track:0bd447d8672f75e1e62a4d05554e911e9c50702b5fb560282da52537869eae97` |
| 55 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/instance.md) | 484 | `declaration-track:11c7d59406cf89eeb23f9271334debfa34646be0d3961f1445af1e922ead6ac7` |
| 56 | `theorem` | [prod_group_smul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/prod-group-smul.md) | 492 | `result-track:bf0ebc41ffec64859dc68a60d67e67210b30090f8c5fa76fbf34ddea901496e3` |
| 57 | `theorem` | [of_smul_eq_smul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/of-smul-eq-smul.md) | 496 | `result-track:8ed0b6f8d7663d5b0fe33832b7bbd739488a03f9c69326c80a1a2cbcea5f8e87` |
| 58 | `theorem` | [t_smul_eq_unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/t-smul-eq-unitssmul.md) | 500 | `result-track:a67813a32163ff2ffcca861e8dd48a5ac30bc9e2d050e181e4951b6e3e73280a` |
| 59 | `theorem` | [t_pow_smul_eq_unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/t-pow-smul-eq-unitssmul.md) | 504 | `result-track:4c96d029d8af086412f92fb1371c7846c4f4d79382ef7f0ead58d49c5b49d4d0` |
| 60 | `theorem` | [prod_cons](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/prod-cons.md) | 510 | `result-track:d1998c9fda04a4bb04012753085297ba93b1cf842b42f419d5b6b23bec1b950e` |
| 61 | `theorem` | [prod_unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/prod-unitssmul.md) | 516 | `result-track:54ca184c51b001917ff03d307c175c9c5b5dc65a8483c91b979504cac5968a6b` |
| 62 | `theorem` | [prod_empty](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/prod-empty.md) | 548 | `result-track:14e270e02a85450e9dff4b89557a887578f62c3b44ca233fbd5655e6f96ddbfb` |
| 63 | `theorem` | [prod_smul](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/prod-smul.md) | 552 | `result-track:fb826fa14de1490e1c23a5ee19d2f6b0b9a33d1b6c39ea9d566ec20e19b38b78` |
| 64 | `theorem` | [prod_smul_empty](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/prod-smul-empty.md) | 563 | `result-track:0d4e263c6190c41f0b58112721a37e9ced2dc8b9a82f76c455641f0a9b2ff109` |
| 65 | `def` | [equiv](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/equiv.md) | 584 | `declaration-track:dd04a0f189c233f9b97a2664f3d6b2f00ffbdd5582b69a7d76f6825d391d6f61` |
| 66 | `theorem` | [prod_injective](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/prod-injective.md) | 590 | `result-track:ddbd1b79b7896eaa1f2294a65f997f5a5d4fbfaf5c6067b4f7e4322332d574c1` |
| 67 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/instance-source-edition-6.md) | 594 | `declaration-track:fe4c7756ec9f29e309d4664c0a36fe04f3aca00bf6ef7789195f8367367d74f3` |
| 68 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/of-injective.md) | 601 | `result-track:a107869198768d8f7f0f46faeb2372a6a052e32e3a2b02e44b4f85a489093a92` |
| 69 | `theorem` | [exists_normalWord_prod_eq](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/exists-normalword-prod-eq.md) | 611 | `result-track:5984a3ee3cc5ff13fc000c47cbb874e40dc73102cfb65fa6cb6ca0d7594b67cd` |
| 70 | `theorem` | [map_fst_eq_and_of_prod_eq](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/map-fst-eq-and-of-prod-eq.md) | 669 | `result-track:13515e960218fbecf9cc0b91b42f4c2d20bb0a60d4f07a0baec364aca8f7f610` |
| 71 | `theorem` | [toList_eq_nil_of_mem_of_range](../../../../GroupTheoryAndGeneralizations/HNNExtension.lean/declarations/tolist-eq-nil-of-mem-of-range.md) | 688 | `result-track:6e7ce8d40d5cddc218fa4f900f3a0915d7e5b1140f1ec858845f321cf260264b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa4d6c8273b1e30c501edcb8d0dfbe018b8d99e50addaf6686a9da65bd498e9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
