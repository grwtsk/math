# Verification target: PSet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16d632dc8fce38047492758c7284ac6da18863fa",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant0306942550dde362bb1dbe9226fbaf8d42665ab649efbd1e521b45c0774be759.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16d632dc8fce38047492758c7284ac6da18863fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant0306942550dde362bb1dbe9226fbaf8d42665ab649efbd1e521b45c0774be759.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant0306942550dde362bb1dbe9226fbaf8d42665ab649efbd1e521b45c0774be759.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/pset.md) | 35 | `declaration-track:401b471568b905a05e25d88c8ed74167b10ddbce01910ca994d26c180359f8af` |
| 2 | `def` | [«Type»](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/type.md) | 41 | `declaration-track:bcfd1c952b46447c9183c693e8232e2a8035c44e78a1df706f6ad2a69b82b825` |
| 3 | `def` | [Func](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/func.md) | 45 | `declaration-track:b0245abeb0d0767aa5ef0e6b969314802362337cfbe6b5cc4f6000f7a9051cf4` |
| 4 | `theorem` | [mk_type](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mk-type.md) | 49 | `result-track:23eb78393fe7acec2db30ec85d6d14ee4cff326061ee918efcf691bfd5a15687` |
| 5 | `theorem` | [mk_func](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mk-func.md) | 53 | `result-track:b7ce7dab8d2766bef72275d4c323e3481e5e9b58a773fa6271e3e258514037d6` |
| 6 | `theorem` | [eta](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/eta.md) | 57 | `result-track:75927abeded248bcea0ef15ba7b35944f2be6b4578ff4dedaed872f881b6303b` |
| 7 | `def` | [Equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv.md) | 62 | `declaration-track:77db43aa734c1b656294478987025ae554c4f661d7880bbc2d30c56a16e5a1d8` |
| 8 | `theorem` | [equiv_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-iff.md) | 65 | `result-track:a4c240c3807cef798e36ad26da6bcfbd4fcaf64b0634c1f340b0239b1176a5c9` |
| 9 | `theorem` | [Equiv.exists_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-exists-left.md) | 70 | `result-track:382baa6cfa865ff076ad32fe1b58d224b1c0ba5d4a94749102bd299cd6ae242f` |
| 10 | `theorem` | [Equiv.exists_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-exists-right.md) | 73 | `result-track:1c0d447ea81fa17e125198079b974e6d0ce8c623c52d0447734e089d0d5e4a89` |
| 11 | `theorem` | [Equiv.refl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-refl.md) | 77 | `result-track:0e5815ab616d55439969747fab5978ef4dfaf48508fb0c14699a1d15b7589c8a` |
| 12 | `theorem` | [Equiv.rfl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-rfl.md) | 80 | `result-track:b3ea63586bf3d78fcc875475abf7644597534c7c45b079173982682cf85c502e` |
| 13 | `theorem` | [Equiv.euc](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-euc.md) | 83 | `result-track:ef671fd35bd11cf4f2142bffa190172cb8b0cc549197341aa0e7f3aa3939a8f8` |
| 14 | `theorem` | [Equiv.symm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-symm.md) | 95 | `result-track:f261f93b825623ee107f08a8d660cbe8f329c83e74220ead0852976e9ef32ffa` |
| 15 | `theorem` | [Equiv.comm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-comm.md) | 98 | `result-track:68dc83923e4a9f3b7d31b2280a18f87bf703ee126f80a0f485ff0caca5e05697` |
| 16 | `theorem` | [Equiv.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-trans.md) | 102 | `result-track:1e1e369da0544382220ef18ddc191e90e2077f181e0f86977efa8cbfe4cb4804` |
| 17 | `theorem` | [equiv_of_isEmpty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-of-isempty.md) | 105 | `result-track:df7b4cae2b5bc3115108c40342d5bb40945967cf1817536b6cdd1ed55ce46c4c` |
| 18 | `instance` | [setoid](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/setoid.md) | 108 | `declaration-track:1d3f83bb2e3268f96b37dc61d744f0b5fcb77b8b3635558bdda2dbe235ea32ab` |
| 19 | `def` | [Subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/subset.md) | 113 | `declaration-track:11b5c1d3b5c2f8baa06d7bbc097f2709605b845fd0e2aacb1f9a263fddbd534d` |
| 20 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-9.md) | 116 | `declaration-track:563ac554f96954fecb7655e61232e07dda3e9c891816162292b13775fb382c65` |
| 21 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:21c337e468468f3e9628c835f5145e5f503c3c7e436d7885f4818517d85a2ee2` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-14.md) | 122 | `declaration-track:ba397630866f508a4c0fccead561940ab5f759be4df2eed381543e9cc5f8ca20` |
| 23 | `theorem` | [Equiv.ext](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-ext.md) | 128 | `result-track:0324706e943f7acd3102ceef6fbc3494a048d4ed4b3d58a17dd9217a95aa3819` |
| 24 | `theorem` | [Subset.congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/subset-congr-left.md) | 139 | `result-track:66c919fb08e5d633a94a82385afc71af99d93c8186f38e970be528f49b39525b` |
| 25 | `theorem` | [Subset.congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/subset-congr-right.md) | 150 | `result-track:af2c00fce6ec431a0924ecc236f9322ebbb45871880fcf145aefe49aaeb080b2` |
| 26 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-5.md) | 161 | `declaration-track:302c1cd9eff40a8543ec87e8d99bf78c51d2ba18a7ff4fd88b72de8e698eab95` |
| 27 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-3.md) | 166 | `declaration-track:29bcf688c906549b36b193a1d46f29e32f60dd7b049225bb178a3aae589ddf63` |
| 28 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/le-def.md) | 169 | `result-track:1408d3ddca903ba229db88c47fc66bcf289fa82deb6435bfd23069d16470c140` |
| 29 | `theorem` | [lt_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/lt-def.md) | 173 | `result-track:31e98ae8f0f17fb562111bb66eb6d3264957f663e981deea8ae1f6c0085ec151` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-13.md) | 176 | `declaration-track:b70e2554ab60642e092c69b91622067758110cec9d36dd83e1913c2ff34e95f6` |
| 31 | `def` | [Mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem.md) | 180 | `declaration-track:4bdc76b2c306fb1056e51de8743464fe7862e3b752c788df3631e17beaf30f3a` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance.md) | 183 | `declaration-track:1e3efc96df0bfc06423260ec7c0d0cd524b7248d733aa51ba0ba252c39c4c749` |
| 33 | `theorem` | [Mem.mk](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-mk.md) | 186 | `result-track:35d284d9ce1ddd85df5edd1e77ef5c362ed2e04a8ef245312c8735ea8369a43d` |
| 34 | `theorem` | [func_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/func-mem.md) | 189 | `result-track:990daab9301720e9eb8cf9c8840478d216045a98e0e0fd4d45e6834bea3eaffe` |
| 35 | `theorem` | [Mem.ext](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-ext.md) | 193 | `result-track:b056b0335e30f2640fb29ad052f66ed633b3203e53a449f1f7e743e123c35747` |
| 36 | `theorem` | [Mem.congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-congr-right.md) | 199 | `result-track:77e25321f4b33a3740372bf0436ba0d50e885abfdc4f021888574c60a61d6907` |
| 37 | `theorem` | [equiv_iff_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-iff-mem.md) | 208 | `result-track:d7d09e01e6474caeded9050515b978b1571090e1e7b7cc874a38515e0ac42bc6` |
| 38 | `theorem` | [Mem.congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-congr-left.md) | 216 | `result-track:591b67bc8b74fd80c8b883b04ac5ad7ebab610ce06f748a14a9ceabf436a474d` |
| 39 | `theorem` | [mem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-of-subset.md) | 219 | `result-track:648391b0f78e0d9fe69a4d2726bca9642f42173aabea107d4f743b216ad3b186` |
| 40 | `theorem` | [subset_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/subset-iff.md) | 222 | `result-track:1f06f71ab84110d597cbed5ae12e0c015f385596c537bc2f302740631f42d0ed` |
| 41 | `theorem` | [mem_wf_aux](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-wf-aux.md) | 225 | `result-track:c95281febf89bafe07fb1f25c460cb0fc5190e80eb6fc226585901c6b79a4e90` |
| 42 | `theorem` | [mem_wf](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-wf.md) | 234 | `result-track:348a575531456b51adc8ec21f1c27f525a143b987cc98b22771af97a3ee1fec0` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-6.md) | 237 | `declaration-track:35932e6dee82771c7a1f0ddf54678e3dfebec8d883c137af4c43e7039941072d` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-4.md) | 240 | `declaration-track:2ef211dffa77e3786b4e89c0f70993f7b0c6b603853a86819b5ff463f998431f` |
| 45 | `theorem` | [mem_asymm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-asymm.md) | 243 | `result-track:abeead9b7ff9ace51430353cc353ed00356456c35e5fd0ac22a095d9a0b6fe21` |
| 46 | `theorem` | [mem_irrefl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-irrefl.md) | 246 | `result-track:1ab9975fd5c81a415a66b817a3e0212a33e9a79b8a0523c250fad17b8d3a7f3b` |
| 47 | `theorem` | [not_subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/not-subset-of-mem.md) | 249 | `result-track:b451a78093644ec6d4d03966c78230ccaf616b6e63d375567ec3118e59a5f1f8` |
| 48 | `theorem` | [notMem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/notmem-of-subset.md) | 252 | `result-track:49e7a86a27a1c0b8e16f2dd62c5c0c82da690bb707c56909f8be042e26d3eb49` |
| 49 | `def` | [toSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/toset.md) | 258 | `declaration-track:d91ec75111eb73d4ec74d740bae0d5eb490e90598d275d80bd0ade7634d1f51f` |
| 50 | `theorem` | [mem_toSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-toset.md) | 262 | `result-track:2874bdaa4e7bc4a6683f65a33f5d4ddf1b1004f5b67e8b7e9190dd9bbedf5105` |
| 51 | `def` | [Nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/nonempty.md) | 266 | `declaration-track:365012e19c853ab1fe8827ec8aafaf5960ad922323e0bb8f3208121e3cde2ab4` |
| 52 | `theorem` | [nonempty_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/nonempty-def.md) | 269 | `result-track:5fe3644a2a45125c8a7c40a924b208836e3cf12e7305fd6ee84e518146881d03` |
| 53 | `theorem` | [nonempty_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/nonempty-of-mem.md) | 272 | `result-track:c22f11ef21baf6aca16de12dbc48a3377f49f48915a5257c3bd9cf90ead849a7` |
| 54 | `theorem` | [nonempty_toSet_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/nonempty-toset-iff.md) | 276 | `result-track:f6c0f2063d8024b0e1522ee63ecb72a5b9c8d4a8ce6328befd6c8744c9ad7958` |
| 55 | `theorem` | [nonempty_type_iff_nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/nonempty-type-iff-nonempty.md) | 279 | `result-track:7053b7a842e6a1e497c578b0fd7b1c834ffb616aaaca1cce97f82694c387b0f7` |
| 56 | `theorem` | [nonempty_of_nonempty_type](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/nonempty-of-nonempty-type.md) | 282 | `result-track:974daba301eab7d199c91acb35b4c6975a50cc19485659776f9a3c7c4f6bfe8c` |
| 57 | `theorem` | [Equiv.eq](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-eq.md) | 286 | `result-track:0e39c9650d7162327978f40e043b41f31c86db92a48a1a079bf443e8ce6c3cbb` |
| 58 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-8.md) | 289 | `declaration-track:47c9bb0b9f3c561fcd09d2507e32e804eecd39f0796223278730affc384aed47` |
| 59 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/empty.md) | 293 | `declaration-track:1fcfa6d595ac90964660d0a122c16391f1d7d2a739fcf05a1e237a19a4b18135` |
| 60 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-18.md) | 296 | `declaration-track:f11c80e84930a279570176cb47ed518513be76ed8fde1ec9a89af9ea8b0fb706` |
| 61 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-16.md) | 299 | `declaration-track:d6d33c8ec140cd2c23eee72c3db9c52bd5379e254457c0839ba202a09edf046b` |
| 62 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-10.md) | 302 | `declaration-track:833b753944b539b46e804debc91006059b7695c3de65c6797b620a6a5041fab4` |
| 63 | `theorem` | [empty_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/empty-def.md) | 305 | `result-track:b21a5c03ae9541479d40e7f03f4270aff2d7ce6a93688573e8277c08dbfee226` |
| 64 | `theorem` | [notMem_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/notmem-empty.md) | 309 | `result-track:a0069cd99a7890d37b9ea5f3dd786d1a3f52796e4ca25f8e03ff1622cdb9f5ed` |
| 65 | `theorem` | [toSet_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/toset-empty.md) | 315 | `result-track:db8c91139655f508cfa1bcc68a32edd7d5f434831500ed9b42f68d695d83f746` |
| 66 | `theorem` | [empty_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/empty-subset.md) | 318 | `result-track:45d4ca9c27a6cbd64d709d00a7a6591cb021990d313aa4b87c0ffa90ed9fde90` |
| 67 | `theorem` | [not_nonempty_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/not-nonempty-empty.md) | 321 | `result-track:1454620e8f594ac743c4b2d758099df5e68263fa4de8b183bc201b750c8d644b` |
| 68 | `theorem` | [equiv_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/equiv-empty.md) | 323 | `result-track:b00248938518d3edb50852868b9b9d690b1e7c1f5e92b35f7caf668b7bbe85db` |
| 69 | `def` | [insert](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/insert.md) | 327 | `declaration-track:34e5351ce397022037143d95c2291918ec572280b6ca6cd73ab3ce7901254b80` |
| 70 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-11.md) | 330 | `declaration-track:9b63a5c0732164ca1c8ac38fdc421c0498cdd742efb635115224553b86ef07e4` |
| 71 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-17.md) | 333 | `declaration-track:eb68c068c3a67d387c81784bf21f455929339c1ac00379fec8a6d7a27a03a37d` |
| 72 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-7.md) | 336 | `declaration-track:3ea74f14506cb5901c6e92009b88e13ad302e463c31f91fa2119438bf028aed1` |
| 73 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-12.md) | 339 | `declaration-track:9cb8010e33dfa6f0d6437d4aa48314feed090b9f7075322ea7e4bdf1e6c0f769` |
| 74 | `theorem` | [mem_insert_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-insert-iff.md) | 343 | `result-track:eae73adf4cf0c863f72a47ed8a750169dda93860de61e93ad7236834e412ed63` |
| 75 | `theorem` | [mem_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-insert.md) | 355 | `result-track:9a1fa63e0af85d554b8d65ff412bbb28775cd3c2b19d3e5ae3c028f01bf8999a` |
| 76 | `theorem` | [mem_insert_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-insert-of-mem.md) | 358 | `result-track:5c3c5217005089a3a3570ec2593678218fb6331f2f5a485e99852c685b23e518` |
| 77 | `theorem` | [mem_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-singleton.md) | 362 | `result-track:ef3d5a29ce73c4ee4ceea2514e145ec4d93f485e338c9b14003d63e44b79ae80` |
| 78 | `theorem` | [mem_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-pair.md) | 366 | `result-track:64ac9aee1d234c819e4dacd04e0a70be7a05e8ae1ecb85baabaefe5c8563a97e` |
| 79 | `def` | [ofNat](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/ofnat.md) | 370 | `declaration-track:a01dedf0ace96fb2737a5d16472695b6e93a738c295eec9d1d01c3b5960d88db` |
| 80 | `def` | [omega](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/omega.md) | 375 | `declaration-track:c2cc9662af302f5df842d0913582b9e454f0ca96cf9317d3815a94c019652dc7` |
| 81 | `def` | [sep](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/sep.md) | 379 | `declaration-track:78a24104f0598d322900d9d13bb1f8405679b18689de5f93cb818409432cb184` |
| 82 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/instance-source-edition-15.md) | 382 | `declaration-track:c417cd72ef6cd41d6a9e805745c3e9487b43d29ac021f37b64361350bb584e98` |
| 83 | `theorem` | [mem_sep](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-sep.md) | 385 | `result-track:e48330aaf6cf384f804c9f67996410b2889c038a6846e55356087eb188e63e63` |
| 84 | `def` | [powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/powerset.md) | 392 | `declaration-track:3b9be7517d42d50c9167cb0df4677e31ae602b5e049209e6402f7175efc43ea7` |
| 85 | `theorem` | [mem_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-powerset.md) | 396 | `result-track:5e9fd898ef991816429f43fc94502d2a0e00c1c7eecdb7b4a72ca9fc3ab66872` |
| 86 | `def` | [sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/sunion.md) | 405 | `declaration-track:bd221df2af93d7a4a32de6df3b8277202a69b100d2ad05fafba593a4df40e91d` |
| 87 | `theorem` | [mem_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-sunion.md) | 412 | `result-track:dfe98cc3e9a907e41ffecbe5857e01b200e2fc1b25ca4f3dfacfe87ad3a493cf` |
| 88 | `theorem` | [toSet_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/toset-sunion.md) | 425 | `result-track:3cba22931df914ef7a903e8d3e8fa048dc5873e8d85d1651dc210aef32a0a582` |
| 89 | `def` | [image](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/image.md) | 430 | `declaration-track:99a22b5ef8b3bc920b325882a34351ffcbb96afb7bf689e6752130225ef9c0d0` |
| 90 | `theorem` | [mem_image](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/mem-image.md) | 434 | `result-track:bf1467a5626b9ef2e884c80639718813c731b87872167d0e2518b81400d03e67` |
| 91 | `def` | [Lift](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/lift.md) | 440 | `declaration-track:dee5100255beefbee76ddb2a69769ff2e80a70b9377498f32754d7969ffbcb34` |
| 92 | `def` | [embed](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/embed.md) | 446 | `declaration-track:c681efd75568ab1454f1e5fe6f7da0afac649390b4027ed36ca5d56887a44f8d` |
| 93 | `theorem` | [lift_mem_embed](../../../../../MathematicalLogicAndFoundations/SetTheory/PSet.lean/declarations/lift-mem-embed.md) | 449 | `result-track:58cba2e1dbf27124ed1ed0906b7b9c73cc7754fdd520feed7cba6f12a990c084` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3065f821c016a96c8fed4eab8ff656819afcb132b49252c9d7dc392ebb0edfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant0306942550dde362bb1dbe9226fbaf8d42665ab649efbd1e521b45c0774be759.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant0306942550dde362bb1dbe9226fbaf8d42665ab649efbd1e521b45c0774be759.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
