# Verification target: Valuation Subring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2edd68d275ad223ae00305ae43a4f8a067ad061c",
  "lexical_observation_count": 152,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2edd68d275ad223ae00305ae43a4f8a067ad061c`.

Source path: `GRWTSK/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean.json)

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
| 1 | `structure` | [ValuationSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuationsubring.md) | 49 | `declaration-track:7be519b82640d999fe7ce8e4af34fd2e51568427bb56ad91a972a30448f0b1dc` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 57 | `declaration-track:5218bd87ef9a668a3d91c00d740da7d426e2f4d233f779a30a48297b928806a4` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance.md) | 64 | `declaration-track:074357bbb1b6ed20c4ac8273bd8298e774c4f9c8aa185e47ebda9c5d1de36c5d` |
| 4 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-carrier.md) | 66 | `result-track:d5047e8ece0922ed38b1fcf73df3cef9e635886ed68ee4c1e99d5ea8db4d55f6` |
| 5 | `theorem` | [mem_toSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-tosubring.md) | 69 | `result-track:06b0f1a731e1e2a7ee729a9cb5c604ac175766b830239c9c957c03b72aca0ddf` |
| 6 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ext.md) | 72 | `result-track:45b5c39aed42198b8e7f18f34c47c9b658da3f1d6a5520d6280fb3c627389364` |
| 7 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/zero-mem.md) | 74 | `result-track:8f426647dbf7c3616062688346c16b7280586ebfb3dc55c3dadfc229691bc4bb` |
| 8 | `theorem` | [one_mem](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/one-mem.md) | 76 | `result-track:297a635fac3b0fefd4449b52e87eac9a35d87ea64fabec99becb22e32c4228f2` |
| 9 | `theorem` | [add_mem](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/add-mem.md) | 78 | `result-track:be5fd34fda9d17cebef4f51e781e23919c801e66844edd45be738a981f3cd988` |
| 10 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mul-mem.md) | 80 | `result-track:8ffe9d8ccad45eafcaab69be45bee273e71b914bbad91b4fd3b5431545407c20` |
| 11 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/neg-mem.md) | 82 | `result-track:297187a4cd31d696772d445985546b2ca0756351df76d99e0c0abe61237fea03` |
| 12 | `theorem` | [mem_or_inv_mem](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-or-inv-mem.md) | 84 | `result-track:92e8677da21301f139baab44fc84da8839a7682bb4630309a2ec1fd0b42d9b60` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:12f703f5e116321c71bb36c4870af085ac8fc416140e766f09ec34fc16295ce9` |
| 14 | `theorem` | [toSubring_injective](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/tosubring-injective.md) | 93 | `result-track:e37c01b5ea945a6d2d8e886ab51fba6abbb56a4593de0d148c13d838dc7e5722` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 96 | `declaration-track:394ff41b2008e01c0a8c36ca70113d932d3cd2ca5a8f2321238906aa75679184` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 98 | `declaration-track:652bc7a235114ea267d9ccc26f77a40bc82d53e9eb2bbb31b087226923417b5e` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 100 | `declaration-track:52b1dcfa1eadeee1b4d0da679fdc03817b782d77ce4ac79a9d73eaaae780b7d3` |
| 18 | `theorem` | [toSubring_top](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/tosubring-top.md) | 104 | `result-track:9386c3a380ae6a1824a170438a7cffd15aac5cfe257de97f56272b75c871f7bc` |
| 19 | `theorem` | [mem_top](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-top.md) | 107 | `result-track:e5fc66c43da27cdd0773ea9a091027d7642e53a0729348108681fc7afa869849` |
| 20 | `theorem` | [le_top](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/le-top.md) | 110 | `result-track:83481e1795537c26ac5a40416108a410aed82a9460d4debacfeb8f9ea59bb7cb` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 114 | `declaration-track:ea32e70700475053dbb72266b73562a839caac439e494b446cd0d4e6fe5e5d64` |
| 22 | `theorem` | [top_coe_div](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/top-coe-div.md) | 117 | `result-track:f4e074a073f9c757a3c73d200c7ad0fb66cad98c8bad2e410e37108df85bb620` |
| 23 | `theorem` | [top_coe_inv](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/top-coe-inv.md) | 122 | `result-track:2f872e17defd5237aabf1a511d04781dad9fea4468ece495761749195a19921a` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 126 | `declaration-track:4d5b70dac101724f1c44d2d46fedc066ee5744be11d76fcb8fed53d5f1fe0af8` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 129 | `declaration-track:a6a9566379f4aa61b2cb4695e482b9b48cb9c04d3ebcc4f2ca32cbfe0a8638c4` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 132 | `declaration-track:db51f3a63313000db04f4602a5d56c1b5536c30fcd885e18914edef4e148ccc5` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 154 | `declaration-track:2291903d02601a45190f160ac9ca3906b6ab251960fd9f580af04a86af2aab10` |
| 28 | `instance` | [isLocalRing](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/islocalring.md) | 156 | `declaration-track:406fa61c2118eb4bc2da5f0c8d2e40597bb073fc5880f3a5a212fdd298f075d8` |
| 29 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/algebramap-apply.md) | 159 | `result-track:c7e96be4b25e0f78c13e7f7eabb8a43b1cda112a4beb3712683f73c4fbf4d2ed` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 161 | `declaration-track:d3e2e1dd42090b75c39e41bca10d03e6548bfe8adc3077519ca78b91bdb0c100` |
| 31 | `def` | [ValueGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuegroup.md) | 173 | `declaration-track:596b5122d4acd897d2c09603aa0ce67d022334e961ccbc9951ad023f054cec1a` |
| 32 | `def` | [valuation](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation.md) | 178 | `declaration-track:ec6089fb422012324c942e0f1f305cad4e1b1ecd5ab5acb968231ad03e53f2a3` |
| 33 | `instance` | [inhabitedValueGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/inhabitedvaluegroup.md) | 181 | `declaration-track:cbc21c76ccbd7bd47dcb920a184348d35afa72ba1c3773cbda4352f1bb68e801` |
| 34 | `theorem` | [valuation_le_one](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-le-one.md) | 183 | `result-track:1cbf15ffc203cea95aecbf8266ead4617e5549773fe741042a34ed3614ce590a` |
| 35 | `theorem` | [mem_of_valuation_le_one](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-of-valuation-le-one.md) | 186 | `result-track:5cb0fc52532b9e08d1cb1e6493eb243e4db2126e59c0ffefe81d2ea2f43aad06` |
| 36 | `theorem` | [valuation_le_one_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-le-one-iff.md) | 191 | `result-track:82b41bedbbb9a880955e924927c70f7228d7b172464b7c2efa8d8526c03e9c00` |
| 37 | `theorem` | [valuation_eq_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-eq-iff.md) | 194 | `result-track:6aa39af9131513e9d925eaf2f804f1a57a8aa6b3315811c355905a8aa1416db8` |
| 38 | `theorem` | [valuation_le_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-le-iff.md) | 197 | `result-track:80bac42f95528b8dc5708ad305fd02902fa979854dc5710581431ce452cff37a` |
| 39 | `theorem` | [valuation_surjective](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-surjective.md) | 200 | `result-track:2f84b68da5bd6cef3fc5dc75fda704bb301d44a112af6b0e48536d26aeca3926` |
| 40 | `theorem` | [valuation_unit](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-unit.md) | 203 | `result-track:4fd823b310317af664d6177590cc4e84ffa22fe8874fdd4453a6683a073dc66d` |
| 41 | `theorem` | [valuation_eq_one_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-eq-one-iff.md) | 206 | `result-track:4f6f13072939c6f5c7a34c7fd21a1b992ebaea949701112f8f1825f94bb7c084` |
| 42 | `theorem` | [eq_top_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/eq-top-iff.md) | 218 | `result-track:b121439546b00e3037fb29a0ab1161e76db16217a94badd3bda285e2142304dd` |
| 43 | `theorem` | [valuation_lt_one_or_eq_one](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-lt-one-or-eq-one.md) | 221 | `result-track:aeb85f4c2543cbf349e7ae46de7db4c72393236751533894c463b7a93dd4aeec` |
| 44 | `theorem` | [valuation_lt_one_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuation-lt-one-iff.md) | 224 | `result-track:97cf1c16fa89f7620754cfcfcf123f0ce656497974f91b3957f73062cd8acd87` |
| 45 | `def` | [ofSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofsubring.md) | 231 | `declaration-track:efc2bb89f9e8d7d47c24696472caa8ad1c9aa54bea388a7ad601a1acb6360bf4` |
| 46 | `theorem` | [ofSubring_toSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofsubring-tosubring.md) | 235 | `result-track:4b48437f8946dd4eb1b93dd66705c3c2e0494c1623bb517968ed4a15e04b28ac` |
| 47 | `theorem` | [mem_ofSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-ofsubring.md) | 239 | `result-track:6249bc45857fb77aeddfe1a69db8a8834b052a17ddff2ad2f2cd74e8330dd326` |
| 48 | `def` | [ofLE](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofle.md) | 244 | `declaration-track:487504745170352b172512f48c45be88b6bd28b5e51d2edc236b1a2ab963f47c` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 249 | `declaration-track:bc91f7345681beb279f1fa66b8080a148ac2769915ef893cc0c274660d5720a4` |
| 50 | `def` | [inclusion](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/inclusion.md) | 257 | `declaration-track:6196d598c19254a3c73f3a8cb127dbc37314e2cab7a195e9efa32642f5ab0c15` |
| 51 | `def` | [subtype](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/subtype.md) | 261 | `declaration-track:3fd04ffc43ad17f763e17c9095a40e222f016d101086ec797ee7c441dbe3e71e` |
| 52 | `lemma` | [subtype_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/subtype-apply.md) | 265 | `result-track:ea71ecdf5effee9d87248297df61f4dab54935515ab07d45bb6f939964dc9064` |
| 53 | `lemma` | [subtype_injective](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/subtype-injective.md) | 268 | `result-track:8d9aae8c9b34b6b92f1b617cac62617c6d7f20127ad4918abb7645af735c9ca4` |
| 54 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-subtype.md) | 273 | `result-track:d35cb7f74e600dfcc139fd0032ee6fa3748d2ed256fdc9dce546da8afd606cec` |
| 55 | `def` | [mapOfLE](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mapofle.md) | 277 | `declaration-track:add6e64af48bf40004890243897c728897e73dfd04c991f9c71599fad1b18f00` |
| 56 | `theorem` | [monotone_mapOfLE](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/monotone-mapofle.md) | 284 | `result-track:adc2705d1aa0e5380678d91a6f22a2259fc8748be3cb0945701b1549e48d531f` |
| 57 | `theorem` | [mapOfLE_comp_valuation](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mapofle-comp-valuation.md) | 288 | `result-track:dbe241030c01c5f8d38ad0817c6a76611cba0b81e4dda119949a9f943860e69c` |
| 58 | `theorem` | [mapOfLE_valuation_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mapofle-valuation-apply.md) | 292 | `result-track:327b9d908ba7105af7a860aa21176825bc9ed012fa6779fd8e5c2982dc1e9bbc` |
| 59 | `def` | [idealOfLE](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/idealofle.md) | 296 | `declaration-track:c396f90da2acca5146c46e67e2c2d42afa90fe5871590936223e14d31ce79005` |
| 60 | `theorem` | [idealOfLE_self](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/idealofle-self.md) | 299 | `result-track:d7d7c65fc215e3d228baf086876c54119e94ea6450187c2df8dfd9165a999ff2` |
| 61 | `theorem` | [idealOfLE_top](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/idealofle-top.md) | 302 | `result-track:217a8f2a3f3fda7292f55108ae0ffd19b98c80c4378511528d41046c2215c526` |
| 62 | `instance` | [prime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/prime-idealofle.md) | 306 | `declaration-track:ff9ad82416b3395631e4eb02658d077881c7aa9c8cd2c30e37157f2525bc4656` |
| 63 | `def` | [ofPrime](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime.md) | 310 | `declaration-track:b571504af4b9641109e5bebd2ce85a6a026c7939605a7fe87d3fc84398341fb6` |
| 64 | `instance` | [ofPrimeAlgebra](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprimealgebra.md) | 316 | `declaration-track:9330f98f5c9d6a7a7e7f6dd5b373cdc5fae38c78a01a755abc3d74a9903cdc19` |
| 65 | `instance` | [ofPrime_scalar_tower](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime-scalar-tower.md) | 320 | `declaration-track:0bc7bf3dfa4c91fdd03b474b8469e0dc993195ad39af7f862f76ad0436403bd5` |
| 66 | `instance` | [ofPrime_localization](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime-localization.md) | 326 | `declaration-track:9f5e405fec3e87ce262a61c73d3ef00367c9c6d5bf15521331047bf262aed49e` |
| 67 | `theorem` | [le_ofPrime](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/le-ofprime.md) | 331 | `result-track:f7f3eed21bd628e06e8e65be49ba042890717aab03f0084be7d6120a73f7b6c1` |
| 68 | `theorem` | [ofPrime_valuation_eq_one_iff_mem_primeCompl](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime-valuation-eq-one-iff-mem-primecompl.md) | 334 | `result-track:3e2858076127f4c929fa2242adee846c556848ff0d8ee9ac8b4086e78340bfe2` |
| 69 | `theorem` | [idealOfLE_ofPrime](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/idealofle-ofprime.md) | 339 | `result-track:eaec8555d52f465b5efffa3bf1f7b091a0386f5a935ac62b9bcffb34e047da06` |
| 70 | `theorem` | [ofPrime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime-idealofle.md) | 346 | `result-track:8a92c9e61f2ff1ced459d8be8dc12e238840c6cde4cfd7db247b231bf951a0b9` |
| 71 | `theorem` | [ofPrime_bot](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime-bot.md) | 368 | `result-track:3a9e27f3d9a8815c43676e646f19a3a9a7227266df7d11a095bfadda64e3a181` |
| 72 | `theorem` | [ofPrime_top](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime-top.md) | 371 | `result-track:d0322b37ada6590edd30bd1954be3b9469cae9b1760c8353a4b055255dc1c35d` |
| 73 | `theorem` | [ofPrime_le_of_le](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ofprime-le-of-le.md) | 373 | `result-track:9c225b2ae3eed3de6402f3276996aa8e168948388cb940b415ef8b1b0d034555` |
| 74 | `theorem` | [idealOfLE_le_of_le](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/idealofle-le-of-le.md) | 376 | `result-track:f5a5477416c0800fb8cc4465febea7a1404c70b145a2e4e5166f0c4c44322da7` |
| 75 | `def` | [primeSpectrumEquiv](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/primespectrumequiv.md) | 386 | `declaration-track:5fd72e1995b79391337baf1852b238fa32edebb7171b5858801492b74cf9eeea` |
| 76 | `def` | [primeSpectrumOrderEquiv](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/primespectrumorderequiv.md) | 394 | `declaration-track:3ea46956c2d9c98be63c44a63b4d19d6f38eb53f9f8700e5d313746829ae4cbb` |
| 77 | `instance` | [le_total_ideal](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/le-total-ideal.md) | 402 | `declaration-track:9fc1c87bd92ba7b523fb8d224ceada8994474b1c461e9f1e78b5aecb16868da6` |
| 78 | `instance` | [linearOrderOverring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/linearorderoverring.md) | 408 | `declaration-track:d50d40474d57784f5dc2d2cdd27a66ccac80bcb3adb4ba2f1a540bdfad4036a6` |
| 79 | `theorem` | [eq_self_or_eq_top_of_le](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/eq-self-or-eq-top-of-le.md) | 418 | `result-track:caf0bccc0c6e813b5a0e2493d95e0b3f822eb08cb95bcf2bd8e4f19eeece2b1c` |
| 80 | `theorem` | [eq_of_le_of_ne_top](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/eq-of-le-of-ne-top.md) | 424 | `result-track:76201754448bf22a328f1d6f594553c6e5bdf7851e48f7e1d019422d9a4f38f0` |
| 81 | `theorem` | [eq_of_le_of_ne_self](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/eq-of-le-of-ne-self.md) | 427 | `result-track:40ebafd586145631a7e8a0d0268ed72f848516171d7d0fe1703eb5153f9e0e9c` |
| 82 | `theorem` | [eq_of_lt](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/eq-of-lt.md) | 430 | `result-track:7f19183295026960c6ef1800c89138cb7644e397d3089cf10748145c0ed5f76c` |
| 83 | `def` | [valuationSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuationsubring-source-edition-2.md) | 448 | `declaration-track:e1707a6b4ab032f19a222f75a84b509dccd3a1fb4303d91f7b49d235077d6b41` |
| 84 | `theorem` | [mem_valuationSubring_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-valuationsubring-iff.md) | 456 | `result-track:287b0ee559e6122d814f949f6e633fc7778d7adb5161fc47f424f9ee5ff999a5` |
| 85 | `theorem` | [isEquiv_iff_valuationSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/isequiv-iff-valuationsubring.md) | 458 | `result-track:84ce36772714a15f3a35186dc2052b63f1d4b3924d04b1a8c1529ac942af9a39` |
| 86 | `theorem` | [isEquiv_valuation_valuationSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/isequiv-valuation-valuationsubring.md) | 467 | `result-track:5e28b63a7766ecf34926f48d632ec7922201db701f99f352f463aae3ec3ebe3b` |
| 87 | `theorem` | [isNontrivial_valuation_valuationSubring_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/isnontrivial-valuation-valuationsubring-iff.md) | 473 | `result-track:714308121d0f934944e40cd92be13a32a3ed7932cec3f17fffaeca5028f68b56` |
| 88 | `lemma` | [valuationSubring.integers](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuationsubring-integers.md) | 477 | `result-track:86da947947da8accd1f6df83df3893d0003b101d0d414de32c7b7e1e81e4f6e3` |
| 89 | `theorem` | [valuationSubring_eq_top_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuationsubring-eq-top-iff.md) | 481 | `result-track:2b20b6e94f76f3e7845634629b80dcb54aca04103442ba79833756ac21a5aba4` |
| 90 | `theorem` | [valuationSubring_valuation](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/valuationsubring-valuation.md) | 492 | `result-track:48ed23f27042d3cd474e64adb3a2e7109370598d444e294d552865747f28017e` |
| 91 | `theorem` | [integer_valuation](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/integer-valuation.md) | 495 | `result-track:91970ef496386ab65898da346f279f91eda82a4cf7a2d117b43b7c19ad138277` |
| 92 | `def` | [unitGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitgroup.md) | 501 | `declaration-track:e628d1ef877ffa1b41f4550aaa943d3d13bf0623db8e4849410a132b9d3fb92d` |
| 93 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-unitgroup-iff-source-edition-2.md) | 505 | `result-track:7dd6947879b9d57479b536f02d0b922c23428159623164d5b89e8aae49f0cdf6` |
| 94 | `def` | [unitGroupMulEquiv](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitgroupmulequiv.md) | 508 | `declaration-track:9e181fa8f280e98e3f03a3d3f8f2fd0424f5660f9ccf52145085195cef2b2de7` |
| 95 | `theorem` | [coe_unitGroupMulEquiv_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-unitgroupmulequiv-apply.md) | 518 | `result-track:ed5b90e82fa5d05d776cfd4f1c174d9b29260b83461143d0e438d3a24d4d64d0` |
| 96 | `theorem` | [coe_unitGroupMulEquiv_symm_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-unitgroupmulequiv-symm-apply.md) | 522 | `result-track:64f78cfd66075c4cd64464cfcd8f9b8a52f689f5e9b8e95d839b0f5449942b6e` |
| 97 | `theorem` | [unitGroup_le_unitGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitgroup-le-unitgroup.md) | 525 | `result-track:0633493e19075f1332591ce21a7b2948331629e3f629c090197dfef3581f9850` |
| 98 | `theorem` | [unitGroup_injective](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitgroup-injective.md) | 543 | `result-track:b8fa4d01763e6809b435768752fac7b35cd04cc9d46c9f72ff1625c1dc2ced9b` |
| 99 | `theorem` | [eq_iff_unitGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/eq-iff-unitgroup.md) | 546 | `result-track:71b01d5547b8a856e3eb382e642b09cc562617459c97f76f55606154b14cf574` |
| 100 | `def` | [unitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitgrouporderembedding.md) | 550 | `declaration-track:8599a3c51aadcd7cc654457d3f9bb09e94980e936a0147c4e7a2918cb7356df6` |
| 101 | `theorem` | [unitGroup_strictMono](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitgroup-strictmono.md) | 555 | `result-track:5a4a8549681d08885f00ea30a4d230de8e557dbe666a44fb10a0ceab01810098` |
| 102 | `def` | [nonunits](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/nonunits.md) | 563 | `declaration-track:bda63848b4eb657aee65af73559ecef7d5cd9551c9293949462c3457abbbe5ba` |
| 103 | `theorem` | [mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-nonunits-iff.md) | 571 | `result-track:511cfd5593fc64476e1663ae2edf4877c9075c205407c3a1a137aa606349c8b8` |
| 104 | `theorem` | [mem_nonunits_iff_or](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-nonunits-iff-or.md) | 574 | `result-track:433a8e6abf79c9e7eec683f27d44afedf2433c895ba1732c3bfb1cca7eed1e17` |
| 105 | `theorem` | [inv_mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/inv-mem-nonunits-iff.md) | 580 | `result-track:fcb8369d697d761fa4a2df90ba671fd8cfb852e1e1f1dd3ffb0ee7d0362ac361` |
| 106 | `theorem` | [nonunits_le_nonunits](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/nonunits-le-nonunits.md) | 583 | `result-track:530c31d2943f6735c0f16f3d33c4833de111d3f6bf2bcc25279ea79ccbe37d0c` |
| 107 | `theorem` | [nonunits_injective](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/nonunits-injective.md) | 592 | `result-track:fc41e02a86b23e66a1da56247320c971a300a73eb4e3093699e0edf7b2747193` |
| 108 | `theorem` | [nonunits_inj](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/nonunits-inj.md) | 596 | `result-track:913f829d744e1bb190bdee78b746e888469ffcd20c90d58ec998890edf04f45a` |
| 109 | `def` | [nonunitsOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/nonunitsorderembedding.md) | 600 | `declaration-track:3835e00afcd0a0a1d007cb065261867dc97afa3fc60844227684a351dead8d58` |
| 110 | `theorem` | [coe_mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-mem-nonunits-iff.md) | 612 | `result-track:0540578d6947f247f5ff8319461f76166a3c481a400a48d4b84f3c7c55d1f97d` |
| 111 | `theorem` | [nonunits_le](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/nonunits-le.md) | 615 | `result-track:a3b87d3074d65525de9a20d606eb60bfc3dcc30edb1398e21fea47a738516eea` |
| 112 | `theorem` | [nonunits_subset](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/nonunits-subset.md) | 618 | `result-track:7ff31a3aaae0f1dab2fbc793fe69f37ef9c9c1e319739f79add0b7313eb0bba2` |
| 113 | `theorem` | [mem_nonunits_iff_exists_mem_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-nonunits-iff-exists-mem-maximalideal.md) | 626 | `result-track:32149dccaff6d6f63c7ca01d756f6fda551c541645f7b829102a5a29c1d3aa7c` |
| 114 | `theorem` | [image_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/image-maximalideal.md) | 632 | `result-track:566e069763f648bd748152dcc0b66dcf935414883b7a8e39ee6c12bfe177a376` |
| 115 | `def` | [principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principalunitgroup.md) | 643 | `declaration-track:25c1ee61245cc88585bb8ad726b5375fcc938291e2d94a2184981c9015cde8e0` |
| 116 | `theorem` | [principal_units_le_units](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principal-units-le-units.md) | 662 | `result-track:75cfba8ee8ce12b371cc1553e41b1f468203c34caceffc3b5019acd0f12c64d2` |
| 117 | `theorem` | [mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-principalunitgroup-iff.md) | 665 | `result-track:ba202d4edffb8eb97eaad85f498bff720cb34ed36516cd8f3907bb446754755e` |
| 118 | `theorem` | [principalUnitGroup_le_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principalunitgroup-le-principalunitgroup.md) | 669 | `result-track:901fbfc597628f86a2b4c83938920e26be37e8417db7a3564b9374d1d7b59b48` |
| 119 | `theorem` | [principalUnitGroup_injective](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principalunitgroup-injective.md) | 683 | `result-track:07e4f0a8c57740e2ac67c50e252835696259f96e1aa2d09b7c7d4305cc36b483` |
| 120 | `theorem` | [eq_iff_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/eq-iff-principalunitgroup.md) | 687 | `result-track:f674f04898e26d8e1860b0f68ef69f0f9e79e2b6370532eb0cccb78fc5a821e7` |
| 121 | `def` | [principalUnitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principalunitgrouporderembedding.md) | 692 | `declaration-track:f6262461346eb9a3c4ee2b3151ca9e56650daca70075a559772e54506b516b0e` |
| 122 | `theorem` | [coe_mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-mem-principalunitgroup-iff.md) | 697 | `result-track:c8169ff39f80d99d6ec484b4a6fd3e6e30ae66ef4693140ef5c511967febeb4a` |
| 123 | `def` | [principalUnitGroupEquiv](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principalunitgroupequiv.md) | 708 | `declaration-track:b6d587cd01a0ba6c4292d717d41f83800221959baf6ddbdf7807ab373b4a1ba7` |
| 124 | `theorem` | [principalUnitGroupEquiv_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principalunitgroupequiv-apply.md) | 721 | `result-track:92aeb04823eaa8f6cb43b4079c788aa4df7ed37ba6a1e9f172ad9c79cee4c438` |
| 125 | `theorem` | [principalUnitGroup_symm_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/principalunitgroup-symm-apply.md) | 725 | `result-track:75b4e1cfde7b3eb848851d194c899ad6d259a36788f4e5cb8560acaf1a309a6f` |
| 126 | `def` | [unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitgrouptoresiduefieldunits.md) | 730 | `declaration-track:b4ddaeb9177045374c48139624dd6b47c55d99a3b67897a33c3c74c3b8cd1b0e` |
| 127 | `theorem` | [coe_unitGroupToResidueFieldUnits_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-unitgrouptoresiduefieldunits-apply.md) | 734 | `result-track:eb8f6205d73aac3a005947da9d12f5b2b7ce143cd61965f0b25e4f2d0d8ebc20` |
| 128 | `theorem` | [ker_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/ker-unitgrouptoresiduefieldunits.md) | 739 | `result-track:d354126f0f23d55a7923a3fa33a1cf8f16280b353fe724752dfcd21dd0538666` |
| 129 | `theorem` | [surjective_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/surjective-unitgrouptoresiduefieldunits.md) | 747 | `result-track:6fb26ae69340a0c0e82294043a107e44fab6bb27ced9c47353943294f8bbe9b3` |
| 130 | `def` | [unitsModPrincipalUnitsEquivResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits.md) | 754 | `declaration-track:67be24c8b80b29f76e800ff37af45f3a01528e7e63f98d916edb9af9d0f8d864` |
| 131 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk.md) | 759 | `result-track:a8f87f6e3c0213c7085bd00afe52b78d2e717240a69d403bc6ac0e4d7f60c854` |
| 132 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk_apply](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk-apply.md) | 765 | `result-track:d199558f4f9b007bbc5ca551626a6b60339bf2119f85b106570b1c6b113c5de5` |
| 133 | `def` | [pointwiseHasSMul](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/pointwisehassmul.md) | 794 | `declaration-track:d062b39c46325815f8b175d2c0bdc2368ddfe7435037fc7af5be0232d9caaa1e` |
| 134 | `theorem` | [coe_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-pointwise-smul.md) | 806 | `result-track:563dbe888e53bfb81a06637c3460634978a0fe401559dd3134771f08bf3ca842` |
| 135 | `theorem` | [pointwise_smul_toSubring](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/pointwise-smul-tosubring.md) | 809 | `result-track:1a4da30849506f4514f3eb159dd18f15a137e773645249522fd16e0ce2b1258b` |
| 136 | `def` | [pointwiseMulAction](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/pointwisemulaction.md) | 818 | `declaration-track:6ee87063f6d276e810286a294b6faba71eb41f68f6aaa529eee1f928891470df` |
| 137 | `theorem` | [smul_mem_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/smul-mem-pointwise-smul.md) | 825 | `result-track:4d7aa628e5ab0c7e75907e660ca8b40495bd38259debde9bb54ba6b35b46dfa7` |
| 138 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 828 | `declaration-track:8ebf3d73a2acf9ef03535a4ce05c992398b26f0543852b769bc6cbaf4d62bdcf` |
| 139 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-smul-pointwise-iff-exists.md) | 831 | `result-track:abfd0257f99fc348ef774c757d6c88fc608fd46e98ef175189c02413e2ec1fc0` |
| 140 | `instance` | [pointwise_central_scalar](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/pointwise-central-scalar.md) | 835 | `declaration-track:a96693e1dae589d1ce36b8c6ee187fd07e2df80be856d4ec969d9fe00240af66` |
| 141 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/smul-mem-pointwise-smul-iff.md) | 840 | `result-track:04e34a2b3fd906276dcb8f8d0ca0c8b47889d5b631834aada98c7636ae9fca5c` |
| 142 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 843 | `result-track:6fbbf73f4c9961e1d392a9957128246230b166c0fbd29dd7167e2a2e8a945d5f` |
| 143 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-inv-pointwise-smul-iff.md) | 846 | `result-track:763bf6dcc0fa2d3910dceb839acc3eb9261381f9eaedcbf873a66116f4a98e35` |
| 144 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 850 | `result-track:c9b9c74f8d96b8e5573db454e8113ddd67398bb2266737c0dd19aa7b7d975db0` |
| 145 | `theorem` | [pointwise_smul_subset_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/pointwise-smul-subset-iff.md) | 853 | `result-track:81aec436c100846b4b3cfcc85088ea848c449401b409dbe45d04883c513d6598` |
| 146 | `theorem` | [subset_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/subset-pointwise-smul-iff.md) | 856 | `result-track:f8dfdf75153d85ef3933bb6977c8db35e18c2f88e974baa3a26ad5151f02c56c` |
| 147 | `def` | [comap](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/comap.md) | 866 | `declaration-track:387da2a6a9aad9cf64796f7b2955dfd13bbd9745e8cb3b34081fa24711d2e450` |
| 148 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/coe-comap.md) | 870 | `result-track:e63f7fa4d4a47ff3bb9fd474ea66cb4865af2ffa27b7c8d7636f871323790457` |
| 149 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-comap.md) | 873 | `result-track:05e2c785b23739bef3146a1d747845ec1981267d3e7093d7cc591e76e2557a44` |
| 150 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/comap-comap.md) | 876 | `result-track:e2c285a542575a19d4b6441a3547dac030a27e2815610340b064aaf63a4e0c74` |
| 151 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-unitgroup-iff.md) | 887 | `result-track:2e1e206ddae6fc453a94577ecaf18fcaef17da5d29a9828d34898d511de2c144` |
| 152 | `theorem` | [mem_maximalIdeal_iff](../../../../CommutativeAlgebra/ValuationSubringNamespacedPublic.lean/declarations/mem-maximalideal-iff.md) | 890 | `result-track:a0f3764aaccf4d199dfb2a11abd49c3cfbea3764c72b30a3681eb461e0840002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f3131b7a2a6aac74b730dc58125f68a53c74827787205ec9334a475486100fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean","GRWTSK/_verification/specifications/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
