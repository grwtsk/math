# Verification target: Group Submonoid Operations Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b17f9bab767328aa184ca4e026031c6d92829dab",
  "lexical_observation_count": 179,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b17f9bab767328aa184ca4e026031c6d92829dab`.

Source path: `GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean.json)

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
| 1 | `def` | [Submonoid.toAddSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoid-toaddsubmonoid-source-edition-2.md) | 87 | `declaration-track:dea3c7768fc8080bcb9f459585c9488a5cfd43a9f1a650b69a655a2f10d91858` |
| 2 | `abbrev` | [AddSubmonoid.toSubmonoid'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/addsubmonoid-tosubmonoid.md) | 101 | `declaration-track:9797e52afb48a94e2db5eeae3bacd3661c1d02c64152888971b68953ed177618` |
| 3 | `theorem` | [Submonoid.toAddSubmonoid_closure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoid-toaddsubmonoid-closure.md) | 104 | `result-track:30559a0f800263978223364d9f0dc6d1334c56b6e72001b58168f797e33b20f2` |
| 4 | `theorem` | [AddSubmonoid.toSubmonoid'_closure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/addsubmonoid-tosubmonoid-closure-source-edition-2.md) | 112 | `result-track:a40b25188ea0db2d0b721980bc64bd63bd4a540cffeee19d4851981c2e811050` |
| 5 | `def` | [AddSubmonoid.toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/addsubmonoid-tosubmonoid-source-edition-2.md) | 129 | `declaration-track:e2012afcec27bd97f49a0c95404d7f9a492c2c8785fb16f4410a78eb3161abee` |
| 6 | `abbrev` | [Submonoid.toAddSubmonoid'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoid-toaddsubmonoid.md) | 143 | `declaration-track:653fe0fc7c254568eab4377cc46c86888b91ea9228ea0164c423166d97adaa7d` |
| 7 | `theorem` | [AddSubmonoid.toSubmonoid_closure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/addsubmonoid-tosubmonoid-closure.md) | 146 | `result-track:92acc6093facb29360f3c8948119534acd9f8fb18d7192d2f052798ad0ba8e14` |
| 8 | `theorem` | [Submonoid.toAddSubmonoid'_closure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoid-toaddsubmonoid-closure-source-edition-2.md) | 154 | `result-track:eaa4f6bedb706c9f5c61d7182f55d373cc64802b7fdde475163460e32670047a` |
| 9 | `def` | [comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap.md) | 177 | `declaration-track:fa002f2338f62af71f2f7f2e8f0b1fef42c80c55b8b25e53eb0aab9bd7694693` |
| 10 | `theorem` | [coe_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-comap.md) | 184 | `result-track:1cd94da6faf2da3a787758224a7a90ffb4bb9ff96d50f5a3b308730e16c098de` |
| 11 | `theorem` | [mem_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-comap.md) | 188 | `result-track:311c0ebb93867a9d2eb8f3a709b2073fe6b58cad96542346dda0083d2c21d42c` |
| 12 | `theorem` | [comap_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-comap.md) | 192 | `result-track:9ed51b79c5eef7e18db8b6d8772898052a0e77f72c89aa06679892d8f3b5afac` |
| 13 | `theorem` | [comap_id](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-id.md) | 197 | `result-track:10add0c91b9ed7c66a67ac1cb685b5551708b7b0bd0e427dcb116715d87b650a` |
| 14 | `def` | [map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map.md) | 203 | `declaration-track:2dba7e86ca1d71d8cb73711de7d55de16f29beffa8b197378197d9bb28d390d0` |
| 15 | `theorem` | [coe_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-map.md) | 212 | `result-track:d2a6c97c1df94498f498679629f2a5fd75cc0fd95b748a9ae12be698704b27e8` |
| 16 | `theorem` | [map_coe_toMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-coe-tomonoidhom.md) | 216 | `result-track:446a0f99329ac759dab8dca992952a07878559d10194fb3686404379be5a5334` |
| 17 | `theorem` | [map_coe_toMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-coe-tomulequiv.md) | 220 | `result-track:c8c9d9cad0736a17f7dc52e6e2b7ac208e41dac65fccfd5d628ee56c2016904a` |
| 18 | `theorem` | [mem_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-map.md) | 225 | `result-track:d814563b03efdcc1744e6a9e64fb1bd3b388d938640c3632bc5e5ced8df8518c` |
| 19 | `theorem` | [mem_map_of_mem](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-map-of-mem.md) | 228 | `result-track:679d1e4ca46bf8e4de5e215b852777b601a7043b76007f7c5ade4054c67d9844` |
| 20 | `theorem` | [apply_coe_mem_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/apply-coe-mem-map.md) | 232 | `result-track:d349ab26246c456f4f947f52a84f904c73237bee5bc1493b5b9b9924982dbd94` |
| 21 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-map.md) | 236 | `result-track:afa3ffb099a49a90525e124ad5d1c1290ae0e2367fd19d707ca8c8210ed6b316` |
| 22 | `theorem` | [mem_map_iff_mem](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-map-iff-mem.md) | 240 | `result-track:2bff3acd4607cb1255684fe692e385a022bde1087934c53323694e482f0b8ec0` |
| 23 | `theorem` | [map_le_iff_le_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-le-iff-le-comap.md) | 245 | `result-track:b26a6ab1f8df506e8e300e109e3aa46cee93e359bbff4c6a9fe0b8984a42c407` |
| 24 | `theorem` | [gc_map_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/gc-map-comap.md) | 250 | `result-track:aa47dfb9a1f93703f88165e55f6e841ad10a4481f42b96b5538204d040daaae7` |
| 25 | `theorem` | [map_le_of_le_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-le-of-le-comap.md) | 253 | `result-track:3bf39901c65f97177d726bbd4f61f527fe2502ef5e766560cf43878ab8ed8a30` |
| 26 | `theorem` | [le_comap_of_map_le](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/le-comap-of-map-le.md) | 257 | `result-track:b86471ca906fef7e5a75da873ba89daaea5839124a13c22d23bc913b476640b7` |
| 27 | `theorem` | [le_comap_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/le-comap-map.md) | 261 | `result-track:4e877014cc8de390f78c110b3deec933db643193ae571e86c6dcb07aeb33a793` |
| 28 | `theorem` | [map_comap_le](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-comap-le.md) | 265 | `result-track:8f05917aaf3495e263f0c6743f4bceebddbe97a405a1be1cf1de7165eb96197a` |
| 29 | `theorem` | [monotone_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/monotone-map.md) | 269 | `result-track:80a48e18ccddb2b334db6b2e457ffa124c3914d1c0e4629906a58a4ef6374495` |
| 30 | `theorem` | [monotone_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/monotone-comap.md) | 273 | `result-track:555c2792fc2861291447c879d7c2864ae48fc2a0b040ffe343bc4343c2653579` |
| 31 | `theorem` | [map_comap_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-comap-map.md) | 277 | `result-track:44feb5055603b4dd36d1565def3779cc11512470a2fb0ee65230251668971037` |
| 32 | `theorem` | [comap_map_comap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-map-comap.md) | 281 | `result-track:a39c3aa46b1626be6b30dff6c22ee1036e51124a0f0b334b57910fd3ceb1745b` |
| 33 | `theorem` | [map_sup](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-sup.md) | 285 | `result-track:971c2670d6ad5d82b32b3f8affc85ba86e96e17dbd11c839094d5ba8aabffc94` |
| 34 | `theorem` | [map_iSup](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-isup.md) | 289 | `result-track:271409e9fefe7f2dfe43ceff258962b99ad4d03e1d1702ea11aaceb417f5a6b1` |
| 35 | `theorem` | [map_inf](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-inf.md) | 293 | `result-track:5a747c2f21b2f4aabb2ded76b9837c5630803e6dbc192d613cf34f2adbfefc8a` |
| 36 | `theorem` | [map_iInf](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-iinf.md) | 297 | `result-track:2302117443404bbebd81721893abf057eae838f07960e2b82ebc8ac73bad9534` |
| 37 | `theorem` | [comap_inf](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-inf.md) | 303 | `result-track:45ce99a89c6a899f9a700b41ca7120a7a9646e1665071fb60650328bf16621b5` |
| 38 | `theorem` | [comap_iInf](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-iinf.md) | 307 | `result-track:4fa8047493c9f4f48710816f00b5bc2b9286cf26d8f95e7c330a337854ef4cc9` |
| 39 | `theorem` | [map_bot](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-bot.md) | 312 | `result-track:c555792e4b6921bbb551b3c1cf18d5e32f353ff1cf8adcfcb86212a0afe7fe9b` |
| 40 | `lemma` | [disjoint_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/disjoint-map.md) | 316 | `result-track:82abc3bedcb80f7dcee566d067ea8b8eb2f911b14c635998b42efefbee59c5a9` |
| 41 | `theorem` | [comap_top](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-top.md) | 321 | `result-track:1aae068cec32ee7f005cc206303ff7f9c4a122dfef0e0a5a78df5450a5159793` |
| 42 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-id.md) | 325 | `result-track:517eee0d09a54f9d033b9b3579e68df2913fd9c7b4410935e77cb6b57f75d53d` |
| 43 | `def` | [gciMapComap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/gcimapcomap.md) | 334 | `declaration-track:09b7b71ae03d6a6f9988c3621421d540b9584cfc39849361270bfd9f6b0514ed` |
| 44 | `theorem` | [comap_map_eq_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-map-eq-of-injective.md) | 341 | `result-track:efcbc4d8fac603d4500bd60013f9f4646fa7322939cd05daf5405e96985f64e7` |
| 45 | `theorem` | [comap_surjective_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-surjective-of-injective.md) | 345 | `result-track:eef3e8a997a5d4800e41f92f9827f4fd1ee235b1efcfa389ab7ba1f8e635b7ed` |
| 46 | `theorem` | [map_injective_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-injective-of-injective.md) | 349 | `result-track:052a14a6ffbc821476eb35fc9328e95ac48196d9b42faa931e72fc68e40b7491` |
| 47 | `theorem` | [comap_inf_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-inf-map-of-injective.md) | 353 | `result-track:166070ad223241ddd926f5a047595ffd67fd1851d2bbe8263b2b09af24d315b5` |
| 48 | `theorem` | [comap_iInf_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-iinf-map-of-injective.md) | 357 | `result-track:919faf00bd17060e527e8e1563a0ff4c8d37c9773cc9233c3d6ad16c51578b8c` |
| 49 | `theorem` | [comap_sup_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-sup-map-of-injective.md) | 361 | `result-track:2497e4b0aeee789d89528ad1e7294c0e223cea58777b598790dac55dfe94d02c` |
| 50 | `theorem` | [comap_iSup_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-isup-map-of-injective.md) | 365 | `result-track:cb0c4f0fb8eebeff600325ffa7708e383cb654a8583026d3aa4b3a7f7f9a7e03` |
| 51 | `theorem` | [map_le_map_iff_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-le-map-iff-of-injective.md) | 369 | `result-track:4cfaec12fa72486d797045f1f83c13adc89454e18bafb8984f2fe2d15057d1eb` |
| 52 | `theorem` | [map_strictMono_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-strictmono-of-injective.md) | 373 | `result-track:192f4f3b27856710cb972392cfb8f91dcbbe936050092c5691835903dd781c13` |
| 53 | `def` | [giMapComap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/gimapcomap.md) | 384 | `declaration-track:92acfd8ca97960e57276489029a9c0d21e180bb09abf6f18df92512c4d905ee3` |
| 54 | `theorem` | [map_comap_eq_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-comap-eq-of-surjective.md) | 393 | `result-track:35bbf1a50a753a2f9efaba0eed7e9ff698fd4e2001a76d43ff67487296d9fb50` |
| 55 | `theorem` | [map_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-surjective-of-surjective.md) | 397 | `result-track:1444dcf5b2c0d81859fe02bcfb6ff11154b37fc46bf0cdfbd5ff44ac3689bbc8` |
| 56 | `theorem` | [comap_injective_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-injective-of-surjective.md) | 401 | `result-track:8906a2fa169bf0528d2179c77eb4873edabce315da2cbaf7211ab48f240e0f1c` |
| 57 | `theorem` | [map_inf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-inf-comap-of-surjective.md) | 405 | `result-track:747bd6ff9d411c1f1b5933e859ef2b6d2d314d4725cd1f1907b641a506cc61f4` |
| 58 | `theorem` | [map_iInf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-iinf-comap-of-surjective.md) | 409 | `result-track:dc8fc8adb8a527ca6aa211d938e9def7c18bddad60cfe4cdaa062eaed22257fe` |
| 59 | `theorem` | [map_sup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-sup-comap-of-surjective.md) | 413 | `result-track:a0d90800984ff69633a04d70711a9e1e33573fdc39ff2fc17e5a2ae53dcb2f69` |
| 60 | `theorem` | [map_iSup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-isup-comap-of-surjective.md) | 417 | `result-track:c6307e7d060b6b0b1d7ef5015b7d601348bb2630d1bdf60da8a1f40f175d98af` |
| 61 | `theorem` | [comap_le_comap_iff_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-le-comap-iff-of-surjective.md) | 421 | `result-track:ecce49e58721996939bb2bc83e98a3fdc2537c4512f3ac58c87081f37702caff` |
| 62 | `theorem` | [comap_strictMono_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-strictmono-of-surjective.md) | 425 | `result-track:54b1cf39296d3d43a09b4d4887554fb1594313df6184c4376d9b06eee0ff9f25` |
| 63 | `def` | [topEquiv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/topequiv.md) | 435 | `declaration-track:b29e87d56c1d6e6501f6de649c6dbc3ed1a96d4f198fccfd8879eddc45abfb34` |
| 64 | `theorem` | [topEquiv_toMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/topequiv-tomonoidhom.md) | 442 | `result-track:a6e818958f989e268dd52ae3a9b13ca936f9743990b314f99e48a73220736e89` |
| 65 | `def` | [equivMapOfInjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/equivmapofinjective.md) | 449 | `declaration-track:eebc7e9edd3f7da23cd694b83d247165f49d0f1da435bca07d44592028425ebb` |
| 66 | `theorem` | [coe_equivMapOfInjective_apply](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-equivmapofinjective-apply.md) | 453 | `result-track:bb7a095e452f3415218db028dd71c03cc81aa8074b8a2a0cfeebce33dc3ee7e8` |
| 67 | `theorem` | [closure_closure_coe_preimage](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/closure-closure-coe-preimage.md) | 458 | `result-track:257107e06abac6947dde0a9a209a01f2e74d7a0383d1d3f1879323f3ef132f2b` |
| 68 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod.md) | 467 | `declaration-track:f8f56b79f5142dd89f69f3fdb58012a68c936ce0b0cff37635de5762287c83f2` |
| 69 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-prod.md) | 473 | `result-track:da7ea49bbaaea55a64ded8da78c411ca603c5e7881ca98ef97e2d6f11d2563d3` |
| 70 | `theorem` | [mem_prod](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-prod.md) | 478 | `result-track:e8813cc30c7534cd98d7cff5be7f8a8cdea5ddef45e26bd2f93f3866f1d0216a` |
| 71 | `theorem` | [prod_mono](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod-mono.md) | 483 | `result-track:56cd0dd37d7996c04f7c70d8e2ca1b39d423bfd6cec97165c2a38c7e5b93ad2b` |
| 72 | `theorem` | [prod_top](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod-top.md) | 488 | `result-track:8d5005fb778aba458f0c6ac4fe738510bbfdaef9d9f7563aa7ca969259d65293` |
| 73 | `theorem` | [top_prod](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/top-prod.md) | 492 | `result-track:b83705a71926949088ad900f5a5a1326e17579151803ab3f76c45fe9a41ee9e9` |
| 74 | `theorem` | [top_prod_top](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/top-prod-top.md) | 496 | `result-track:4f1f0b5cf0b3f66996d57f2f38e950f0c3c4a62f64a34866bb390735351ea14e` |
| 75 | `theorem` | [bot_prod_bot](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/bot-prod-bot.md) | 500 | `result-track:00410722507626113d37deba918f5f4a377125c6d23942da796209cd1e58a7a3` |
| 76 | `def` | [prodEquiv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prodequiv.md) | 506 | `declaration-track:50abe3b9e40e1043161bed8983b2eaf8480934d8605a0c460f7092971507ba54` |
| 77 | `theorem` | [map_inl](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-inl.md) | 513 | `result-track:bac7c45f39c62c4eefa06e2f95a74ab00150fe8e8a7e6f4f669e26a8eeec2aad` |
| 78 | `theorem` | [map_inr](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-inr.md) | 519 | `result-track:8a89f73d0131c15c8f4a5d4332fd3f28debd7bb753e46b8c7a1cc04e46334859` |
| 79 | `theorem` | [prod_bot_sup_bot_prod](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod-bot-sup-bot-prod.md) | 525 | `result-track:68a20f0671f4e16992bc38739824892b751080db999e88e5fbd46447d10f2228` |
| 80 | `theorem` | [mem_map_equiv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-map-equiv.md) | 533 | `result-track:83303fe7c6cdbf5703ef7456b2a74bb31b1d3a9ff1447a81664ceb3e75f9972c` |
| 81 | `theorem` | [map_equiv_eq_comap_symm](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-equiv-eq-comap-symm.md) | 538 | `result-track:c231e8ef19d0a97f77ad6bccde4faab5eb6a6b56b9548deae2d5e4658adcceb4` |
| 82 | `theorem` | [comap_equiv_eq_map_symm](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-equiv-eq-map-symm.md) | 543 | `result-track:30bfc2ea6923490b6f86b014c32529499222bf1a07e46e2acae58e61c7c65252` |
| 83 | `theorem` | [map_equiv_top](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-equiv-top.md) | 548 | `result-track:7d4d5e5b32db3076a1578aa1349fec70701fc047fe9fdcfaa969286ba1ad3fd8` |
| 84 | `theorem` | [le_prod_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/le-prod-iff.md) | 552 | `result-track:aeffb498ded0118215b19e9b784f5992f7aa76ca8939d0ec0d73cde830a2b28d` |
| 85 | `theorem` | [prod_le_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod-le-iff.md) | 565 | `result-track:7c41f34af60856f8bd35ace77d0c2d00c1938e15141355602262272e7fd04b4b` |
| 86 | `theorem` | [closure_prod](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/closure-prod.md) | 586 | `result-track:323d9fed2f90bd5457bd43fbfb4fdf9a58432e30d81e5513ef9f425331a35929` |
| 87 | `lemma` | [closure_prod_one](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/closure-prod-one.md) | 595 | `result-track:7b9128e38fc769cb99f20f51d86d208388004082cbef0f790b2bdc26ed4c1b99` |
| 88 | `lemma` | [closure_one_prod](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/closure-one-prod.md) | 602 | `result-track:cf0841ccb530b0e31f30fbc031aa7198bec7e0c7fa1f2472bb1bc5164d193e90` |
| 89 | `def` | [mrange](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange.md) | 649 | `declaration-track:f063fc3010c503ff3f10c6072c867f177a288a2a96a667b6ecd236ccd6308c29` |
| 90 | `theorem` | [coe_mrange](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-mrange.md) | 653 | `result-track:71fecd381f8d0341f88e7e614b507186ed559c35146c36b34f45a94f27c271af` |
| 91 | `theorem` | [mem_mrange](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-mrange.md) | 657 | `result-track:564e6f17ac1dd2db1b9cfc5dc9de80692c97378ce9254dbc7f2dc782b899d2ee` |
| 92 | `lemma` | [mrange_comp](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-comp.md) | 661 | `result-track:305bfab485c7bfed053d4eec6731ba4923af6899746242e2bcc654c14fd97317` |
| 93 | `theorem` | [mrange_eq_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-eq-map.md) | 665 | `result-track:fab2c13b1b06169ced114bfc37d1306a59f3a73c85de21dade9b32ab44bf6e5e` |
| 94 | `theorem` | [mrange_id](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-id.md) | 669 | `result-track:1990be6796a30e9e060cc00cbd72522e49bc805fc335d85b1e4d4392345f8b84` |
| 95 | `theorem` | [map_mrange](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-mrange.md) | 673 | `result-track:b86376dbdc7702363c2f75e97584691dedfd4716965b530a504549bf63505bc9` |
| 96 | `theorem` | [mrange_eq_top](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-eq-top.md) | 677 | `result-track:7b896f1ca796512b8eaf357a00a3889e3b2c470377e7eb97155a13f9b3c45af7` |
| 97 | `lemma` | [mrange_prodMap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-prodmap.md) | 681 | `result-track:472c73ce4c7dd8ff79619c157d1f6e4f458b969de68bc736f2acda19a31312c0` |
| 98 | `theorem` | [mrange_eq_top_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-eq-top-of-surjective.md) | 689 | `result-track:9339964dd3872718bb27405c7cefb2fb4abb484035a0fe27b0e7c393ba1022ef` |
| 99 | `theorem` | [mclosure_preimage_le](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mclosure-preimage-le.md) | 694 | `result-track:0956b8272365dc093d0abf6ab1de8be5595057aeb819a7e64d94907027b17280` |
| 100 | `theorem` | [map_mclosure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-mclosure.md) | 702 | `result-track:0911234436e041181b1319436716833b250b82c9e6c11e35a2992a02e552342c` |
| 101 | `theorem` | [mclosure_range](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mclosure-range.md) | 707 | `result-track:05c02eeb571fbaed063b29e64ecd3af8b771d1db4c0ee44cd71f29d424f70794` |
| 102 | `def` | [domRestrict](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/domrestrict.md) | 712 | `declaration-track:a6b9988283c8a8de062cf1dd598d2d7a3df1431d109e683165cc50f02d97d03a` |
| 103 | `theorem` | [domRestrict_apply](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/domrestrict-apply.md) | 717 | `result-track:bc25f9e4bb9c1dfe9d0c08a142a99d569d00f50ae99429b6b480fa2ed02331dd` |
| 104 | `theorem` | [domRestrict_eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/domrestrict-eq-one-iff.md) | 726 | `result-track:104fa43580aa187795f6fba7c6fbbd1e274355aa18f747bf362cc6bc41a8e1d0` |
| 105 | `theorem` | [domRestrict_mrange](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/domrestrict-mrange.md) | 736 | `result-track:c47d8022cce70d5244933fa875b2de5e4e084788bb0220979b47028da735a1b3` |
| 106 | `def` | [domRestrictHom](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/domrestricthom.md) | 746 | `declaration-track:dab668c0189239e3f02ca439fe626815f0228959d11a30a8d070b791dd33d0d2` |
| 107 | `def` | [codRestrict](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/codrestrict.md) | 762 | `declaration-track:773e659a90816a57a6f6c1517cf92f2973c2ba8d8e871bf2a02605221549fcff` |
| 108 | `lemma` | [injective_codRestrict](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/injective-codrestrict.md) | 769 | `result-track:532e5a0b8494935ed69aeacbe20d4471f9afa90ca1738fc3668d38eebde59cb8` |
| 109 | `def` | [mrangeRestrict](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrangerestrict.md) | 776 | `declaration-track:ed6506d17e3e6f482f206aa09245a91db570eb08fa3b11861826caf5a7beb959` |
| 110 | `theorem` | [coe_mrangeRestrict](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-mrangerestrict.md) | 780 | `result-track:1a71337868fdad43eb4aeff77593a257287242dc7510bd04a13582bb50d0eeed` |
| 111 | `theorem` | [mrangeRestrict_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrangerestrict-surjective.md) | 785 | `result-track:7b5eabfae43e949feae3d65b6a8b93b0fb970aa575bfcbcc099b784995014179` |
| 112 | `def` | [mker](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mker.md) | 793 | `declaration-track:c9c8abfb7fd9b93305e46d3d4c57312ec26c39b64d3e27962d18b17d1513b2ba` |
| 113 | `theorem` | [mem_mker](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-mker.md) | 797 | `result-track:b8da8aba4301b4abf266ba7da10b007a55bd12ee628999e8f5d7d5bc9750acfe` |
| 114 | `theorem` | [coe_mker](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-mker.md) | 801 | `result-track:3367c24e2764652c53fb0ba945f2f6bf833e1b46f17ded93873e7a7710fb9d6a` |
| 115 | `instance` | [decidableMemMker](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/decidablememmker.md) | 805 | `declaration-track:a643767d3fa65aa228f83d6423f4eda803d993ada191d2dd795b2e3da53d794e` |
| 116 | `theorem` | [comap_mker](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-mker.md) | 809 | `result-track:1336b9df2b6f69f48c28fc09cd9639f9be66a5b5db62836f725a485ea21140db` |
| 117 | `theorem` | [comap_bot'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/comap-bot.md) | 813 | `result-track:ed3cec25d414477540cc95fc7bb003643054fea1d75852e5ec79ddc797eb3cbe` |
| 118 | `theorem` | [domRestrict_mker](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/domrestrict-mker.md) | 817 | `result-track:73a339f15a7fe66c184b58d111b66685fd05e693b911a2d20c084cb6dfbc6063` |
| 119 | `theorem` | [mrangeRestrict_mker](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrangerestrict-mker.md) | 827 | `result-track:1344d6f9309c16d32d8e8427f37d0203b254dae039390b4bc077587fd0b8939f` |
| 120 | `theorem` | [mker_one](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mker-one.md) | 833 | `result-track:0931c2584ec44c858481933a7ad88b0e4ba7175d8372d1418b2f627527690c68` |
| 121 | `theorem` | [prod_map_comap_prod'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod-map-comap-prod.md) | 838 | `result-track:6e76d7cac9332f1dcf5da31f5c0a41ac643c549638df32a83e04e54395982dd4` |
| 122 | `theorem` | [mker_prod_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mker-prod-map.md) | 844 | `result-track:ae4510e2b3c8524271a423bf481610d7511d485add5f48c900b2fa0f566c4592` |
| 123 | `theorem` | [mker_inl](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mker-inl.md) | 849 | `result-track:c0ef65945844ec9fc1c4243e8f11c68b57dc817d266b9d4781ca4d2cead6293b` |
| 124 | `theorem` | [mker_inr](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mker-inr.md) | 854 | `result-track:9af2dbd7c563297bbe1298973cbd7a209d219a42832f29d922c1cd3322a84fb6` |
| 125 | `lemma` | [mker_fst](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mker-fst.md) | 859 | `result-track:958c339c7d240b22680a6f01d1b27fa855d95ef831926f438c5870b1b10da4d6` |
| 126 | `lemma` | [mker_snd](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mker-snd.md) | 862 | `result-track:a79beab0d6eded35db6b123fb486bf88abf329bc319084791b150c5d80362b9b` |
| 127 | `def` | [submonoidComap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidcomap.md) | 867 | `declaration-track:a573c4cedcde7551f8b1b71620c8ac5c4eee371328bb60ead6096b956036c01b` |
| 128 | `lemma` | [submonoidComap_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidcomap-surjective.md) | 874 | `result-track:da49776e0bea6cc9a2332b9b9e34edd723a1f29186b4d473c0e1ef6c26fcfeab` |
| 129 | `lemma` | [submonoidComap_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidcomap-injective.md) | 885 | `result-track:e8de702501662c28919637ded7db05aac0f9386fd6c1c426cd504155d4761853` |
| 130 | `def` | [submonoidMap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidmap-source-edition-2.md) | 894 | `declaration-track:b4fefc0422f784597c80734aa1e8dc5026441fd070a5572b4998204cb6478e86` |
| 131 | `theorem` | [submonoidMap_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidmap-surjective.md) | 900 | `result-track:36664a6a8c1f30fe5dc2ad838e55cbb6dc8fa063bab2278fd69b671aec700a66` |
| 132 | `theorem` | [submonoidMap_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidmap-injective.md) | 906 | `result-track:7f1df74275f1c65053db2c19bfb75b7be113daa9014396ad494d5f67a94cfbd2` |
| 133 | `lemma` | [surjOn_iff_le_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/surjon-iff-le-map.md) | 915 | `result-track:0c761060ef087237524278236dd3256b16c28301a4785ecb8653c97228e7b784` |
| 134 | `theorem` | [mrange_inl](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-inl-source-edition-2.md) | 922 | `result-track:f26a1dc8c27bee5386fc40d3d9c4ab9c4c887ae9aafb602ad44616f6633fcd33` |
| 135 | `theorem` | [mrange_inr](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-inr.md) | 925 | `result-track:466df50fdf8a47a1155e76e43427fccb45db01a28eb7b35e6a39f3c0bd0a70d9` |
| 136 | `theorem` | [mrange_inl'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-inl.md) | 928 | `result-track:00cf594eff54d3caf15081b80785de563cad8fe68d2163eb65a0beac256688f0` |
| 137 | `theorem` | [mrange_inr'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-inr-source-edition-2.md) | 932 | `result-track:97e2b89de22751fab079271d60a52b03994a68a6ebab528b8b7e0b7475af9347` |
| 138 | `theorem` | [mrange_fst](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-fst.md) | 936 | `result-track:27e877ee66c868b424fab3ebf0207e5bf720dd80fa411bf3fc4b00418871af37` |
| 139 | `theorem` | [mrange_snd](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-snd.md) | 940 | `result-track:f6ab49635e56ef2ac2ec5ab0029328f6cfe74cc03607461f7523d366b4418572` |
| 140 | `theorem` | [prod_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod-eq-bot-iff.md) | 944 | `result-track:1ee948de797797aebaf98ada2515afe8597f980c049ef44c674b3c15300f25f6` |
| 141 | `theorem` | [prod_eq_top_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/prod-eq-top-iff.md) | 948 | `result-track:08265fcfa3dd579759a5a5e9f878c0aaed164b43236018bd5644cd42bea76fb6` |
| 142 | `theorem` | [mrange_inl_sup_mrange_inr](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-inl-sup-mrange-inr.md) | 952 | `result-track:74cc3696e9d34f25831568d2e4ddd0b76961b4f59001fd3ed87500b9eae0d957` |
| 143 | `def` | [inclusion](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/inclusion.md) | 957 | `declaration-track:e1e2b69a8608d5fe8b2b83e01041765ed92e583445435111d0a712b1ac4fe8eb` |
| 144 | `theorem` | [coe_inclusion](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-inclusion.md) | 961 | `result-track:009985da0b17259b62412d41178fcb173a73c1820ecad462c6f36715b6abbaa4` |
| 145 | `theorem` | [inclusion_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/inclusion-injective.md) | 965 | `result-track:b30c504d02218d58367224b36510fe0f42d644c5e6535b7e50a3b387619f9b3d` |
| 146 | `lemma` | [inclusion_inj](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/inclusion-inj.md) | 969 | `result-track:cd4b7e4c193687a9628fb34e0b10e4973301239d72e84369f90dfae0c539ae84` |
| 147 | `theorem` | [subtype_comp_inclusion](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/subtype-comp-inclusion.md) | 974 | `result-track:c7fb6ca4e5e8080d100d03a99c7ce620358bcfda19c50908ce88aecf007b2bca` |
| 148 | `theorem` | [mrange_subtype](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mrange-subtype.md) | 979 | `result-track:59cc2fa9fe5923480c36468f8e8a04f0b0c742f5fd0207e463cdaafabfc211c8` |
| 149 | `theorem` | [eq_top_iff'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/eq-top-iff.md) | 983 | `result-track:dd853ce849e56194247e267d75c23e28ee766b7dd8dd9cda1de72a77267aa7de` |
| 150 | `theorem` | [eq_bot_iff_forall](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/eq-bot-iff-forall.md) | 987 | `result-track:883ebd75ca318cf1a668b7fbc20aa8340b8357f245ddf8b7423672eee350dbae` |
| 151 | `theorem` | [eq_bot_of_subsingleton](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/eq-bot-of-subsingleton.md) | 991 | `result-track:587dfa140766e29461b44247525b4f26fbeb11e0bbaf088ffcf65f993f3e4305` |
| 152 | `theorem` | [nontrivial_iff_exists_ne_one](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/nontrivial-iff-exists-ne-one.md) | 997 | `result-track:6cafe7b0dd175f0e0d2e0f65d7ea67b920d7a12e45f770c11635adc27f0f7110` |
| 153 | `theorem` | [bot_or_nontrivial](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/bot-or-nontrivial.md) | 1005 | `result-track:10af35e27eb4ed26054a33b9455f214f069a32635e67219e6f2d5ae81e65db61` |
| 154 | `theorem` | [bot_or_exists_ne_one](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/bot-or-exists-ne-one.md) | 1012 | `result-track:547782f46f88011b79a898cf2c08df41ff8ad9ce63b91934d042ff50941f0f58` |
| 155 | `lemma` | [codisjoint_map](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/codisjoint-map.md) | 1016 | `result-track:f83c5d708f146aa51c8de587b5dd84109b23765e3a9681142065203c313285de` |
| 156 | `def` | [pi](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/pi.md) | 1032 | `declaration-track:e217bfa7eb0c03cd6aeb7d98cdf326c67b7c0cedc6833fba9426d737f580df59` |
| 157 | `theorem` | [coe_pi](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-pi.md) | 1038 | `result-track:a2c11422f7883aa62b69c789b718ffaf1e9e75c50cf1404ad5a0b96a3d0a4f17` |
| 158 | `theorem` | [mem_pi](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mem-pi.md) | 1043 | `result-track:4217a913bec565996fd77a1aca3dad7910160db826757ad6c44ac999a4045c94` |
| 159 | `theorem` | [pi_top](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/pi-top.md) | 1048 | `result-track:c2510c0d6fc13196b0c9b3829c4dc4b9a528ebc72377eb212bccaadadd814fb6` |
| 160 | `theorem` | [pi_empty](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/pi-empty.md) | 1052 | `result-track:22aaf874fb6f92e54e3bd3b81f58659193dbf44c2a46b5f891c32ddb3adcc145` |
| 161 | `theorem` | [pi_bot](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/pi-bot.md) | 1056 | `result-track:c2efb78a3e6150cd0cf6b4fdbc08494c0314e3ddefa1c00e74887a5992d251b1` |
| 162 | `theorem` | [le_pi_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/le-pi-iff.md) | 1060 | `result-track:06a3faaa53f4c400c4bb760025cd6275cdc352d13e80c6f64ecf48d1ba46eec1` |
| 163 | `theorem` | [mulSingle_mem_pi](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/mulsingle-mem-pi.md) | 1065 | `result-track:adaf0aab3fd2554193fe97b9bf52087d1a38b219d424225a90a486bebcb5cb55` |
| 164 | `theorem` | [pi_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/pi-eq-bot-iff.md) | 1070 | `result-track:3603c82175250b48d1b8c0c1de0fe791a7c09ac5214387fb2a07e7fa5676bc26` |
| 165 | `theorem` | [le_comap_mulSingle_pi](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/le-comap-mulsingle-pi.md) | 1075 | `result-track:d7d572c38d575a0a8db5e3a0239bff4cac12cc655b7e09f0a72ea99069810c35` |
| 166 | `theorem` | [iSup_map_mulSingle_le](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/isup-map-mulsingle-le.md) | 1080 | `result-track:a88fdd927247fc15c1ebcb1c02c9d57cef59964ebc398dcd2d3bd455279cdcda` |
| 167 | `def` | [MonoidHom.restrict](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/monoidhom-restrict.md) | 1090 | `declaration-track:d6b685b822f030d81dcd89319387764b08f5a7d5e74103976146f0a7585048d4` |
| 168 | `lemma` | [MonoidHom.restrict_injective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/monoidhom-restrict-injective.md) | 1093 | `result-track:35b8b1f204d2d95de7380b8132b98f80b32ee3239698bd704f762aab43e38e2b` |
| 169 | `def` | [submonoidCongr](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidcongr.md) | 1106 | `declaration-track:ea5a47ea4e87ab0420182b8f9771335332ada2cd5dea8563e942e524a1a11bfe` |
| 170 | `def` | [ofLeftInverse'](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/ofleftinverse.md) | 1117 | `declaration-track:37260abc417a2e3be337df22d4ca611884961aadda5d2fbf696f0f598afb0df9` |
| 171 | `def` | [submonoidMap](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidmap.md) | 1135 | `declaration-track:971a6aab3aff576c32b41278e4029a80dbbebcd7eb9ebba80b6b36be563bd3e0` |
| 172 | `theorem` | [coe_submonoidMap_apply](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/coe-submonoidmap-apply.md) | 1139 | `result-track:caf89bd4a5f3b0ca7eeb75a0c23fa836b5397850b11cff120bef303e255b2656` |
| 173 | `theorem` | [submonoidMap_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoidmap-symm-apply.md) | 1144 | `result-track:00f03d50d73304d935b2b45a79c09090f2b00d1d674392098789c4a68bad734d` |
| 174 | `theorem` | [Submonoid.equivMapOfInjective_coe_mulEquiv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoid-equivmapofinjective-coe-mulequiv.md) | 1151 | `result-track:840b35d061058922799f3fae5a029f1f2e588448defc6b104413c559977d30a3` |
| 175 | `instance` | [Submonoid.faithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/submonoid-faithfulsmul.md) | 1157 | `declaration-track:141339132bf190fbbf695749dbe599127936d7b72bbf2c6a132e0eaefa45ae2b` |
| 176 | `def` | [unitsTypeEquivIsUnitSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/unitstypeequivisunitsubmonoid.md) | 1170 | `declaration-track:7ee4ef97bb14482250ddf0b259b721354a4a4903bf7510b578c05e4d0c8728d2` |
| 177 | `theorem` | [map_comap_eq](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-comap-eq.md) | 1187 | `result-track:8cbc4f3c59e33b39f9ee3fe557d174d5365c54f422f685f1d06cb8e171bffff5` |
| 178 | `theorem` | [map_comap_eq_self](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-comap-eq-self.md) | 1191 | `result-track:9a02c53eb740eda318c837d1f5f76536a2d28198bcc79a9e9548191c17b72261` |
| 179 | `theorem` | [map_comap_eq_self_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidOperationsPublic.lean/declarations/map-comap-eq-self-of-surjective.md) | 1196 | `result-track:d9adb44fa1dab39b66c263fca7c074dcd546e4f5491332bcd8867f0cdc10b98e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31a68d9cf25425836c4870529e09fac4a2248d92d09382896120d576d60c3dcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
