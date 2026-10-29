# Verification target: Sites Sheaf Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c26bbcbef902255c66f545f981ef9e8978922068",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c26bbcbef902255c66f545f981ef9e8978922068`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean.json)

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
| 1 | `def` | [IsSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf.md) | 86 | `declaration-track:d387fde3db4e1682c35567e9095bb37592fe32ac893e4d10f21c6869e6d413c4` |
| 2 | `def` | [IsSeparated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/isseparated.md) | 91 | `declaration-track:614c01c17aa348c64da3d9a9aa3ae338129248e0e017ae33b01f5cda2a0a27fb` |
| 3 | `def` | [conesEquivSieveCompatibleFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/conesequivsievecompatiblefamily.md) | 107 | `declaration-track:76389e5bca214f0ba426f89b9255ada645b9701227e8f5942ed39a2741d1441d` |
| 4 | `def` | [Sites Sheaf Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-issheaf-varia.md) | 129 | `declaration-track:39872dad2f791e1996147ca537779dc1604084e12b456fac16bf4ebe531216e6` |
| 5 | `def` | [homEquivAmalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/homequivamalgamation.md) | 137 | `declaration-track:ae7c7c4f089bed4aac40dc7eb910b1f9b6d6f3faa0f39b0c3d79d1f9ba118ac7` |
| 6 | `theorem` | [isLimit_iff_isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/islimit-iff-issheaffor.md) | 146 | `result-track:3c3050e76d017cd8f7577b000f0b4b21025fc672fcf64ddf28726a42487c8416` |
| 7 | `theorem` | [subsingleton_iff_isSeparatedFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/subsingleton-iff-isseparatedfor.md) | 166 | `result-track:1838b2d2c4fe2f08120fcfb913911cb966da819eced2db13870c3f7891eecd22` |
| 8 | `theorem` | [isSheaf_iff_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-islimit.md) | 189 | `result-track:6cfd5ab4adcfcf2822d1f3115b37507861d51d440e61aed3b7bb0fea9e561027` |
| 9 | `theorem` | [isSeparated_iff_subsingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/isseparated-iff-subsingleton.md) | 198 | `result-track:e21e144c2edab386435cf86e622bc7fc6415dbc771406ad5720f63b1d22a5d54` |
| 10 | `theorem` | [isLimit_iff_isSheafFor_presieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/islimit-iff-issheaffor-presieve.md) | 207 | `result-track:4e3936b8ce290fa972c6e67a285c832be24317e88fdfec62625f91ba179cea07` |
| 11 | `theorem` | [isSheaf_iff_isLimit_pretopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-islimit-pretopology.md) | 215 | `result-track:549e5b5ba2810e53bb47785fd6ab38d4f2c118cb7ba4d8edffcbdd79910ac258` |
| 12 | `def` | [IsSheaf.amalgamate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-amalgamate.md) | 233 | `declaration-track:cae551854640facb02da850b0015087f2198b65970d6a052c77a9cc6b17cf5fb` |
| 13 | `theorem` | [IsSheaf.amalgamate_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-amalgamate-map.md) | 241 | `result-track:7ab978b6b85cb8c700243333be967f5cda672d71cfa2d8d6297203aeb139898c` |
| 14 | `theorem` | [IsSheaf.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-hom-ext.md) | 249 | `result-track:8184555c33b45fe5247477d7b78a48b28ca705543792fd8dd6d6a601718e71ee` |
| 15 | `lemma` | [IsSheaf.hom_ext_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-hom-ext-ofarrows.md) | 254 | `result-track:7c071adb62acd7cde74b831422e6ff059ebe2241d7b69f0a4cf6f9e5be9a3030` |
| 16 | `lemma` | [IsSheaf.existsUnique_amalgamation_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-existsunique-amalgamation-ofarrows.md) | 273 | `result-track:bf0821a8cc2dd8305ff48d9bc32a9a9b10486fcee2a8eb9894c8aaf4ac6b5cba` |
| 17 | `def` | [IsSheaf.amalgamateOfArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-amalgamateofarrows.md) | 281 | `declaration-track:670e1bf3b3f307ddb13de8b33772f84e6703468e88b2893bc8b0d7e62c2c2f57` |
| 18 | `lemma` | [IsSheaf.amalgamateOfArrows_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-amalgamateofarrows-map.md) | 285 | `result-track:38d44621ed880f71b12c0a23bcc9d3cf7a2f428b9c932e9e310374d8117358e2` |
| 19 | `theorem` | [isSheaf_of_iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-of-iso-iff.md) | 291 | `result-track:777cd18a3017550281442d1f153dd3af1f1960366f48d5a431500e1e6358e04d` |
| 20 | `theorem` | [isSheaf_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-of-isterminal.md) | 298 | `result-track:f252482e1aaca23b46e2b9754356c8aff67785caf3e4ad4501fa8fca8a344b1e` |
| 21 | `abbrev` | [Sheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf.md) | 309 | `declaration-track:dc67fb435912aada39df4d35703aba6ed91c3c004cb455c4a38b41827c6382e2` |
| 22 | `abbrev` | [Sheaf.val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-val.md) | 317 | `declaration-track:eee79a6aaeb9f2b445b4d28a5902a589c7b462e2cb16435bd4cc344a373185b4` |
| 23 | `lemma` | [Sheaf.cond](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-cond.md) | 320 | `result-track:20b55b3ed10f190ed2dda19fcaa51d1768ea16b22ebf55da7561b389ee8d0070` |
| 24 | `lemma` | [Sheaf.hom_ext_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-hom-ext-iff.md) | 325 | `result-track:d42cd1446757e9da14d8df85bf18775b066f123fbc31d66d5c5431aea5b85df0` |
| 25 | `lemma` | [Sheaf.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-hom-ext.md) | 329 | `result-track:27f27f4fff62229479d35e9c128b913561d50e30dfd5df7c273d52faace989a4` |
| 26 | `abbrev` | [sheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaftopresheaf.md) | 336 | `declaration-track:37f10ff544074710981dff5cf9fb51d87f74ecefa70c63946cf97af5fd9584c4` |
| 27 | `abbrev` | [sheafSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheafsections.md) | 339 | `declaration-track:ecb1c52d1e21ce6dddd175168598b07cccb7bc181c9b9c6876baf47da0eab297` |
| 28 | `def` | [sheafSectionsNatIsoEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheafsectionsnatisoevaluation.md) | 343 | `declaration-track:823b40c6927ad2f693f853f917243a341ef04c5970efa30fe28c35a6f4022b76` |
| 29 | `abbrev` | [fullyFaithfulSheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/fullyfaithfulsheaftopresheaf.md) | 348 | `declaration-track:1e43e1a382be160055b9609e90f58b4ba5dc3508f2dcaff463f44ea04574752e` |
| 30 | `abbrev` | [Sheaf.homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-homequiv.md) | 356 | `declaration-track:e7edfba8a429f5db7eafe355a209b383a55878343163e35ef96726449a6ddcd2` |
| 31 | `def` | [sheafToPresheafCompYonedaCompWhiskeringLeftSheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaftopresheafcompyonedacompwhiskeringleftsheaftopresheaf.md) | 364 | `declaration-track:bc74ffc8175cc8d268b60223ebfc75831778aacaaef4c3f6c8979303023e663c` |
| 32 | `lemma` | [sheafToPresheafCompYonedaCompWhiskeringLeftSheafToPresheaf_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaftopresheafcompyonedacompwhiskeringleftsheaftopresheaf-app-app.md) | 371 | `result-track:cfb94267551b78315fe9bb23d62fad32c4d84acca55f69c3df98bb670fc1c86c` |
| 33 | `def` | [sheafToPresheafCompCoyonedaCompWhiskeringLeftSheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaftopresheafcompcoyonedacompwhiskeringleftsheaftopresheaf.md) | 381 | `declaration-track:97f911a1be758abca86bb17b838a5882ae039e64e14ab05e396cc3d52b39268e` |
| 34 | `lemma` | [sheafToPresheafCompCoyonedaCompWhiskeringLeftSheafToPresheaf_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaftopresheafcompcoyonedacompwhiskeringleftsheaftopresheaf-app-app.md) | 389 | `result-track:c2f61bd8a7071d87c2e6464470dcbfeac6fd7ce354fea1ec6afb40b488cbb0bb` |
| 35 | `theorem` | [Sheaf.Hom.mono_of_presheaf_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-hom-mono-of-presheaf-mono.md) | 398 | `result-track:561b48020f89a2708869d84b9a1002f28d524acde5e8cee0160e0e5e9f0cbd3d` |
| 36 | `instance` | [Sheaf.Hom.epi_of_presheaf_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-hom-epi-of-presheaf-epi.md) | 401 | `declaration-track:14e389d5e4251e7f5dedea1fee8d8f41f12eae3f19c29653b5724f05884e569a` |
| 37 | `theorem` | [isSheaf_iff_isSheaf_of_type](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-issheaf-of-type.md) | 406 | `result-track:edf65771e2368235cfcb6e3b957ef1e17965538445dc974a324af04a5039a000` |
| 38 | `def` | [sheafOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheafover.md) | 433 | `declaration-track:5ccaa145725de87e1e93ce29590e0e66edf4a673a311af65f52c0d1c1b4c8746` |
| 39 | `lemma` | [Presheaf.IsSheaf.isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/presheaf-issheaf-issheaffor.md) | 441 | `result-track:74171b53b39e57103f34e8677e7414c83f31d751a362bb8eef42b718643d4e26` |
| 40 | `lemma` | [Presheaf.isSheaf_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/presheaf-issheaf-bot.md) | 447 | `result-track:f0ba0d19da19a3e9fe7c80e3298050b2bc66e8e32fd1779f29be8eb5b43eaa44` |
| 41 | `lemma` | [Presheaf.IsSheaf.of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/presheaf-issheaf-of-le.md) | 450 | `result-track:f8437464893d9c13a4f49fdaea67d7220ef0648982bb62f3063088dc32c9eb91` |
| 42 | `def` | [sheafBotEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheafbotequivalence.md) | 460 | `declaration-track:f43d7db6526a2f1c14038e5807eb9a4feaf508fa30159c8a5654cd6cfb7453fe` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/instance.md) | 468 | `declaration-track:1ba2879ad601c6362f25994e0da621d808e41442ddc34767388bac6bc761bc7e` |
| 44 | `def` | [Sheaf.isTerminalOfBotCover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-isterminalofbotcover.md) | 474 | `declaration-track:2a776ce4ca9f2da638c6a38022bcd2c2b0f8c54a3d0559ddd446bf1b717e41c8` |
| 45 | `def` | [Sheaf.terminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-terminal.md) | 484 | `declaration-track:58a302d77150a2b6f4e3284bcc3cd9e45e8dc5a25f6b94af35d30bf75ac768f3` |
| 46 | `def` | [Sheaf.isTerminalTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-isterminalterminal.md) | 490 | `declaration-track:dbc9ca5fdb0597a6d47fbee8f43277c55fa55364943dfbecbcd4bbbb9638917a` |
| 47 | `lemma` | [Sheaf.isTerminalTerminal_from_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-isterminalterminal-from-hom.md) | 495 | `result-track:3302f9960251f356039e181ddb8a7bf1a7b1fe8326d127bf70ba9787cfb7d39e` |
| 48 | `def` | [Sheaf.isTerminalOfEqTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-isterminalofeqtop.md) | 499 | `declaration-track:6c27a394d7793ab2debc609275775d31a5073eec735887e809765685a6a41548` |
| 49 | `theorem` | [Sheaf.Hom.add_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/sheaf-hom-add-app.md) | 506 | `result-track:6cca7302952a5231cbc9b1e9759c02eee21eab60bae0f0644075ea780eac0ec7` |
| 50 | `def` | [isLimitOfIsSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/islimitofissheaf.md) | 540 | `declaration-track:e0039928ff25a0aebe840a0a7985c1428a737df73a5223ebadd15c3ebcf4565b` |
| 51 | `theorem` | [isSheaf_iff_multifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-multifork.md) | 559 | `result-track:5b6a6138d92ee2d8e8472848f0523f52c48b15d72982c1b4e1a66d25b7631b09` |
| 52 | `def` | [IsSheaf.isLimitMultifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-islimitmultifork.md) | 583 | `declaration-track:b29689ce1f4235a35364b833daf3189d1ade2f09ae2022aba0784196f2919167` |
| 53 | `theorem` | [isSheaf_iff_multiequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-multiequalizer.md) | 589 | `result-track:f43e634f69c503726e38c88143adab6b2a95686f71b621467b87d3259030b3df` |
| 54 | `def` | [firstObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/firstobj.md) | 614 | `declaration-track:679875b4c9177412326ba7450e1ba75b656c30199c2478493d9e533083f585d9` |
| 55 | `def` | [forkMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/forkmap.md) | 620 | `declaration-track:12e9180485521be09b246227a04d131b610fc034b3ea0557df798859109bfe97` |
| 56 | `def` | [secondObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/secondobj.md) | 629 | `declaration-track:17f102296f0848387828b6dd8470467f6a229f45d66bb2e274878a7f7a0bbff9` |
| 57 | `def` | [firstMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/firstmap.md) | 635 | `declaration-track:024dd9e76d3d760072d54bc6b57468864bad06270c2b3f12506ec9e339ac1f86` |
| 58 | `def` | [secondMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/secondmap.md) | 640 | `declaration-track:b2c7c8c93653ca5abc4f7b559dbff5282d40d3dade2224d5f3cbdb189877aad5` |
| 59 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/w.md) | 644 | `result-track:03af46959a5c66cbe2510374a070696b10a2eccb3b1bf2672bda9ba90faa5936` |
| 60 | `def` | [IsSheaf'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-source-edition-2.md) | 655 | `declaration-track:df76e6715d60ef17b333d1435ecff478f5f1c460936adbd1b90ddd67408a348c` |
| 61 | `def` | [isSheafForIsSheafFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheafforissheaffor.md) | 663 | `declaration-track:0a7c4448b0d6fa283df3cc6462b02af722cd79ec09ea3e68bb7f8421eeca9585` |
| 62 | `theorem` | [isSheaf_iff_isSheaf'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-issheaf.md) | 687 | `result-track:faacfc1c652b290bc834ce5afcb2aa91663853bd850804c3d391f02cf216b366` |
| 63 | `theorem` | [isSheaf_of_isSheaf_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-of-issheaf-comp.md) | 711 | `result-track:a77cb536db3168045c4dcab7390fdf2547057ffd81856779c77660134b75b48f` |
| 64 | `theorem` | [isSheaf_comp_of_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-comp-of-issheaf.md) | 716 | `result-track:ca5b2c2934d3ac03535d0d35b4e2773e86346903d25e3cf3fe563b367ecc7e16` |
| 65 | `theorem` | [isSheaf_iff_isSheaf_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-issheaf-comp.md) | 721 | `result-track:11b6835af022a16c787f6ff99931fa73e9cbeec6fc58f34099a5e3b726b57187` |
| 66 | `theorem` | [isSheaf_iff_isSheaf_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedPublic.lean/declarations/issheaf-iff-issheaf-forget.md) | 736 | `result-track:429049d6e0a1eab21fe9a3b1a29f219aeafda2c8dfbe477becf5d5b035de38ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53bd871cc13259e78edba3f28105374f393383961560aa2960f1300fcf38eec1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
