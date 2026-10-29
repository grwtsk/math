# Verification target: PSet Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bee6cb6a68eab6e074b569b3a6bfaba0a60f3df2",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant07240d40624a590b0394afd88c19cc7665ed117663326cfb043dcf96210e1c3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bee6cb6a68eab6e074b569b3a6bfaba0a60f3df2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant07240d40624a590b0394afd88c19cc7665ed117663326cfb043dcf96210e1c3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant07240d40624a590b0394afd88c19cc7665ed117663326cfb043dcf96210e1c3c.lean.json)

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
| 1 | `inductive` | [PSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/pset.md) | 51 | `declaration-track:b799681d58781f1a9528ad8c19ee0a3e0a488c1fbb74e5efc71e6958eadf0cbb` |
| 2 | `def` | [«Type»](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/type.md) | 57 | `declaration-track:d08ee8e5978f9bf83ce8857dcb87fc4940c687af31d195eb0ffa64ff1d90673f` |
| 3 | `def` | [Func](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/func.md) | 61 | `declaration-track:549973f6f4e855b682e260ac17ef5a18a733baf7de3c4be20040f5d94ba6a4c7` |
| 4 | `theorem` | [mk_type](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mk-type.md) | 65 | `result-track:9894e1ec364a466689bff570576dc5e188a5235bdacdb2437546f548af9e3a60` |
| 5 | `theorem` | [mk_func](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mk-func.md) | 69 | `result-track:f79afb826985450597bd9ba76345b0537ee87047d8539eeded904bcac9816e47` |
| 6 | `theorem` | [eta](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/eta.md) | 73 | `result-track:3faf1a2527e5efe60cd33342f17ef8229792063d3d10ca605c292a3c494d4820` |
| 7 | `def` | [Equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv.md) | 78 | `declaration-track:281947a09c0fd7fd07bff930bfa46c55f47edf0b6da23abb4df53b46807ace25` |
| 8 | `theorem` | [equiv_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-iff.md) | 81 | `result-track:a58e7496c8c1737060686711ecd0d0d3dcad034ee59769eefc6e5e91b4995423` |
| 9 | `theorem` | [Equiv.exists_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-exists-left.md) | 86 | `result-track:04e37f29b999ee2a07f9de6484360156a1824ed6f5d319d902365813648eef68` |
| 10 | `theorem` | [Equiv.exists_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-exists-right.md) | 89 | `result-track:7fdcdfe62f60a89882e06450b321d3dac0bef779680ca3d4181f8c5ae56234d2` |
| 11 | `theorem` | [Equiv.refl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-refl.md) | 93 | `result-track:1f0a878be9455cbacc2a4d77f3387ab60a8f464329e20c44d31251f8051cbad5` |
| 12 | `theorem` | [Equiv.rfl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-rfl.md) | 96 | `result-track:db8edb5afab68d7d24ba86a8130b78733d9e9f7d3ea1993c7572de3b90753bcf` |
| 13 | `theorem` | [Equiv.euc](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-euc.md) | 99 | `result-track:7f2bbffc533b62d9a9425d8734eca2d06f8ae5b1ad9caff833008e85c8a2f69a` |
| 14 | `theorem` | [Equiv.symm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-symm.md) | 111 | `result-track:ebd47d802443caac2d3f02d9ace3085375576b002c54ef06f296b0a568a26817` |
| 15 | `theorem` | [Equiv.comm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-comm.md) | 114 | `result-track:3fec8dd06e166d2897d056ec3aca27e6f13f871d63e531c3d74119a140d5dc08` |
| 16 | `theorem` | [Equiv.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-trans.md) | 118 | `result-track:e8154dd67da1a2f20b4fde5de9806bccf5d9aa99f619604062ae6f2e0e20f8aa` |
| 17 | `theorem` | [equiv_of_isEmpty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-of-isempty.md) | 121 | `result-track:f7a523d42f651bde51996c3846c59d093f23eec7915163d38d1ce5d2ac6c5ecf` |
| 18 | `instance` | [setoid](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/setoid.md) | 124 | `declaration-track:e01a1cdf0bfcaf9e72dd8ec9545c405887936b4f352fb7d8770ae1f2bcb4108f` |
| 19 | `def` | [Subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/subset.md) | 129 | `declaration-track:a5719bd4bc183a58416d1fc2c707374fad45cb9c0cf10cbd3b821a0fe3dc5ab3` |
| 20 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:323166e737d3e58b744064198130192e0e53026e87666701c11635c4e5f7801f` |
| 21 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance.md) | 135 | `declaration-track:055b34f7eb6aeed2d10635741e1c0a3d7b880f8232f1525b58772c1955d51140` |
| 22 | `theorem` | [Equiv.ext](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-ext.md) | 142 | `result-track:596432020fb08300bfaa8593e712c2416757ec179d0d9e02fb89f104d89df3e9` |
| 23 | `theorem` | [Subset.congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/subset-congr-left.md) | 153 | `result-track:5201ab17da9142577f5722ab72a222ccdda2cce242ec996873e14f3dc31a6d6f` |
| 24 | `theorem` | [Subset.congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/subset-congr-right.md) | 164 | `result-track:78b270615255608790381a56ca71961888982c92551293776cda246c2a4cdbd2` |
| 25 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/le-def.md) | 176 | `result-track:c2c95b276fcc47c2fe427e6cd9e8573603a03fb6d89816201caafe77860a4d32` |
| 26 | `theorem` | [lt_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/lt-def.md) | 180 | `result-track:92fb49838203476927db721d9c2d8a5b39cbab589560b33c4d1b68e8224076ba` |
| 27 | `def` | [Mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem.md) | 184 | `declaration-track:40625b5ef3486031b1a59c9c03f88e561f6e60b29c671d03ac1815a7c0bd4d8a` |
| 28 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 187 | `declaration-track:4d86e4b6dd94da508815ad81d7ed69c39bde641f4a7bf578a4843c7699b6e1c5` |
| 29 | `theorem` | [mem_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-def.md) | 190 | `result-track:96dc3b39c6e8921984c200464961b8b6f72d560caa070b614316e43e43e06c00` |
| 30 | `theorem` | [Mem.mk](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-mk.md) | 193 | `result-track:84b881dcd0f40d5b15ba716821be4daf9c765d838e9d88c83e58a30da218f3f3` |
| 31 | `theorem` | [func_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/func-mem.md) | 196 | `result-track:fbb57c3116e3c002444de7c94e843ed29c6d893830b8cc8f50beeb1f911ac42d` |
| 32 | `theorem` | [Mem.ext](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-ext.md) | 198 | `result-track:70d0679cbbc721369cee6195441dce02f7f91c31795ee240b9259d33ba8fea2c` |
| 33 | `theorem` | [Mem.congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-congr-right.md) | 204 | `result-track:302a6d90679fcc0a3e9d3796b2ecd14d0503ce5e90ab604ff0c8ef0a0922b458` |
| 34 | `theorem` | [equiv_iff_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-iff-mem.md) | 213 | `result-track:9eb686104374e570bc50ccb17c206fecf10763d006833e76160a6f9e517f0b75` |
| 35 | `theorem` | [Mem.congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-congr-left.md) | 221 | `result-track:5c24da9f48d2770794dfac30ab35ff34b30553250ef08622cca01bc28f9c60c3` |
| 36 | `theorem` | [mem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-of-subset.md) | 224 | `result-track:2c0664aa2d3632276b8e4ee43d88b2f1854f2442389eebcb54a18f2dc7e3e393` |
| 37 | `theorem` | [subset_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/subset-iff.md) | 227 | `result-track:f1d87d2e65230469ec886a025e90c8637714c1c3d0bb3f88f613527cfb7544f0` |
| 38 | `theorem` | [mem_wf_aux](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-wf-aux.md) | 230 | `result-track:24fc70c0c1df5bc7e8c4b1d0812f6cf5f02cb4625999355588d8e6b7b817c47e` |
| 39 | `instance` | [mem_wf](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-wf.md) | 239 | `declaration-track:44b1187bafa0371d843e2253770bdb9d71c98128a3eb1675e1b78a48abcecc0d` |
| 40 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 242 | `declaration-track:6f33a4dd9be1324a3d56ce1499fb78bdcc3ae3eada41b2a9344e8a8202b8ae35` |
| 41 | `theorem` | [mem_asymm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-asymm.md) | 245 | `result-track:e53b1d06537d157d4b63cafe72a244eb519a6b2788be97c43c0cd32f91a32c19` |
| 42 | `theorem` | [mem_irrefl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-irrefl.md) | 248 | `result-track:2babb66c872a404b73f7922fae8a675b99995e1e2795ffb9fc13fc5f40c39620` |
| 43 | `theorem` | [not_subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/not-subset-of-mem.md) | 251 | `result-track:674191ea075d5ad280b535735ebb7c2b226c941f24b1488aa536358651f4216c` |
| 44 | `theorem` | [notMem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/notmem-of-subset.md) | 254 | `result-track:74327099c2561bf47103d1375ac6791903250b7a30011332ed503e12690435ff` |
| 45 | `def` | [toSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/toset.md) | 258 | `declaration-track:7435ede0cd54e440051215741fb3f4c81eb91ad7bc90b27e173b25db6a9b9418` |
| 46 | `theorem` | [mem_toSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-toset.md) | 262 | `result-track:42095243167fb70292e5a572c5a2d730066e587bf7e743445e7ee37c3ad7af00` |
| 47 | `def` | [Nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/nonempty.md) | 266 | `declaration-track:dbc283f0b468d3f52b006f583c9f6d28c6066b1ee873e818a16ee277fd0c9824` |
| 48 | `theorem` | [nonempty_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/nonempty-def.md) | 269 | `result-track:9281446b76d47cfc1221f29d2e1941c0c7e0bf01dbaa2796edb39ef6501e2872` |
| 49 | `theorem` | [nonempty_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/nonempty-of-mem.md) | 272 | `result-track:f7c1316b3ae4eb5f228c5cc860567ce100f54e7e93c6306d2f12ddc8acf1e52d` |
| 50 | `theorem` | [nonempty_toSet_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/nonempty-toset-iff.md) | 276 | `result-track:62267aeac85ab7db17d4240af68f46abe26cf8ad6236a29f1eeb30f2e069f86a` |
| 51 | `theorem` | [nonempty_type_iff_nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/nonempty-type-iff-nonempty.md) | 279 | `result-track:feef32ff4da144a0bbc1d9d815f8ace58a3ed316ff3d4039b6e04dae3e49e264` |
| 52 | `theorem` | [nonempty_of_nonempty_type](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/nonempty-of-nonempty-type.md) | 282 | `result-track:111e5f8f47856097e3b003359a9ecdc606dfec4f2f8f3ae46d8b6dcfcd89823c` |
| 53 | `theorem` | [Equiv.eq](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-eq.md) | 286 | `result-track:3217c07c1c24c78fb58fa14689140bcb0c1693dc6fbc1f5c4694061cb6af2ecd` |
| 54 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 289 | `declaration-track:3e6dfbe200666cb94af51da201b5ebd57f68802b0e4104ee1e7c2d93c18b2df8` |
| 55 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/empty.md) | 293 | `declaration-track:5ac40847a6b49055cd9b911452bd0d68a982e39e079e0f1dc617e7b189bc7ebe` |
| 56 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 296 | `declaration-track:b9f0d7aaa12e69342ca4690423453b84f1bc57be4eb1786093c6717c2cc05a73` |
| 57 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 299 | `declaration-track:7bb239e528e544205cde750eb71cc74887004a28cce1757b199985b9d3c39d06` |
| 58 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 302 | `declaration-track:12c6d2f070b5d0383113ff056911cbc8c0507d082c3288592f2641936649d0f0` |
| 59 | `theorem` | [empty_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/empty-def.md) | 305 | `result-track:cf5e0f4bea0a748a0c9823221dd01ff834b8f93ec184337b79750c5a55576f76` |
| 60 | `theorem` | [notMem_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/notmem-empty.md) | 309 | `result-track:26876a11a8f37e920e4b3433ca2869d26d96ea73de4b7b382d1c2e8ca9a31e03` |
| 61 | `theorem` | [toSet_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/toset-empty.md) | 313 | `result-track:69dca755cd9cc9dbeeaffcfa272eb0fa49147f44cce437126f8f7a5192cfcd1d` |
| 62 | `theorem` | [empty_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/empty-subset.md) | 316 | `result-track:aee0e086e49acc1ad1b781405c23676024129999f651d7607ae507c58d1c84be` |
| 63 | `theorem` | [not_nonempty_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/not-nonempty-empty.md) | 319 | `result-track:1e85043f78f9ff036dc48946e7e28a26d02bac4e4a57e61e1d7ff2fb0be42e9f` |
| 64 | `theorem` | [equiv_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/equiv-empty.md) | 321 | `result-track:bbaab2aabff8f2e5827b8f5c822a0b2cd0c6d623994750f4452eb26ce3a3e097` |
| 65 | `def` | [insert](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/insert.md) | 325 | `declaration-track:844c1ac6d48eb1238cbe6eb88bc5811bc52fcab2a49d77e6debaf343d8c3ee32` |
| 66 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 328 | `declaration-track:94a1b50cbad3cf169c712cf5091178b6df217c7bce5fafc720431077ba54fd8b` |
| 67 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 331 | `declaration-track:34c04510a98b60a9b2f648bf171080bfd6137143e7e0d0f5b4c602918ca90983` |
| 68 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 334 | `declaration-track:68be3d9c6f9ee351ffb684988254c23c4f61eba256903310a1d6a52060364250` |
| 69 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 337 | `declaration-track:fcacc9c5fef41adda3ebc9d96f4501c5d17d36b3f942ea04e35722a37275e13d` |
| 70 | `theorem` | [mem_insert_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-insert-iff.md) | 341 | `result-track:7954441c5e3fd4dbc1399364c5059dad5463200839ddff64d06f5d73373deafa` |
| 71 | `theorem` | [mem_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-insert.md) | 353 | `result-track:dcaa99b81586d4d9adbe5cdc1c2de2f03f5f30e477002b93c3b048b93c0f4a49` |
| 72 | `theorem` | [mem_insert_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-insert-of-mem.md) | 356 | `result-track:b601fa4b315bc9c3effc018dc6ae2228b426817fbf8f7fb3bae999669122c3c2` |
| 73 | `theorem` | [mem_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-singleton.md) | 360 | `result-track:3ef3e7c11b0661b73588e3a1cdf2ef240893274738026acc23e496949ea6142c` |
| 74 | `theorem` | [mem_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-pair.md) | 364 | `result-track:14f1d01dd0b8df1d4282948587f6331047adc0b0bd31028d9f5e2410b4fe46de` |
| 75 | `def` | [ofNat](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/ofnat.md) | 368 | `declaration-track:9ac666e6ce6ec30eeef4155b65564ea95dfc229d9708831d6f9d85206dba0d46` |
| 76 | `def` | [omega](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/omega.md) | 373 | `declaration-track:25d709ed7953041dc929db6d8fb46809937b81ea3858a5f3c58c6b1bc2341f42` |
| 77 | `def` | [sep](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/sep.md) | 377 | `declaration-track:4cff0e9e4a5b0c876aae7b0b145e918be31150474827c2e7f41421680890baea` |
| 78 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 380 | `declaration-track:d2279536db878842f011d54ba290c755eec16ccf3a62f7fea9be12abb22a06c3` |
| 79 | `theorem` | [mem_sep](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-sep.md) | 383 | `result-track:e2cff28b96e85bab8775e3f59c05d9a1effc9892f7a20f25bff917ed0c078a02` |
| 80 | `def` | [powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/powerset.md) | 390 | `declaration-track:39c8ebd1d9a8ed5dc2cc428e6346799fd138177ad63e1bdb4cafb9094c7a163b` |
| 81 | `theorem` | [mem_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-powerset.md) | 394 | `result-track:a4fa35401c0f0d5567efd1d3a3558ebbe6e273710dc32b4892511f937971d97c` |
| 82 | `def` | [sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/sunion.md) | 403 | `declaration-track:5df30d04be549f100b108e070c095fabc6f38ecb3a2f4ce627158dc763c925a3` |
| 83 | `theorem` | [mem_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-sunion.md) | 410 | `result-track:5add390b2322fac79955734acad7c128cf2f5a86ac179074ac05be1ab458ba45` |
| 84 | `theorem` | [toSet_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/toset-sunion.md) | 423 | `result-track:5a3d6b37ddc9913645adc7f0aa09a51e9e8edc47342ad7e1fd3cc6bc1c511f0c` |
| 85 | `def` | [image](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/image.md) | 428 | `declaration-track:1272a634bb2dbb9760453a28a24ec863c0794eae022c2b476ac93b803d3ec4c7` |
| 86 | `theorem` | [mem_image](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/mem-image.md) | 431 | `result-track:c8b8414f8ecab7101a8964e75a879c13d20f079a65716bb705c50ef937a40a6b` |
| 87 | `def` | [Lift](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/lift.md) | 437 | `declaration-track:003b1c92cf9033aa6a1cea5c01174095686decdbf051ca08712d2f786fb07b69` |
| 88 | `def` | [embed](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/embed.md) | 443 | `declaration-track:d062d6f21bba9c1fb429c1923f9aaafa422ddb0a0ec281818240d285c87e3f8a` |
| 89 | `theorem` | [lift_mem_embed](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespacedPublic.lean/declarations/lift-mem-embed.md) | 446 | `result-track:66459ddc6f37de0b66c6ee3eb36d4ba14df651cf90a193b05dcffb9e318df79a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa62f5ceef5bdc8e14f4ccdbeb5251460258b953976a101d9ef2168349d04b7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant07240d40624a590b0394afd88c19cc7665ed117663326cfb043dcf96210e1c3c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant07240d40624a590b0394afd88c19cc7665ed117663326cfb043dcf96210e1c3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
