# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1774dd68fa8f9fa87f73c8cafd51a438fda9e01",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RoleRelationReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PositiveRoleRelationReindex.lean/index.md) · [Full source](../../../../Combinatorics/PositiveRoleRelationReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1774dd68fa8f9fa87f73c8cafd51a438fda9e01`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RoleRelationReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/RoleRelationReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex`](../../../../Combinatorics/DirectedGraphRoleRelationReindex.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [original](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/original.md) | 15 | `declaration-track:aee525abe9a0c21441be06eb431e3a0ddf834d5de2108fbbc549bfde27e53607` |
| 2 | `def` | [swapIndex](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/swapindex.md) | 20 | `declaration-track:6ebf529b70899ca1727062272070fc7d25fe4cd29d8bd9822d4d0b70e3244d58` |
| 3 | `def` | [updated](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/updated.md) | 22 | `declaration-track:60c1904fe8aee40ebb6a52e21fcf2e3b47eccc9b09d9bc07d07021cef9046b81` |
| 4 | `def` | [translation](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/translation.md) | 27 | `declaration-track:0fe6fd906268874413cc36df303be5b32e1f07e91b17c42ec07016259b5ff925` |
| 5 | `theorem` | [translation_bijective](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/translation-bijective.md) | 33 | `result-track:7e78b914f2c0e68d39567330be9818e06fccf5c61b5b8e4af814e734e635f731` |
| 6 | `def` | [vertexA](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/vertexa.md) | 35 | `declaration-track:44d9fe75bb51e0ccc83bd81ebbc7056b8ca787c6beb05e0e159ae3e5bc6e7610` |
| 7 | `def` | [vertexB](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/vertexb.md) | 36 | `declaration-track:fe581d9974a644eda61615fa16c688ad84e0897d755131edb22fff6fd2cab869` |
| 8 | `def` | [id0](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/id0.md) | 37 | `declaration-track:a6bf89a7217e4fba6445d2dca0a301f6d4e5d8bd125ec431599ab7a4ae06182d` |
| 9 | `def` | [id1](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/id1.md) | 38 | `declaration-track:47bd98840eb0b6d5021fbb80125416013ea236d1030e3c74c79518c45f6a7a06` |
| 10 | `def` | [id2](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/id2.md) | 39 | `declaration-track:ccde84d196855164924d6939c2f563af6a39ac635d4991057951819e5d10135a` |
| 11 | `def` | [new0](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/new0.md) | 40 | `declaration-track:6a137fd870f0e3c13ad88fb579e4fcdde3044d2933f02fd274e5e07166a6d204` |
| 12 | `def` | [new1](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/new1.md) | 41 | `declaration-track:75ee17bcf14d23350a726127669b60d542d459452f85331c6f81f897b5766c55` |
| 13 | `def` | [new2](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/new2.md) | 42 | `declaration-track:e45e19f084318c937c0b13f6e774c955911c2924d6c8cc6d408ee58747530b88` |
| 14 | `def` | [arrow0](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/arrow0.md) | 44 | `declaration-track:c9d82fc55c164657947dfef98cd627cce1c41e111f0324509f237e70fded1f2d` |
| 15 | `def` | [arrow1](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/arrow1.md) | 45 | `declaration-track:3a799a1d91f31e15d77de7b9db12d233e5a1aba21a932d6b06c6e4e72feb248f` |
| 16 | `def` | [arrow2](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/arrow2.md) | 46 | `declaration-track:16bdf517678735f60b59d9e062b72b9a06ed6daa6dd9fff74ebac1c3b89e3404` |
| 17 | `def` | [single0](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/single0.md) | 47 | `declaration-track:0f19b9e4aff5c61eb460046f987c4044f7e98af901cbe508f6af766f2918eea4` |
| 18 | `def` | [single1](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/single1.md) | 48 | `declaration-track:0564e2b58162461abeeb8127d27931133913d9796f316e9ab19147e6e4b5c416` |
| 19 | `def` | [revisited](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/revisited.md) | 49 | `declaration-track:c20dfee9664e1dde5b5b4caffb282c663ee28461f33cb376926e9ec9bb21e119` |
| 20 | `theorem` | [encode_single0](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/encode-single0.md) | 52 | `result-track:04a5fd412166beb4beee012ea57f80d57cbad01fa29957ffc590f1f0e4253223` |
| 21 | `theorem` | [encode_single1](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/encode-single1.md) | 53 | `result-track:0ab7764d55d5057d423841b65b2c2c19b4fe9ac4ba2b91a478186b7f461096b1` |
| 22 | `theorem` | [encode_revisited](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/encode-revisited.md) | 55 | `result-track:c3adebd623a3506de4cfc14a2f336513e1a2bff672dce58558d1dcf07b6a5beb` |
| 23 | `theorem` | [old_word_valid](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/old-word-valid.md) | 60 | `result-track:3956d6f3bfc0ae7f89de48fac34be195b5a62b8151d4946792d1212d33c4d264` |
| 24 | `theorem` | [translated_word](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/translated-word.md) | 64 | `result-track:75329ecf58f434666119283dc922595e26d49ce11cdf3f265a8488723df70b43` |
| 25 | `theorem` | [actual_mapped_history](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/actual-mapped-history.md) | 67 | `result-track:dc0310a2f395879cca9af076fc5eb298f051a91176fa4d9da616ed84148aa532` |
| 26 | `theorem` | [translated_valid](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/translated-valid.md) | 73 | `result-track:aff4a2872626dd3639e8478be2c41344c45584f09602c015cc847cb07b9f628e` |
| 27 | `theorem` | [translated_actual_decode](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/translated-actual-decode.md) | 78 | `result-track:69f387381776bb40b93a23aee49e2410089d96ea0ffb70311044deaa4a741b96` |
| 28 | `example` | [(anonymous)](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/example-source-edition-6.md) | 84 | `declaration-track:d9950bf9afec862f693140185ec3f6f15c9294a13285ba98fe50ac98bb6c0f75` |
| 29 | `example` | [(anonymous)](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/example.md) | 89 | `declaration-track:07bd3b369adc363f013ce7a611337c0a29b70fe5382f835a5f4535e96a819d1f` |
| 30 | `example` | [(anonymous)](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/example-source-edition-3.md) | 93 | `declaration-track:94c1aaceb19e791474420705738ba98acd27a7f325ce5fdca72ba0245dc4e83c` |
| 31 | `theorem` | [stale_word_rejected](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/stale-word-rejected.md) | 97 | `result-track:3b09ef077b4173a8d3dc04da9d9ccfb80badbffab71a54761ebb9901651a81b1` |
| 32 | `def` | [collapseIndex](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/collapseindex.md) | 103 | `declaration-track:07e4c43a147318b12227d2cc761af61cd31e6c9c6147565b62f0139eef6e575f` |
| 33 | `def` | [collapse](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/collapse.md) | 106 | `declaration-track:2dbb10b60a6c45264f43b0819fb52514e1f42dde66807eb7ff50ab36b84c5f97` |
| 34 | `theorem` | [collapse_not_injective](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/collapse-not-injective.md) | 124 | `result-track:c3bea254ab377463a74de4c64e7e2e4115b625cd5be9e387324ece9556d3f46b` |
| 35 | `theorem` | [qualified_collapse_not_injective](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/qualified-collapse-not-injective.md) | 129 | `result-track:991f809ab7ee49fa8e140851a206ab93eb41203775df24d2e7d85b94002e243c` |
| 36 | `theorem` | [old_parallel_paths_distinct](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/old-parallel-paths-distinct.md) | 137 | `result-track:2f7b2f9b45d44ddea7efb89f87828a9735f441ca43538a43651de90c528d5794` |
| 37 | `theorem` | [actual_parallel_history_loss](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/actual-parallel-history-loss.md) | 146 | `result-track:8a14f21064f14e32ce748d35f1083a2304ab0bd692147bcbe40831b1081aa873` |
| 38 | `def` | [roleChangedIndex](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/rolechangedindex.md) | 154 | `declaration-track:d16c9c8bb695dd4556a020c010122d97b3ac0bad1ebac7133815691f2da82370` |
| 39 | `theorem` | [role_change_preserves_endpoints](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/role-change-preserves-endpoints.md) | 156 | `result-track:f8c1fddcabd432222257af55c49e7e10d2735f2192f15f1b3a30d250ed5d958c` |
| 40 | `theorem` | [role_change_fails](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/role-change-fails.md) | 171 | `result-track:e26970ab997eb4ffa4c8d7091a9d73c3104c0c36aa245545a9f3beac6a8f1528` |
| 41 | `def` | [rows](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/rows.md) | 177 | `declaration-track:3eba0d058e7cf8cbe0a1f0f101195472445eb2960bd2547b31bb33117a030c87` |
| 42 | `theorem` | [actual_new_rows](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/actual-new-rows.md) | 180 | `result-track:b0cd13914555629c5ea4e014ad99d53451f004a8bd7d599591d0bf7eff904174` |
| 43 | `example` | [(anonymous)](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/example-source-edition-5.md) | 191 | `declaration-track:d02cf9fe24af4c83790d22cc236c1c2bb6808e1ea4a2b3b8cc2b772d1400cf25` |
| 44 | `def` | [oldCertificate](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/oldcertificate.md) | 195 | `declaration-track:6ff950c6c7931bae16aa06bd413008bf7178d95035e150e8a412e5675c6c89b9` |
| 45 | `theorem` | [certificate_entries](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/certificate-entries.md) | 201 | `result-track:379ae080dff36ceeafce601b695c2fff2383402bef721567d0cdb8e4fbaf93b7` |
| 46 | `example` | [(anonymous)](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/example-source-edition-2.md) | 210 | `declaration-track:270e9bf33d898e21f51e0c27f123c25258523cee462b0b8cd143f39d753ec9b6` |
| 47 | `theorem` | [empty_new_packet_root_loss](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/empty-new-packet-root-loss.md) | 218 | `result-track:2429624c5698a8826f0879d4f3b7d9577bf47b2e52a92048385bd57eba23055c` |
| 48 | `example` | [(anonymous)](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/example-source-edition-4.md) | 224 | `declaration-track:a2910c02327ae1ed5ca7e62c494d153758102c6e1aa8c1935cd8f3bc18e3a867` |
| 49 | `example` | [(anonymous)](../../../../Combinatorics/PositiveRoleRelationReindex.lean/declarations/example-source-edition-7.md) | 227 | `declaration-track:e50c0564d9f3edca466ec3e6fbf5a912ed3817bfac91b2b09d1a4d663f4372b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad22b12b5de64386b6611511bfa3c9308a34f84ed28ba3012932f61eab5f9c34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RoleRelationReindex.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RoleRelationReindex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
