# Verification target: Restrict Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d",
  "lexical_observation_count": 109,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Cover.Open` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Over` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toScheme](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/toscheme.md) | 52 | `declaration-track:294754739c17e7a12fa30ce3dc1f5cb79e166041d707b8dde1398bf4732f47dd` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance.md) | 55 | `declaration-track:27af2f25c0a101cfe0c9065f4f17dc4466f0c1cf44ca37de2597d1f930ddcdd8` |
| 3 | `def` | [ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/anonymous.md) | 58 | `declaration-track:79c66802274aab7b539936431e995c1555bddf63b6f1b8ab5f303a1d27f6a8cc` |
| 4 | `lemma` | [ι_base_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/base-apply.md) | 61 | `result-track:2bb06b05ba7bd634bde11b27bd9a92a8a7db20d033aa78e9d11e60f217c513a0` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance-source-edition-3.md) | 63 | `declaration-track:831397549c5724139aaae8428ed73c5c162619810adb1126eb0e336a80283f78` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance-source-edition-7.md) | 65 | `declaration-track:db4ad50a3a015aed02372bc5ef3a15d4b0f26ff5f119dfa22e854b32475fff5f` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:a0a8f4ef451287b94dc2d2c804349323c75c886712404dac6a204899f0c68f4a` |
| 8 | `lemma` | [toScheme_carrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/toscheme-carrier.md) | 70 | `result-track:3e7571038b282cd67d92a16db2e60334ff4aff3f1a40bd831bf498308a0a66d4` |
| 9 | `lemma` | [toScheme_presheaf_obj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/toscheme-presheaf-obj.md) | 72 | `result-track:fa839ba5d0bfc73c7827e01165a06112ef5d4191e9e4d5e038d98166faa5f448` |
| 10 | `lemma` | [toScheme_presheaf_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/toscheme-presheaf-map.md) | 75 | `result-track:a21a4719938d70134a1d8f828039b609f638638a7c4b8a546353942330cd9fad` |
| 11 | `lemma` | [ι_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/app.md) | 79 | `result-track:79967231885dbbf7b2137c175595baf4f32016aa714526fdd64befeca6cc727f` |
| 12 | `lemma` | [ι_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/apptop.md) | 84 | `result-track:e666d6c2999061e298e131a85ed69380b74277c1a63bb203812d09c6769a70d5` |
| 13 | `lemma` | [ι_appLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/apple.md) | 89 | `result-track:e7cd886fe3b2debf03a5058b4b6873501081fcc74bccf11ec52e3f80a46e5c7c` |
| 14 | `lemma` | [ι_appIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/appiso.md) | 97 | `result-track:d86fb4837800d8e636318980aa8291401c776699cbf7003a8ce91e1724d2e9f6` |
| 15 | `lemma` | [opensRange_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/opensrange.md) | 101 | `result-track:1f58702f080b40f5279c91b186b7931d781fdfe458d5000d5001f6ce7f4c3a50` |
| 16 | `lemma` | [range_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/range.md) | 105 | `result-track:5c2cdbe7ed9f835460912491ec7d61c38eb9316646605bd8feb83e4e43e7c880` |
| 17 | `lemma` | [ι_image_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/image-top.md) | 108 | `result-track:591fd8baa7a8b085274c611b1b8f255eb0040f5ef95d4a025b1901e3d25dc374` |
| 18 | `lemma` | [ι_image_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/image-le.md) | 111 | `result-track:ce7e3017a68cf4c6e99fb2e323c2b240b09c28822272326268f929d78ceecf01` |
| 19 | `lemma` | [ι_preimage_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/preimage-self.md) | 116 | `result-track:70767e359ce566b3399215b03b5c44128693b10ca049aaf565a59d424ed3a2a8` |
| 20 | `instance` | [ι_appLE_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/apple-isiso.md) | 119 | `declaration-track:2f446a8e9885325c97e90c6694717e7b9be45765b4dcf05239898a2bb54847fd` |
| 21 | `lemma` | [ι_app_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/app-self.md) | 125 | `result-track:334254c8ff614c9686bea5ea856d6ad08c20fcbc57d46c45b340cdcdc3b089f3` |
| 22 | `lemma` | [eq_presheaf_map_eqToHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/eq-presheaf-map-eqtohom.md) | 127 | `result-track:9826eb2135d431b2e23b78b1aea1b0aaec5d398bca73c990db3d0fafcaada23d` |
| 23 | `lemma` | [nonempty_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/nonempty-iff.md) | 132 | `result-track:b3e4df4e30be36678d2da8d4c03bf86da42c6e57c80b875eb3505c7be5183cf9` |
| 24 | `def` | [topIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/topiso.md) | 139 | `declaration-track:12f3d380c48371079fc78dc82f68a89edb8ac023af544682b48fffc653487b99` |
| 25 | `def` | [stalkIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/stalkiso.md) | 143 | `declaration-track:944385ad3bc3a2728c5b749ec08e9326f2b28bffe35a42fdd17e7c099b387e3c` |
| 26 | `lemma` | [germ_stalkIso_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/germ-stalkiso-hom.md) | 148 | `result-track:37da793315ddbac91e2bc240da1947606f2a31e4fc1f4ce1c71216e11e9da095` |
| 27 | `lemma` | [germ_stalkIso_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/germ-stalkiso-inv.md) | 155 | `result-track:08cbfbafd88cf7829b472e697f1116b21f4fe6e75f7dc16fe219812c9a62be73` |
| 28 | `lemma` | [stalkIso_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/stalkiso-inv.md) | 160 | `result-track:1c0bfd5ede9a93e4e90337018299d0eb84fbdbbb8e51424377e78b7021fda4c2` |
| 29 | `def` | [Scheme.openCoverOfISupEqTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-opencoverofisupeqtop.md) | 174 | `declaration-track:319043d2e64536a209834862542595edc0ab45494b7828a925ea7da21bfc8d14` |
| 30 | `def` | [opensRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/opensrestrict.md) | 189 | `declaration-track:79bd67ee29ab89ce3f899b4bfd47e33b8ecb75362bf59e220857e6306f6ad63e` |
| 31 | `instance` | [ΓRestrictAlgebra](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/restrictalgebra.md) | 193 | `declaration-track:7379caa2d876b410bae47a0514b9fd0578fe177ef9b6060f9ae1e74ef13ee760` |
| 32 | `lemma` | [Scheme.map_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-map-basicopen.md) | 197 | `result-track:43327a386f874803bc8f6f4d30594c01975e17b71b875c52074ec40f49eb56c0` |
| 33 | `lemma` | [Scheme.Opens.ι_image_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-opens-image-basicopen.md) | 209 | `result-track:da7aa7a0357b9f93060be909826fe714ff2e9e5c85c1797b751081af278e1ad8` |
| 34 | `lemma` | [Scheme.map_basicOpen_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-map-basicopen-map.md) | 213 | `result-track:3dad71ab5846afdaaa01440c0b7556c667ed28c3f2aa106ffeb60a980ec33944` |
| 35 | `def` | [Scheme.homOfLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle-source-edition-2.md) | 221 | `declaration-track:cf71f8af0324c62cfbff4fff0d14fe8b838b80b8869691d8323c08657240d2a7` |
| 36 | `lemma` | [Scheme.homOfLE_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle.md) | 225 | `result-track:cc90861541a25e19beea60fed5a35df0f353e7da42db002077a08bfc1b82ef2f` |
| 37 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance-source-edition-8.md) | 229 | `declaration-track:f712d4db579b8a8594eca009885559dc88ff9cb1fb3321f3921a3272f8ac899d` |
| 38 | `lemma` | [Scheme.homOfLE_rfl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle-rfl.md) | 232 | `result-track:09a9e4b6bf2da6fd20f4af985ab68119ccc56671af2ed912ef5880df0571374a` |
| 39 | `lemma` | [Scheme.homOfLE_homOfLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle-homofle.md) | 236 | `result-track:06c3dd74be5ee0c187ab681837ad1abcfad689ee3aef4890a6569ebf55800e91` |
| 40 | `theorem` | [Scheme.homOfLE_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle-base.md) | 240 | `result-track:f0369cd4a0b3fea1e927165baa2a300cf60447600f7dd5c6696d3cbd78ab4f5d` |
| 41 | `theorem` | [Scheme.homOfLE_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle-apply.md) | 246 | `result-track:58c6b09f6b68154ccf8c61f658f92ba813416db01c65f6293962a2a9b2abf454` |
| 42 | `theorem` | [Scheme.ι_image_homOfLE_le_ι_image](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-image-homofle-le-image.md) | 251 | `result-track:cd58018f60698243c8089eb3fdc506871ca4eddcb771c280e7601ebc3b9711dd` |
| 43 | `theorem` | [Scheme.homOfLE_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle-app.md) | 259 | `result-track:d611c4119b6d5d1c153d2e65b99a4d7253775b69319da86516971de936b08dd0` |
| 44 | `theorem` | [Scheme.homOfLE_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-homofle-apptop.md) | 271 | `result-track:e0212a9b3de430b9dae6a868c5fe478d8bba43a8f72406d3083f0639a1fa6e3e` |
| 45 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance-source-edition-6.md) | 276 | `declaration-track:b262f579dd3d91fca98bae67cbb864faec25309f9a5f480e9046205f442bc05c` |
| 46 | `def` | [Scheme.restrictFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-restrictfunctor-source-edition-2.md) | 283 | `declaration-track:e4d9890b2a9164994c77aa25afd9cdfcbc77c2fa1ebce65c437fd1b4c25a81fe` |
| 47 | `def` | [Scheme.restrictFunctorΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-restrictfunctor.md) | 296 | `declaration-track:cf929c99a7fd3f4584ebca9d83742e4676b228c03ae13603d8a1a7787477ff04` |
| 48 | `def` | [Scheme.restrictRestrictComm](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-restrictrestrictcomm.md) | 307 | `declaration-track:74c85f12b1b07f1611a748b6ec182803ed6eb7703e02677c2ad9054f4133aa09` |
| 49 | `def` | [Scheme.Hom.isoImage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-isoimage.md) | 316 | `declaration-track:37eb8977bba6db73cd5e4241090a28b319f60ca7f30de409394ec43718caefd3` |
| 50 | `lemma` | [Scheme.Hom.isoImage_hom_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-isoimage-hom.md) | 322 | `result-track:bdda1f21b11218bf70c9114d32e73a75935609acd80d907dddad7393af5bbf4a` |
| 51 | `lemma` | [Scheme.Hom.isoImage_inv_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-isoimage-inv.md) | 328 | `result-track:c6e22dd7c4e0e261d163c62fdb309cb8fb704e6bbeb7f0f4514cc84e12e90ba2` |
| 52 | `def` | [Scheme.Hom.isoOpensRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-isoopensrange.md) | 334 | `declaration-track:dd8a7ac1299af02f30d7dd4776add208ae033bd3e25bcda1a353a554f25c444a` |
| 53 | `lemma` | [Scheme.Hom.isoOpensRange_hom_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-isoopensrange-hom.md) | 339 | `result-track:f65b9c898b8fbd28d5e7875f3a01ecfcbcf26fa068ba28d95cc85275f0c2f123` |
| 54 | `lemma` | [Scheme.Hom.isoOpensRange_inv_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-isoopensrange-inv-comp.md) | 344 | `result-track:517c11760ec9feb3ba77623860c3655fd6e5e930993afb5ceb6aa4bf658034f6` |
| 55 | `def` | [Scheme.topIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-topiso.md) | 350 | `declaration-track:ddaa5effc9c4605bdae7fb32bcb4a78c60b7611fed08fe57823d4889a5b4ae44` |
| 56 | `lemma` | [Scheme.toIso_inv_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-toiso-inv-source-edition-2.md) | 357 | `result-track:dd0b944063a4239f25ff3ad428f2bf6f93036fcca1dc3f7fec62f3bae94848c3` |
| 57 | `lemma` | [Scheme.ι_toIso_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-toiso-inv.md) | 361 | `result-track:b9446ecb8d7c3eea65421a6ab19f61fd1906e7923d2821d0c407b9212c32da0e` |
| 58 | `def` | [Scheme.isoOfEq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-isoofeq.md) | 366 | `declaration-track:b2a1a348154829dad681a95c1f4c9ebafe48f70a3871d36e3a512ba3449c70b2` |
| 59 | `lemma` | [Scheme.isoOfEq_hom_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-isoofeq-hom.md) | 371 | `result-track:8bf2b8241f03589122f79a80c0ba07eb7d1bcbd1edea35973844a8c63b9db2a6` |
| 60 | `lemma` | [Scheme.isoOfEq_inv_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-isoofeq-inv.md) | 376 | `result-track:b8c709409735962f9fb869f3ea7513030aa8624611f11ab674f0a35628a62e7b` |
| 61 | `lemma` | [Scheme.isoOfEq_rfl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-isoofeq-rfl.md) | 381 | `result-track:b85555019da4a098b17602d1626d7cf398442a34ae21856a2f819690ce54b1c7` |
| 62 | `def` | [Scheme.Hom.preimageIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-preimageiso.md) | 388 | `declaration-track:a4a638ad172ead522de70384c628b8dccaf5c66cad3e66d926e48490871a6500` |
| 63 | `lemma` | [Scheme.Hom.preimageIso_hom_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-preimageiso-hom.md) | 396 | `result-track:31d1f935778e102f2b29f92f53274c43f36f829c38cb3894134b35ca37df03e3` |
| 64 | `lemma` | [Scheme.Hom.preimageIso_inv_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-hom-preimageiso-inv.md) | 401 | `result-track:4bf485ceb9f7b842e44b24fb659a1819cd44cf1efc57d3aed9a6de65c56190a8` |
| 65 | `def` | [Scheme.Opens.isoOfLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-opens-isoofle.md) | 406 | `declaration-track:81b959280781d7ce0c542c2e27d978c941aaeab7f9d9009f73a43ba3ac8b8b29` |
| 66 | `lemma` | [Scheme.Opens.isoOfLE_hom_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-opens-isoofle-hom.md) | 414 | `result-track:eef2501176644fee891ec50ad84c02d34b41cbd46a2454330d82312fc707fcb8` |
| 67 | `lemma` | [Scheme.Opens.isoOfLE_inv_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-opens-isoofle-inv.md) | 420 | `result-track:1999656f69f7553d6335ecb7c0b0bfdc3b7e285c510b75b0c25c8dd841cf0cf7` |
| 68 | `def` | [pullbackRestrictIsoRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/pullbackrestrictisorestrict.md) | 428 | `declaration-track:b7594f86b9ff5afb6dc0ef50d3157712ade0290fba9a550d6581c0e799073de0` |
| 69 | `theorem` | [pullbackRestrictIsoRestrict_inv_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/pullbackrestrictisorestrict-inv-fst.md) | 434 | `result-track:79fb5c6d684f3c8d903cfa58126dbf1ec97afa11250b0be4a4b437e8726c32b3` |
| 70 | `theorem` | [pullbackRestrictIsoRestrict_hom_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/pullbackrestrictisorestrict-hom.md) | 439 | `result-track:b593ecd53c1c78018ba4fdf83a913329588116dfdf6e4423faf0c48ecc5977c4` |
| 71 | `def` | [morphismRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict.md) | 444 | `declaration-track:4f2b4446845e342682d187f2ddb72fdba09b04f3e80a85374fa93d9a7fed5469` |
| 72 | `theorem` | [pullbackRestrictIsoRestrict_hom_morphismRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/pullbackrestrictisorestrict-hom-morphismrestrict.md) | 451 | `result-track:d00e485b325135a0bb32cd5e861e74be831f7ba7a47c5e1bdacec3578d8f2db6` |
| 73 | `theorem` | [morphismRestrict_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-source-edition-2.md) | 456 | `result-track:be1c21c58ee0ea82435dddc3ce5d6444d3eff91591521694a3d27bc922f35a2f` |
| 74 | `theorem` | [isPullback_morphismRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/ispullback-morphismrestrict.md) | 461 | `result-track:2082e467077fd9f4c365e11f6c2d10ff1a418889d76936633b0db1948dc398cc` |
| 75 | `lemma` | [isPullback_opens_inf_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/ispullback-opens-inf-le.md) | 471 | `result-track:1afc430c19d26d5cb776d8359ce71f2be1deda8d381b0872f4ad81e5aec8ed51` |
| 76 | `lemma` | [isPullback_opens_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/ispullback-opens-inf.md) | 480 | `result-track:6f3496ff9b87c923fffb56e4fa1ca8128536048c2a312058b3634a5b0c9dca45` |
| 77 | `lemma` | [morphismRestrict_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-id.md) | 487 | `result-track:a06ca95ff8033260880da4a1d513bf69afcb1f7b2f25ae64529f1550ba1148e2` |
| 78 | `theorem` | [morphismRestrict_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-comp.md) | 491 | `result-track:95c81ee68c6cab6ac2b9840ba78738a0137c0783a41706f8c7e207d1a7916f38` |
| 79 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance-source-edition-5.md) | 504 | `declaration-track:a5782e790ae5313ca5f94cd2dc71c8e274f7919593d15a465eee6b0d96d9764d` |
| 80 | `theorem` | [morphismRestrict_base_coe](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-base-coe.md) | 507 | `result-track:38ee8480796543af96256f5949ab5878020bc7744ce2e13eb721cd5db1e062ef` |
| 81 | `theorem` | [morphismRestrict_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-base.md) | 512 | `result-track:fec4271f19fb954127b940bc16cb177bcfaf484cf35ad6904eb8c605b462c688` |
| 82 | `theorem` | [image_morphismRestrict_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/image-morphismrestrict-preimage.md) | 516 | `result-track:d1ad443253764c1dcf67dcdceeabe8bbd9368a126508ba4d526f5977828c845f` |
| 83 | `lemma` | [eqToHom_eq_homOfLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/eqtohom-eq-homofle.md) | 534 | `result-track:7855db2305a34eb58bf59e338589e8995e90f6f870056ede8a13915357d55e42` |
| 84 | `theorem` | [morphismRestrict_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-app-source-edition-2.md) | 537 | `result-track:6fc1bef94795a0e0a7b84ddb22bab54806f05c0d4b303ee5002dc96b6ed86d9f` |
| 85 | `theorem` | [morphismRestrict_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-apptop.md) | 552 | `result-track:96a3fcdf2a96dee7c03b7b252e3c8f64fefa0f0ab4e02051e3a65476555e55ec` |
| 86 | `theorem` | [morphismRestrict_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-app.md) | 558 | `result-track:656281d5a910ecc5e494100b34918684e411e17ebbb9d321d1ed7c74aa7cb525` |
| 87 | `theorem` | [morphismRestrict_appLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrict-apple.md) | 563 | `result-track:ba380490a4b410e374723290c738626f6ad854056cbb687e610d033f22b8f3a9` |
| 88 | `theorem` | [Γ_map_morphismRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/map-morphismrestrict.md) | 569 | `result-track:6026b1b9b5e25f51245beeaf0322d0b558a2b04d1edc8f181ec910e1eb823223` |
| 89 | `def` | [morphismRestrictOpensRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrictopensrange.md) | 578 | `declaration-track:af47ffc6285e70f17d178383035f5bcc5c9f3e0277da207806d299cfa1f957b5` |
| 90 | `def` | [morphismRestrictEq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestricteq.md) | 596 | `declaration-track:a078d9edcf1dc02f00f911b5a96d789f9350e02f3b9edf6ac69f74d518b97ace` |
| 91 | `def` | [morphismRestrictRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrictrestrict.md) | 601 | `declaration-track:e8024f69bf949814d6a3d075ca9609be00a339f8ed90ff7408356b94318a0253` |
| 92 | `def` | [morphismRestrictRestrictBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrictrestrictbasicopen.md) | 620 | `declaration-track:b2728bf09ae24662eefa0aab0678de4263c224aba5c16afc7dd1b67d0ce79c28` |
| 93 | `def` | [morphismRestrictStalkMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/morphismrestrictstalkmap.md) | 638 | `declaration-track:f754650cf44ceb19211b9c18d44d1f674d2b0c5bb72faf2bf313fc3ec57c1e04` |
| 94 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/instance-source-edition-2.md) | 648 | `declaration-track:7df0962495b0d3f561ccd1fc335bd9f231e96eb5364efeb245ab8fed06ece530` |
| 95 | `def` | [resLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle.md) | 658 | `declaration-track:cefa99558722819867a04dddfd2faf70a4e4c4bc3d1abb5cd64906ea62bf5031` |
| 96 | `lemma` | [resLE_eq_morphismRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-eq-morphismrestrict.md) | 663 | `result-track:4daba606638e25c4db927837604ea7c8d3cabe6af0f29c1a8cc6a74e964fc1c5` |
| 97 | `lemma` | [resLE_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-id.md) | 666 | `result-track:ad02b2d4b1234f74a12b8fecc93c1a3c75e77c41d82c35d18c85677f085d8d32` |
| 98 | `lemma` | [resLE_comp_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-comp.md) | 671 | `result-track:d5632ae87945a13f36d8e7b357241a9d3d4a1043739326cbf9f56f3f48a1102d` |
| 99 | `lemma` | [resLE_comp_resLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-comp-resle.md) | 675 | `result-track:ba815019d93fd15103ae90dbe274b754e10d38f50b6dc0fc08e86d51f4b16e03` |
| 100 | `lemma` | [map_resLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/map-resle.md) | 681 | `result-track:55861d4693386c4c716d408525fc55c89b381fb9a359131b13313a4b2ecc0d8d` |
| 101 | `lemma` | [resLE_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-map.md) | 686 | `result-track:8543ea5e15dc0c8822a010e1b6b961e2fdf156ed7342159151acd7cef8807719` |
| 102 | `lemma` | [resLE_congr](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-congr.md) | 691 | `result-track:f4d0f17dd35d004142245c6b85f9c991a7950f2626d4388f2b376e7e7888b0c2` |
| 103 | `lemma` | [resLE_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-preimage.md) | 695 | `result-track:c00a6a019c8147737cc2ea7dc44f51edf99cba1a37e4bef1a2e431ae99989c5c` |
| 104 | `lemma` | [le_preimage_resLE_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/le-preimage-resle-iff.md) | 700 | `result-track:5e6181297d6c933713e72665854b87a59fd85a239c5f5005b4220a4b5584b04a` |
| 105 | `lemma` | [resLE_appLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/resle-apple.md) | 705 | `result-track:85a1bdae8f1dbb74864b020b2459429efc6494aa9b45aba068ef8a981d3209d6` |
| 106 | `lemma` | [coe_resLE_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/coe-resle-base.md) | 716 | `result-track:852fd05049b63c9dd5b3129715dca4c5c40d4f7c529eaf2d863fc49215563777` |
| 107 | `def` | [resLEStalkMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/reslestalkmap.md) | 720 | `declaration-track:090e074789797df7fb8c421c7c350272a08a7ad1a955a80e66defe2453b2e24c` |
| 108 | `def` | [arrowResLEAppIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/arrowresleappiso.md) | 733 | `declaration-track:87e581c3b00bceea8d631d17f162ec0d1fdc64fd7eda35fbca999d0abd272b18` |
| 109 | `def` | [Scheme.OpenCover.restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RestrictNamespaced.lean/declarations/scheme-opencover-restrict.md) | 745 | `declaration-track:dd088fa95ae937fc9389f5a991a32e75a69e693f5f045799c432e1fb8ae734ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=712949bf07ef98ce95bb58b586dc36148af69f4e297f6522b751372391daff0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
