# Verification target: Subsemigroup Operations Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27d2ebb5ac69629a914e13be4d3618fc60e96baa",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variante28e2aaeb22392cd8c3520670cbf56033e2a627df0cc4465906c4f1b0439131f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27d2ebb5ac69629a914e13be4d3618fc60e96baa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variante28e2aaeb22392cd8c3520670cbf56033e2a627df0cc4465906c4f1b0439131f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variante28e2aaeb22392cd8c3520670cbf56033e2a627df0cc4465906c4f1b0439131f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsemigroup.toAddSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup.md) | 88 | `declaration-track:50597bb013eb1a4a4df95541e3eecfe3736ef03546f3660b2c81f8dd1507411b` |
| 2 | `abbrev` | [AddSubsemigroup.toSubsemigroup'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup.md) | 101 | `declaration-track:24d2c57156ae539b03177d92699fca7b400abe0cb3ed69eb458921ded510df98` |
| 3 | `theorem` | [Subsemigroup.toAddSubsemigroup_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup-closure.md) | 104 | `result-track:67498210e810c832c3b53af048689e80b90b221012e0f2984c9cceab8c82aae7` |
| 4 | `theorem` | [AddSubsemigroup.toSubsemigroup'_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup-closure.md) | 112 | `result-track:8fb091d1709ec904c85b08f36a6cb16c3a274015bfbeb2693c7ebfaf7294404a` |
| 5 | `def` | [AddSubsemigroup.toSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup-source-edition-2.md) | 129 | `declaration-track:f6ad6fb31eec448a3c71b42a7d4fced36622663d8b70b4ddcab680ac69079d62` |
| 6 | `abbrev` | [Subsemigroup.toAddSubsemigroup'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup-source-edition-2.md) | 142 | `declaration-track:e9f8407d1825148a88813191fe740c74ea6829eff7d5adfe83ae48868a16d156` |
| 7 | `theorem` | [AddSubsemigroup.toSubsemigroup_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup-closure-source-edition-2.md) | 145 | `result-track:d42ee90683d0524d160a9522e31fec6a1a2c1eab1b153c05d2701096fd11d6b7` |
| 8 | `theorem` | [Subsemigroup.toAddSubsemigroup'_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup-closure-source-edition-2.md) | 153 | `result-track:b85b71550e6005926c0e6722370a6b5cd98f1e98282f49f36782e68ccb21d24d` |
| 9 | `def` | [comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap.md) | 178 | `declaration-track:d5c60efacb5c51b0ee332307ca195871cb1b8fa87ac365f89e007d700d5db4cf` |
| 10 | `theorem` | [coe_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/coe-comap.md) | 184 | `result-track:1669824dd69042bd92ec6b5bc1154e6b636ddab49b71c04a0457859f27f82e01` |
| 11 | `theorem` | [mem_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mem-comap.md) | 188 | `result-track:f91979d095879c8cfd29ffb9cf19b26e433763c81b2707eace0cee88a339f4ec` |
| 12 | `theorem` | [comap_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-comap.md) | 192 | `result-track:a732381ca4ccdb15527fbdecf10ed0b20c938fb8080b58a69a35503a3e116419` |
| 13 | `theorem` | [comap_id](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-id.md) | 197 | `result-track:4457651b09d16f5e993a14833a3af21548665aa07cd8f10dc6a150a759268949` |
| 14 | `def` | [map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map.md) | 204 | `declaration-track:1fccc5bc545480bffa8e50467c6dc897e8ec55c55bf58b477103d761da9594cb` |
| 15 | `theorem` | [coe_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/coe-map.md) | 211 | `result-track:74ef39ebe3ab4f0af6ab43ec2fbea94a99507c0988aa4e2fe320aa820f91dfae` |
| 16 | `theorem` | [mem_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mem-map.md) | 215 | `result-track:1a9ef590f4344342a84342921b171ea23adcfeb42ca03616b57f6ddb2ad35254` |
| 17 | `theorem` | [mem_map_of_mem](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mem-map-of-mem.md) | 219 | `result-track:14827a9e21ee2fcdaa8d5c8795c982b3d2a3715eb234cc233097d7429fca7a77` |
| 18 | `theorem` | [apply_coe_mem_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/apply-coe-mem-map.md) | 223 | `result-track:09838944f3d0d4ba8a36b37cda2e57d461291e4f77e2262366fe06632855aa31` |
| 19 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-map.md) | 227 | `result-track:a0074dcafbd5950b505954548c371cf57fc260ea28854839902d502ccf088f82` |
| 20 | `theorem` | [mem_map_iff_mem](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mem-map-iff-mem.md) | 235 | `result-track:3e43a8d348c9581f5ca5618614748d1c2ce510a364667c077263ea36280b895b` |
| 21 | `theorem` | [map_le_iff_le_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-le-iff-le-comap.md) | 240 | `result-track:e51cb1349475637e2d6b68553a395f70f78b90692b48caa6e63e5ed689bea2bf` |
| 22 | `theorem` | [gc_map_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/gc-map-comap.md) | 245 | `result-track:7a5918c24250f43ba8b9a01e25da876cdb80bc0075c477acaba7e735e16fb7da` |
| 23 | `theorem` | [map_le_of_le_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-le-of-le-comap.md) | 249 | `result-track:859ba1e8d8ff2260228ff3d789a5608685f03616096929199518ebd8c48403f8` |
| 24 | `theorem` | [le_comap_of_map_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/le-comap-of-map-le.md) | 253 | `result-track:c6098a412a1c41483bee07eba5e711c07917a49f69ecf27ec67c38e62766c26d` |
| 25 | `theorem` | [le_comap_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/le-comap-map.md) | 257 | `result-track:e58d888dfd5d74292760cce42ec9c260bfce292ed2586d9d37fc782edbc6242c` |
| 26 | `theorem` | [map_comap_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-comap-le.md) | 261 | `result-track:b23ce6378cef862550f6e6e65d87ee43a70da2face504a9630381bfbc6de920a` |
| 27 | `theorem` | [monotone_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/monotone-map.md) | 265 | `result-track:ec265d447d4467f8a6ed3fc4e312cb02ed2c28ebd1370685c42f56225bda14f8` |
| 28 | `theorem` | [monotone_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/monotone-comap.md) | 269 | `result-track:0ded1d3d13adb8dba350e130a94e240ff457e9903f9a61a21e88f03e6b68e50e` |
| 29 | `theorem` | [map_comap_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-comap-map.md) | 273 | `result-track:0648a46821003361dbdfa2838e05cb359fe97c7afe382fe05bcef9b3147c0f0a` |
| 30 | `theorem` | [comap_map_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-map-comap.md) | 277 | `result-track:60523f09360edf9ad79672bcb9d7bbe7ecb5854932235a264721d81f010f78c6` |
| 31 | `theorem` | [map_sup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-sup.md) | 282 | `result-track:e8bf30ce614175ca24f2100a10f76f9bb65849ea69952b15d0a18e5ab37e90ca` |
| 32 | `theorem` | [map_iSup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-isup.md) | 286 | `result-track:b130f5ebadf9a7a57974c1ffcb057f285d2e3dcbbe078ecc4cfc548544a88614` |
| 33 | `theorem` | [map_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-inf.md) | 291 | `result-track:29587b8917bfa4ead37c73650475ef66541ce6a584de7d0860c5c7ccd7815efd` |
| 34 | `theorem` | [map_iInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-iinf.md) | 295 | `result-track:4ee463f19c8f414ae52f9f573c5d2de2f8b918fe23b44acd4879cff10e8af6e2` |
| 35 | `theorem` | [comap_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-inf.md) | 301 | `result-track:6e4ee046c2973f34fe5d883e972e919e5702f540acfb35c5d8acb7f1cf91b88b` |
| 36 | `theorem` | [comap_iInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-iinf.md) | 305 | `result-track:0d271efdecbfa5411cf975fe740f4a691b0b2cb487168bf1d63575076931fb3f` |
| 37 | `theorem` | [map_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-bot.md) | 310 | `result-track:b8eb948623dc2c027c5ed290d0f46c5644a5cfcbb98256ed23143e9a9da87870` |
| 38 | `theorem` | [comap_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-top.md) | 314 | `result-track:c271327de1926cfcc184dcf5e5713431ab6eb87a16ed93590a1ee427ca100251` |
| 39 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-id.md) | 318 | `result-track:8d008fe8c716a80dab6f7dbcb75ca27ca42ee1cc716a3312601310971df720f2` |
| 40 | `def` | [gciMapComap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/gcimapcomap.md) | 327 | `declaration-track:f3848e3d96c094cbf6fc33fc49def56d2715fc1ff0050cee6c67243e5fc15928` |
| 41 | `theorem` | [comap_map_eq_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-map-eq-of-injective.md) | 334 | `result-track:ed21343442f2e7f361e4e20de5bdb9706526e7eb6c8469ecedcb816552d950c4` |
| 42 | `theorem` | [comap_surjective_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-surjective-of-injective.md) | 338 | `result-track:ea7789d0764dac42f0f1af6e7a312cd7bc5dbf0e3be7d9acd2ec921acaad7b2a` |
| 43 | `theorem` | [map_injective_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-injective-of-injective.md) | 342 | `result-track:9c29baaf624592a4c959beeac7fb6ff2acccad02a02ef1bb57c034ed6fe89a28` |
| 44 | `theorem` | [comap_inf_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-inf-map-of-injective.md) | 346 | `result-track:53e1517171196a754ac5397bffa0977da070014e0230539591c6ae24fdc0e886` |
| 45 | `theorem` | [comap_iInf_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-iinf-map-of-injective.md) | 350 | `result-track:ef8f1a10296618f2ca4397c8cd08895b153e32318e26e10e1abdef72298de3d0` |
| 46 | `theorem` | [comap_sup_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-sup-map-of-injective.md) | 355 | `result-track:1bedce0b07df8d06af3ce0e03bd6b5951a41337dc361390e73db3474365a597f` |
| 47 | `theorem` | [comap_iSup_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-isup-map-of-injective.md) | 359 | `result-track:54c9a463487331e2395c17806281059611c7bcd0f3386b949c3a6ba405b75ed0` |
| 48 | `theorem` | [map_le_map_iff_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-le-map-iff-of-injective.md) | 364 | `result-track:c1fa393000cd5514fd00d32f36befcfab049c92b4d0d4d893f6080681fd1ed5d` |
| 49 | `theorem` | [map_strictMono_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-strictmono-of-injective.md) | 368 | `result-track:a3742ee38b3730075d3e87888ac7f80221c4ce42d90f2366df6d82a900c2c7ea` |
| 50 | `def` | [giMapComap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/gimapcomap.md) | 380 | `declaration-track:b3c924aa02f6047c881b6237bf33e887353c3921849b042d1b0e1b20e5dc6618` |
| 51 | `theorem` | [map_comap_eq_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-comap-eq-of-surjective.md) | 386 | `result-track:375c38ad32d49769e773cdd3c4d19b7b8b3c8fe3dde68ae98e9fb1199b85963a` |
| 52 | `theorem` | [map_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-surjective-of-surjective.md) | 390 | `result-track:231a516fe9bc2b52b7fd3589cf2b524f1e7c154191b3b1fa7603ca6ba7efbe74` |
| 53 | `theorem` | [comap_injective_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-injective-of-surjective.md) | 394 | `result-track:655689cba453e071be97de5d8460cccc2c4bffec1daed925164f49d810995e49` |
| 54 | `theorem` | [map_inf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-inf-comap-of-surjective.md) | 398 | `result-track:7cac96d997eef4f476f6dbeba66846ad80e852bd46cc5ab20ef67613cab961c3` |
| 55 | `theorem` | [map_iInf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-iinf-comap-of-surjective.md) | 403 | `result-track:4fb977d106af52a4ef864a7f924f47df6e823ce19174f030b0a8f0b3b5eb4e26` |
| 56 | `theorem` | [map_sup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-sup-comap-of-surjective.md) | 408 | `result-track:a431d102a3ec26d8142757446214186ccc363e7312a214bb05fd9874b4a860a3` |
| 57 | `theorem` | [map_iSup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-isup-comap-of-surjective.md) | 413 | `result-track:462ed44c1e4f7f98d091a4e0261a47a8c7267c0faeb3667a3711bfaf78aabbe7` |
| 58 | `theorem` | [comap_le_comap_iff_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-le-comap-iff-of-surjective.md) | 418 | `result-track:45fa3e1d8938782ec5208904d9900079f994519d1d4ac505905ded17b47a38a4` |
| 59 | `theorem` | [comap_strictMono_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-strictmono-of-surjective.md) | 422 | `result-track:a8cafb657a402b7a522f575e37b0fddbe1d720b09b78b022a7983ac8be2c5e50` |
| 60 | `def` | [topEquiv](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/topequiv.md) | 436 | `declaration-track:8dd28d0eec484c8010ca152046fe3b1426e1063ea6810020b5fe433c8dd0c673` |
| 61 | `theorem` | [topEquiv_toMulHom](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/topequiv-tomulhom.md) | 444 | `result-track:7d1cc9f4056e98626967179b89ed5c61e4afa547e493778ecdf61b07d5e5a466` |
| 62 | `def` | [equivMapOfInjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/equivmapofinjective.md) | 450 | `declaration-track:1a068a90ae49b63b98e60ce3b2a5d3f7d2be2a4c7237fa61128d5d12bf11feca` |
| 63 | `theorem` | [coe_equivMapOfInjective_apply](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/coe-equivmapofinjective-apply.md) | 454 | `result-track:734242287eada44dd7def984e2886026e33749445d925316d368e98facabf0aa` |
| 64 | `theorem` | [closure_closure_coe_preimage](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/closure-closure-coe-preimage.md) | 459 | `result-track:d598bf4e459abc43dacc2ebb06cdad4405a2ddbcc4a6854f7e157023b4849d70` |
| 65 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/prod.md) | 469 | `declaration-track:1c53657b0f2bee65567ab39a038e1b7328ecd7118687100db3ef9563caf6c4af` |
| 66 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/coe-prod.md) | 474 | `result-track:15c0a6b7275c7d6c16fbc8b3bb0fae545eee23e8d91b2512f9c3d65bd7568791` |
| 67 | `theorem` | [mem_prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mem-prod.md) | 479 | `result-track:8e68afb4fbd333277dbbc3742ec66eebe366757fb310b06c3594f6f2d88d70c5` |
| 68 | `theorem` | [prod_mono](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/prod-mono.md) | 484 | `result-track:0fb3028aaf7ef57b5c1a2eea3171bc2c820190395f0118d79b17999e1c5ca78d` |
| 69 | `theorem` | [prod_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/prod-top.md) | 489 | `result-track:47840a6930819052dcb60fb745bf70011a21b7c9f158d6e37e67a9fc9e355ae5` |
| 70 | `theorem` | [top_prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/top-prod.md) | 493 | `result-track:8437b0e97a20604b9513d6946b6b0e0d06650f6446256615e4a2db3f73b58de1` |
| 71 | `theorem` | [top_prod_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/top-prod-top.md) | 497 | `result-track:65cb4dd08b99858957ffd00b67ba444be51e8eb8b8cd0f5181a7394ec765bd9e` |
| 72 | `theorem` | [bot_prod_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/bot-prod-bot.md) | 501 | `result-track:8d68b284ca8433d80cb0bbc544248a66e0f551781c2dcad70210c6c93288640c` |
| 73 | `def` | [prodEquiv](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/prodequiv.md) | 507 | `declaration-track:053242484cc13e1891fed42858ba9b3ab384cb8aa1fd510dc59c1b11891a6fff` |
| 74 | `theorem` | [mem_map_equiv](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mem-map-equiv.md) | 514 | `result-track:6f6f93ec2c51f72e5e3535bdcadf52120f2698918b78cc47a2f413ab267db889` |
| 75 | `theorem` | [map_equiv_eq_comap_symm](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-equiv-eq-comap-symm.md) | 519 | `result-track:62479f1b84a85a08ff42f87eceb71f4f6c858a212ba8c0bf75ed5e03c6ba9d7d` |
| 76 | `theorem` | [comap_equiv_eq_map_symm](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/comap-equiv-eq-map-symm.md) | 524 | `result-track:276b681baa6c39461e35d365a1ad9d04f694e7e1725ed8b0245fc1f642fa4601` |
| 77 | `theorem` | [map_equiv_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-equiv-top.md) | 529 | `result-track:e430a2145420a6df2537954ca457841e2be3afe8cc9920593f512106f03cac2e` |
| 78 | `theorem` | [le_prod_iff](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/le-prod-iff.md) | 533 | `result-track:20c0caa3a9669b00ee400fc672a5c3858fe4eb31986171e3f66588926fa14556` |
| 79 | `def` | [srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange.md) | 555 | `declaration-track:d2560e9e130c9250765ccdd5055f45fc482a251aceeed84dce7cbae6fa4d65c0` |
| 80 | `theorem` | [coe_srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/coe-srange.md) | 559 | `result-track:edca827263e509bef4ac0c288e959e3561909f8d0eb091a6f80e46299eb286a2` |
| 81 | `theorem` | [mem_srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mem-srange.md) | 563 | `result-track:a054e90c3b35ce9177bd8ebf2bf12251ed4e76395932e51023887a14f9af87b2` |
| 82 | `theorem` | [srange_mk_aux_mul](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange-mk-aux-mul.md) | 567 | `result-track:2c18cac475513234d37d5dab0a97b5db89a1f73a7dd899afa3bee25f78c9b100` |
| 83 | `theorem` | [srange_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange-mk.md) | 572 | `result-track:f1da9d067ce5cb7fb1f4cbcb210c6a1c8a5016565c8682e074de84d7480db8de` |
| 84 | `theorem` | [srange_eq_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange-eq-map.md) | 576 | `result-track:08d732cbd91591026e3dea8793ef3bd36a688fd27cf0f54d1e035df17e47d3d1` |
| 85 | `theorem` | [map_srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-srange.md) | 580 | `result-track:5a7ee14f975d511f12d3b6699bfeaee8b60e4a534b9a3be2be1376ad1c81f50a` |
| 86 | `theorem` | [srange_eq_top_iff_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange-eq-top-iff-surjective.md) | 584 | `result-track:319a7eb2a4c1beb917983846b92bd61ec69727461d45ebdba064fa8d074a0a3b` |
| 87 | `theorem` | [srange_eq_top_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange-eq-top-of-surjective.md) | 594 | `result-track:3373e0d2d47c48768ff5cbcfdcff5c16efb9b76ad2d4e553f8afc6ff05441682` |
| 88 | `theorem` | [mclosure_preimage_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/mclosure-preimage-le.md) | 601 | `result-track:96abd79b85d12f18a1bdfc74dbe5e04a96d66f06f9c35ffb5e7d107a1bbf6c9f` |
| 89 | `theorem` | [map_mclosure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-mclosure.md) | 609 | `result-track:3f4fe9dee90e61dad040d6ffef3271d7e73a2cfb660292e8d7b6ed67dd85475d` |
| 90 | `def` | [restrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/restrict.md) | 615 | `declaration-track:158a9f8f5c415e4689688fe5a51d512f904d033dcce27489f0929f952f5065af` |
| 91 | `theorem` | [restrict_apply](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/restrict-apply.md) | 619 | `result-track:e06cfdb2adb4524a2fccb0c9a5640a27185472f924fee438648dfdd6db0f70e3` |
| 92 | `def` | [codRestrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/codrestrict.md) | 626 | `declaration-track:7fbd6cd5fe0a5c73ed227c4f814cecedd3660321eb9fae7f7dda41d757950e1c` |
| 93 | `def` | [srangeRestrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srangerestrict.md) | 633 | `declaration-track:2543ba73f299c40beb03572115d5c244d8b85fc46d9485a80f2593f075df0c86` |
| 94 | `theorem` | [coe_srangeRestrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/coe-srangerestrict.md) | 637 | `result-track:755755331060ebe8079686e40d72e435a35856044b6bdadbc1219dadada30f1c` |
| 95 | `theorem` | [srangeRestrict_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srangerestrict-surjective.md) | 641 | `result-track:b890abcef83be1fd3c1717dc17143fdac21ff5edc959b4ab54a7365075aebdee` |
| 96 | `theorem` | [prod_map_comap_prod'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/prod-map-comap-prod.md) | 645 | `result-track:429896637ac7b2035a9e8ecb06413ca18e69a8b6d96efc072d26637e635bfc2b` |
| 97 | `def` | [subsemigroupComap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroupcomap.md) | 653 | `declaration-track:c317219c5ee856070cdf733c9596e30838527633110ed765d08264ab8a521c9e` |
| 98 | `def` | [subsemigroupMap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroupmap.md) | 663 | `declaration-track:efab9f22ade38a1b551400aa9ec326a25f284c7b36e1b54067bb6d1b304e7527` |
| 99 | `theorem` | [subsemigroupMap_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroupmap-surjective.md) | 669 | `result-track:d5a6c920a9ef90052bd00e7011bf5ea39b064b9e8d57c5e679feb81d76d5acb4` |
| 100 | `theorem` | [srange_fst](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange-fst.md) | 683 | `result-track:049dc92982510ece5a6cac63667debdb0bc1a7e37a04775470c06c415db60f12` |
| 101 | `theorem` | [srange_snd](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/srange-snd.md) | 687 | `result-track:6ff9ba8d8498c498ead3e5e9926870a9c4591b268aaf036c17a16fda5c8e3c26` |
| 102 | `theorem` | [prod_eq_top_iff](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/prod-eq-top-iff.md) | 691 | `result-track:eff1d22a6b0b2f1bbde971c5f916590e48c0d561eb791257af9dd433cb8c1793` |
| 103 | `def` | [inclusion](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/inclusion.md) | 698 | `declaration-track:2f4f5d08e0ac3e6734599e9893518d5bc7efd33a7bc32aab41e86b9cd960c4d8` |
| 104 | `theorem` | [range_subtype](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/range-subtype.md) | 702 | `result-track:f77b8949d8b8326572c453991c5b4286cacc751a919fc01deef91977d1f8b19a` |
| 105 | `theorem` | [eq_top_iff'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/eq-top-iff.md) | 706 | `result-track:7ac3f542a2b40b6aad528e2d7f81e0e617352f67bc22e17e0ac40e82e48f8070` |
| 106 | `def` | [subsemigroupCongr](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroupcongr.md) | 720 | `declaration-track:a62ae85bb5626c3c31b61fa1dca26026dcde1c2c45ccfeff595fbd5fa5f12119` |
| 107 | `def` | [ofLeftInverse](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/ofleftinverse.md) | 732 | `declaration-track:256b5aedf66546eaf5521a8e9ffc8c247356206806f36e08a2d10fd70818306b` |
| 108 | `def` | [subsemigroupMap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/subsemigroupmap-source-edition-2.md) | 749 | `declaration-track:fcd2a20d5e7993c260c7d68f879351fb8d47fa63fa0e257444d0732f020015df` |
| 109 | `theorem` | [map_comap_eq](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-comap-eq.md) | 763 | `result-track:54cb4ae18ebb6edb0c670248ba12553219333c86b4d4b604e84849bf84cc34ea` |
| 110 | `theorem` | [map_comap_eq_self](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition2.lean/declarations/map-comap-eq-self.md) | 767 | `result-track:120cb8de462137ecdca8d06abc6cb5a9cf52ff540cd262352ec108571dcb5bcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2f5bb55df69b2ff5c85e988a32bb1b8598aed610dc24b358209f6a36e5c908e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variante28e2aaeb22392cd8c3520670cbf56033e2a627df0cc4465906c4f1b0439131f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variante28e2aaeb22392cd8c3520670cbf56033e2a627df0cc4465906c4f1b0439131f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
