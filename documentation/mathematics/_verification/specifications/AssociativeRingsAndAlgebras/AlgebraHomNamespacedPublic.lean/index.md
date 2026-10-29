# Verification target: Algebra Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9eac7038485f8db6de7eb170d858b62bb54dd2b2",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9eac7038485f8db6de7eb170d858b62bb54dd2b2`.

Source path: `GRWTSK/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/alghom.md) | 38 | `declaration-track:8b573503586f82fe0aa38b871132ad6156d609fad60ffa8c77969be7f9b652a2` |
| 2 | `class` | [AlgHomClass](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/alghomclass.md) | 53 | `declaration-track:4de6a76325d45ae930833481d8d63c674ee2dfe4ea79d3d6d6588c7f59d9be50` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:b6327cba6a65206a4f5eac35b270b876450f761262134557e0a53d51dd333bbc` |
| 4 | `def` | [Algebra Hom Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/ofclass.md) | 77 | `declaration-track:ce3e43031cbcc38a7af8ac8ac5bb3f0f3a711901b14f6b675cc82cb3bed75959` |
| 5 | `instance` | [funLike](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/funlike.md) | 97 | `declaration-track:8071b7768c3bc8e32ac5390f4c0f1ec30c8d9f8dc38c429a19e272a6c06a69de` |
| 6 | `instance` | [algHomClass](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/alghomclass-source-edition-2.md) | 104 | `declaration-track:8db290f2000047dc91d50eb8302af73fc754620ae966ced2ca179168dfcb04df` |
| 7 | `lemma` | [Algebra Hom Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/linearmapofclass-ofclass.md) | 111 | `result-track:77ad303cbcf8753cfed913b7a60bd5d5ba280464f9580c9bfaa2434ca3ae218a` |
| 8 | `def` | [Simps.apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/simps-apply.md) | 119 | `declaration-track:73deb8e0611eef408992168208783660da7f37979e450bd51b472bef7b6c039e` |
| 9 | `theorem` | [coe_ofClass](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-ofclass.md) | 125 | `result-track:4a752511c2e47ffe9c12ddda4c55121f21e22012300a1e04992d5d387693362e` |
| 10 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 132 | `result-track:7bf7021b37983a21762c7d45f762c0f70c22f4b7d587b867dfa03b1626eaa44f` |
| 11 | `def` | [toMonoidHom'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tomonoidhom.md) | 137 | `declaration-track:3bd0dbcbe40f73656c3f813b865c52e3979af3db8c07ab52579de2dcdeb686ae` |
| 12 | `instance` | [coeOutMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coeoutmonoidhom.md) | 139 | `declaration-track:648d8d08622d3e4bb1f4bc0913842de6b6f4ec3cb0593e5ea81d6a0007a004a4` |
| 13 | `def` | [toAddMonoidHom'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toaddmonoidhom.md) | 144 | `declaration-track:d6ee5f1d3c57719bcd3df2ddead1acf11b09383028d58ecdf15d9a5381d2fe14` |
| 14 | `instance` | [coeOutAddMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coeoutaddmonoidhom.md) | 146 | `declaration-track:856cabfc6010069752bf4394e04c4d14ae2f47bf5691652dc4e027d182a054a0` |
| 15 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-mk-source-edition-2.md) | 150 | `result-track:5872b3350943eb9bbcb15aa2d8654507d20a300de16c0238711e4e27cf453cf0` |
| 16 | `theorem` | [coe_mks](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-mks.md) | 154 | `result-track:371a67fdfb5e999e3ca9b4c4238a7728e8ee3c8a253be5a68a8e6a2fb8a56fce` |
| 17 | `theorem` | [coe_ringHom_mk](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-ringhom-mk.md) | 158 | `result-track:e4c458f579b6e0f429cc2c02867ac753988b3667a9a39021ce36ef188550e012` |
| 18 | `theorem` | [toRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toringhom-eq-coe.md) | 163 | `result-track:e94dcac2c6b6d21ec9949ab35c4b3bc88081908be4b9c1038bb430796e48c422` |
| 19 | `theorem` | [coe_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-toringhom.md) | 167 | `result-track:a7369d4fbb9de8a48bd6e77eec1b08912eaaa6c1f35c271836d5f193c93d5bbc` |
| 20 | `theorem` | [coe_toMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-tomonoidhom.md) | 171 | `result-track:9302d6824efa42d2d68d5f5f4dce8d4c72cbed0f27ebace8e2ea0c1ae56a4f25` |
| 21 | `theorem` | [coe_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-toaddmonoidhom.md) | 175 | `result-track:ed3ab7c975e15621aacdabab23c9cf090823f727fd5da4cafdd21abe42328f67` |
| 22 | `theorem` | [toRingHom_toMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toringhom-tomonoidhom.md) | 179 | `result-track:42bdac151dcba2d84d84cd04db9910cbc96d925af267d5f4bd6bf24914736f60` |
| 23 | `theorem` | [toRingHom_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toringhom-toaddmonoidhom.md) | 183 | `result-track:a2764eb4599de185ae49ecf301d3d272f41ea60e208ad1eb01c6865f1e8881eb` |
| 24 | `theorem` | [coe_fn_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-fn-injective.md) | 188 | `result-track:18ace4da843b67fd1fcda8d87671fc513f6de0676d00ae1eea19e010bf7772d3` |
| 25 | `theorem` | [coe_fn_inj](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-fn-inj.md) | 191 | `result-track:6f4dd2c4cd189f240e384e2cc8562370bad9bce011f6cfe1e4ba6a5c438a445f` |
| 26 | `theorem` | [coe_ringHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-ringhom-injective.md) | 194 | `result-track:617e8e77691f6c209ca3cb357a2052b9a29fbe94632f476fa994e1b1ed8a7187` |
| 27 | `theorem` | [coe_monoidHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-monoidhom-injective.md) | 197 | `result-track:d5c641492abdb5d9e3adee7f1679e1974f217cb17e5531fc3e37c3ee0d49b8e7` |
| 28 | `theorem` | [coe_addMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-addmonoidhom-injective.md) | 200 | `result-track:7848c5f207997982a58a217bed26a2e6c375267a16f5d20f0e634645f425dc6e` |
| 29 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/congr-fun.md) | 203 | `result-track:ae72d3d289be5b2b1e52a8d4596c7bbdc46c74f2cd535709c53a96848e491f3a` |
| 30 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/congr-arg.md) | 206 | `result-track:dc0f109011e354a48dc503ccc93769013cff904c9302c07a51279ac2d0dfa3d2` |
| 31 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/ext.md) | 210 | `result-track:c54b0260cbfa49606bf11c9eba1c4c0bad211e3098238d3de862c75ed30595a9` |
| 32 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/mk-coe.md) | 214 | `result-track:f783c8aa29fa50c2cfe484b6677565edc7d5ef679260c8c10aa3d71edfa12b96` |
| 33 | `lemma` | [addHomMk_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/addhommk-coe.md) | 217 | `result-track:680adf7a6e27a43a7650677ecc7b305d03ef81d2095ddedf30a9d9973b85b43a` |
| 34 | `theorem` | [commutes](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/commutes.md) | 220 | `result-track:0a6441887ee8d2e4d22d37e8f815eb4b57dfe42c9dea7c71c80861868142c9b6` |
| 35 | `theorem` | [comp_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp-algebramap.md) | 223 | `result-track:940e724bd706845f4b624b811e9c27b9e6808926b39ebe82fee76ce1f3d2cf87` |
| 36 | `def` | [mk'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/mk.md) | 227 | `declaration-track:7396d403eec7db4e1d15775af6a4106bc2d694152fe69fe5bbdd91dd64d0a1e2` |
| 37 | `theorem` | [coe_mk'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-mk.md) | 233 | `result-track:52a6a5aa22c00e09892cf63bf92955c22dc94f3a6bf9252cef86af8dd73849e3` |
| 38 | `def` | [id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/id.md) | 241 | `declaration-track:4fbe74b43e9496d490d75a44aa5067a30e1071033d8655d74a81b4ff4fc9c273` |
| 39 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-id.md) | 245 | `result-track:9f36e15265279db5cd71c4d1dfa0116cd9e212f262f814d653fdc393dd250dd3` |
| 40 | `theorem` | [id_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/id-toringhom.md) | 249 | `result-track:4224c55489bb2485eea63fe1951666cca41a6e17e92fd8d6c1368cf4bd044e70` |
| 41 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/id-apply.md) | 254 | `result-track:0eca36993acd83a92f7c4eed3a842b8679d04c9ddc9cb92ecc142779b01a8581` |
| 42 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp.md) | 261 | `declaration-track:dc3845e5e714d0e5da65c53e856cbb0991f6bc4f537c338daf3a432a8208e3fe` |
| 43 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-comp.md) | 266 | `result-track:c4d375fd4764db53d2ecb3f83fef7d0b2ce7e3f3f22f23fdcb28ed5b998a90d5` |
| 44 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp-apply.md) | 269 | `result-track:257af4f91992610288c62eb842edbf720d75690edf6bed1bdbb76342c73ba950` |
| 45 | `theorem` | [comp_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp-toringhom.md) | 272 | `result-track:ef2e501449ba7e4305361ee232659556408d185d94f7aa49158d7ab7e3eb3dcf` |
| 46 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp-id.md) | 277 | `result-track:d837036d5deaadda8d98d93f37ee588ba79137706e07ff7841674cdc3757a88e` |
| 47 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/id-comp.md) | 281 | `result-track:2cd02537176be9baae14f06d68326753d0ee95fb37763f9ac84449a753cc78f6` |
| 48 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp-assoc.md) | 284 | `result-track:c1686968d0720411e772ca32117ad92c084fa6edfe5b7f16d6a3251a1d1b1efc` |
| 49 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 288 | `declaration-track:be697d3c5d6b5401eb18b55745c483a99cc2249424198a299739902f0f884198` |
| 50 | `def` | [toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tolinearmap.md) | 292 | `declaration-track:d299b1001b3d58593b07a62079f4de57f3a92ee189a4237a8aa138bf18c09faa` |
| 51 | `theorem` | [toLinearMap_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tolinearmap-eq-coe.md) | 297 | `result-track:33f5e61f5433fc373a5ba0ca6ecf9cec578f444132f25eaf42f251cd983e5fd8` |
| 52 | `theorem` | [toLinearMap_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tolinearmap-apply.md) | 301 | `result-track:40cbb0d5181199c6ae66a2cfafd90a3f7aca9fb6f3a0903bce3bab37eed634f2` |
| 53 | `lemma` | [coe_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-tolinearmap.md) | 305 | `result-track:4d493a3ea9d8ba722ae3f6638c28c9b8c185a7b656dcff87491aa077f310bdbf` |
| 54 | `theorem` | [toLinearMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tolinearmap-injective.md) | 307 | `result-track:fd4453ec74aec53e1acbef9868732566666d90ed506da88412cda0b6f91525b9` |
| 55 | `theorem` | [comp_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp-tolinearmap.md) | 312 | `result-track:d9ca24cf2f05f9a0d44cdb5030848f3a29fa89ff61d54699b5f4c45370e3391b` |
| 56 | `theorem` | [toLinearMap_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tolinearmap-id.md) | 317 | `result-track:3fdf0ffc9238342e7519fb27c4e2b0dd39708fea8466f628f622ae8d2eb8f632` |
| 57 | `lemma` | [linearMapMk_toAddHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/linearmapmk-toaddhom.md) | 320 | `result-track:e7d887948c3b5ed3ab1552dafd9fe882d038a5381648f64e2879959bc54a0576` |
| 58 | `def` | [ofLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/oflinearmap.md) | 325 | `declaration-track:4b8b78fdec2fb1634aa2637156cc2288b0c9cf08d214f5c8e93f47b781040a99` |
| 59 | `theorem` | [ofLinearMap_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/oflinearmap-tolinearmap.md) | 334 | `result-track:c85c9c3f57f70b6e72d742c05b36df0f754bf59b6fb60c819cd6046821cec3e0` |
| 60 | `theorem` | [toLinearMap_ofLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tolinearmap-oflinearmap.md) | 339 | `result-track:c9c873e9d8a460f6a9bb60414ea1bb0ddea73f8ac7506fbb1b05e1b9a70e2d28` |
| 61 | `theorem` | [ofLinearMap_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/oflinearmap-id.md) | 344 | `result-track:31c2d3eb33fc011e1a43b890ddc6b27bb9c34f46baa6f65786913fbce7c274af` |
| 62 | `theorem` | [map_smul_of_tower](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/map-smul-of-tower.md) | 348 | `result-track:f9c3932db6ead7090fa7f9f1512ff27be5783038835fe90e61fb9d9005b9a579` |
| 63 | `instance` | [End](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/end.md) | 353 | `declaration-track:4394d007762026bb2b887d9b0c2bc453b0396c2c07847628d2b32c40ad5193ac` |
| 64 | `theorem` | [one_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/one-apply.md) | 361 | `result-track:5d92d540135a5824e8c4cc2f2523928a6ca1e44837cb30996cc6c2479a65cf13` |
| 65 | `theorem` | [mul_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/mul-apply.md) | 365 | `result-track:91fa0834721a2fb0631867ae1fd7b7695deb141de4f69512809d86ecb887fb15` |
| 66 | `theorem` | [coe_pow](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-pow.md) | 368 | `result-track:fc48cc0e82fbd6c386aae6100ee206e7dfa9897c15b95b01131327e0c9406da9` |
| 67 | `theorem` | [algebraMap_eq_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/algebramap-eq-apply.md) | 371 | `result-track:6ac069ca0691ed705bed208842df021e54fd798e8ac2f2b0ed715f639777f490` |
| 68 | `lemma` | [cancel_right](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/cancel-right.md) | 375 | `result-track:870866e751ceee99a2cd3df199d908779cf0b91cb9de7412abcc49a2d2e4c531` |
| 69 | `lemma` | [cancel_left](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/cancel-left.md) | 379 | `result-track:d56ad953ea076705f4d539af74dc6e24c89a6aa3a427284657bacdee39a5fa11` |
| 70 | `def` | [toEnd](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toend.md) | 384 | `declaration-track:c943946bffb76fdf2b8bc0c6154fa485ec85fe5afb07b79741529bd7d7fdb6fd` |
| 71 | `def` | [toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toalghom.md) | 399 | `declaration-track:4d06aafacbc50041706a1edd9a1cd519e4d016de6983b6d82c508c23675e8ac4` |
| 72 | `theorem` | [toAlgHom_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toalghom-apply.md) | 403 | `result-track:ced50fcb7d52c5077915f40ce735b3e0d094f5c54718b09f0146467021e9b5df` |
| 73 | `theorem` | [coe_toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-toalghom-source-edition-2.md) | 406 | `result-track:a8f85f1eb928ac4a7de300e81c1fc3c1308a837907f0142bcb036f8128c87b5a` |
| 74 | `theorem` | [coe_toAlgHom'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/coe-toalghom.md) | 410 | `result-track:5c3066f05b6724ce59659066a4a6b15938f4001ad640f675101547b1f4c4e7e6` |
| 75 | `lemma` | [toRingHom_ofClass](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toringhom-ofclass.md) | 423 | `result-track:3e11155160bc329593e7e312f14893635e8339b3a8bad22e50eea4060c016feb` |
| 76 | `def` | [toNatAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tonatalghom.md) | 436 | `declaration-track:7ce0dd399260f7566c713e3f35c436f23a57a5a7cf22c15068217fcf71493e15` |
| 77 | `lemma` | [toNatAlgHom_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tonatalghom-coe.md) | 442 | `result-track:5fac0fc6c992778c47bb461bebf5c1f6955237904618465606e0ca0bd58c6035` |
| 78 | `lemma` | [toNatAlgHom_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tonatalghom-apply.md) | 445 | `result-track:75689a70ababc971249d1677b9d6fca37a56a9ba15e99113b00efaf0cbb4bb36` |
| 79 | `def` | [equivNatAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/equivnatalghom.md) | 451 | `declaration-track:09a26485d7682909b4707061cd0a34ed98d4d2718b66c1c93b9fd358301175f7` |
| 80 | `def` | [toIntAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tointalghom.md) | 456 | `declaration-track:3603992b4f805f7c2ae0ba3014f99da542154be76a5b5c84f8ef9567225727f7` |
| 81 | `lemma` | [toIntAlgHom_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tointalghom-coe.md) | 460 | `result-track:d853c20d26c804c846177b21c229cd8e68504665e91b27b380c4f64eac16fdf4` |
| 82 | `lemma` | [toIntAlgHom_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tointalghom-apply.md) | 463 | `result-track:5ee448dd4e273b92c75bafdf693cd47ee85fac056060aa3203abb3ba2d02a909` |
| 83 | `lemma` | [toIntAlgHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/tointalghom-injective.md) | 466 | `result-track:9b746275268055b022c48412f328f2fe9679c651f3d4f43d96f9640dbd26e2ab` |
| 84 | `def` | [equivIntAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/equivintalghom.md) | 473 | `declaration-track:435e815faa7326fade27ccb4de6c0ef2542f008a64be84b94189ac1ab0732ad7` |
| 85 | `def` | [ofId](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/ofid.md) | 485 | `declaration-track:28f65e40c17a794d33acb5d586e29e2113cc931b69bad921bf944e55e1ac5ad2` |
| 86 | `lemma` | [ofId_self](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/ofid-self.md) | 490 | `result-track:c686560ee5b456405078b14820fb81c66ef11ce382a37c3919cb9a4536e112c6` |
| 87 | `lemma` | [toRingHom_ofId](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toringhom-ofid.md) | 492 | `result-track:b2ac8e26621f3495ef317c014f58d899c76adb1d92058c4dd5a5455118bbd2d7` |
| 88 | `theorem` | [ofId_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/ofid-apply.md) | 495 | `result-track:c1c3f6ba42470669a773df0f7e5d4d9c9df25a859a3ff73eac315254d57c16a4` |
| 89 | `instance` | [subsingleton_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/subsingleton-id.md) | 499 | `declaration-track:ccdac23174385198f9cdd024e4e5c10e83089f4641c8637abd9dc597c09126a7` |
| 90 | `theorem` | [ext_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/ext-id.md) | 504 | `result-track:55af89c8cb4c0ee912eca63f66165e1f8ff6e45f062cf40c4252d76dd8cdfc16` |
| 91 | `theorem` | [comp_ofId](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/comp-ofid.md) | 507 | `result-track:568649757b9dd446f9b36cfba0c2d779a7010780c86770f7ab71784078a826a7` |
| 92 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/instance.md) | 511 | `declaration-track:13cb3398ce92f6b49578a806c06edf40a8f6edb684e469d7c73ff21b25782036` |
| 93 | `theorem` | [smul_units_def](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/smul-units-def.md) | 519 | `result-track:4ae6661098963b83797a3c3b47d802c9160665b752d02aca7323db73f8e1fd02` |
| 94 | `lemma` | [algebraMapSubmonoid_map_eq](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/algebramapsubmonoid-map-eq.md) | 526 | `result-track:723628693f26018be971e43ce78aa9d6e2284c88fa220fa4a2f1305ae7400a14` |
| 95 | `lemma` | [algebraMapSubmonoid_le_comap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/algebramapsubmonoid-le-comap.md) | 539 | `result-track:4329a845e5df4fb99fc667b9c4398ca1eb7c200102f147f1e520156b9510a3bd` |
| 96 | `def` | [toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toalghom-source-edition-2.md) | 556 | `declaration-track:5829b0c514ec873d7101f0f858a78213acae84c6504dbfa86f80e4f16ea95240` |
| 97 | `theorem` | [toAlgHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/toalghom-injective.md) | 561 | `result-track:383749d14a34ebe974acd3e031309344cf688448696df453a3923632fdf26cfa` |
| 98 | `instance` | [uniqueOfRight](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/uniqueofright.md) | 572 | `declaration-track:34740a97052e5da794702b98d23e216d65fa0141538d3f404c208f18adf96e5e` |
| 99 | `lemma` | [AlgHom.default_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedPublic.lean/declarations/alghom-default-apply.md) | 577 | `result-track:0da5ee2e25d13a0d8cfefc70924fe759dc9fd5fa28b5a1d4d30f7eda09725695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64f569f67662ca85091d09add6e44a140ed5cee0d4c6a5dcf6520939c3c7ff3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean","GRWTSK/_verification/specifications/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
