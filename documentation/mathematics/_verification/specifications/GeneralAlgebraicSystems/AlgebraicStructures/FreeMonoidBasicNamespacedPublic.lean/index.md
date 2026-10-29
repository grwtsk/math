# Verification target: Free Monoid Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f066f080cd3f73ef3647a41e00f0bd2f2d6400c",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f066f080cd3f73ef3647a41e00f0bd2f2d6400c`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean.json)

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
| 1 | `def` | [FreeMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/freemonoid.md) | 74 | `declaration-track:647e1e49962ef3ea1f81b4830ca0975e64350f2849f691181c21668ea40b866c` |
| 2 | `def` | [toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist.md) | 80 | `declaration-track:a6b1297aa5e94f8bf70c0ef22b385898300b9f9ad15c65b340f1a69f0010fc70` |
| 3 | `def` | [ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist.md) | 84 | `declaration-track:1c033104f3ad8a3eb25387c9d5de58259e974d718a3f5726b2be3bbae523ec51` |
| 4 | `theorem` | [toList_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-symm.md) | 87 | `result-track:741ec6b1019d080434f021d71a4c3415097010fa8c432c2a1023aa55b3ac9c8f` |
| 5 | `theorem` | [ofList_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-symm.md) | 90 | `result-track:999976e41a8cc6ac572e1273971f2ee932c15872fcaffdf62b5b5576b36b655e` |
| 6 | `theorem` | [toList_ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-oflist.md) | 93 | `result-track:0b0bbca1173d4d87289835ab2994899b2473e142f4b8c042f8e81f7a28946d72` |
| 7 | `theorem` | [ofList_toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-tolist.md) | 96 | `result-track:617d1ad35ba49ce2ba101911f947e4759e7531120a1cf149a3570e34572d625a` |
| 8 | `theorem` | [toList_comp_ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-comp-oflist.md) | 99 | `result-track:0d71caedb07d7a892fd2abed6bffc9f3c037a0886141f00aef2094e83a6f3312` |
| 9 | `theorem` | [ofList_comp_toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-comp-tolist.md) | 102 | `result-track:982de2f5903cd2c9ded9247c03607c477e448b6659db426423841ff826887ab0` |
| 10 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 105 | `declaration-track:b599ae8e6ea23faa315a0d7d1145ba226b913625bd51ff1184b262ddb469fbfc` |
| 11 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:5508c1b0016c9967052e118d6721c8b90bfaafe0c5d0d5711b11ab81ce927764` |
| 12 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 118 | `declaration-track:db5339575434d5901ec6939ed6c8ebc26d0356a385f38a72e381de1fa4dd7517` |
| 13 | `theorem` | [toList_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-one.md) | 121 | `result-track:a99c3c10e7e3d336a06f207f99743b0e069fe43e78c3e39bc9567d1c39579472` |
| 14 | `theorem` | [ofList_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-nil.md) | 124 | `result-track:40337ef406b236a082e8e49b7d2c9358bfaf142a84959ef8d75794954474673b` |
| 15 | `theorem` | [toList_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-nil.md) | 127 | `result-track:26bd529301bea37d2e78335ba78314a55910cdb2a29bf537a5f463181f9676f0` |
| 16 | `theorem` | [toList_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-mul.md) | 130 | `result-track:ab34ff1bb1f71f63269d12f90a870b975e9817be062223b985bfabd0a3ff890f` |
| 17 | `theorem` | [toList_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-cons.md) | 133 | `result-track:9bcdd883bcc40ff8cf0d8b85a41726eec8a51ed52ef307fb15f72288fed7b65b` |
| 18 | `theorem` | [ofList_append](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-append.md) | 136 | `result-track:263fcb65394358c9b50d041f5f3b07771420605064c18a9853142359c56cd24b` |
| 19 | `theorem` | [toList_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-prod.md) | 139 | `result-track:9e5d8be5a0eaf486b10b803da086bacf73c21abf2eeb5f8d510ba7ab89e326bf` |
| 20 | `theorem` | [ofList_flatten](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-flatten.md) | 143 | `result-track:a1d8714f1594b218a823159f8e50f5ee46d21be890a2e00fc6c37d8581bc681f` |
| 21 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/of.md) | 148 | `declaration-track:842e0b239a9f151f8e0f5ac83911e1f68a7a35665ac309229774c83e8fbf0757` |
| 22 | `theorem` | [toList_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-of.md) | 151 | `result-track:396fdca7df0cca686c09224c8a9f749a892728f73c6a64ecadf12d215409248e` |
| 23 | `theorem` | [ofList_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-singleton.md) | 154 | `result-track:6bbba11b8ea10a0c86e3185ae08a2b0e26e16e115c418d429e35a760cac064da` |
| 24 | `theorem` | [ofList_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-cons.md) | 157 | `result-track:baac8a3cd77f070c05f01514690a347c35d074c595734e1e42ce64490fb1d929` |
| 25 | `theorem` | [toList_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-of-mul.md) | 160 | `result-track:141b1ad15e3876ef64b0019ddfdda0f2fe40d7f25cca7d198824b12f4c38ea97` |
| 26 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/of-injective.md) | 163 | `result-track:658d76967a6592644fc17dce9ddb2714d1d94422c26db73be4841a3ebbd1cd5d` |
| 27 | `def` | [length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length.md) | 173 | `declaration-track:efd7d5d5ab19d1573e3b644886aba33d650dbde2311aa0c68dc399214f550641` |
| 28 | `theorem` | [length_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-one.md) | 176 | `result-track:f88ed569b8041d344b873fe6606d92b63383a4f9fce4e5ede13419cd630d6c19` |
| 29 | `theorem` | [length_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-eq-zero.md) | 179 | `result-track:235c72d0ffea5b6af627fa546e0ef7a37c864b50c2fdb9d398dbe41478f26d06` |
| 30 | `theorem` | [length_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-of.md) | 182 | `result-track:62364a78e3e302dd472421c2a0b17d279f3ccfb0f5c28ef36a94047feb3c2e26` |
| 31 | `theorem` | [length_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-surjective.md) | 185 | `result-track:b04e05e5b113ff279b855e5bf61750c354e7bef03b156902b4abe12c42358bfc` |
| 32 | `theorem` | [length_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-eq-one.md) | 189 | `result-track:3d7635208c95124f7e554c5b05f6d57c7106d30595ea1e03f6189e8269fde8e9` |
| 33 | `theorem` | [length_eq_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-eq-two.md) | 193 | `result-track:adbcda038fbdf0de97d78667e2b81375d14f88d4580e7e9411b6999741594aaf` |
| 34 | `theorem` | [length_eq_three](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-eq-three.md) | 197 | `result-track:67e00e833b91d47aee8d142a2e19b0723d6ab5597485af747a9579457ea38c0a` |
| 35 | `theorem` | [length_eq_four](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-eq-four.md) | 201 | `result-track:fac9c16c6700a58a22fa5ccdf35c8166a6ebcffe899ca55a689399949a954008` |
| 36 | `theorem` | [length_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-mul.md) | 205 | `result-track:029be2685615710ae4cd9a15cd3006aa9586e29fbce3ffa82c8d57c797bd25c8` |
| 37 | `theorem` | [of_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/of-ne-one.md) | 209 | `result-track:b384d6f7c7bc2bb897f2a3da58882448d8f23261ed34b586088b691a6a6484bd` |
| 38 | `theorem` | [one_ne_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/one-ne-of.md) | 215 | `result-track:dc70bb8a5584880cbf6514f0be2e59ad74037064ff86d176385d8b119fb76f2b` |
| 39 | `def` | [mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/mem.md) | 224 | `declaration-track:1557a6a6a8bf258af7bb94ea070954f974a3022d1f2c1626eeb684c34c929d2d` |
| 40 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/instance.md) | 227 | `declaration-track:48ce4584dffe896ebf7a7fb22b63b2e364f86a369a74464593795b7d88183484` |
| 41 | `theorem` | [notMem_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/notmem-one.md) | 230 | `result-track:29f9cf8e2d16329b9e74a49c629c2005285222e3612d499871a03788679d9438` |
| 42 | `theorem` | [mem_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/mem-of.md) | 233 | `result-track:bb186e302c94a15d11865c17ce3c31884dbf1abfa336b4e64ed829467a861dbc` |
| 43 | `theorem` | [mem_of_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/mem-of-self.md) | 236 | `result-track:1f772ba2450e7ccbe33c2dbc210b2ee3259fe5856a0dceaf99f8783a32ff9178` |
| 44 | `theorem` | [mem_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/mem-mul.md) | 239 | `result-track:3438bf8671a766eed6b02c8668ec4dec38cf5141f5e0beadc529b5f65e6a8411` |
| 45 | `def` | [recOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/recon.md) | 248 | `declaration-track:ee71641c687276f6f7f3a023616a1a1838a4408727d208e4036b2e1bfd3c55ef` |
| 46 | `theorem` | [recOn_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/recon-one.md) | 252 | `result-track:c4c69b5eb4dbd4fe72d3b6241983dfa8cba068b236dd5b2a1fee70ef3e5f610a` |
| 47 | `theorem` | [recOn_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/recon-of-mul.md) | 257 | `result-track:ad244cae06eac424b01a088234c5989d5246ffd5758e692221703ce4fd174762` |
| 48 | `theorem` | [inductionOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/inductionon-source-edition-2.md) | 269 | `result-track:8a5ead0eabdcb6e94b3ecc3acb555f06ff824638664980fd063cf5a0cf9acb85` |
| 49 | `theorem` | [inductionOn'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/inductionon.md) | 279 | `result-track:35a3b3ac5fddd3e9f2acb8052c27af29c2e976ab7fcbf3edba0c210361f9e496` |
| 50 | `def` | [casesOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/caseson.md) | 290 | `declaration-track:117466f4d31377397a98e3cdb2881c2fc8d61db96769cae9f3b65c2a4167b9bd` |
| 51 | `theorem` | [casesOn_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/caseson-one.md) | 294 | `result-track:6fb9e6eb883418be8031b144e118a31b165390c90bb63d28b86842aa2355942f` |
| 52 | `theorem` | [casesOn_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/caseson-of-mul.md) | 299 | `result-track:212766d0d3ca7385ebe29e16733d64f3ec3b45f858d1fa496ecfe62c2e9000cb` |
| 53 | `theorem` | [hom_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/hom-eq.md) | 304 | `result-track:5255ca2b16ef20047e3ed4c7c0ff522ac5a36873065c5edc6a478b4d7ca05e73` |
| 54 | `def` | [prodAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/prodaux.md) | 312 | `declaration-track:8cd9feb3d9765c1d9b7be2a9b89cedcfa015f9c9dd12c2871e674cf319a2acee` |
| 55 | `lemma` | [prodAux_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/prodaux-eq.md) | 317 | `result-track:b544b3f36b572fcd784a9b3dfb54ceb32564e48bb19ea28721e71b7bd4bd4063` |
| 56 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift.md) | 324 | `declaration-track:6e0d8fd9e02e6a84e8d640d4a7d674641a581f61f90db29855b34f09ace22282` |
| 57 | `theorem` | [lift_ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift-oflist.md) | 332 | `result-track:19b1f034ac4013450ba70ef1cafe4a8d952a1ec583e0897ad033d98393de1386` |
| 58 | `theorem` | [lift_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift-symm-apply.md) | 336 | `result-track:f7bea7ad41338f99f57c176c6704c22e23a2020026ea81b30cd2946af8877e38` |
| 59 | `theorem` | [lift_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift-apply.md) | 339 | `result-track:30ea033e7bb8e7dda8d3f7c566b1e3a30f1743d81e67d4fdcb42febf8946d6d5` |
| 60 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift-comp-of.md) | 343 | `result-track:15a18c2194830cde90d74651231aa4e1e939b6230bd87bf6d1c67048ec90ac01` |
| 61 | `theorem` | [lift_eval_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift-eval-of.md) | 346 | `result-track:9857ae2685c564cb2ab774ce68fc35ab8b299bcd3ab2268e294df7c5be332eab` |
| 62 | `theorem` | [lift_restrict](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift-restrict.md) | 349 | `result-track:b90f27c79eb7a6816f2b8ca9c8625bdf4fdfb7a1ff6f48e905ecb90f7da68c58` |
| 63 | `theorem` | [comp_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/comp-lift.md) | 352 | `result-track:9ad9f30a55a2641074a39392439adb5592a5cd07e7670636b04a38280cee6758` |
| 64 | `theorem` | [hom_map_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/hom-map-lift.md) | 357 | `result-track:a115332ab2ec2cbeee268624a6ef5294ba0b4f56d5b8d3ac8c93de7c1c6ba800` |
| 65 | `def` | [mkMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/mkmulaction.md) | 363 | `declaration-track:b319a30b54dbb408d118fda6523c604a84a0416412a14863da47e299ab5b59da` |
| 66 | `theorem` | [smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/smul-def.md) | 369 | `result-track:90d128bd1049de10d07958cef5e3e31e4caf6342ee7ac1b7efc537821d5dc9d4` |
| 67 | `theorem` | [ofList_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-smul.md) | 374 | `result-track:79019678b8754fc6d758372c9ad447dd412dceeae231c7cf3104d92a561dc078` |
| 68 | `theorem` | [of_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/of-smul.md) | 379 | `result-track:be08fd1ef7f409d92b1e41db2ec8e9247ff57be0a27fcbd15e7cc4cf2a816bcf` |
| 69 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map.md) | 391 | `declaration-track:b6b0bec1369f8383f0c6937f264316494a17047d86b873abcec7a5e907ba989b` |
| 70 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map-of.md) | 397 | `result-track:a14f7f8dc58503661ac172bfa5bd4b53160457a3d8e2a48c982214c68d6252b0` |
| 71 | `theorem` | [mem_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/mem-map.md) | 400 | `result-track:85b52f0ed28ebf364ea5d122ed069215285f056c8a432ac055005d43dba48ea9` |
| 72 | `theorem` | [map_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map-map.md) | 404 | `result-track:720fd98134231c6f4ddf8c2efa1de85a43ad9b2083f3e75a081b98576caa5c2c` |
| 73 | `theorem` | [toList_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/tolist-map.md) | 410 | `result-track:d3d26d3aa1e5d80bee88078fae759036d3c41d1febbe9a240bbcfb4a7fa36764` |
| 74 | `theorem` | [ofList_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/oflist-map.md) | 413 | `result-track:a14f5c26e2437fe6e4fa6b3b46d544eb17fca0f68dc4edae54b4ed5ffa50225b` |
| 75 | `theorem` | [lift_of_comp_eq_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/lift-of-comp-eq-map.md) | 416 | `result-track:41e34ef457f3aac2b870ced20f02f75d36590f15374611138d5916443710f970` |
| 76 | `theorem` | [map_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map-comp.md) | 419 | `result-track:d2eb08344c9d662088f72fa2eb45c2719cabb8f9ad803fd65ac6d00be9108af0` |
| 77 | `theorem` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map-id.md) | 422 | `result-track:329a41890d05a7daca4d51f3856ebe4c321a51c4d51b16cab0c1a04c5e71b852` |
| 78 | `theorem` | [map_symm_apply_map_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map-symm-apply-map-eq.md) | 425 | `result-track:baf06837cee23f0973990b63da46bf9c5b1d5f9037dd63439011fdd0d35f82b7` |
| 79 | `theorem` | [map_apply_map_symm_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map-apply-map-symm-eq.md) | 429 | `result-track:100a1664ea4050633bb1261485d11d180f166378d176547a1659439348ec6dea` |
| 80 | `instance` | [uniqueUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/uniqueunits.md) | 434 | `declaration-track:807aa30c5133ba803db0a4dd58de8b505098cfa14601285e19634ea6e81f0a9b` |
| 81 | `theorem` | [map_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/map-surjective.md) | 440 | `result-track:7da61ac787002c5eccca7ed06055040fdfe19594b4a7ec9e92dfd2a881dcf9dd` |
| 82 | `def` | [reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/reverse.md) | 472 | `declaration-track:d8ee70d2de5cdd1be97ae5e26729848fc2d921d94d3c4c00fa9f209360ecb0a6` |
| 83 | `theorem` | [reverse_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/reverse-of.md) | 475 | `result-track:09177430dabc56d4b815dafedfb29be122b7c0fa42094931199a1d65685f4fdf` |
| 84 | `theorem` | [reverse_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/reverse-mul.md) | 478 | `result-track:56afbebcb59569aabcddfd4a03ebe40a8baab55b66d1398e615c20a06a60f846` |
| 85 | `theorem` | [reverse_reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/reverse-reverse.md) | 482 | `result-track:d532edf6dc299a2ac3ad1702560e32084c48b8c8d2628fd37a41c15dc40028d5` |
| 86 | `theorem` | [length_reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/length-reverse.md) | 486 | `result-track:d9f30218e7fd7efdc75ec89fd988a6b3862a528bd60c681e8fbcd92e955e89bc` |
| 87 | `def` | [freeMonoidCongr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/freemonoidcongr.md) | 498 | `declaration-track:913989f8a527b3bc9ca80d6549bdaf581196d29e87d5595a704640c5696ca667` |
| 88 | `theorem` | [freeMonoidCongr_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/freemonoidcongr-of.md) | 506 | `result-track:dc85f733faf0f772e9ad6c5f51501f385bbc849942057e4c607844b18dc1ecd6` |
| 89 | `theorem` | [freeMonoidCongr_symm_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespacedPublic.lean/declarations/freemonoidcongr-symm-of.md) | 509 | `result-track:ed83209828f02ae8bfd3165f8c440e750db8ae74ea794832bc73e7f9a343a427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=694c75fbcdb65bf0cc97b6079f4931bd8d36de3b1a3c2e4bc21f0eb0f0c7e7f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
