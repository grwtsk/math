# Verification target: Algebra Namespaced Map Monoid Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac8869b657e57c53cfac3794bfc648c00a7cd3a4",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/index.md) · [Full source](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac8869b657e57c53cfac3794bfc648c00a7cd3a4`.

Source path: `GRWTSK/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Indicator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-3.md) | 32 | `declaration-track:0f0bc148f65e7805dd6a8cc43f86ef3d889ef323c4b90d4a0d9207ad2d534b53` |
| 2 | `theorem` | [coe_one](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coe-one.md) | 35 | `result-track:8633b17ecf7614ffdb85c52dafa909dc4deae1cbead6bb6c1fa84bf7d80c8149` |
| 3 | `theorem` | [one_apply](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/one-apply.md) | 39 | `result-track:bc9613fa425709976e4491bf9212fea6cd408ff01fb259a0dddde118048ad688` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-7.md) | 43 | `declaration-track:34f93e76e6ddbb6dd855b5a48d21d37bb3d15fef7399b07f92584d442f048d44` |
| 5 | `theorem` | [coe_inv](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coe-inv.md) | 46 | `result-track:cdcf63a02348b0700ffd1c3d4620d302625fc4f33080615994d07f8c2038fa28` |
| 6 | `theorem` | [inv_apply](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/inv-apply.md) | 50 | `result-track:2c6364cf90239565d3cf878f09f184a4a2efebf2784232a742cc4398949be6c8` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-13.md) | 54 | `declaration-track:59d2c6ac2ef7fa4274ec99eb742158d77f6ec7caa77c663c37da7cc54be74c13` |
| 8 | `theorem` | [coe_mul](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coe-mul.md) | 58 | `result-track:7db438f33e907368c441af464b63c82b2b3ddc168529b738b664066ea4a02798` |
| 9 | `theorem` | [mul_apply](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/mul-apply.md) | 62 | `result-track:c74629015974ea94a59648bf6f97fbf0c30df927cc2539e211a9c080272a6cc9` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-35.md) | 66 | `declaration-track:fba3ba265c9c298279a06e88b1d7a7ea4c670048fb24ef6115edcb4c6c59df7d` |
| 11 | `def` | [coeFnMonoidHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coefnmonoidhom.md) | 71 | `declaration-track:cced559ecfc8b93b35d13af55b6fdf5a135e2697a770cf6564d7b6c825b1d108` |
| 12 | `def` | [constMonoidHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/constmonoidhom.md) | 78 | `declaration-track:80f0b6d8eb55b44d36ba81f6f436d5f919fe24c4d2c32a81a60e0daa3902908d` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:095743f31e0f848809005d9c910c752edc9e9835b69662cd725391f72f2a1da3` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-5.md) | 86 | `declaration-track:11ed44bd2a295b269334512992bdf4a96850ad60a90d5abe54b75c06fdc8300e` |
| 15 | `def` | [charFn](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/charfn.md) | 95 | `declaration-track:d4aad7174c5c8930461fe4e23d9dd1f317574270e966a94620ff121486c2cf5a` |
| 16 | `theorem` | [coe_charFn](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coe-charfn.md) | 98 | `result-track:d3f5208c7d03ec63080a908496a2197d83965be01d6aec6da859f9de4b282627` |
| 17 | `theorem` | [charFn_eq_one](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/charfn-eq-one.md) | 101 | `result-track:e2ad70759f5b532ce4fa0cc90ebe89c787266c97f0e7c0e0b1c122a5012f7de3` |
| 18 | `theorem` | [charFn_eq_zero](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/charfn-eq-zero.md) | 104 | `result-track:28fdec8e09e3e8d2a066fb1837d93187986cbe706d381bee0492f6fc20100c8c` |
| 19 | `theorem` | [charFn_inj](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/charfn-inj.md) | 107 | `result-track:e91bfc2cd4701546eab0c819d028084feabee4aa4dae99f42a1b861cf0094450` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-23.md) | 114 | `declaration-track:8de3f4318b667fbb4a4c73cfc4aac88b38a1d1aa6fff0e5857a851c159febb26` |
| 21 | `theorem` | [coe_div](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coe-div.md) | 118 | `result-track:cd815e08ff9de39f0f840da42c7bcbde4dae4ad04a808fdddfa9baf8647f1653` |
| 22 | `theorem` | [div_apply](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/div-apply.md) | 122 | `result-track:486f81dba246b2d0ab5a2bb70a86802a63d67b3c792b17144fe1cd51fb313212` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-20.md) | 126 | `declaration-track:8730ba827305d1d441900a8c5eeffd98ce1c823ac466f6131042e2c83d2072c0` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance.md) | 129 | `declaration-track:07b59b36f17717b6b1373196fd8f478ea205e2fd7e1f5b9e671d212e79afebf6` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-4.md) | 133 | `declaration-track:10156c76efa74ba9c2c8718c912889b459dfd61e944cbe5de1fe77ac136ec6ac` |
| 26 | `instance` | [smul](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/smul.md) | 139 | `declaration-track:78e490d83e5912aaf145c5a0f074da42f0dc3e29ad93044540781c0ab8da04d3` |
| 27 | `theorem` | [coe_smul](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coe-smul.md) | 143 | `result-track:6128089b827dd05a0156bf3c7a4d8730eb083a556b91424d159424d7f0d9e776` |
| 28 | `theorem` | [smul_apply](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/smul-apply.md) | 147 | `result-track:53c1dc2859c255e3747b6c15731cbba1ff3a9324c37fb5772746419022ac3f60` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-18.md) | 151 | `declaration-track:79f578483c5428d336cc0fcd980bbc0aa5c1c104f47f2196e535a6ce7935ff73` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-33.md) | 155 | `declaration-track:da52e773bebdf2a964b629ad7f2c9e3901a901f889fbe42b9788cba5d5dcb293` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-31.md) | 158 | `declaration-track:bd95f4a57f27125c48192ecaabd50afe58c17102c7a9c236216f0f1f6c58f05c` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-30.md) | 161 | `declaration-track:bb67113112674c810f8d85faebe3cff455bb3cc2a09df2547ed29fdf3ec2bb92` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-17.md) | 164 | `declaration-track:704ba89d6853e93e373f7e899d85fd88927d17b466bae0822fdb13d5d5c39615` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-19.md) | 169 | `declaration-track:7aad0a684e0fba992ffa60e7f61311bca83f8d285c602e04db07c29badf44d4f` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-10.md) | 174 | `declaration-track:53adf14a89c7898f811708a462bae17f8792bf6493ed1fadd50bc4230384229c` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-32.md) | 179 | `declaration-track:d59447a1af4222551fb55c15bb4e08b99cacadc97d8941fa9eb4e478d98174ee` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-6.md) | 183 | `declaration-track:1b462601cb70431852ed466e6f6233a5e3a36193a2bdf2289e140241ea72f54c` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-12.md) | 186 | `declaration-track:55ea9f1ef51dd471ca31f238518c3e7e475e8882812cffd51f0a4f9d10cc369b` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-29.md) | 190 | `declaration-track:b2b36b4c9c2f8a5361f2a721efc5d12eb18f81b65f551f063a8f2599b933a1ff` |
| 40 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-34.md) | 194 | `declaration-track:e81522e52b649046f35df23122986c07aae98013baab90825fecbb65a9c27d94` |
| 41 | `def` | [constRingHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/constringhom.md) | 200 | `declaration-track:4a1340fdddfe6396b3753bfe4a424c51a47079138d064ca51b856d3dfd9a4959` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-26.md) | 203 | `declaration-track:a3a7ecd96a1e801f674b73e4c0e6fccf5fe2d55d766d70020a59e45398237735` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-22.md) | 207 | `declaration-track:89f9fe0fd4875d59db84d3eb734c274d0281e7e74d48778b05897d953c5adbed` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-9.md) | 211 | `declaration-track:4690037a5cada411ae1c71974b9f57838227521c45d80208648ccb950e907161` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-24.md) | 215 | `declaration-track:8e5a127ba7b6ac231193561e8f157d784a5a5a5fa98c5e2936b99087cc6a7641` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-15.md) | 219 | `declaration-track:65c0cf0c220020db1078d91242c66bac1c3f60d726283673f50eb5ffe0c3ba02` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-27.md) | 223 | `declaration-track:a4126faa9921e55fda7367b9b199dba17dfb60e826a680598d070c6c24863e55` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-11.md) | 228 | `declaration-track:559d63dfab9b5fb28963b893c1f44adee04a425f0a91a677f36ba8bba589d364` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-21.md) | 233 | `declaration-track:8989273cb806df70833253f69b9a3d48e78c5b26dece208ff0fe5e7529330068` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-8.md) | 237 | `declaration-track:3a7e8d94b034d7d417f60712fd6bcc9b96eee0aaf065be274f790f98de9f777d` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-14.md) | 244 | `declaration-track:5e73b416fe5640dbb7c394bdd74fd81da304de4c0f4956a71c093add45eda89d` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-16.md) | 247 | `declaration-track:6dbbf2e39a2a50c5b3a484cb70b54720d22d717eeb237b29ac5021288b5151c9` |
| 53 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-28.md) | 251 | `declaration-track:ab87e5696417debb87541223862876fb6f50a7af5d04a3b784cdced39f061a5b` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/instance-source-edition-25.md) | 258 | `declaration-track:9c3be00c46b1a2359f448fda61bec37a6003e18aa62e6d9c8c170085e4bb6211` |
| 55 | `theorem` | [coe_algebraMap](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coe-algebramap.md) | 270 | `result-track:fd89618819dcf452f2f2dd5b78e5dec548b25528d503fc8156d00ebe0af6c04a` |
| 56 | `def` | [coeFnRingHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coefnringhom.md) | 278 | `declaration-track:996ca3cb6245bcc8a42a9452deece862b4936ea4acbb87346a64830bc4b3cbeb` |
| 57 | `def` | [coeFnₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coefn.md) | 283 | `declaration-track:8aaae5e399ba616755ab209bfe5175690862fb48675524740668b6f7a8738b39` |
| 58 | `def` | [coeFnAlgHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/coefnalghom.md) | 289 | `declaration-track:0f525d3f9188a890e5e9e754a1d1978f7089d2104584217df6f50f39af1d8f85` |
| 59 | `def` | [evalMonoidHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/evalmonoidhom.md) | 300 | `declaration-track:e2f294609bcbdafea5adcfbcce79909f529cd2b32d70e904d2bba5b6667851b3` |
| 60 | `def` | [evalₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/eval-source-edition-2.md) | 304 | `declaration-track:9dd1331b9fbb5aed19ffb145f9bf213c3cde4aca2c492506596e874550e13f3a` |
| 61 | `def` | [evalRingHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/evalringhom.md) | 309 | `declaration-track:2ed7e3a7ff8555426049d0ef29459bfa7b18692a9f59904679f6c4eb23624faa` |
| 62 | `def` | [evalₐ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/eval.md) | 314 | `declaration-track:6b16e9aa68e4a1ed3968cb3ad2d05ce2c2b7be84fb553834c12122ec1cfc1499` |
| 63 | `def` | [comapMonoidHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/comapmonoidhom.md) | 326 | `declaration-track:30e659f49449213e358c7d37f6e6f9e355e936898b23c778e60c3d869718f062` |
| 64 | `def` | [comapₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/comap-source-edition-2.md) | 334 | `declaration-track:321aa1218009d9e579645358752f2d9340775ba929bb647e76571c1d9c4e6d9c` |
| 65 | `def` | [comapRingHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/comapringhom.md) | 342 | `declaration-track:e8ece7f2371b31e520134afb5bb354dea05920c9b5c8d6051075d567056c2d2a` |
| 66 | `def` | [comapₐ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/comap.md) | 349 | `declaration-track:2c09dddea7b7f206a99ee630c3110df059b22bbabce157b476974b75a27d57fd` |
| 67 | `lemma` | [ker_comapₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/ker-comap.md) | 354 | `result-track:751f1df93db4038131044fd1d3fac3e6d942294318b28a6f5c355935666a17dc` |
| 68 | `def` | [congrLeftₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/congrleft-source-edition-2.md) | 361 | `declaration-track:fb99f49d63ef859bf3067f6f074aeb7b0b2a207808ddabc8a437e3db378c980a` |
| 69 | `def` | [congrLeftRingEquiv](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/congrleftringequiv.md) | 368 | `declaration-track:d3f07b74b50be10c7083a1aa38c197d236e3746b957531514786da6c0e9352b7` |
| 70 | `def` | [congrLeftₐ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/congrleft.md) | 376 | `declaration-track:26bcf1b3d02cdc357c3f77dec7f57bf9f78c26b996262a5411b76ef4cd5f0643` |
| 71 | `def` | [mapMonoidHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/mapmonoidhom.md) | 389 | `declaration-track:5db610844b7ea25dbef8a28de3b3db0e89d5904d60b10449a0b861564564db0c` |
| 72 | `def` | [mapₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/map-source-edition-2.md) | 397 | `declaration-track:fe05cf1c52b06f60993861a468eabc0c9d48b35496bba1af9ca9a03878260fdb` |
| 73 | `def` | [mapRingHom](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/mapringhom.md) | 406 | `declaration-track:1ae99b6ee9b0b701842c85f9f6e1ab263c76fcf8ae982c870aedb527556983eb` |
| 74 | `def` | [mapₐ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/map.md) | 413 | `declaration-track:618a20650ea31c6f3982bdf81407c4bf59dbd8ed0a2e24dcd3984d75484151c7` |
| 75 | `def` | [congrRightₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/congrright.md) | 420 | `declaration-track:2557800428392129998a232755f44dac9134b72ef1f0ef118ee9f24139844662` |
| 76 | `def` | [congrRightRingEquiv](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/congrrightringequiv.md) | 428 | `declaration-track:3a96dcbbe52ed7bf977fe0ff4441b4314c78dc82ffccaeb5b33b909477ae418e` |
| 77 | `def` | [congrRightₐ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/congrright-source-edition-2.md) | 436 | `declaration-track:7d64d998f7f7cbf9425d07294f2bbd6dad5821a520a4a6d80655eeb3d40b955e` |
| 78 | `def` | [constₗ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/const.md) | 447 | `declaration-track:90617431ce3a4b3ac4548dd3f8f4ca1d1f120e25348fc7c15114f19134a71f03` |
| 79 | `def` | [constₐ](../../../../GeneralTopology/AlgebraNamespacedMapMonoidHom.lean/declarations/const-source-edition-2.md) | 455 | `declaration-track:d23c5923efc26b48c45072e89c39fc49a4b9d1b481cf0838e50462203552cf5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ad59f8c8f35d55ed887205e372d0bf59eda66a75e52466c1d50bedf18de3947 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
