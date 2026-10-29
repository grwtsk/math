# Verification target: Extension Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62b70d574e93968f180bdcda95c79b34eae29422",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62b70d574e93968f180bdcda95c79b34eae29422`.

Source path: `GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean.json)

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
| 1 | `structure` | [Algebra.Extension](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/algebra-extension.md) | 55 | `declaration-track:4e0bda467389b05a60ef7b083e53f962bdb9793528fca09368162a08cb8fa5a2` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 77 | `declaration-track:8e3855ee647f35cafdca9acba248e0491b1e8a72608d56e76b1f66cc2789450e` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 80 | `declaration-track:0df53f174b5c8656f6aa5adc972ebbc43201a7b09236ee543212cc61f03a1dc5` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:43d20c87ff163fa4966a15bb433687e633fe7690a083c8773d5f3ea28b16714b` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 90 | `declaration-track:24fa86dc83a2830b64cd6d31b748ebad00b878e49d800ed9380780c83506da80` |
| 6 | `lemma` | [σ_smul](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/smul.md) | 96 | `result-track:62a8a6877bf55ce48c7a74eed783af0e08a00469e21dc119932880d9f824c358` |
| 7 | `lemma` | [σ_injective](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/injective.md) | 99 | `result-track:c0863f6384bdfae02ed9ce3718c6f93e1ffe05bde8f99687afedaad2041822e8` |
| 8 | `lemma` | [algebraMap_surjective](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/algebramap-surjective.md) | 103 | `result-track:5d012a36cc921d14c7b9165c92961a3f62adee870c656d84f05acff0368c116b` |
| 9 | `def` | [ofSurjective](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/ofsurjective.md) | 110 | `declaration-track:908200b23d859869e8e084470106181dbdeb99ffd6c84c4197648c81387ef617` |
| 10 | `def` | [self](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/self.md) | 122 | `declaration-track:a3f9c329850204c9f3c9c67f14591e635a45dc97607a6a71a33ec06fe389f13a` |
| 11 | `abbrev` | [ker](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/ker.md) | 128 | `declaration-track:1308648ffea899464397a66c7980b1af53782285e0d593b402d9202e2f8eb45c` |
| 12 | `def` | [localization](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/localization.md) | 140 | `declaration-track:be1faba96d7c5604232e1b106b6a0e90f07675f8402ff3874707aaf46e3b0d37` |
| 13 | `def` | [baseChange](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/basechange.md) | 165 | `declaration-track:951ca920527b484ca705b5b0a9ea8f213d7bacb0654fc9f17c3e60a97425563b` |
| 14 | `lemma` | [ker_baseChange](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/ker-basechange.md) | 172 | `result-track:fc3a71c0c1e578b199438acefc3660844d9d35fcc0bdfe755e7d9307e4d45fa1` |
| 15 | `def` | [algebraBaseChange](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/algebrabasechange.md) | 184 | `declaration-track:e4dc97f645413042d42e8bc0e3791019f4ad831d7454b1dc15d9bf9688990bd6` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 189 | `declaration-track:8244991ec1eebfb989601d124ee41d1ae3ad4ba0fe6fa1435e2b2d8df3ca6a6c` |
| 17 | `structure` | [Hom](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom.md) | 214 | `declaration-track:cc1129ac45e63e0dca6758042a7ad5f3b9c1a1cbf22a6d4b7a81b640eb28da99` |
| 18 | `def` | [Hom.toAlgHom](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-toalghom.md) | 228 | `declaration-track:6b346807cf03984f0fbf11ee3da98296523c5062a33148e2f4e567b303e0dc3c` |
| 19 | `lemma` | [Hom.toAlgHom_apply](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-toalghom-apply.md) | 234 | `result-track:b25062a65f7367321f7446a655bccdc7f13a59262b133a19dce625b798b1c455` |
| 20 | `def` | [Hom.ofAlgHom](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-ofalghom.md) | 240 | `declaration-track:bd5cbfcc77b900d84098982027c2baa4facc8e95195810b83b98e0b5e2a17e71` |
| 21 | `lemma` | [Hom.toAlgHom_ofAlgHom](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-toalghom-ofalghom.md) | 250 | `result-track:7e1d83cbb0e7b52e29b62b05855897ba088685146e4cb30b8c535047d4f7ea3c` |
| 22 | `def` | [Hom.id](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-id.md) | 261 | `declaration-track:2983e0f0f9797631405849eba18beaa7350295a9a89928c56b92e1a12b51ea54` |
| 23 | `lemma` | [Hom.toAlgHom_id](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-toalghom-id.md) | 264 | `result-track:484165b6bc937cd0f30bd2aa7820040d3286deddecd04620f918cf7ee5db0c6b` |
| 24 | `def` | [Hom.comp](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-comp.md) | 271 | `declaration-track:0b67a317ba5b9c18338465c668df18dcc2a3608acead4bd706c99edd9b0749fb` |
| 25 | `lemma` | [Hom.comp_id](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-comp-id.md) | 277 | `result-track:5f535c8afa3fd4374471677c1b146565e215f7da7be1d47a42784715303d42a1` |
| 26 | `lemma` | [Hom.id_comp](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-id-comp.md) | 280 | `result-track:8be1d924b8457569d6b737a21a0e4173c537b7cbed64cd83614889df19a780e0` |
| 27 | `def` | [Hom.mapKer](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/hom-mapker.md) | 285 | `declaration-track:8fc5874c0d3eb3e4d7fc9693e367e303c8e80af03d27505c59ffa50def93237a` |
| 28 | `def` | [toBaseChange](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/tobasechange.md) | 296 | `declaration-track:a06ddda6294d665d8afe46d7c722783cae252e9ca02ce521e601136d849a9fa8` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance.md) | 305 | `declaration-track:03b4b28379aff98ea72d7d768f122b561760ba36708384da5b170ff3f9c297e3` |
| 30 | `def` | [infinitesimal](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/infinitesimal.md) | 316 | `declaration-track:30dcdf4c90dd791047d2c7e5973316356355737ee6d352622d3cb7905a30d8fe` |
| 31 | `def` | [toInfinitesimal](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/toinfinitesimal.md) | 323 | `declaration-track:5722dc7a3d8c86657e806c4317f8c9aa013c3a8fd7c7308837aba19780f50ca4` |
| 32 | `lemma` | [ker_infinitesimal](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/ker-infinitesimal.md) | 328 | `result-track:714c9473d981edbdb2124ae64a6a077bc956651892302c221ae2ea4ed9d98311` |
| 33 | `def` | [Cotangent](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent.md) | 339 | `declaration-track:a79a928add049842c1f1ba132f8fd15f24aec9b623af3073b2b900b035969ac4` |
| 34 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 342 | `declaration-track:cdbd0847348a5e51addf154d38f5630c4a0f5e17f5bb20a2cf3cf022c36c785b` |
| 35 | `def` | [Cotangent.of](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-of.md) | 347 | `declaration-track:a03f707a6ab3883ba0e1a3992f4eba24cb9b12a97532d87d20185abed54afdd8` |
| 36 | `def` | [Cotangent.val](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-val.md) | 350 | `declaration-track:24fa02c7204b2512787e130ad753da9318062a6f04e20e2416bd28e7ff98b16b` |
| 37 | `lemma` | [Cotangent.ext](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-ext.md) | 353 | `result-track:25bb746474949dbe3d27ffd99d1ad7213390b4e6cb7c6bad9d7a69cdab56fcf1` |
| 38 | `lemma` | [val_add](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/val-add.md) | 359 | `result-track:be7df51c29b7f4c5b3d0973709dffa1fe54b7370d6e73539017f75f61fbac822` |
| 39 | `lemma` | [val_zero](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/val-zero.md) | 360 | `result-track:75b099de1d6179211ab5c8ea3887048b32aeb79dba8a8052a03de041a6f09a24` |
| 40 | `lemma` | [of_add](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/of-add.md) | 361 | `result-track:f038257c6c258cba226b29e6f3c7134fe9827958fbd3b36e3f196be7caf076c8` |
| 41 | `lemma` | [of_zero](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/of-zero.md) | 362 | `result-track:92044b349a8fc840f9300969a75a4878b375726c18b7b9459ad2705e36e69599` |
| 42 | `lemma` | [of_val](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/of-val.md) | 363 | `result-track:46e2189e9b8f3682abc48bea97ac8901e04399826cc02ac41c09f1d48a4966b6` |
| 43 | `lemma` | [val_of](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/val-of.md) | 364 | `result-track:d3072df69545341d9562b94bc0905de1973dd92b070af21ff0463ce9834faece` |
| 44 | `lemma` | [val_sub](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/val-sub.md) | 365 | `result-track:dc3c16c3ee892359cc975564c5084958f4bef7562c84bb032f2aaae9a4207730` |
| 45 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-smul-eq-zero-of-mem.md) | 369 | `result-track:3fe6abd8b00bb429e92eca05e190f3a7731b166e143a517cdabfebf69c2194de` |
| 46 | `instance` | [Cotangent.module](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-module.md) | 377 | `declaration-track:c840d11f0e3539eac036bb6e93dab5a93ebb4f4d279615392b823ade09001e03` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 393 | `declaration-track:e91ed747feca0caebdc3e605d5611659737c11507215809769b2d68c859d747c` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 396 | `declaration-track:5ec5eaeb715fa63a0bad3a9cfdf6da3415e1d6f217633154959e4ccf7743cd78` |
| 49 | `lemma` | [Cotangent.val_smul'''](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-val-smul-source-edition-3.md) | 405 | `result-track:a845bebdb8dd1d72c25a6bac9d9996903c49c6bcc3a37bfd62c831c4a4d5bbdc` |
| 50 | `lemma` | [Cotangent.val_smul](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-val-smul.md) | 410 | `result-track:536943a97739eb63b48b1c31eb046ba45e7145ac582ab51a079d3217453961be` |
| 51 | `lemma` | [Cotangent.val_smul'](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-val-smul-source-edition-2.md) | 414 | `result-track:9cc1f4080135896e10c0afa42c893a6167a07abed689d042061a8adc70f613fa` |
| 52 | `lemma` | [Cotangent.val_smul''](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-val-smul-source-edition-4.md) | 420 | `result-track:e02f29030b512604df2324f61ee22527ce92e6e3a4e3bcdd3849ea33cbd5750b` |
| 53 | `def` | [cotangentEquivCotangentKer](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangentequivcotangentker.md) | 425 | `declaration-track:09008a50329f68398a7220c41c8c00d724fea11adc09454f40b0351b770e08de` |
| 54 | `def` | [Cotangent.mk](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-mk.md) | 432 | `declaration-track:7ca31a3e87a445cba0ff7e94b0424ee60621893ec3ca735145c203551c4e0c3b` |
| 55 | `lemma` | [Cotangent.val_mk](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-val-mk.md) | 438 | `result-track:8c2a913f7f17fedfe94bbde6e88cb6d9438936e24af1f0d3aa666db34bd9c73b` |
| 56 | `lemma` | [Cotangent.mk_surjective](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-mk-surjective.md) | 440 | `result-track:1eb0344756fa4e24841cd446a4262bc6b7383287c2fe8068c74823a661f650fa` |
| 57 | `lemma` | [Cotangent.mk_eq_zero_iff](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-mk-eq-zero-iff.md) | 443 | `result-track:98718b5b631bf9b4d0df9c543e59d3c987e2c233cd2b2b8f93ecc623b26aab97` |
| 58 | `lemma` | [Cotangent.mk_eq_mk_iff_sub_mem](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-mk-eq-mk-iff-sub-mem.md) | 447 | `result-track:f48a9aab870e4b2363103f77ac558ae021416f6884412c00ab3b047cf7f3bcb7` |
| 59 | `lemma` | [Cotangent.ker_mk](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-ker-mk.md) | 452 | `result-track:6724c2ce9490d70385323fc73be604ed4a15661defeea30678c750b28694cac0` |
| 60 | `lemma` | [Cotangent.span_eq_top_of_span_eq_ker](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-span-eq-top-of-span-eq-ker.md) | 456 | `result-track:34c4eb04641e5671f84a686d37eb5fcd815f5580df462619e568c89c6562ba29` |
| 61 | `def` | [Cotangent.map](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-map.md) | 472 | `declaration-track:3251bdf22e5dfcb170a8a84b35a0b300a15da12bfe126093af29563bea3a4252` |
| 62 | `lemma` | [Cotangent.map_mk](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-map-mk.md) | 489 | `result-track:951b3ee6fa6cca299c6075b3dd1a03ca7b4e6d9d43bc753c28d925c525c2e164` |
| 63 | `lemma` | [Cotangent.map_id](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-map-id.md) | 495 | `result-track:86f4be03cad7e0bde1ef60121e5affbe2bd29dabbe3fc632c09549853b9f2fbe` |
| 64 | `lemma` | [Cotangent.map_comp](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-map-comp.md) | 505 | `result-track:3ee28b7354cbfd89d72f78cde8025644d2cc229ca5e5a18641b5219997585f9a` |
| 65 | `lemma` | [Cotangent.finite](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-finite.md) | 512 | `result-track:b0ea66c8a8f6c911412de71e3494cd8dbd3ca1cda47df62643946e83e3a78fbc` |
| 66 | `lemma` | [Cotangent.map_surjective_of_comap_eq](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-map-surjective-of-comap-eq.md) | 519 | `result-track:6da806b2b31ff468fe213c67f6b33e0a38f6522e5ab543b81d2f1fa6edfc8060` |
| 67 | `lemma` | [Cotangent.map_ker_of_surjective](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangent-map-ker-of-surjective.md) | 526 | `result-track:0a0b63781d12b33c96cad9c3833191b8ee09ba3a94b0c04d8b4f7d0ad7e86b55` |
| 68 | `def` | [cotangentEquiv](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/cotangentequiv.md) | 553 | `declaration-track:48863df7beaa7beffd3ae7d92dcc05b2861118ece56f82b6e16a670091001a20` |
| 69 | `lemma` | [contangentEquiv_tmul](../../../../CommutativeAlgebra/ExtensionBasicNamespacedPublic.lean/declarations/contangentequiv-tmul.md) | 574 | `result-track:9e3873d5dcc0e1def632d660d5d9973fa97df0415fdf4691ab30a5ef349f5a3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=475ce913970fe8605e4fe4685fa549a56a28146674bddd4f8c0a3eb96ae2710a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
