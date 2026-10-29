# Verification target: Subgroup Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Inclusion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [InvMemClass](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/invmemclass.md) | 62 | `declaration-track:65173a05c8825270def9859697e764782c397a50deef59e494a67a74a989a70d` |
| 2 | `class` | [NegMemClass](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/negmemclass.md) | 69 | `declaration-track:14c1719fb51977e262ff1a057a113296777e9d39e58b21cc3d45ee4fc807a734` |
| 3 | `class` | [SubgroupClass](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subgroupclass.md) | 76 | `declaration-track:8782346a8f376de0a7952f36f193e1b11963689be6156bb50901e9ca88f5d691` |
| 4 | `class` | [AddSubgroupClass](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/addsubgroupclass.md) | 81 | `declaration-track:ad98cbc7d72dcd7278dbc96372ce2b7969972cdbf02ffa8cbb5278a86409c8b0` |
| 5 | `theorem` | [inv_mem_iff](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inv-mem-iff-source-edition-2.md) | 89 | `result-track:a24be29e39be57b451623988981c6815f3525d251d47ed7a924b7cf913919f86` |
| 6 | `theorem` | [div_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/div-mem.md) | 98 | `result-track:269979bda7edbb93d5a9d960f5be7becc7309fa11311e78a5251a6e38a2e6474` |
| 7 | `theorem` | [zpow_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/zpow-mem.md) | 102 | `result-track:6f7415eacff1bd304f1a22168b23f146f3e48ea2345b2422707729ba0ebaffc8` |
| 8 | `theorem` | [exists_inv_mem_iff_exists_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/exists-inv-mem-iff-exists-mem.md) | 113 | `result-track:9d1c1606dff1a62a86ca4455b28782fe42565d4e18b783f0d1b16b5807f2c924` |
| 9 | `theorem` | [mul_mem_cancel_right](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mul-mem-cancel-right.md) | 120 | `result-track:159c5289ab9d61852c15ca6ec71bb3f48169b5754c2431943cfe2cd03d8721da` |
| 10 | `theorem` | [mul_mem_cancel_left](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mul-mem-cancel-left.md) | 124 | `result-track:3eaa345e5c1f9a4f7e2f19c10948961905fa05db3b5d393746566190998c39a5` |
| 11 | `instance` | [inv](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inv.md) | 131 | `declaration-track:33d70ed2527721c3d29e69049d46a2100c543322ef8736d725e02bdc7e753b74` |
| 12 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-inv-source-edition-2.md) | 136 | `result-track:91f2fd53cb368a7b027577cb9112eeabeee6517191d0e2dfea0b64ddff4b626d` |
| 13 | `theorem` | [subset_union](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subset-union.md) | 148 | `result-track:b3a9b73e535107b03831f06822193f7faf981e77c4d290d7d5495bfb82b36026` |
| 14 | `instance` | [div](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/div.md) | 157 | `declaration-track:cca8aa5bd6e9a10547b516ac17ef78ee0aab78582545bfb2b843a50495756b14` |
| 15 | `instance` | [_root_.AddSubgroupClass.zsmul](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/root-addsubgroupclass-zsmul.md) | 162 | `declaration-track:b44c4559f1b42dcc1e97a5447d227952c0ac8aba1055c93772b8d7296dfce9cb` |
| 16 | `instance` | [zpow](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/zpow-source-edition-2.md) | 168 | `declaration-track:d1c04366feeaeadaecc9247306b6c41201629758970b5e64e245428ea0268f9a` |
| 17 | `theorem` | [coe_div](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-div.md) | 172 | `result-track:1d1bade243f1c4f3e7e142815cbfe2f6efc31fe27aff38fd91240f60eed2cf23` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/instance-source-edition-4.md) | 180 | `declaration-track:92883de85f6f50366efe13cc88d4e8fe811d3d6157e25223914fb0dceeca7bdf` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/instance-source-edition-2.md) | 187 | `declaration-track:29d15dde3aaf49cfd64a3a9b612affc965e42045b789a13ba41f46918eb05fbd` |
| 20 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype-source-edition-2.md) | 195 | `declaration-track:c857f05cbecf23ecfaf9c1a3e2fe552ec6707a34d0e721a916292dc2c9bda47d` |
| 21 | `lemma` | [subtype_apply](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype-apply-source-edition-2.md) | 200 | `result-track:6c1d600c8bb001520e107e708dfb7c2d3db939c524bca85e6f36f697c7774fd2` |
| 22 | `lemma` | [subtype_injective](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype-injective-source-edition-2.md) | 204 | `result-track:8df53e5f25d44dabdc66cb3116f30da6ad97803c77600e7e347c8085b50f0417` |
| 23 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-subtype-source-edition-2.md) | 209 | `result-track:ca1f07c41beb0da56382c2a4437ce5130169e3ed68bd6445e4f739534a6c2561` |
| 24 | `theorem` | [coe_pow](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-pow.md) | 220 | `result-track:0a58e7ea67111215815dd4ed9cde516155dcf0f6925f90eaa233a1426bc9f45e` |
| 25 | `theorem` | [coe_zpow](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-zpow-source-edition-2.md) | 224 | `result-track:d54838ca4a6dfa6a15527091bb321f57a083be40a28ca7f51fcc746263ac80bf` |
| 26 | `def` | [inclusion](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion.md) | 229 | `declaration-track:5e3116e725a4eb4dc4f2a16b84d016d774d38d980d674d48fc8e584e614b1c61` |
| 27 | `theorem` | [inclusion_self](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion-self.md) | 233 | `result-track:a7808c7c219ff8759141085272a43ec1e13a82c8d08da972b5bd95bf0ced318d` |
| 28 | `theorem` | [inclusion_mk](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion-mk.md) | 238 | `result-track:a76484ce9a1537da97113bd1b97081f9e8acdd873291a775ddef41b5ef2da982` |
| 29 | `theorem` | [inclusion_right](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion-right.md) | 242 | `result-track:d9ba846c40ae763fa9dd1744487b4ca4a9ce259536a205f3cf50fb6e26f10210` |
| 30 | `theorem` | [inclusion_inclusion](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion-inclusion.md) | 247 | `result-track:51dfd19df1e753689382c0206d20bded82e35f6ad085bf9704f7c0a493fb753a` |
| 31 | `theorem` | [coe_inclusion](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-inclusion-source-edition-2.md) | 253 | `result-track:46ee35ba25ce52d67ce8b59a560e28579028dc0e49aef0e4cfda0e0da9778c9f` |
| 32 | `theorem` | [subtype_comp_inclusion](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype-comp-inclusion-source-edition-2.md) | 258 | `result-track:c864b1e2a3ab213ef8eee352b8909d52185926762f153a211e246054fa5e000f` |
| 33 | `structure` | [Subgroup](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subgroup.md) | 269 | `declaration-track:a08b868d1f6db0dd830f8b0b92825a12d5319ee38269fbec5ab963a4c75bb1bb` |
| 34 | `structure` | [AddSubgroup](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/addsubgroup.md) | 275 | `declaration-track:ea14bff6147e9a8c6fc20dd7daab08fed8b6d286a9fa7d3a9ed5d981c9f53099` |
| 35 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/instance-source-edition-5.md) | 290 | `declaration-track:bad30e42657cc409fcf07232f2f84d07e552cb7c128d1f174b9b64d918277ebd` |
| 36 | `def` | [ofClass](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/ofclass.md) | 303 | `declaration-track:1737048d16aa9e7ca10388bc9d5eb7da1618a4a371eb9846505dc4acc854e65b` |
| 37 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/instance.md) | 308 | `declaration-track:0794506f8439c25e71f45e66eece642ac456e93a11a53296fc83e36ea9287339` |
| 38 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/instance-source-edition-3.md) | 314 | `declaration-track:3a6c9241035fe12e5561a04e07d8025042f3ea66ce2bf46534cf861fd0248d87` |
| 39 | `theorem` | [mem_carrier](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-carrier.md) | 322 | `result-track:430695d2de1161a349001bbfb5514562fdeb21b4b28850d3d4b988d6e6697a3e` |
| 40 | `theorem` | [mem_mk](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-mk.md) | 326 | `result-track:1d1c8df4381ece1042832ff0228d91cd76cb8b0cb1752a912d159e666b57b2d7` |
| 41 | `theorem` | [coe_set_mk](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-set-mk.md) | 331 | `result-track:9491207a0018b7d4884b6b9b6ef50385307b5fc9d693f794b93a42d32c97df1b` |
| 42 | `theorem` | [mk_le_mk](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mk-le-mk.md) | 336 | `result-track:787c1abd7c71835696912e226aa0ba87a76e8f19f4d11292311d97abe29a42e3` |
| 43 | `theorem` | [coe_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-tosubmonoid.md) | 341 | `result-track:b13897289449e5277ceb7072e64d3b519cf692762279c7d888aad9b2bf2c123c` |
| 44 | `theorem` | [mem_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-tosubmonoid.md) | 345 | `result-track:302ef782427a156ead072a0800065fb62d71d0efe40c50141aae32d57418659b` |
| 45 | `theorem` | [toSubmonoid_injective](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/tosubmonoid-injective.md) | 349 | `result-track:aee2089701aaa56f2793fddbdf70a47d1a39aff6d22abeb0bbc7508215ba0fe8` |
| 46 | `theorem` | [toSubmonoid_inj](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/tosubmonoid-inj.md) | 357 | `result-track:8e23126b79a6ac147d3f315d293b59159ca79e7ac4bbc6a31d54743e01544fec` |
| 47 | `theorem` | [toSubmonoid_strictMono](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/tosubmonoid-strictmono.md) | 363 | `result-track:7e17748f054429431385178cb33994c8cf2f8b15ad250864f8cf919307e2b1bd` |
| 48 | `theorem` | [toSubmonoid_mono](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/tosubmonoid-mono.md) | 367 | `result-track:52f0136d74fc7dd0a61c113f85d78fe2a221f4b5c87dcd73e24e540b9bec8917` |
| 49 | `theorem` | [toSubmonoid_le](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/tosubmonoid-le.md) | 371 | `result-track:3997084adece1bbb22a2507438b3fc0830ffad1cfc70443bc3124dceec285dc3` |
| 50 | `lemma` | [coe_nonempty](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-nonempty.md) | 375 | `result-track:d62baf046f83aa6349ea414a9150f464fc8a79272f54fbfca998813e0d3861f3` |
| 51 | `def` | [copy](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/copy.md) | 388 | `declaration-track:8dec0740d0babb5f3a845b7bd4e775b53a757ed43420f766c684e2caf6db0c8b` |
| 52 | `theorem` | [copy_eq](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/copy-eq.md) | 395 | `result-track:ea07a87add3a14f595042fd8575b971d9b7a11b87dfd3adf4dc3aecbd2876d2b` |
| 53 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/ext.md) | 400 | `result-track:26e1cc5da0f6caebd03ce7009ed1beb929ae0aae37062b5a369f6c84c49f2b51` |
| 54 | `theorem` | [one_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/one-mem.md) | 405 | `result-track:110b1473d519f59e94b271fad3006e70e241cf59136e21cf72404f7a88aa934d` |
| 55 | `theorem` | [mul_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mul-mem.md) | 410 | `result-track:a95e57fa96ca5117cbf2dd238bfacbe5f624a6501816b3324e5f514750d3b4b2` |
| 56 | `theorem` | [inv_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inv-mem.md) | 415 | `result-track:4a26d7ea2de1f588d1ee1b6323a896b00c2b86031410778aab260328ec251996` |
| 57 | `theorem` | [div_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/div-mem-source-edition-2.md) | 420 | `result-track:616d5468f8d1d9160b9ef286b3352ce5402db681e9afec3ee6e2c151607c6f6c` |
| 58 | `theorem` | [inv_mem_iff](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inv-mem-iff.md) | 424 | `result-track:28c18ba43673efe7acf0177bd25a74d0e6d58ba7518cda9164752cbda126afba` |
| 59 | `theorem` | [exists_inv_mem_iff_exists_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/exists-inv-mem-iff-exists-mem-source-edition-2.md) | 428 | `result-track:b5c631abaea91ea25f8868d64ba5b73026973bb9ba2dbdca28d3e9a393c33385` |
| 60 | `theorem` | [mul_mem_cancel_right](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mul-mem-cancel-right-source-edition-2.md) | 433 | `result-track:560e70abd0e8f7a1d039c4f5fce891609018ec69e4c55f92af7f0be7e9909e7b` |
| 61 | `theorem` | [mul_mem_cancel_left](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mul-mem-cancel-left-source-edition-2.md) | 437 | `result-track:cde1a49cc718a6b0ec5b8219dffe32dfc2eeaba9f839d0dd9db28ad48a8681bb` |
| 62 | `theorem` | [pow_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/pow-mem.md) | 441 | `result-track:61ff83b396f549fc6d452345a6bf7fcf0463b63be15280b52e0f771310562671` |
| 63 | `theorem` | [zpow_mem](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/zpow-mem-source-edition-2.md) | 445 | `result-track:bea5c4bc1f5430084af3362f9a6306577cd63141f490de0c22ba289712c65488` |
| 64 | `def` | [ofDiv](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/ofdiv.md) | 450 | `declaration-track:ba7cf860130c34b79cac141a2cdca0bebd8233e27c21c5b4a44fb974b42fc217` |
| 65 | `instance` | [mul](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mul.md) | 463 | `declaration-track:0baa4c66c651b14e8c8a2def7099cb8a065925c27a19e026824fb7aac2758e0e` |
| 66 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/one.md) | 468 | `declaration-track:ebcb81fd8a460fb134951e2718a5b7afe573a1e17caa126eb93289e6bb242d4b` |
| 67 | `instance` | [inv](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inv-source-edition-2.md) | 473 | `declaration-track:8047eee5d1b20f611d731f1bcfbf1457eb8309756b1c54ccf06a37b74108d4c0` |
| 68 | `instance` | [div](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/div-source-edition-2.md) | 478 | `declaration-track:d6c6e05d20a066c26e2f686f4916121899c063a7c3a9400bc793bc170e5d235d` |
| 69 | `instance` | [_root_.AddSubgroup.nsmul](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/root-addsubgroup-nsmul.md) | 482 | `declaration-track:d1519d3627d060333834b4411b449dc5af742f82b0380c8009c5398f12f52372` |
| 70 | `instance` | [npow](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/npow.md) | 487 | `declaration-track:353224750f92bbc58c1c947194130f76845cbc33877548cac0ca4a2ed31b1860` |
| 71 | `instance` | [_root_.AddSubgroup.zsmul](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/root-addsubgroup-zsmul.md) | 491 | `declaration-track:602b571d571f49092b679c93ad7727a5cacdcc510aaa312a9438b97a1ca18989` |
| 72 | `instance` | [zpow](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/zpow.md) | 496 | `declaration-track:62f6b0c974c42a6f5d1876b29443ad2681118d14c4f72673a9714db5037b0abe` |
| 73 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-mul.md) | 500 | `result-track:ec8cecb287617fa3b9b07f51cc4e70aa944132cf388fa3bf6f3817537a3496e7` |
| 74 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-one.md) | 504 | `result-track:921a9601a2baa153db8dc0939e9f6ae2b839292c946916e4fa91299d2b945811` |
| 75 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-inv.md) | 508 | `result-track:5c6445c2a4b789c1431ef1b9387975bd59ab1ca2eecf2656cd7a506a3af241ab` |
| 76 | `theorem` | [coe_div](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-div-source-edition-2.md) | 512 | `result-track:b5226aa4d480063a7096e35bb502d682f5674e407e1342d7a348ab48014cdbb1` |
| 77 | `theorem` | [coe_mk](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-mk.md) | 516 | `result-track:3c984e7bea223c0568baea4a9600b4c2fe9cb4a1acc3f4b3f95ee6817fbd8fbb` |
| 78 | `theorem` | [coe_pow](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-pow-source-edition-2.md) | 520 | `result-track:6433a4c5cf4dd07352f1b27b4c1ca872b0dffaf5c873dcf2cb6964316dd231f1` |
| 79 | `theorem` | [coe_zpow](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-zpow.md) | 524 | `result-track:02c79ded0a88c5b2727ff05afe21eaaa2da486000a84f13399a41ab2deadaac9` |
| 80 | `theorem` | [mk_eq_one](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mk-eq-one.md) | 528 | `result-track:7eda7ae50344fec9f4209cfdc64ba643e77737397735ab81ab02c656a55f51ed` |
| 81 | `instance` | [toGroup](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/togroup.md) | 532 | `declaration-track:1f6ec95f0d0a93b9d36032a634497836bdee1a6f0b27a20039825b2f55417490` |
| 82 | `instance` | [toCommGroup](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/tocommgroup.md) | 538 | `declaration-track:2de426faf6b0b404c64b5901f45865a0c815177329d589ecd1ba1c320415bc6d` |
| 83 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype.md) | 544 | `declaration-track:5132fc791138811fd36b4b16b0d78f2596628359b9636698adcade8f187812e0` |
| 84 | `lemma` | [subtype_apply](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype-apply.md) | 548 | `result-track:44a6c308a8f0fe6bff90d12e7aa78d7db9770d2e3abe0c8fe8d3e1143425c674` |
| 85 | `lemma` | [subtype_injective](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype-injective.md) | 552 | `result-track:0856e15cf1264fbe4dd2ab359c6789ec0a7a55d568b5139828581446c651043b` |
| 86 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-subtype.md) | 557 | `result-track:98fd5830c471ba3b258c9fc8e91368bda6b227047175c5e30d592e86d2bfc36d` |
| 87 | `def` | [inclusion](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion-source-edition-2.md) | 567 | `declaration-track:9a931a4397c7f1f57109b6ed96d0550eb03f5569f4601b03e6fb2cd3088b37f0` |
| 88 | `theorem` | [coe_inclusion](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/coe-inclusion.md) | 571 | `result-track:462654de5f02b8fd7666596a27ec35f35f06a9d3d8ff3fe0f4cd0417cd988bdb` |
| 89 | `theorem` | [inclusion_injective](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion-injective.md) | 576 | `result-track:b59688d2d7cda59cfaeba40f3219d42f062be0a5de2b71e0c056360e75df3952` |
| 90 | `lemma` | [inclusion_inj](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/inclusion-inj.md) | 580 | `result-track:6b691ee33ba8d10994d9d6b8e3fb3ba3c2515407d8453dab81764b7dbfaad42e` |
| 91 | `theorem` | [subtype_comp_inclusion](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/subtype-comp-inclusion.md) | 585 | `result-track:a77fa1579abf6dece70bc318af63ab22551e383f89956c68360bac68fea94ef1` |
| 92 | `structure` | [Normal](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/normal.md) | 592 | `declaration-track:f0434025d3be74c61883b2d06ea624ae5eb1a431bdc8f6bf891b577c8305ffac` |
| 93 | `structure` | [Normal](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/normal-source-edition-2.md) | 603 | `declaration-track:fe1ded3c9e356192c5ad82e19a5784f9b650ed4ab39830ba1d4b52e73878139a` |
| 94 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/instance-source-edition-6.md) | 618 | `declaration-track:bd0ef531833b9e89929564c42c4de49186aec5b1054bd07514b767f115de50dd` |
| 95 | `theorem` | [conj_mem'](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/conj-mem.md) | 624 | `result-track:fdc316da1ed8fb150d79620aae6bad981e196723cc6372922041503b668e2533` |
| 96 | `theorem` | [mem_comm](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-comm.md) | 630 | `result-track:d691fc84c3a12313c35da5ff6e092530522d01a72afc2b6d8b1924555f57dc64` |
| 97 | `theorem` | [mem_comm_iff](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-comm-iff.md) | 635 | `result-track:7b2ff64479779412c6da30d2aec381200b620f6c13d88ac8f1b0f687a9da7c1f` |
| 98 | `def` | [normalizer](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/normalizer.md) | 650 | `declaration-track:a5ca43232f4cd17bf120fa0861784e1acb8e1c0116eb7ac02e602c111af69ff2` |
| 99 | `def` | [setNormalizer](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/setnormalizer.md) | 666 | `declaration-track:e93e768a9bbabbf6bcffc1d79fb2c7146a6148246e89b17b608c0ab30d7d8d89` |
| 100 | `theorem` | [mem_normalizer_iff](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-normalizer-iff.md) | 679 | `result-track:3728d6aa077127e8e104cd339ad155a2edc7e7047e0f7a2ea7351afb990abc2a` |
| 101 | `theorem` | [mem_normalizer_iff''](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-normalizer-iff-source-edition-2.md) | 683 | `result-track:9db7012a396f0ea0eb82b34508fc55634764c834871e4a839a75c0bc0a7567ad` |
| 102 | `theorem` | [mem_normalizer_iff'](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mem-normalizer-iff-source-edition-3.md) | 687 | `result-track:a4560df42ca1dce0a263da906d21335fce776cd7554a711b820f95ce0ba01f99` |
| 103 | `theorem` | [le_normalizer](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/le-normalizer.md) | 692 | `result-track:7ca83037d6271e521bd3ae12f57e926b1dbf6ffd22263b9cde9b9b4924670cba` |
| 104 | `instance` | [commGroup_isMulCommutative](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/commgroup-ismulcommutative.md) | 702 | `declaration-track:7f9a0a736f1ea4b967de348d925a03319a52a83bbe2a5e4e0ef37636683be5a6` |
| 105 | `lemma` | [mul_comm_of_mem_isMulCommutative](../../../../GroupTheoryAndGeneralizations/SubgroupDefs.lean/declarations/mul-comm-of-mem-ismulcommutative.md) | 711 | `result-track:24a95048c3b65d656e4304424e8febdfb844666a8ce577232e0112cde68686c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4736ba1d60429554e3bc7d52350ff38ab512c7e89e1bf84a746bd6d02a2ffbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
