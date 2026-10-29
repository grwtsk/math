# Verification target: Cofinite Frequently Cofinite Mem Iff Infinite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca63a65604ec4b49853633a40a51d8272186c3b1",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca63a65604ec4b49853633a40a51d8272186c3b1`.

Source path: `GRWTSK/Topology/GeneralTopology/Cofinite/Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cofinite/Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountablyGenerated` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ker` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/cofinite.md) | 37 | `declaration-track:1e06022b1687a73e896627df0b1f49d819862750451bde1e79d231f28c1ee4df` |
| 2 | `theorem` | [mem_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/mem-cofinite.md) | 41 | `result-track:136d3a996ab3c3256f27a3a021f1da6f4073870525f75852bfcd8e2b48d9412e` |
| 3 | `theorem` | [eventually_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/eventually-cofinite.md) | 45 | `result-track:0b6eb11ca1ee6246ba86d0e73047950f1c42e18e4f8523205a64bd2f743717ca` |
| 4 | `theorem` | [hasBasis_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/hasbasis-cofinite.md) | 48 | `result-track:a2fdc29be28701e677e8b4a2b6efe835346bd489782d2e872811641e6de641b8` |
| 5 | `instance` | [cofinite_neBot](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/cofinite-nebot.md) | 53 | `declaration-track:d0cbd7ca50f1d0a01ef1b69ad120a4188b375866960c41a67fd2303b2f759841` |
| 6 | `theorem` | [cofinite_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/cofinite-eq-bot-iff.md) | 57 | `result-track:7e2f3cd44978db71102017a0dd80e0e8882aa8195fcee6254e3323168aaea030` |
| 7 | `theorem` | [cofinite_eq_bot](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/cofinite-eq-bot.md) | 61 | `result-track:f84a7e699611084fbd07b9fbd4ee58daf1e2e4c192ca777138e19bdad35b5bd0` |
| 8 | `theorem` | [frequently_cofinite_iff_infinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/frequently-cofinite-iff-infinite.md) | 63 | `result-track:361f55e0968b719c4772d8b1c10a1cb1d398a8216caeedcab2fecba727799988` |
| 9 | `lemma` | [frequently_cofinite_mem_iff_infinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/frequently-cofinite-mem-iff-infinite.md) | 67 | `result-track:23cfac52458c58a161edfceccf932dd15c7949f2200d31b3e88bee4bcadb4e28` |
| 10 | `lemma` | [cofinite_inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/cofinite-inf-principal-nebot-iff.md) | 73 | `result-track:c4e6cbfae9caf4f9e0a8893b7b1c663db5125e7504066502f6de301f606cb928` |
| 11 | `theorem` | [_root_.Set.Finite.compl_mem_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/root-set-finite-compl-mem-cofinite.md) | 78 | `result-track:1db6c3a4f34f334634d1a74cb98ab6e1e93bb885193ffd71a946aeedb95492dd` |
| 12 | `theorem` | [_root_.Set.Finite.eventually_cofinite_notMem](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/root-set-finite-eventually-cofinite-notmem.md) | 81 | `result-track:628e5f026dcd062f515a8f8c24cdccea75435c298ae1a7dfd6c6165fa83ea848` |
| 13 | `theorem` | [_root_.Finset.eventually_cofinite_notMem](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/root-finset-eventually-cofinite-notmem.md) | 88 | `result-track:13958cb3a3ceb9329370be2df0d7689761d6cf280b39d40093e5aa0425457840` |
| 14 | `theorem` | [_root_.Set.infinite_iff_frequently_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/root-set-infinite-iff-frequently-cofinite.md) | 94 | `result-track:b1eaba86789ff47c974c9f4ec5f4d4c57735f03b1caea95ac1b69f12ebfec128` |
| 15 | `theorem` | [eventually_cofinite_ne](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/eventually-cofinite-ne.md) | 98 | `result-track:458802f12e6b94ab6fa2abb623ee961e00a58ce7e592f494987bd4be5d72601a` |
| 16 | `theorem` | [le_cofinite_iff_compl_singleton_mem](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/le-cofinite-iff-compl-singleton-mem.md) | 101 | `result-track:fdd37b7a74461372fb2a8957cfd44dd6414b06e5794aa55a670858227f061b8f` |
| 17 | `theorem` | [le_cofinite_iff_eventually_ne](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/le-cofinite-iff-eventually-ne.md) | 106 | `result-track:8f5e6108a0101536d03332cb311d492c10a3f6e86a0241e84b96d2fb128f20a3` |
| 18 | `theorem` | [atTop_le_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/attop-le-cofinite.md) | 110 | `result-track:c7604a92afeb53c444e37eddf616134cd9717d5425273047dffe8cc2d403f793` |
| 19 | `theorem` | [atBot_le_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/atbot-le-cofinite.md) | 114 | `result-track:db8b18bdf1c42827d061e6870f61283d2c26b4dfe098a93bbfee678410de218d` |
| 20 | `theorem` | [comap_cofinite_le](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/comap-cofinite-le.md) | 117 | `result-track:949039fc988799abd09135a3d660fe07684764392bad2114436a5b7a18d2a059` |
| 21 | `theorem` | [coprod_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/coprod-cofinite-source-edition-2.md) | 122 | `result-track:a3e6d07b926e41e8a3250ccec2610157a90e9ace77937a9eb9f7e822fceffe6d` |
| 22 | `theorem` | [coprodᵢ_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/coprod-cofinite.md) | 126 | `result-track:58df6087b3935b9cb95ca4a9ea1816f7a4a46985d82a280827d0ff0a1c39e11c` |
| 23 | `theorem` | [disjoint_cofinite_left](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/disjoint-cofinite-left.md) | 131 | `result-track:ce88b32245bd25d11b49fb4f6111dbf59d0423c321fb0f8c37eeeca3988d57dc` |
| 24 | `theorem` | [disjoint_cofinite_right](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/disjoint-cofinite-right.md) | 134 | `result-track:a987364ab2fe31639226ce1eb1076ecafb617e13f4fb5c003ad2fe1de32ad1a9` |
| 25 | `theorem` | [countable_compl_ker](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/countable-compl-ker.md) | 138 | `result-track:d57d408d94c87dff7bfc08ceceb1a1984734abd6769d86998753bc35722b5b2e` |
| 26 | `theorem` | [Tendsto.countable_compl_preimage_ker](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/tendsto-countable-compl-preimage-ker.md) | 145 | `result-track:aa44302a60f26f95eefda4727e553fb00c32ab017764a55d7f43fd8d9361b24c` |
| 27 | `theorem` | [univ_pi_mem_pi](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/univ-pi-mem-pi.md) | 152 | `result-track:1241841d0e684bdb03d94803e15adbf4813987e5e8e7ef64e7f943d5e09267d8` |
| 28 | `theorem` | [map_piMap_pi](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/map-pimap-pi.md) | 167 | `result-track:703ba5c98bc6ec9d3b1eaff2224c0627eb87516bb3fe268ab2e5fa0ee0cfd8a5` |
| 29 | `theorem` | [map_piMap_pi_finite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/map-pimap-pi-finite.md) | 188 | `result-track:e600d651099c8b21bc1bbb168af3a523a25e1ac7bb3b23d9408ed1886c7670c2` |
| 30 | `lemma` | [Set.Finite.cofinite_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/set-finite-cofinite-inf-principal-compl.md) | 197 | `result-track:de8e139349783b1a2a16e22813f8130960c82adb5e638b6f33f7a844128e93ee` |
| 31 | `lemma` | [Set.Finite.cofinite_inf_principal_diff](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/set-finite-cofinite-inf-principal-diff.md) | 201 | `result-track:c187c5effaa6b010e257b1d86866cb1f0bac0983c73c85ef6c9c9d7152a45939` |
| 32 | `theorem` | [Nat.cofinite_eq_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/nat-cofinite-eq-attop.md) | 206 | `result-track:ccf698c7dcbd4b9d0493f1f8df87205c4c45d51f9b72a61fa9d1f1c4dd6454bc` |
| 33 | `theorem` | [Nat.frequently_atTop_iff_infinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/nat-frequently-attop-iff-infinite.md) | 211 | `result-track:605e778b122ca7f778b0635ba3bd1877959661ee2c3e4f4f2bba7a23d142e052` |
| 34 | `lemma` | [Nat.eventually_pos](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/nat-eventually-pos.md) | 215 | `result-track:306a45239a63164239182ad6c021ccf0ec321f213e996948c7089f2c3b4a5ecb` |
| 35 | `theorem` | [Filter.Tendsto.exists_within_forall_le](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/filter-tendsto-exists-within-forall-le.md) | 218 | `result-track:daafdb65e99762bb61ca3adbc828339f7ed23a84c2e1e447b9821efd7f3a6467` |
| 36 | `theorem` | [Filter.Tendsto.exists_forall_le](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/filter-tendsto-exists-forall-le.md) | 234 | `result-track:898f799b2626eaa1044210be400f2e1608b1362d98cb690eb5ea5d8bdc29ad6c` |
| 37 | `theorem` | [Filter.Tendsto.exists_within_forall_ge](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/filter-tendsto-exists-within-forall-ge.md) | 239 | `result-track:096291af619e8270ae7fe112901448c33dbd8bfbcb343ca6c0facf97864f53c7` |
| 38 | `theorem` | [Filter.Tendsto.exists_forall_ge](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/filter-tendsto-exists-forall-ge.md) | 244 | `result-track:e18d935f16f0160381d0e856aeded98650691e8af7ac4767b08bc5ee02ea476a` |
| 39 | `theorem` | [Function.Surjective.le_map_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/function-surjective-le-map-cofinite.md) | 248 | `result-track:f511a65f1c6fae8ce46d9362f065d9ce18b0df4773815063cb700c4bb10b63b9` |
| 40 | `theorem` | [Function.Injective.tendsto_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/function-injective-tendsto-cofinite.md) | 253 | `result-track:5b07f8bc8f55944d005b2886e554472d991d0f513e39735febef0ce40680fa49` |
| 41 | `theorem` | [Filter.Tendsto.cofinite_of_finite_preimage_singleton](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/filter-tendsto-cofinite-of-finite-preimage-singleton.md) | 257 | `result-track:e067846a167a807bde9eef0c1dbd80e563a143bd057dc022a41560f75c6cde05` |
| 42 | `theorem` | [Function.Injective.comap_cofinite_eq](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/function-injective-comap-cofinite-eq.md) | 263 | `result-track:536807f9af7ed5b32b8ea8883e9d724e0a852cbf1d8c8570299415e3b011782d` |
| 43 | `theorem` | [Function.Injective.nat_tendsto_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteFrequentlyCofiniteMemIffInfinite.lean/declarations/function-injective-nat-tendsto-attop.md) | 268 | `result-track:c18eaba45fa01de2202225b3119c8fa92f67ba79e74d2467c54246c94f2a0d14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26d31be0460d0940bcb199d8ccbc5f42dbc90493d1eeba0aa6f32d72e6f2fcd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Cofinite/Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Cofinite/Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
