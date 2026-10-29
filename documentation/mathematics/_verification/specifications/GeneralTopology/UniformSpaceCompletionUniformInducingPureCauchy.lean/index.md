# Verification target: Uniform Space Completion Uniform Inducing Pure Cauchy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7788721b3919655f7cc54f275fbe1166422a576e",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7788721b3919655f7cc54f275fbe1166422a576e`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.AbstractCompletion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CauchyFilter](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/cauchyfilter.md) | 60 | `declaration-track:9af49b13ccb047802eca332b5506d2c0f781cee57bb26fe8d35992503688f9ba` |
| 2 | `def` | [gen](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/gen.md) | 76 | `declaration-track:5e0a20e554ad9fed3d8d488b347f47eaf3c6b1dbb51cb211e9049eeb3d69b018` |
| 3 | `theorem` | [monotone_gen](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/monotone-gen.md) | 81 | `result-track:e822929cf3b4498526cae8c2352f87448cd10897eddb5d7a8532b9fd7807d122` |
| 4 | `theorem` | [symm_gen](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/symm-gen.md) | 87 | `result-track:702ac002310655fc616f93bf03ff29fe9532a77b5c85f1f811dd9f668f54646c` |
| 5 | `theorem` | [compRel_gen_gen_subset_gen_compRel](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/comprel-gen-gen-subset-gen-comprel.md) | 104 | `result-track:79434890cc6d375d36c9df10d82253e72d7ba74e02ba892d85aa37aa8d397178` |
| 6 | `theorem` | [comp_gen](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/comp-gen.md) | 115 | `result-track:0b9f445bf0de1a7a0b92559f660dc52cb0c6dd0f6c0ee28f2fd384156668437a` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/instance-source-edition-3.md) | 130 | `declaration-track:a12c88a921603c8fa2fb6460d3fcce2d6ff0145df95b23763e4ea3d9b176707d` |
| 8 | `theorem` | [mem_uniformity](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/mem-uniformity-source-edition-2.md) | 138 | `result-track:8436ac64b7a3cddcffcdea236ebf285910a5323e92dfab78f2d5a65ebde42757` |
| 9 | `theorem` | [mem_uniformity'](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/mem-uniformity.md) | 144 | `result-track:00e99eab3e8854776530556e9f007aa8ccf42aeeed517e3d48c7ce9d7e788e0d` |
| 10 | `def` | [pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/purecauchy.md) | 152 | `declaration-track:f24e45361de2c7ab6c259bc8ba13a6899c57f03532b536bd2943d47810f87d69` |
| 11 | `theorem` | [uniformInducing_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniforminducing-purecauchy.md) | 157 | `result-track:9487cadc1e444bbf99dbc1964701292b6c94a6316a6fafdb6a696c34fb411df9` |
| 12 | `theorem` | [uniformEmbedding_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformembedding-purecauchy.md) | 170 | `result-track:ff6854ceb95fa9d78f30a4fd275bde193d282d8478de82af36e8174a7c7f7bc2` |
| 13 | `theorem` | [denseRange_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denserange-purecauchy.md) | 176 | `result-track:c56f1214aecd29b8d2f2e1f8651a044ec926e3366029aaa81eda41f0aaa7cb73` |
| 14 | `theorem` | [denseInducing_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denseinducing-purecauchy.md) | 202 | `result-track:28f98a7eff94e9d54469e14cc0d78e3e6945031ba3b0abb21877c993efdfbc68` |
| 15 | `theorem` | [denseEmbedding_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denseembedding-purecauchy.md) | 207 | `result-track:1940d1b2ed0c8c6c06734da57db3c267567209a26406a79b98510f37acc148d6` |
| 16 | `theorem` | [nonempty_cauchyFilter_iff](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/nonempty-cauchyfilter-iff.md) | 212 | `result-track:4edbed5000cfe92d0b54f4f1866e77704df551fe4801b86e2d4f376bd7c10825` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/instance-source-edition-6.md) | 226 | `declaration-track:cb69f34e86878217737425c81b4d4aca414b9189c84034e3d1e73d2bc179e232` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/instance.md) | 240 | `declaration-track:006ccd4c19ed27fbdde7c0db48555a34954ff43c913a4d0da94d6a396319489b` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/instance-source-edition-4.md) | 243 | `declaration-track:ac98f616910768d766ac63c006e30a0cf164896e1e6268b8dcb7d94d1ed6ee80` |
| 20 | `def` | [extend](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extend.md) | 250 | `declaration-track:c964cfd55d9ccf7938f884a5d87c0604dd71f9d86a77318c13760770c98f6244` |
| 21 | `theorem` | [extend_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extend-purecauchy.md) | 260 | `result-track:f8ca10c7f89cbec64a4a2289a8100c73bf579e64eb76802a46b28dda03f31947` |
| 22 | `theorem` | [uniformContinuous_extend](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-extend.md) | 271 | `result-track:37c8b0564ee13cac4a03aac33e2deb63f7f30abb5a876701a7720597214213a4` |
| 23 | `theorem` | [cauchyFilter_eq](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/cauchyfilter-eq.md) | 284 | `result-track:54a48d2dcc277bab5ac7366016b621a22b9004977e6a2bada69d63176c43c564` |
| 24 | `theorem` | [separated_pureCauchy_injective](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/separated-purecauchy-injective.md) | 321 | `result-track:bcb43578d47dab881849dd347262938452ac53e489dd4bd4bcdcb4a7524004dd` |
| 25 | `instance` | [completeSpace_separation](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/completespace-separation.md) | 348 | `declaration-track:a0a13c4da9c6e26ee531017a2b13f702db5bdc66f42a98204e1f196ce80a0f24` |
| 26 | `def` | [Completion](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/completion.md) | 361 | `declaration-track:735df1dcedbe54fe990eeb45e568afa41fdc8148c6c72f468c10e16cbfe72844` |
| 27 | `instance` | [inhabited](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/inhabited.md) | 367 | `declaration-track:579863de4c22a1af75c64ab22180d21176d3bff16c71f65996c5e1b54f952ac8` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/instance-source-edition-5.md) | 370 | `declaration-track:b9f668a5e43e477ccf8e69dc2f8a3b91fd10daa25f11b7611f58dbfd2864a331` |
| 29 | `instance` | [completeSpace](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/completespace.md) | 373 | `declaration-track:29127cf15b737eb3b5601e50dbec993c4637f0f6a67dadf2e21b4303b5375307` |
| 30 | `instance` | [separatedSpace](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/separatedspace.md) | 376 | `declaration-track:bee0c86e65e55b002c6744cd4e40ccda0f9ca2f6af8d27ef2603c46fd82dbf69` |
| 31 | `instance` | [t3Space](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/t3space.md) | 379 | `declaration-track:469e04d1c4bfc6115437579c375b6b9b0ea190f0aa312c04246cc39441b4723b` |
| 32 | `def` | [coe'](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/coe.md) | 385 | `declaration-track:70db60874925d2fe68b09ee6a82f087403ad3eed4d995c87c2d27a12d1b03847` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/instance-source-edition-2.md) | 388 | `declaration-track:827f32554a7e6eb0d5a94f2d9d357708977f0f49a6bcc56af7ccd953e5f14c58` |
| 34 | `theorem` | [coe_eq](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/coe-eq.md) | 392 | `result-track:c8d8578646680892be09f03ef91894070399477f8e46b5d3b4cc96b20d72d2e6` |
| 35 | `theorem` | [comap_coe_eq_uniformity](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/comap-coe-eq-uniformity.md) | 396 | `result-track:fc704d2f35fa64b9da17996ba75f5bdaef1375bd0feeed43665795ec145f5a5f` |
| 36 | `theorem` | [uniformInducing_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniforminducing-coe.md) | 408 | `result-track:150fa8cb674a01dd01cb1233f719a49c61e5d4bf006cd04f4382da1177634d76` |
| 37 | `theorem` | [denseRange_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denserange-coe-source-edition-2.md) | 414 | `result-track:68eb197e364c033bd4e8aecaeb11371cfc1695a73fa4d554cfa8cebf47ee80a5` |
| 38 | `def` | [cPkg](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/cpkg.md) | 421 | `declaration-track:4cee3137d80085d199840ad9ab7908ed892c01d2fda8c0707d69b2852f058293` |
| 39 | `instance` | [AbstractCompletion.inhabited](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/abstractcompletion-inhabited.md) | 431 | `declaration-track:e62c2429c6fedbecb2c07fd24d8ecee3d5b0a17aa4f68533460294bc2399fe24` |
| 40 | `theorem` | [nonempty_completion_iff](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/nonempty-completion-iff.md) | 438 | `result-track:ce2e45994d843c884fbeb819b1b026528d2b125d74e95726e86516f16c8e38a5` |
| 41 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-coe.md) | 442 | `result-track:10149166f2a22288e16ba6d1934f6098847419e4e1155a3cfbe50ed96c0d770f` |
| 42 | `theorem` | [continuous_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/continuous-coe.md) | 446 | `result-track:2f31645a035a49c03a25e3e7f00698666dc7f2c9c8cb8162e5d34fd5b3e1ffaa` |
| 43 | `theorem` | [uniformEmbedding_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformembedding-coe.md) | 450 | `result-track:fbf23bbf723fc05419c601f7f7c1aaf1c20d93b1a9f77afb9efdf19f433a8333` |
| 44 | `theorem` | [coe_injective](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/coe-injective.md) | 455 | `result-track:a5e32bff0a711c409f9ad9db1b10efc59b58ad00d0e39b23d0901805f92dc68f` |
| 45 | `theorem` | [denseInducing_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denseinducing-coe.md) | 461 | `result-track:f88095572333cc9bb14d8f99ace4d855f72ae8547f6c4261a467233dc0db203b` |
| 46 | `def` | [UniformCompletion.completeEquivSelf](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcompletion-completeequivself.md) | 466 | `declaration-track:de19e081f3437a29297b4fae6a738f25e8722ae89ec14915dafa01899ff91fa4` |
| 47 | `instance` | [separableSpace_completion](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/separablespace-completion.md) | 472 | `declaration-track:0d4249eac1b0f75c3434afc89ca652e237eaa386ce8e4f1dd0624d85124f97ca` |
| 48 | `theorem` | [denseEmbedding_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denseembedding-coe.md) | 476 | `result-track:3bea1d7befabd0b743c0a78e76833a23290e4f6eb308ea799bf8e40fb34a903a` |
| 49 | `theorem` | [denseRange_coe₂](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denserange-coe-source-edition-3.md) | 480 | `result-track:dfffa9e9b9fe26580a9a3bcdac3df6794c6c54974227ad92a317fa7cca44559c` |
| 50 | `theorem` | [denseRange_coe₃](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/denserange-coe.md) | 485 | `result-track:14b657ce9e1370853a54806bf2478d795945e42347735d56b3499d1172f98d96` |
| 51 | `theorem` | [induction_on](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/induction-on-source-edition-3.md) | 492 | `result-track:85cc738d1bfc3f8eca8d10eba6348c4ecf478b7f59192fa617492bcccb132a76` |
| 52 | `theorem` | [induction_on₂](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/induction-on.md) | 498 | `result-track:2459592037f82be12d09983251dbe400c6da37d67f1d8cfc4842d298fb13dca8` |
| 53 | `theorem` | [induction_on₃](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/induction-on-source-edition-2.md) | 507 | `result-track:6a21cb5e134d969616d348cefcc82ea818aea71165f22ad58be92662c7339b6b` |
| 54 | `theorem` | [ext](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/ext-source-edition-2.md) | 516 | `result-track:5202623b126182d8e88f0c38ba8ccafe2cca76465b7239cc0de76d27bdf498ca` |
| 55 | `theorem` | [ext'](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/ext.md) | 521 | `result-track:04e760f6c9dfef13285290cc2a587496f6f316ab57a476e3c54c6156632bab55` |
| 56 | `def` | [extension](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extension.md) | 533 | `declaration-track:621823d565e07841809688f24a72f623761b343a4150decc518ac00134ac80b6` |
| 57 | `theorem` | [uniformContinuous_extension](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-extension-source-edition-2.md) | 541 | `result-track:80b925bf7c4c1a9f567daac4cedde2101f84c2ca3292116f6c5201307291fe50` |
| 58 | `theorem` | [continuous_extension](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/continuous-extension.md) | 546 | `result-track:510ba6bbc7995f857d5beb9b060afc58741fb1b37d5ac3596b2ec6fd4402244d` |
| 59 | `theorem` | [extension_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extension-coe.md) | 554 | `result-track:8376941778d46586af5d95273f9e1dae87d6da0a818359150411dd6135deca00` |
| 60 | `theorem` | [extension_unique](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extension-unique.md) | 561 | `result-track:115fbe5aef3c456a486b710ff5ba08ed4f674ce445e4eeaa8a4763a962057c3e` |
| 61 | `theorem` | [extension_comp_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extension-comp-coe.md) | 568 | `result-track:adac57ce1425e19d0da66f833933f5896ae0801eb3b702a315ddf9510b15c060` |
| 62 | `def` | [map](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/map.md) | 580 | `declaration-track:018908823a2b0e9a12a19ab294f778fcf339a713e13bb4bf38a8dafa68911ef9` |
| 63 | `theorem` | [uniformContinuous_map](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-map-source-edition-2.md) | 584 | `result-track:9bec1eb086b144c359ea3370de2b3108887519ddedd53e9913a66f9e976d36e6` |
| 64 | `theorem` | [continuous_map](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/continuous-map-source-edition-2.md) | 589 | `result-track:d89df35bc8bcd0528d772d9f68fd42553e5c2b5e8d74fc94195a20b67174be61` |
| 65 | `theorem` | [map_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/map-coe.md) | 595 | `result-track:af4aad8038cbfe19c8c13502b3bb300ae3b183f9060753636c5abe05683dec55` |
| 66 | `theorem` | [map_unique](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/map-unique.md) | 599 | `result-track:017667291a243ddb83a877f0565d55e336ea6c1302c6d5eaa4c7a07f598ab6ef` |
| 67 | `theorem` | [map_id](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/map-id.md) | 605 | `result-track:f94e693793f019e14178258b23cbcd0427e705e9d8841f1306def630939ecaa4` |
| 68 | `theorem` | [extension_map](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extension-map.md) | 609 | `result-track:698c276489cbe3c4bb690a9ed55c09fb9729740fffe28ff9a45a440d8536fcc0` |
| 69 | `theorem` | [map_comp](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/map-comp.md) | 620 | `result-track:5b391a615ae2e374d08b3b7ce9808ebcf7e3b0d469bb76a4a0e71807d66a21d7` |
| 70 | `def` | [completionSeparationQuotientEquiv](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/completionseparationquotientequiv.md) | 633 | `declaration-track:0e12e238dd1218049a06fdc354b67c1b8b1c889184bbb1192203e555d2443777` |
| 71 | `theorem` | [uniformContinuous_completionSeparationQuotientEquiv](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-completionseparationquotientequiv.md) | 656 | `result-track:8b0575e24dc84027b6dffa22c5ccf3259702da30d7f4d0f3a9269f72f57b1797` |
| 72 | `theorem` | [uniformContinuous_completionSeparationQuotientEquiv_symm](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-completionseparationquotientequiv-symm.md) | 661 | `result-track:de28ba8787bc0bf21f02a59feaec82e34ea28b80d64575d3eb63e813421a7296` |
| 73 | `def` | [extension₂](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extension-source-edition-2.md) | 675 | `declaration-track:b32b614127484bb30b73062de7dbf603b8792d862f729623fcfa33a66719c84c` |
| 74 | `theorem` | [extension₂_coe_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/extension-coe-coe.md) | 685 | `result-track:d8ef7052a77aa1496c1a3f262e32db22dcf1f243c3048b365f8724b4dd3cc568` |
| 75 | `theorem` | [uniformContinuous_extension₂](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-extension.md) | 694 | `result-track:586c7b544ae472b3b3c878212af232e9d3e65bf5c6e6be58aabd0f57b9d7f8b0` |
| 76 | `def` | [map₂](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/map-source-edition-2.md) | 705 | `declaration-track:fd8756610a83bea63b8b501878b0f1b8c19fdfb677b8c37f9b28a8c01b1ea71d` |
| 77 | `theorem` | [uniformContinuous_map₂](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/uniformcontinuous-map.md) | 709 | `result-track:0bf71c20a90df3a8782861e36664fe752ef3e6b9a159c1e09166df303b36f9df` |
| 78 | `theorem` | [continuous_map₂](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/continuous-map.md) | 713 | `result-track:91c41c41e75a4fa4c09df2aedc46cf2887d23d9c54ffa6bed5c0ba9e77aa5eee` |
| 79 | `theorem` | [map₂_coe_coe](../../../../GeneralTopology/UniformSpaceCompletionUniformInducingPureCauchy.lean/declarations/map-coe-coe.md) | 719 | `result-track:469fba2e29a888dffc4df2a3c106b795aef135b0c85e6891f34c1b49d28237f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b94923ba6c861b2dd7045e662519f26e18e629ca663135c72b06ab8e5333fd59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
