# Verification target: Algebra Periodic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3017c18af8e4f8fa3b5672b4e4dbbf9238ead837",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3017c18af8e4f8fa3b5672b4e4dbbf9238ead837`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Periodic/Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Parity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.ZPowers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Periodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic.md) | 49 | `declaration-track:e92ae5b7c628aa507f349d3a8b2851b963e88ba0399de4f1386f8f7c1f154ab7` |
| 2 | `theorem` | [Periodic.funext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-funext.md) | 53 | `result-track:111f2217951aceeaddfc0456914e24b316321c352a53301f6513dab30be5c33d` |
| 3 | `theorem` | [Periodic.comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-comp.md) | 57 | `result-track:a6d23eb232088c5f511e666f7003f8ece15fcbd9026a2e7dbf286722f439128a` |
| 4 | `theorem` | [Periodic.comp_addHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-comp-addhom.md) | 61 | `result-track:cf397210a58878788a4e4f6958f62c4ff1a3e1c50237fd414ed6b47154511d61` |
| 5 | `theorem` | [Periodic.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-mul.md) | 67 | `result-track:92704aefbe95ee7fe981a449a1327c6f07c0c48c4e84acc8661f203d3e8875dd` |
| 6 | `theorem` | [Periodic.div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-div.md) | 73 | `result-track:1255d4930b028486e572bde350f45144a195f70af417278eff86a791b4c7d2ed` |
| 7 | `theorem` | [_root_.List.periodic_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/root-list-periodic-prod.md) | 79 | `result-track:9a6aed97186cc624b10501e688bc7045a86b5afd5553c1861f68bee1deb13dd9` |
| 8 | `theorem` | [_root_.Multiset.periodic_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/root-multiset-periodic-prod.md) | 89 | `result-track:f12851664593948f533ad6b135a3fb5c57d17843d0b52823cb2d09252c6f8861` |
| 9 | `theorem` | [_root_.Finset.periodic_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/root-finset-periodic-prod.md) | 96 | `result-track:41f8d3a1242072e1a2e8db75bddb7cf62f41629d39e3255fe0e8d100cf1f6de9` |
| 10 | `theorem` | [Periodic.smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-smul.md) | 103 | `result-track:77a477141b298afda51a056e4e91e0b6fda7e9b224aa84a01969421c0476ac27` |
| 11 | `theorem` | [Periodic.const_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-smul-source-edition-2.md) | 108 | `result-track:927266d6f20b1a89c50513e47b31ff81dfca936014bb95db8220ddef0a8e37ca` |
| 12 | `theorem` | [Periodic.const_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-smul.md) | 113 | `result-track:5f9389794ec0a634e3a364ee242d609f87d1e59dbdd5e56f34970cc1c0929a87` |
| 13 | `theorem` | [Periodic.const_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-mul.md) | 120 | `result-track:427ce92866ad6222ad9f0454c0a7e9a707997317b5dce6eea8d62c6310e9125d` |
| 14 | `theorem` | [Periodic.const_inv_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-inv-smul.md) | 125 | `result-track:04664aa66c3b766e68805d6dc7c5fa3b0f7605f9f704729a007497dfcbf3b7f0` |
| 15 | `theorem` | [Periodic.const_inv_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-inv-smul-source-edition-2.md) | 130 | `result-track:a6fc099690c5ec9124175c9998187936e02620cd4c1654fbdc868f9dadea1408` |
| 16 | `theorem` | [Periodic.const_inv_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-inv-mul.md) | 135 | `result-track:f9fefd07e4fe7db0d3e6eacfb9f6c6a575b86357c81fd43d8bbf92349cd327e4` |
| 17 | `theorem` | [Periodic.mul_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-mul-const.md) | 140 | `result-track:04827e4c91a0e42c0b1ea2677335741bf77aa2407101d9ea1074a4ad9970d4c5` |
| 18 | `theorem` | [Periodic.mul_const'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-mul-const-source-edition-2.md) | 145 | `result-track:bc0b459d27b6ea26bf9a084eb4d21af2e383e59b0556f8fc4acb17b9f2cba1c4` |
| 19 | `theorem` | [Periodic.mul_const_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-mul-const-inv.md) | 149 | `result-track:140377c0522b7fe3e39b6909f55ce3f62a129b49751a6ecff1b59f4432048940` |
| 20 | `theorem` | [Periodic.div_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-div-const.md) | 154 | `result-track:c7a695d199d82ba05f2557c6ba42ae307d6bd75e4c8948830ee42b73dbe32cf9` |
| 21 | `theorem` | [Periodic.add_period](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-add-period.md) | 158 | `result-track:da907a0fc1c1dc1ffdb51b9a05aa095af5f046b49e243646fec26aa9cfc8683b` |
| 22 | `theorem` | [Periodic.sub_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-eq-source-edition-2.md) | 162 | `result-track:ac292ebd0d64eb513b1412b675a5aad350f91925c7f91ac2711c7ffe4b888078` |
| 23 | `theorem` | [Periodic.sub_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-eq.md) | 166 | `result-track:06a6751d5de6b200b2f6173532d25e1e3a92b445a7f16056e4f540424d1844aa` |
| 24 | `theorem` | [Periodic.neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-neg.md) | 170 | `result-track:5a959ae29a1894ebf1281b14b70e5aeac91b99e51e7a71ca02a1e0ca47d33dcc` |
| 25 | `theorem` | [Periodic.sub_period](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-period.md) | 174 | `result-track:dee6041b5f1e3930c454a5562888b1c7060bd042ca8228be89bf2424a67d4ab6` |
| 26 | `theorem` | [Periodic.const_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-add.md) | 179 | `result-track:cf42fbd4c5c1e4c16d486904b74007e92a5f1e32ba6dba95161dab268d24bc3e` |
| 27 | `theorem` | [Periodic.add_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-add-const.md) | 183 | `result-track:68d4b45baaec534a5929a786abb5758309db16cb4c16e6c506e27b67255ab486` |
| 28 | `theorem` | [Periodic.const_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-const-sub.md) | 188 | `result-track:d548a80f5cd0168f5fbb9feafb56eaa92763c703d9917cef81e681ef3c27ab73` |
| 29 | `theorem` | [Periodic.sub_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-const.md) | 193 | `result-track:388f7cca9e0bc682454ad44a3ffbad8b5771812cdf98ed19e2078f1f6f7ae109` |
| 30 | `theorem` | [Periodic.nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-nsmul.md) | 198 | `result-track:faa82b06db43231dcaceeb5d8396e6a5c2ce00ad45a5bc7c5307648af447c3c9` |
| 31 | `theorem` | [Periodic.nat_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-nat-mul.md) | 202 | `result-track:a84c1fcaddc101f1588354fd703f7dfe8552086440a9b75be19c36461644ff9c` |
| 32 | `theorem` | [Periodic.neg_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-neg-nsmul.md) | 206 | `result-track:e0ca66601e233f8380ac16577462900f002c6ce19b25bf1a6561913c9db4a86a` |
| 33 | `theorem` | [Periodic.neg_nat_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-neg-nat-mul.md) | 210 | `result-track:18399b6d6470921cb06fa22428adc5ddafe1cc1e7967a9ea78b6aa894e2dd6e5` |
| 34 | `theorem` | [Periodic.sub_nsmul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-nsmul-eq.md) | 214 | `result-track:293b5bfa184d9b3382237a34b5dcbd8d13d03bdb283b139d132c1d219efe8025` |
| 35 | `theorem` | [Periodic.sub_nat_mul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-nat-mul-eq.md) | 218 | `result-track:5700d1f6fb3e2d6d5e85b8c45f5a316b2167d7a1809cdd7dc5ab70ba1734ebe2` |
| 36 | `theorem` | [Periodic.nsmul_sub_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-nsmul-sub-eq.md) | 222 | `result-track:31c118528e345cef1721d0fe88b2b30d9a5f05938f279db097018cb79fa12389` |
| 37 | `theorem` | [Periodic.nat_mul_sub_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-nat-mul-sub-eq.md) | 227 | `result-track:1e3089ea20d504eeac20ef48b3b24e299fdbad49d86d4c436caf5dbdb59ac652` |
| 38 | `theorem` | [Periodic.zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-zsmul.md) | 231 | `result-track:fe6878461dd003842cf885fb1c05ec19ac68a8e78806cfab366c9ea8b03e4625` |
| 39 | `theorem` | [Periodic.int_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-int-mul.md) | 237 | `result-track:45b0b5f1100b41ac38c7529663494fdd1317f608c07a3cfec987a987a2e06654` |
| 40 | `theorem` | [Periodic.sub_zsmul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-zsmul-eq.md) | 241 | `result-track:0a7177854529901fe7595aa1e9002c1b866e69b5eaec1bff55b83f79d1a7e244` |
| 41 | `theorem` | [Periodic.sub_int_mul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-int-mul-eq.md) | 245 | `result-track:864f8e9166e95fefdfd6338216784cba26a4f6bf69b379a76d304819b934510d` |
| 42 | `theorem` | [Periodic.zsmul_sub_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-zsmul-sub-eq.md) | 249 | `result-track:e448958b3732e3cc00341855ed7a4332c17178e238e31f4b7757a6d070044344` |
| 43 | `theorem` | [Periodic.int_mul_sub_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-int-mul-sub-eq.md) | 254 | `result-track:641bd8205c437e62b25fb766c94efd7969d8e1930bc0d6c12ad7df8bcef44d0d` |
| 44 | `theorem` | [Periodic.eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-eq.md) | 258 | `result-track:ba9263e6c958c32e6fe7336a73ece21dec6d603fc255979fcc1e78b262922a65` |
| 45 | `theorem` | [Periodic.neg_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-neg-eq.md) | 262 | `result-track:c4db3a92bf508d33dcf999140c7a1deae418918de1ff76fbbfd1fa086457f789` |
| 46 | `theorem` | [Periodic.nsmul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-nsmul-eq.md) | 266 | `result-track:80901a4137fe91c374d8d60015d973815c8760e2c6b4b7d677306fedf70a9f83` |
| 47 | `theorem` | [Periodic.nat_mul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-nat-mul-eq.md) | 270 | `result-track:66167a36372b67805f33bf9c8c7870d619c37d58fc8fec21a10878e26f6f86ca` |
| 48 | `theorem` | [Periodic.zsmul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-zsmul-eq.md) | 274 | `result-track:1b07da9deeadbcb7b7441696aa55df6d0cb4818139f0134bd07d2ed84a39180b` |
| 49 | `theorem` | [Periodic.int_mul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-int-mul-eq.md) | 278 | `result-track:cf072411446a6a65d0ee3fb28818c97da326b8e1eeba1a03bf69e2b81a0ed90c` |
| 50 | `theorem` | [Periodic.exists_mem_Ico₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-exists-mem-ico-source-edition-2.md) | 284 | `result-track:dd19ee0e26286371c6b1300fc3659a6463d5e4e6e48d03a04741d6514b0c20ec` |
| 51 | `theorem` | [Periodic.exists_mem_Ico](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-exists-mem-ico.md) | 292 | `result-track:5f1c6fceb3f6a91bcfa5f7d9bee5d4e53b8a73992a7c18ddcfa1aa8dd6c810c4` |
| 52 | `theorem` | [Periodic.exists_mem_Ioc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-exists-mem-ioc.md) | 300 | `result-track:360cce7cf91fdfade382c119470ab0338ca3eac691b119de5bebb8f80ca90126` |
| 53 | `theorem` | [Periodic.image_Ioc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-image-ioc.md) | 306 | `result-track:999ef11ece9b1cea4f271c65e12df09b30050c6a7b09e298c9acfaf540c03c73` |
| 54 | `theorem` | [Periodic.image_Icc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-image-icc.md) | 313 | `result-track:eae5a04c29a61e6803b8c41cd69c62b0f3376d856b8e6dfb1bf362b2a53c2a69` |
| 55 | `theorem` | [Periodic.image_uIcc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-image-uicc.md) | 317 | `result-track:6fc1b7d1ef972a1b660e8f09d41ca8e32cf21bee24f5d2e10444c4c434164169` |
| 56 | `theorem` | [periodic_with_period_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-with-period-zero.md) | 325 | `result-track:ac83ee2af0db4c5d5caa023247e983e05c71d92f67334210ea4aa0d4850dd88a` |
| 57 | `theorem` | [Periodic.map_vadd_zmultiples](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-map-vadd-zmultiples.md) | 329 | `result-track:f25f59b0f0ced636da73bbe17d68b9b82b348cf3385548ab3228456ef5feb96e` |
| 58 | `theorem` | [Periodic.map_vadd_multiples](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-map-vadd-multiples.md) | 335 | `result-track:e799fcb42456310a830a40af235c620ad5488748b2b5fbb76f567185b5de2f2f` |
| 59 | `def` | [Periodic.lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-lift.md) | 342 | `declaration-track:35a26248b471c8be3a3098064ff87c5e9ecedf5601d3b65236019922e46f1b0b` |
| 60 | `theorem` | [Periodic.lift_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-lift-coe.md) | 350 | `result-track:0605174fd3128c8f8fd411f3d30bb2e3218050622ec2bbad67b0f2cb878e1608` |
| 61 | `def` | [Antiperiodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic.md) | 360 | `declaration-track:421c845af824ffdc9436182b33731463daca1e3546b6da62a400c79a2fe1890f` |
| 62 | `theorem` | [Antiperiodic.funext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-funext.md) | 364 | `result-track:07184a2d1bb1dc8d95c2262caf96ace06a319c2086046d7547052b2b43307522` |
| 63 | `theorem` | [Antiperiodic.funext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-funext-source-edition-2.md) | 369 | `result-track:a1d861dd9a7e2eb83d4dd796b66fb0c5b291b7209890fc97a866111bf8a0e231` |
| 64 | `theorem` | [Antiperiodic.periodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-periodic.md) | 376 | `result-track:90a571a01fe6d27cda0e45a3a298b2263fa1174c21ce9f51f1a5e646da07a55c` |
| 65 | `theorem` | [Antiperiodic.eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-eq.md) | 380 | `result-track:c4626014cd3b999200e2c267a08b96e103f604ee3d3c6fc9e263899916de051f` |
| 66 | `theorem` | [Antiperiodic.nat_even_mul_periodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-nat-even-mul-periodic.md) | 384 | `result-track:978a3125c82ca9ef5b1fb03ed7e23477a9667f934d3f1fd2a1b25f81bb526d60` |
| 67 | `theorem` | [Antiperiodic.nat_odd_mul_antiperiodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-nat-odd-mul-antiperiodic.md) | 389 | `result-track:bc81fadac7e463f9c6b77dc4708cc58a9ce14883e65049ff245abfa63207a2f6` |
| 68 | `theorem` | [Antiperiodic.int_even_mul_periodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-int-even-mul-periodic.md) | 394 | `result-track:5e6e4ae0452f7a260c30293a3552b4cc1d4d3ff99dd01902f5b2ea0065c04435` |
| 69 | `theorem` | [Antiperiodic.int_odd_mul_antiperiodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-int-odd-mul-antiperiodic.md) | 399 | `result-track:ef9a15856cbc0e335d9fdec5811d9d853d56cf74a49f365e6bd32889243f479e` |
| 70 | `theorem` | [Antiperiodic.sub_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-sub-eq-source-edition-2.md) | 404 | `result-track:ad2998285c71c9980cd063c1bf160e2b7310c42bc6e064b2fbc4f2041a645eff` |
| 71 | `theorem` | [Antiperiodic.sub_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-sub-eq.md) | 408 | `result-track:1c33e72c990583c6a764c535be2a7d60e2ae9cde250ffab22c63cee55747a5f0` |
| 72 | `theorem` | [Antiperiodic.neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-neg.md) | 412 | `result-track:c7bcd89f975cc52321bee105a3373697e0a24f7f10410d62bf7852320cd7a74a` |
| 73 | `theorem` | [Antiperiodic.neg_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-neg-eq.md) | 416 | `result-track:98e56328dae10a972733acde66fbfd90e4221a829a01f5a37739078538d41cc9` |
| 74 | `theorem` | [Antiperiodic.nat_mul_eq_of_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-nat-mul-eq-of-eq-zero.md) | 420 | `result-track:56c5fd9e78bf3323c16b551c1cdc8d984a8c778e89420b58875fd0e25d4a2a2f` |
| 75 | `theorem` | [Antiperiodic.int_mul_eq_of_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-int-mul-eq-of-eq-zero.md) | 426 | `result-track:c084f28990015524d1186ecb14555f1239f172c1dfbc87f07bae657303b5f83a` |
| 76 | `theorem` | [Antiperiodic.const_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-add.md) | 432 | `result-track:700ac3075df3960d7d0843b16edd93aa997b6027f6f8f5bc8982642b662fba5d` |
| 77 | `theorem` | [Antiperiodic.add_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-add-const.md) | 436 | `result-track:c88d12d6e721d786ef63d41431f341fe9c70b7269373ad808e00a14d71ce385b` |
| 78 | `theorem` | [Antiperiodic.const_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-sub.md) | 441 | `result-track:87916e2b36a502290e54dbe6a0baeff29eef9aae99c3e3d2914b7a84a1afc9e8` |
| 79 | `theorem` | [Antiperiodic.sub_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-sub-const.md) | 446 | `result-track:d31218195b2a95fc3a7a6755b1bb6ac8a9651af90566ba38dd1422d0c2dafc25` |
| 80 | `theorem` | [Antiperiodic.smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-smul.md) | 451 | `result-track:ca4bf3e31a381f92b8601c153a997bc17744e45bb30246578761dcad86918f61` |
| 81 | `theorem` | [Antiperiodic.const_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-smul.md) | 455 | `result-track:288633e9a73a9780836f592d0ecb4a360c538e91988dda732dcfacaec3f22ffb` |
| 82 | `theorem` | [Antiperiodic.const_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-smul-source-edition-2.md) | 460 | `result-track:88c2ebf37b22838ccf74ab7608d8316319bf2d63475e02b212857bb81ce21d12` |
| 83 | `theorem` | [Antiperiodic.const_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-mul.md) | 465 | `result-track:42d3362f7b70c58d8bcc7ddde1f33486e166710a7fa5f7563d3b0d2d825bf832` |
| 84 | `theorem` | [Antiperiodic.const_inv_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-inv-smul-source-edition-2.md) | 470 | `result-track:eeb078a31598d396d2cfe324cd6fc778b7b320e04f08c33b2c2a9f02d7698bbc` |
| 85 | `theorem` | [Antiperiodic.const_inv_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-inv-smul.md) | 475 | `result-track:079f13dccad19c9f9714100daa8c3192bb705a45c0b7af2eee8b46ea1427e0df` |
| 86 | `theorem` | [Antiperiodic.const_inv_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-const-inv-mul.md) | 480 | `result-track:544115018424db93059609464c0b070e7ea0f4925ebc7d3d54fd8b443ce92872` |
| 87 | `theorem` | [Antiperiodic.mul_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-mul-const.md) | 485 | `result-track:08c23e3e2395c7309b5f0fabfa0b2f1f1f9aa0eac5426dbf43b43bb306d0e0eb` |
| 88 | `theorem` | [Antiperiodic.mul_const'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-mul-const-source-edition-2.md) | 490 | `result-track:3d4aaa8af45a1059bd60b7ebbfc5a73892b2b514b102a1b79f78a6f2bc7e58ac` |
| 89 | `theorem` | [Antiperiodic.mul_const_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-mul-const-inv.md) | 495 | `result-track:6c948224f8429ac10cded250b00afb945eb9b676ac3c8b24577e36bcb30b8590` |
| 90 | `theorem` | [Antiperiodic.div_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-div-inv.md) | 500 | `result-track:362d0a851d4f05e0f414e8aeac4608d2c86e794a599d1d7a8222f71e261ee215` |
| 91 | `theorem` | [Antiperiodic.add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-add.md) | 505 | `result-track:c8027f728c66dd6be78d8e567a5ce7adc6324d5e9bfe2da54aab84bca4de61a9` |
| 92 | `theorem` | [Antiperiodic.sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-sub.md) | 509 | `result-track:679a1b32118c20db48294ad66f0935cb20067622e3b456e3a5ff76e69e67aed8` |
| 93 | `theorem` | [Periodic.add_antiperiod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-add-antiperiod.md) | 514 | `result-track:453fddf5636db920cee541c9fe1c4e117f96256c82d6271b82f48bf5d5d77604` |
| 94 | `theorem` | [Periodic.sub_antiperiod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-antiperiod.md) | 518 | `result-track:02e8e433fa82bbc68358acb6379b2c9d800ea66d64f5ba4b1db44001bf802ed5` |
| 95 | `theorem` | [Periodic.add_antiperiod_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-add-antiperiod-eq.md) | 523 | `result-track:3da07eefbadb09c9d927be57dc16c4d84847f716536b6b562e22434b2dd7ea4a` |
| 96 | `theorem` | [Periodic.sub_antiperiod_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/periodic-sub-antiperiod-eq.md) | 528 | `result-track:8b79dce29cd65b481c3a3322697d40ad3a2a4471b04fe3ea528718f0887c047b` |
| 97 | `theorem` | [Antiperiodic.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-mul.md) | 533 | `result-track:21e21236bb32070ae4250dfecc56df3ec81fef0a3244da0f593a80b87584cc4e` |
| 98 | `theorem` | [Antiperiodic.div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/antiperiodic-div.md) | 537 | `result-track:cae77176ba9894d6f865e376c5f5359e943357e81162c9304ab7d0d381898754` |
| 99 | `theorem` | [Int.fract_periodic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraPeriodic.lean/declarations/int-fract-periodic.md) | 543 | `result-track:a547bf4025d0cd76d8e91a7a87ebf89dc20bfb82b94796ab8ba0d83b88696ab4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=118e747e9fa6a8d4b28e5885639ffafe1be580112e81a77c5fce7fb1f05589f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Periodic/Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
