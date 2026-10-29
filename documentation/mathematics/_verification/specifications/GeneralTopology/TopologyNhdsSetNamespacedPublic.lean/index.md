# Verification target: Topology Nhds Set Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f916d5e20c7cb3d536bf22c6c824a7240f0bb30",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f916d5e20c7cb3d536bf22c6c824a7240f0bb30`.

Source path: `GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean.json)

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
| 1 | `theorem` | [nhdsSet_diagonal](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-diagonal.md) | 48 | `result-track:8565ec63f79c1326fdea3c3ec9a662c0f615849ae53f0d5e320a18eee7f7b3d9` |
| 2 | `theorem` | [mem_nhdsSet_iff_forall](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/mem-nhdsset-iff-forall.md) | 53 | `result-track:e72a8a7cde962909ef10d3776256aad0a946f119ff258dc61115df846c26ecea` |
| 3 | `lemma` | [nhdsSet_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-le.md) | 56 | `result-track:10ab6537e69d06d5f3db5779c2cfc6a03ec08486079d53b19c597bd308ef7581` |
| 4 | `theorem` | [bUnion_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/bunion-mem-nhdsset.md) | 58 | `result-track:f54ea168709faf10806b2092153996db8ed78835dc3f374725fc45ed453e8834` |
| 5 | `theorem` | [subset_interior_iff_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/subset-interior-iff-mem-nhdsset.md) | 62 | `result-track:94566c8f2da4952951714a67339a0ff05aa652b78b4153135aaad440dc0d075c` |
| 6 | `theorem` | [disjoint_principal_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/disjoint-principal-nhdsset.md) | 65 | `result-track:4ee286adf1740ef67ace9ecca8a588e04177d26bde875c59cb1d074c1f190858` |
| 7 | `theorem` | [disjoint_nhdsSet_principal](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/disjoint-nhdsset-principal.md) | 69 | `result-track:7a751b9fe96d44e98cd93ddd37919ad237e172a270a51d95bbe9d90de691da4a` |
| 8 | `theorem` | [mem_nhdsSet_iff_exists](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/mem-nhdsset-iff-exists.md) | 72 | `result-track:5de6e48bb293c11ef2cb3b67aad696655482206439f8bb227241dde04a388569` |
| 9 | `theorem` | [eventually_nhdsSet_iff_exists](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/eventually-nhdsset-iff-exists.md) | 76 | `result-track:8d6f6107f53c52e3333bef5d62bd76bbd735dbfeeee2b0c0e7642fce416a260a` |
| 10 | `theorem` | [eventually_nhdsSet_iff_forall](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/eventually-nhdsset-iff-forall.md) | 82 | `result-track:d416db86c0ae07f692a90c5c7d998775fd4064b76b03e7426546f0b2b7c6210a` |
| 11 | `theorem` | [hasBasis_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/hasbasis-nhdsset.md) | 86 | `result-track:11adff26e549ce9d56f7eb973acf057562ab60e40194d7ac0c76df16edb60b50` |
| 12 | `lemma` | [lift'_nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/lift-nhdsset-interior.md) | 90 | `result-track:42a7c94c23c22dc91402b52dc1162425ea2eb1df89a3ba0a4a2f7611667d430b` |
| 13 | `lemma` | [Filter.HasBasis.nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/filter-hasbasis-nhdsset-interior.md) | 93 | `result-track:7fa63e0cab3edd38d6c3119d2206677ca47d6f0ff58a43ed2ac0cb04e3cd9340` |
| 14 | `theorem` | [IsOpen.mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/isopen-mem-nhdsset.md) | 97 | `result-track:712023a745f76914a2c9aab25ba55324f179ff266eb79b6ea4e3827c11a1028f` |
| 15 | `theorem` | [IsOpen.mem_nhdsSet_self](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/isopen-mem-nhdsset-self.md) | 101 | `result-track:174e3385445a02387e985f26f6ae798bf05782f9320fe26943b7e99fc2c2f8e1` |
| 16 | `theorem` | [principal_le_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/principal-le-nhdsset.md) | 103 | `result-track:b454f5a3ba5fa7d9f2a5862a3565af71833abe4dee6fc187bbcf8c932982d7b2` |
| 17 | `theorem` | [subset_of_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/subset-of-mem-nhdsset.md) | 106 | `result-track:3d2a11ca6c578758c27f3cdc9593dfdbd22eb9448e1d0ad4525307e90597594a` |
| 18 | `theorem` | [Filter.Eventually.self_of_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/filter-eventually-self-of-nhdsset.md) | 108 | `result-track:ee6bc24080430cc0e0e5f7af42bdc0520bf8a20cdfb6b26bce9da3008bcc20ad` |
| 19 | `theorem` | [Filter.EventuallyEq.self_of_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/filter-eventuallyeq-self-of-nhdsset.md) | 111 | `result-track:b25e3df71fdb8dd7a126b9c3a3f378f5a63a3c17661f0d5f62266f7f49558a51` |
| 20 | `theorem` | [nhdsSet_eq_principal_iff](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-eq-principal-iff.md) | 116 | `result-track:80f5644bde03043abe10cbaab75fa74d97164d9267350331ec5fb728c259e034` |
| 21 | `theorem` | [nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-interior.md) | 123 | `result-track:12a232e8a76460e6853087894d92427081c046db195e665182fa88b661395ab8` |
| 22 | `theorem` | [nhdsSet_singleton](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-singleton.md) | 127 | `result-track:bf1c21ad6396e346202ac0c9bafcfcedeec0c6afe32ca5a7fb2b07253417a025` |
| 23 | `theorem` | [mem_nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/mem-nhdsset-interior.md) | 129 | `result-track:3471c10045fa9c486b3d3a68fe24df1622b006eb36e476ed766b8b6f042f58e7` |
| 24 | `theorem` | [nhdsSet_empty](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-empty.md) | 133 | `result-track:1e747ef4c4024314faf89d1071fab9d296ab3a3902216833903cdeaca1da345b` |
| 25 | `theorem` | [mem_nhdsSet_empty](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/mem-nhdsset-empty.md) | 135 | `result-track:66a3f4c2c6fa50cd9eb3bd7296dbbc963f8e0a0fb74104e6a3af0187880fad2a` |
| 26 | `lemma` | [nhdsSet_eq_bot_iff](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-eq-bot-iff.md) | 138 | `result-track:15c9100701c70c2b74446d2b0683d5ca347047d74595b6cbdbc610454e32836b` |
| 27 | `lemma` | [nhdsSet_neBot_iff](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-nebot-iff.md) | 143 | `result-track:9fe4eed233c36bed194709c85df592e819bba81e3a7d256b596f4de7d140c595` |
| 28 | `theorem` | [nhdsSet_univ](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-univ.md) | 150 | `result-track:7c3978c3577daccd38bf0087b49d81ba39b4828340f1c5007b58d345fc20c4e0` |
| 29 | `theorem` | [nhdsSet_mono](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-mono.md) | 153 | `result-track:9bf8263f75f5309e85daf2637a0f5299147c44b127f0cae192ee6fab23ee2f0a` |
| 30 | `theorem` | [monotone_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/monotone-nhdsset.md) | 156 | `result-track:c47e6a8eb2bc6eac13878d711b4d35b9a580bf4bacf890ca3faedaaa8ae9db39` |
| 31 | `theorem` | [nhds_le_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhds-le-nhdsset.md) | 158 | `result-track:9b7e1844ed7429a79d3c2cabe6e9ca9e8ac85f817db81a9e2dbbc1c72e58a583` |
| 32 | `theorem` | [tendsto_nhdsSet_of_tendsto_nhds](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/tendsto-nhdsset-of-tendsto-nhds.md) | 161 | `result-track:ecd570052e7860df75fa2089ca3827bbc28b4dce5f5fca7b863fe60c6c86843e` |
| 33 | `theorem` | [nhdsSet_union](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-union.md) | 167 | `result-track:b4e7f136b6e381f66e20421ef819f6309455c13eb65a8bac4fa4b279b8fdd117` |
| 34 | `theorem` | [union_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/union-mem-nhdsset.md) | 170 | `result-track:0c5ed994535c2e2b861ca0dd6233da0b081043429da4221df9a6f26f93c3cb9f` |
| 35 | `theorem` | [nhdsSet_insert](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-insert.md) | 175 | `result-track:31f48455d3faffdd9cc7b894ae59521c923b73fe15c20bd05b8bf3661f53a935` |
| 36 | `theorem` | [nhdsSet_inter_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-inter-le.md) | 181 | `result-track:2dce499b3b486f4315c264dbf1a833b4dd51fca25bc9e6e5f298b6c7308d767d` |
| 37 | `theorem` | [nhdsSet_iInter_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-iinter-le.md) | 184 | `result-track:f62c098590e40f5468798e0b0c5614e46aa34dbb9bc75239a1b1b6e5a58325e0` |
| 38 | `theorem` | [nhdsSet_sInter_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-sinter-le.md) | 187 | `result-track:15470e8359d19f54642529c56ff32e4ec41a2a53197c6237c0fa6d164fc75bc0` |
| 39 | `theorem` | [IsClosed.nhdsSet_le_sup](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/isclosed-nhdsset-le-sup.md) | 191 | `result-track:3350edbbfaa0e808433f46852045561d6a30220ad082125245ca78b4737de62b` |
| 40 | `theorem` | [IsClosed.nhdsSet_le_sup'](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/isclosed-nhdsset-le-sup-source-edition-2.md) | 199 | `result-track:fb5b450047cea963bdd8c0d3bbdb237d39d3b923851437f7a6e24ff5548a5127` |
| 41 | `theorem` | [Filter.Eventually.eventually_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/filter-eventually-eventually-nhdsset.md) | 202 | `result-track:077daf2f4c1ebb65dd0c539219f9414b2d6392d1ad4345f5d6460753b5852431` |
| 42 | `theorem` | [Filter.Eventually.union_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/filter-eventually-union-nhdsset.md) | 207 | `result-track:85d119bff927b02fe943f7270145264fa4584c80065ab239b61366897fbba86f` |
| 43 | `theorem` | [Filter.Eventually.union](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/filter-eventually-union.md) | 211 | `result-track:c39e5bf407b6edcdb034c9c4153febef35c0ca0c06b207e6b7bada8dc54f46c6` |
| 44 | `theorem` | [nhdsSet_iUnion](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/nhdsset-iunion.md) | 215 | `result-track:18be9be0a80214afc9d83d00e06e55ffae5cda6cb8f09d2552e94b4d381542f5` |
| 45 | `theorem` | [eventually_nhdsSet_iUnion₂](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/eventually-nhdsset-iunion.md) | 218 | `result-track:4d8f056ae1238a650a9115d6195ebd79e804bd8da7ed9cf5e621a4d2d8a32438` |
| 46 | `theorem` | [eventually_nhdsSet_iUnion](../../../../GeneralTopology/TopologyNhdsSetNamespacedPublic.lean/declarations/eventually-nhdsset-iunion-source-edition-2.md) | 222 | `result-track:b4a21f7c23c3f75740af282144b0bf8357f7a03536581ced9c5b65007e6fcb7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=574eecdaf88d5fbc74746a3b78ee0376dbc2075950d63a74bc622bde37e8cc1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
