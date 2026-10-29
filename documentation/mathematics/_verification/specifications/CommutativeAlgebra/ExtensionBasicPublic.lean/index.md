# Verification target: Extension Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a285c000db0d58feabbb54c8de8cc10d4ce129bc",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a285c000db0d58feabbb54c8de8cc10d4ce129bc`.

Source path: `GRWTSK/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean.json)

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
| 1 | `structure` | [Algebra.Extension](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/algebra-extension.md) | 47 | `declaration-track:3a03fefb1b3f2ad7ecc730086c1d5825f41ac257d2edfc4951de034b63ec0914` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance.md) | 69 | `declaration-track:159b658bfdf955d80a2fd35287d4364315458c2d6e675f69c200680b4db29e9e` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-3.md) | 72 | `declaration-track:943892fa6adac130d0e9ecc0a4e46293af1ab32e780fbf801ecf5b69af359e88` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-2.md) | 75 | `declaration-track:855b16d9eeeaa3c4e28e9e987df5504455ff60ba108ede3b86736a53bdf653c7` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-5.md) | 82 | `declaration-track:bd03b9d592e7fb770512476a4b31e7a85297e755b21f09b034b5b17d36637545` |
| 6 | `lemma` | [σ_smul](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/smul.md) | 88 | `result-track:2e77766921d198a0052f58fbcfae71c4ca811bbf19d28efa7ffe4d101eec4791` |
| 7 | `lemma` | [σ_injective](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/injective.md) | 91 | `result-track:e098bbc86f5795608301ac137e089d5a4e6a7ada3d31b633157a6095a49c5b15` |
| 8 | `lemma` | [algebraMap_surjective](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/algebramap-surjective.md) | 95 | `result-track:20db55185ed1b0b6197db44c7d9f164dbd5e8ee297153a7a3e66cc1f1718b54d` |
| 9 | `def` | [ofSurjective](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/ofsurjective.md) | 102 | `declaration-track:89ee36ee2ea8c0ace99a9abcf62a13bee1d1d6c831d331d48f75c412645d7263` |
| 10 | `def` | [self](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/self.md) | 114 | `declaration-track:f11e60e6dd2a6b1323922042a0591b0878f30f254921380fcc5f4f5026eeb2f8` |
| 11 | `abbrev` | [ker](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/ker.md) | 120 | `declaration-track:d99c07599383452dcb876748b1322d902605bde6fb9a2dc22733a613711b9939` |
| 12 | `def` | [localization](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/localization.md) | 132 | `declaration-track:76c229728c090ca280d8e7d1eb7351bab027f36b41766608949411896fb96649` |
| 13 | `def` | [baseChange](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/basechange.md) | 157 | `declaration-track:6d0d77c8518fc8203f20cd60120f71583d6b0e8965f33cc84d97b72d0887d235` |
| 14 | `lemma` | [ker_baseChange](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/ker-basechange.md) | 164 | `result-track:c979940436d6aa4e3706ebbdf2d83c34e90fcb0c6bf04ee971567cddd32501ee` |
| 15 | `def` | [algebraBaseChange](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/algebrabasechange.md) | 176 | `declaration-track:3e88403657f112e5525c6f60dd6521e931b1870d169492f29faaac1b3e0cd0b6` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-6.md) | 181 | `declaration-track:c2ee09cf4451557d61932e650015460c224585ffc60636398bd61ba3ff970eb8` |
| 17 | `structure` | [Hom](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom.md) | 206 | `declaration-track:bc0b4421c40f6986f84779726e8cc55855efd3c73b2d6a8ed0a1da7e22d3d92e` |
| 18 | `def` | [Hom.toAlgHom](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-toalghom.md) | 220 | `declaration-track:7c3b46e3a2dd3b05f7227a82d7b81dae6b2ff31b3562349138a6bf8a8d8acf30` |
| 19 | `lemma` | [Hom.toAlgHom_apply](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-toalghom-apply.md) | 226 | `result-track:c912fc029a990c1ea8fbb8226f28941438ff01dfee797c2108061a9b49de0bb7` |
| 20 | `def` | [Hom.ofAlgHom](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-ofalghom.md) | 232 | `declaration-track:eb83a8882e1610ca169b0dd2a80f00a1006d1d7b4ee0465c712229c9f414b20f` |
| 21 | `lemma` | [Hom.toAlgHom_ofAlgHom](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-toalghom-ofalghom.md) | 242 | `result-track:150cf40f718131df1a051ff94a1eb3f18350773b49bd474835bfcb41a39fe385` |
| 22 | `def` | [Hom.id](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-id.md) | 253 | `declaration-track:38d5c1b67eaa3017c39a905cf528c339dd7835e0b8551bb02493be11df8453ca` |
| 23 | `lemma` | [Hom.toAlgHom_id](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-toalghom-id.md) | 256 | `result-track:c8db60a9d5bbda40b061c12fb819ceb6922e4fcc37c3a81e8e9b653c4f932e59` |
| 24 | `def` | [Hom.comp](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-comp.md) | 263 | `declaration-track:2ab12ba270395ffc4e809d8d938208be75f564db4a13c462f85caba31754d6a9` |
| 25 | `lemma` | [Hom.comp_id](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-comp-id.md) | 269 | `result-track:2b14a2a107cfcdb5e29cae0d5825c907b2b74d7da915234c1c590b63edb59baa` |
| 26 | `lemma` | [Hom.id_comp](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-id-comp.md) | 272 | `result-track:5d98666776d4310d27ff3d0d77dacf553d5283c04e6fdb28c859eb00c224684d` |
| 27 | `def` | [Hom.mapKer](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/hom-mapker.md) | 277 | `declaration-track:ae78d9da3ab7145b127b6b287b9576cd56f572cb9e1a5b3836389731f4c7ca1d` |
| 28 | `def` | [toBaseChange](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/tobasechange.md) | 288 | `declaration-track:097931f825cb9e32118472e3e6be16257c9af36fab160564ccb3986b2dd272a6` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-9.md) | 297 | `declaration-track:f59b3dafdc129243a0a9033241ad45e51442dc16e8624d5896f0259ec21cfbab` |
| 30 | `def` | [infinitesimal](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/infinitesimal.md) | 308 | `declaration-track:55595e9a302a6020dad1dd746f974fdb4ae1b4907ba2cdc76c4a50532cbd83a6` |
| 31 | `def` | [toInfinitesimal](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/toinfinitesimal.md) | 315 | `declaration-track:7a39d5ff03c0fd072eebd245b468c798141c17c86f2ca1e42e1d8b3e0a854db8` |
| 32 | `lemma` | [ker_infinitesimal](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/ker-infinitesimal.md) | 320 | `result-track:db2b4812be80eb714b51517be63466a2187b882eaeb677e369d7eaf5ac9a8cb6` |
| 33 | `def` | [Cotangent](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent.md) | 331 | `declaration-track:f40ef5e247e0b048e3b730823fc4aec5c2c5789714b94345c64babda9f327acf` |
| 34 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-7.md) | 334 | `declaration-track:ddb3359074ca0a74a7f913f85c68bff498e9a464b5917e38266549417a97c10a` |
| 35 | `def` | [Cotangent.of](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-of.md) | 339 | `declaration-track:eda66877e14df8821b5b3a32452098a24e60cfe7051146e4ac53b4d1639c5e7c` |
| 36 | `def` | [Cotangent.val](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-val.md) | 342 | `declaration-track:634428f01faafec5b16dd0d396cd6e02d348314d4cba44dcc0800b0584e743cd` |
| 37 | `lemma` | [Cotangent.ext](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-ext.md) | 345 | `result-track:bf53bb9269ac2ce912b6fe5e322102812ad7e801eb2725c7c262f4efe0d92240` |
| 38 | `lemma` | [val_add](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/val-add.md) | 351 | `result-track:e8ee7ffbe9c5cad7b39c7c4ee53fe08b013e914b2148a49fa8a93f6587027955` |
| 39 | `lemma` | [val_zero](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/val-zero.md) | 352 | `result-track:d807ba852b8a2bd4218ee9ed54cc19e3f1dd0e2c803e4a3baddfb34e64f14129` |
| 40 | `lemma` | [of_add](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/of-add.md) | 353 | `result-track:33a2e93e06ed023eb5ecd59bcdda4ca718fefaeadd24d91566d86318d33524f5` |
| 41 | `lemma` | [of_zero](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/of-zero.md) | 354 | `result-track:0249990ba42be3a3d6344a3e5fa092a3623206539e2ff0d2b1e27e26cf9534c6` |
| 42 | `lemma` | [of_val](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/of-val.md) | 355 | `result-track:adcc24aef57de8228f47bf0c35274a61fc95891207ef95412470e9e5a90e3b8b` |
| 43 | `lemma` | [val_of](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/val-of.md) | 356 | `result-track:2cd74c6b5ea50f85f3599ae4376eccec42ce926a22e207a8f5744e182dc7be49` |
| 44 | `lemma` | [val_sub](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/val-sub.md) | 357 | `result-track:25b4d5e19cf185c36e38cc3eafa93079d67050f16b37cc21c8213aa09b968d55` |
| 45 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-smul-eq-zero-of-mem.md) | 361 | `result-track:f88b335f029c1c6f36da1fb314302425db2c7cbd64a8a20764266d2df869acef` |
| 46 | `instance` | [Cotangent.module](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-module.md) | 369 | `declaration-track:d41b175fed7669854efffcdabe66cc36ec7ffdfee1dc00adb78c9efb7c727524` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-8.md) | 385 | `declaration-track:f434580dfb93bd8f42131fdc89d9587c4eccb943672fcd6d460aff69ab3ac0c4` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/instance-source-edition-4.md) | 388 | `declaration-track:a2552b7a33caf19e7b61e70c2b1069f9faf4d884b572bc99e8de69b5462d9263` |
| 49 | `lemma` | [Cotangent.val_smul'''](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-val-smul-source-edition-3.md) | 397 | `result-track:8d9f88560f3245a899ad2d3c612c80572871223374848411304316a030ec5065` |
| 50 | `lemma` | [Cotangent.val_smul](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-val-smul.md) | 402 | `result-track:0435bb2d7913e85473cca46321a35b6d39286ea0d8a60855603b700dcd6d8a2c` |
| 51 | `lemma` | [Cotangent.val_smul'](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-val-smul-source-edition-2.md) | 406 | `result-track:15f88ae5d37edc892012754b1fe58fe594def164adfa023bec6f93bbda82e24d` |
| 52 | `lemma` | [Cotangent.val_smul''](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-val-smul-source-edition-4.md) | 412 | `result-track:9593ec414334854b8c8dd0a02c6e9492b1c33caad87227575168b305dea1687a` |
| 53 | `def` | [cotangentEquivCotangentKer](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangentequivcotangentker.md) | 417 | `declaration-track:4e48b63813466678ab6b3fb723a94a307b3991bf5f89c715b0eb1934891f2cbe` |
| 54 | `def` | [Cotangent.mk](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-mk.md) | 424 | `declaration-track:b9fc5625c9027ff7362e143352d8a6d679c9d8ddf7409a2a950049f34760ca35` |
| 55 | `lemma` | [Cotangent.val_mk](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-val-mk.md) | 430 | `result-track:656ac1b45b1079740424d619bca513896b5ae9f933d930404d66746f684e8894` |
| 56 | `lemma` | [Cotangent.mk_surjective](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-mk-surjective.md) | 432 | `result-track:2b4fa71dcb54201a47e4a64449ae69f8a6eb8c8014c66414ca10a5126194233f` |
| 57 | `lemma` | [Cotangent.mk_eq_zero_iff](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-mk-eq-zero-iff.md) | 435 | `result-track:a01147a8bd921a5bb84245f9b03eb7d4d0261c143ceb239c05015410bcc3cc7e` |
| 58 | `lemma` | [Cotangent.mk_eq_mk_iff_sub_mem](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-mk-eq-mk-iff-sub-mem.md) | 439 | `result-track:e76b747336780e92b7ca0609bf81127dd1bf948fcf922a2146fc1641ba2df7b8` |
| 59 | `lemma` | [Cotangent.ker_mk](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-ker-mk.md) | 444 | `result-track:014dbf0e2526651d5b12fa1fe9bccd5899394f9ff7db7d21c3a6360de6ebc8f3` |
| 60 | `lemma` | [Cotangent.span_eq_top_of_span_eq_ker](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-span-eq-top-of-span-eq-ker.md) | 448 | `result-track:327b16e4b11c76bee6d5cf6f2d1d86084339fb020438fa9e4c54479c9b76324c` |
| 61 | `def` | [Cotangent.map](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-map.md) | 464 | `declaration-track:e5ec43195dff1c521afe6c868923564a5e2b22dfa27c27c5db9e59d5761c559e` |
| 62 | `lemma` | [Cotangent.map_mk](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-map-mk.md) | 481 | `result-track:57cba2a34b92f1b729f5f4b8a47e54a37d20ded266b53bca5312c35dc03e552e` |
| 63 | `lemma` | [Cotangent.map_id](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-map-id.md) | 487 | `result-track:d9f699126ea58aa143177cde84d07e9dfb64adeddbbed45438afe22f263987d6` |
| 64 | `lemma` | [Cotangent.map_comp](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-map-comp.md) | 497 | `result-track:d82db673cc15d2a7147038ffb66a70008b8f9b23ce0a960036d6b8fe19c56dfa` |
| 65 | `lemma` | [Cotangent.finite](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-finite.md) | 504 | `result-track:f2f8e166c5c9080a0bf0f7d29467cfaa4e4af126166ca2314bb1a370188362e0` |
| 66 | `lemma` | [Cotangent.map_surjective_of_comap_eq](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-map-surjective-of-comap-eq.md) | 511 | `result-track:8ea83979f3778c8113625ca88cc63591fda6b0e0c6d26e3147c367dd62546f63` |
| 67 | `lemma` | [Cotangent.map_ker_of_surjective](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangent-map-ker-of-surjective.md) | 518 | `result-track:aeaff8d2c4834217186de1f3e6c5857a63c2a3e3ae3584449044919c6b6ddc10` |
| 68 | `def` | [cotangentEquiv](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/cotangentequiv.md) | 545 | `declaration-track:27b94d2ac3f5a24e3d3f3ce3a80844a17dd78f80349017a351b82763eb1c4d1a` |
| 69 | `lemma` | [contangentEquiv_tmul](../../../../CommutativeAlgebra/ExtensionBasicPublic.lean/declarations/contangentequiv-tmul.md) | 566 | `result-track:e4916c6fd23a662605dcac640483c97bd58a2a7cfd2b2fbb645c5fbaa686e915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fd374867d7755f0e986f45e2f4985a468cfae3f4ada75b8ff1e7e7b37781b6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
