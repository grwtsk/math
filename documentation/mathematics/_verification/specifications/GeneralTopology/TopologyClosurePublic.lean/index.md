# Verification target: Topology Closure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "557a4cd1768bc437e6f55fd9635ad07eba7c6080",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyClosurePublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyClosurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `557a4cd1768bc437e6f55fd9635ad07eba7c6080`.

Source path: `GRWTSK/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean.json)

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
| 1 | `theorem` | [mem_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/mem-interior.md) | 39 | `result-track:e8126391e1649148174d87d90eae5d0a1998d99781f479059896f6ace75d8099` |
| 2 | `theorem` | [isOpen_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isopen-interior.md) | 43 | `result-track:142dfad325acdfc82065efc91449668b1b1e51726f0f34477953d3313b2caf28` |
| 3 | `theorem` | [interior_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-subset.md) | 46 | `result-track:b5c47a32c7d6632cc08de42cbd04e2ab83e0a36d5e7598dd1cf8e1c3d58b3a4f` |
| 4 | `theorem` | [interior_maximal](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-maximal.md) | 49 | `result-track:51899c44fc2fc9d78b106481d9444c294e7765cc875c9e8d640b5f95fe31680c` |
| 5 | `theorem` | [IsOpen.interior_eq](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isopen-interior-eq.md) | 53 | `result-track:2abdf36a4dbdd81370ba32a1730ce120e58436e18106b9c3c210d37cf3e307f6` |
| 6 | `theorem` | [forall_isOpen_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/forall-isopen-iff.md) | 56 | `result-track:1177cc1e4cca4f003aeb59470578bc5e324c655fd944902b8b3724d6570002fc` |
| 7 | `theorem` | [exists_isOpen_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/exists-isopen-iff.md) | 60 | `result-track:e0f25be5b2adb60da3bbb48a0e772a9b376e36cea05e1a11e34b3cef2c5ce09a` |
| 8 | `theorem` | [interior_eq_iff_isOpen](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-eq-iff-isopen.md) | 64 | `result-track:87bef9b7300fa685a530ade44e16d8bdb4a8bebc4c4b16bba677a1b8bae3a359` |
| 9 | `theorem` | [subset_interior_iff_isOpen](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/subset-interior-iff-isopen.md) | 67 | `result-track:6b94094b86746cf34187cd85248554ac6bfb3391dae851193e978061e3aaee75` |
| 10 | `theorem` | [IsOpen.subset_interior_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isopen-subset-interior-iff.md) | 70 | `result-track:7c9afd444bca75d31f3060f7fdfe099ac6e701462f7320fb5b49c09041388e22` |
| 11 | `theorem` | [subset_interior_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/subset-interior-iff.md) | 73 | `result-track:cadcf31d835640b456a40e89a25a365dad8a614047112038e57c99024a42c79d` |
| 12 | `lemma` | [interior_subset_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-subset-iff.md) | 77 | `result-track:94fd919cb84d6f5eca8dc83dc59426461797ef252a846a761f950ac4c11f6917` |
| 13 | `theorem` | [interior_mono](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-mono.md) | 81 | `result-track:08d54c7a3f0b253ff908355dc4a97f6ba6f58c7d37bdb29cebdd6f9e99340c9b` |
| 14 | `theorem` | [subset_interior_union](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/subset-interior-union.md) | 84 | `result-track:bfb93300acb08af38dad1e6dc27d185ade750b564e9fc2c91f9bbd781868d838` |
| 15 | `theorem` | [interior_empty](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-empty.md) | 88 | `result-track:bd8989ef20267d105340d7d1bc3708f4a39b2526a586bd95b376d397cb5156db` |
| 16 | `theorem` | [interior_univ](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-univ.md) | 92 | `result-track:509aab6826708b73bbdb68970442fc18fc60a84be82815e9772dc9c643b7e4b6` |
| 17 | `theorem` | [interior_eq_univ](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-eq-univ.md) | 96 | `result-track:603a218dd4b65a5a9eeb66534f67303f95f7457bf726ceec8061f0025c7fd2df` |
| 18 | `theorem` | [interior_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-interior.md) | 100 | `result-track:c830e5d92f3520188d267bf661b51d680331381f641435f2b0abdb7a6140e910` |
| 19 | `theorem` | [interior_inter](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-inter.md) | 104 | `result-track:05084b9c0470e000fa7c6362f4f6905681e7fcbc13dd4d6ddac82f8a7c2e2588` |
| 20 | `theorem` | [Set.Finite.interior_biInter](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/set-finite-interior-biinter.md) | 109 | `result-track:b1d8f8d161640be5e364d20ba5cea0f68852b8b224ac62bb2a0d2eca23caff9c` |
| 21 | `theorem` | [Set.Finite.interior_sInter](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/set-finite-interior-sinter.md) | 115 | `result-track:d47032ac727b19b3dfb33a7de8d93e6c519747ed649e30a36118b953ef72b318` |
| 22 | `theorem` | [Finset.interior_iInter](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/finset-interior-iinter.md) | 120 | `result-track:c79f233a97cb198007a0727d010a7a5691a43fc6491b3ac28fd5116548dd517c` |
| 23 | `theorem` | [interior_iInter_of_finite](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-iinter-of-finite.md) | 125 | `result-track:6a27dd70527bdd0f78e3e12b1bd4b1bd61f42d430a60c8a725c1bf5583342cc5` |
| 24 | `theorem` | [interior_iInter₂_lt_nat](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-iinter-lt-nat.md) | 130 | `result-track:2be2263f9e5e26e8639f32936e3424180ee50f3d71023688405131714988c6d3` |
| 25 | `theorem` | [interior_iInter₂_le_nat](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-iinter-le-nat.md) | 135 | `result-track:84a8366314cac82c26ca7a7b24838e002cf17092c762cb1751ee194706157bea` |
| 26 | `theorem` | [interior_union_inter_interior_compl_left_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-union-inter-interior-compl-left-subset.md) | 139 | `result-track:913f2031ff70b4dee828cdef8a30faeb327ff4926d003c987b29d3bc6007ab81` |
| 27 | `theorem` | [interior_union_inter_interior_compl_right_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-union-inter-interior-compl-right-subset.md) | 143 | `result-track:d4e7ddd26195990b3347cf65a184c0c6fa8b85db33487c4552477778e06092f2` |
| 28 | `theorem` | [interior_union_isClosed_of_interior_empty](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-union-isclosed-of-interior-empty.md) | 147 | `result-track:43cdcd0cffbdac33029a3256d0fd2f17c3ebecc8cbb473b9ce968e449b0f8f60` |
| 29 | `theorem` | [isOpen_iff_forall_mem_open](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isopen-iff-forall-mem-open.md) | 157 | `result-track:4c6ffe2e333a40d6262ba4fa7e14eacf64acad6b15f71298f2992f95bfcf29aa` |
| 30 | `theorem` | [interior_iInter_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-iinter-subset-source-edition-2.md) | 161 | `result-track:fde8b34d6247201916a7704caed4405d623aae86bf4d28cddb47093b0f365337` |
| 31 | `theorem` | [interior_iInter₂_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-iinter-subset.md) | 164 | `result-track:7e4bea0fb11908d90c3cca09151c2aecc99b51330463d12bbaccb1761dfe2d18` |
| 32 | `theorem` | [interior_sInter_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-sinter-subset.md) | 168 | `result-track:c6bec107147fd86e9b77572dc5d2d6e036f1d27b7d544b9e56e71d9713ab934b` |
| 33 | `theorem` | [Filter.HasBasis.lift'_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/filter-hasbasis-lift-interior.md) | 173 | `result-track:1e724e4646c1d6d117588ff51cf732577f254f9f6e83020ddc87aecb9b515fbe` |
| 34 | `theorem` | [Filter.lift'_interior_le](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/filter-lift-interior-le.md) | 177 | `result-track:dc12fd61bbcc8ed8aec59309315c95d0164dd69fa4cbea49035d3977a93ff8fd` |
| 35 | `theorem` | [Filter.HasBasis.lift'_interior_eq_self](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/filter-hasbasis-lift-interior-eq-self.md) | 180 | `result-track:e246fa1750bda77bee08972f531acd4f58e7c4db41d9ab98c85232794731ef38` |
| 36 | `theorem` | [isClosed_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-closure.md) | 190 | `result-track:32cb4d783edf71b646320ff920c92f89d096aed56e9d0fedd4eaff90591c4373` |
| 37 | `theorem` | [subset_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/subset-closure.md) | 193 | `result-track:7964a882a15c55a8e903c8fd30af071dc7be85176b144336c067f9252b7734c0` |
| 38 | `theorem` | [notMem_of_notMem_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/notmem-of-notmem-closure.md) | 196 | `result-track:e449c276d3fdc07040c17637e9fcf890dcd1059de5d2185b8e9e43c0de97f7da` |
| 39 | `theorem` | [closure_minimal](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-minimal.md) | 199 | `result-track:1433fc749551a6b88d17fb587677e9e8bc0e7685663262da7d9244faa2a1cd6d` |
| 40 | `theorem` | [Disjoint.closure_left](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/disjoint-closure-left.md) | 202 | `result-track:0691c859870d9233253fa8537abbe5441d45c662bd0ad104ca29553448e12004` |
| 41 | `theorem` | [Disjoint.closure_right](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/disjoint-closure-right.md) | 206 | `result-track:fd8f43685f8fb8e524b6e5cfb95d2db79d2bf98f81af95483c33a33ea24c33cc` |
| 42 | `theorem` | [IsClosed.closure_eq](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-closure-eq.md) | 211 | `result-track:67d14eab9d6c74e730a1d45c27579dd6f0a49041f62ed69ad149a9ca8c6f3a02` |
| 43 | `theorem` | [forall_isClosed_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/forall-isclosed-iff.md) | 214 | `result-track:516093770242c06389c51fe0296601f80c0fdbf5fe6bce6bbc94e5d63ea483fc` |
| 44 | `theorem` | [exists_isClosed_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/exists-isclosed-iff.md) | 218 | `result-track:7bbf250a1c69ac25bbe1aec2711f6822440d320fd38702eccf998c4ec92c5ad7` |
| 45 | `theorem` | [IsClosed.closure_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-closure-subset.md) | 222 | `result-track:ff63997f7b220f2fcba9647753840265f33b27fdffe18757420d46c906848253` |
| 46 | `theorem` | [IsClosed.closure_subset_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-closure-subset-iff.md) | 225 | `result-track:64590177b4b326706d05706136b8751cab18f59de22c8538907af4b2316f569f` |
| 47 | `theorem` | [IsClosed.mem_iff_closure_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-mem-iff-closure-subset.md) | 228 | `result-track:e79a580b584ee9214cdf36227bbdb62f3a02b6cf93fc76792f93f3128972c0de` |
| 48 | `theorem` | [closure_mono](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-mono.md) | 233 | `result-track:f795efce911e5ae5c44c1c908c121a2ae1cf5735063b724ff809155830ecfddb` |
| 49 | `theorem` | [monotone_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/monotone-closure.md) | 236 | `result-track:e9f1b5324e1356c838fcfb0ec453bbeb69cd45f3668cbe6fb9ff5bfc2862c248` |
| 50 | `theorem` | [closure_inter_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-inter-subset.md) | 239 | `result-track:72c042d6a2f2fcd8e7e840f06f5449e119b087f88e4739d4612f0c6addf20df1` |
| 51 | `theorem` | [sdiff_subset_closure_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/sdiff-subset-closure-iff.md) | 242 | `result-track:0282c201779c0f51870c42aca143f1d0142aae92edceca0c978acbc7a9e44220` |
| 52 | `theorem` | [closure_inter_subset_inter_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-inter-subset-inter-closure.md) | 247 | `result-track:799fd6eb5f90a7c936321e58e0cf5fcb4330f1a1584eeae972cf831b16107478` |
| 53 | `theorem` | [isClosed_of_closure_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-of-closure-subset.md) | 251 | `result-track:493b4ce15d004755215ed56416ed733f0087099875e1ec449778015f43292e76` |
| 54 | `theorem` | [closure_eq_iff_isClosed](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-eq-iff-isclosed.md) | 254 | `result-track:145b3078799dc16a6307fbc39efbab1399c25526d6f114cd1f9e349101689c50` |
| 55 | `theorem` | [closure_subset_iff_isClosed](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-subset-iff-isclosed.md) | 257 | `result-track:87c0549cd8df40276010f11ab8c672998dd1a2a74ac88178505771d8ed15d014` |
| 56 | `theorem` | [closure_empty](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-empty.md) | 260 | `result-track:07df5bf7de6d1f8a0a5bc21f0ff4eae44859cd3473f1aa5b0b3e2cbe3567537e` |
| 57 | `theorem` | [closure_empty_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-empty-iff.md) | 264 | `result-track:175ee466a66483f60ad5d6b219876931501d9cb0cd94e56adcd9969f48d0f715` |
| 58 | `theorem` | [closure_nonempty_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-nonempty-iff.md) | 268 | `result-track:df36398eb732f2c90198a2cd40662848540fb98461e839b558049eede659ab86` |
| 59 | `theorem` | [closure_univ](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-univ.md) | 273 | `result-track:7ab11be62cef4fee96b12375ff65960087ae66386b9fcc057a5a3295ab0a16e1` |
| 60 | `theorem` | [closure_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-closure.md) | 276 | `result-track:fcfe7a808c7cfd40886275980c44b74377635bf3789fb27a43a2e88352963121` |
| 61 | `theorem` | [closure_eq_compl_interior_compl](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-eq-compl-interior-compl.md) | 279 | `result-track:11b6af84f0af5c87f7d9a37cc5bdec51de8905936bb5ce93a28971ea4cc84d34` |
| 62 | `theorem` | [closure_union](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-union.md) | 284 | `result-track:d51c43bf04c8b9fbef256298aeb471c8db8bc7d19890bf300325c2c3e3174723` |
| 63 | `theorem` | [Set.Finite.closure_biUnion](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/set-finite-closure-biunion.md) | 287 | `result-track:f142b0dabb866d55f457822079b3c7c3b65e0c8dca7d9ab1133e003fda060359` |
| 64 | `theorem` | [Set.Finite.closure_sUnion](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/set-finite-closure-sunion.md) | 291 | `result-track:ca33ff88275fe37b010732954f8a3bdfa16e6571fc88acb2ed8414cdd0ab5dc1` |
| 65 | `theorem` | [Finset.closure_biUnion](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/finset-closure-biunion.md) | 296 | `result-track:631920368df9c9dd4a0c654f03a4daeafece7866724b2fe600de8cac3c188e75` |
| 66 | `theorem` | [closure_iUnion_of_finite](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-iunion-of-finite.md) | 301 | `result-track:088ff3a7dc21c89014765537b7d26a1cd0d887797b31bfa958532a6991a237e3` |
| 67 | `theorem` | [closure_iUnion₂_lt_nat](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-iunion-lt-nat.md) | 306 | `result-track:d8f01762c52cdebd0f232c8854965162604a8d2fa87353597ddc3e0f203b3863` |
| 68 | `theorem` | [closure_iUnion₂_le_nat](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-iunion-le-nat.md) | 311 | `result-track:7b0d524f61c4414880da59412916d3310d337e86393596d52faa90870b7448c4` |
| 69 | `theorem` | [subset_closure_inter_union_closure_compl_left](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/subset-closure-inter-union-closure-compl-left.md) | 315 | `result-track:519ef5c55839298a5eafce8925b78e07db940fe9fcb9ef1b50ced7c39c828831` |
| 70 | `theorem` | [subset_closure_inter_union_closure_compl_right](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/subset-closure-inter-union-closure-compl-right.md) | 319 | `result-track:9ed90d88b71a63f8d0b02543abc8bf4887c8eca1d59a8eaa165f223321f0657a` |
| 71 | `theorem` | [interior_subset_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-subset-closure.md) | 323 | `result-track:8fc901c601557d3b85086f0a527b9fd5c13c53c27556e48a000cd253a6556630` |
| 72 | `theorem` | [interior_compl](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-compl.md) | 327 | `result-track:99b07bbf177cf354fb278492df08e869dfcf35599f595220bab578eb94325a62` |
| 73 | `theorem` | [closure_compl](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-compl.md) | 331 | `result-track:ab2995d6c050887d1f06d83a2249f79b0245e3a5052fea52d7bc7fb188a2c8d6` |
| 74 | `theorem` | [interior_eq_compl_closure_compl](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-eq-compl-closure-compl.md) | 334 | `result-track:12ec79afc43a3c6fd71b782234d9b6ebd8e5b743c5547917f3232ed37b3810c7` |
| 75 | `theorem` | [interior_union_of_disjoint_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-union-of-disjoint-closure.md) | 336 | `result-track:082bddd15845a6b60cd0f92bfb19c9a845dd4180a4ff7322fac124c79abb84fd` |
| 76 | `theorem` | [closure_inter_of_codisjoint_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-inter-of-codisjoint-interior.md) | 345 | `result-track:dc7ba6efd8a913b12ae7172ae37c2fe2ad00d9cb817379d6c24b38043167da59` |
| 77 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/mem-closure-iff.md) | 352 | `result-track:c3eb14f8fc79ba8bd2ecb2964a3ab909df79bc0adaa9cd1752ca5f289bc58bb8` |
| 78 | `theorem` | [closure_inter_open_nonempty_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-inter-open-nonempty-iff.md) | 363 | `result-track:36a448f1846c23b85c59600b47bbc3c0367f07ee146b931825ac5ebfb3c1b788` |
| 79 | `theorem` | [Filter.le_lift'_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/filter-le-lift-closure.md) | 368 | `result-track:2c471981fca49c6a8e6cfe1c99e8bbf36634d74288ffe907a4cf7c7273c75ef5` |
| 80 | `theorem` | [Filter.HasBasis.lift'_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/filter-hasbasis-lift-closure.md) | 371 | `result-track:1c43771d76cba5a8c6402a25642fb1c55b59c4d29cf192c8e392771c95b062c3` |
| 81 | `theorem` | [Filter.HasBasis.lift'_closure_eq_self](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/filter-hasbasis-lift-closure-eq-self.md) | 375 | `result-track:3d52f9a2011a1aacce28c346dfbade5bc59723cd1f13de32e5303f2612f04ae0` |
| 82 | `theorem` | [Filter.lift'_closure_eq_bot](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/filter-lift-closure-eq-bot.md) | 381 | `result-track:9931b98d21b74f2b4548c3f89dc756266ace6e56dedded3382140f3a987519cc` |
| 83 | `theorem` | [dense_iff_closure_eq](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-iff-closure-eq.md) | 385 | `result-track:5f45978bb7c08a12201bd7be64c3e93b940348058f61a05a89840eb541e69136` |
| 84 | `theorem` | [interior_eq_empty_iff_dense_compl](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-eq-empty-iff-dense-compl.md) | 390 | `result-track:530f785f4749c89d5daf2b24a605531001f7dd49dd34924e2fbac8d20cc11055` |
| 85 | `theorem` | [Dense.interior_compl](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-interior-compl.md) | 393 | `result-track:b891279c2897ddeeea4feae17366622dad19106b92a6f8e685ca8781973afc48` |
| 86 | `theorem` | [dense_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-closure.md) | 398 | `result-track:53a9deb54cf7eaa8fb2506542990d320c5e0f26c71f4ce609e287a062a400957` |
| 87 | `theorem` | [dense_univ](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-univ.md) | 405 | `result-track:ddca136ac512c93da6dea56f18721e7d4b06f092fa1335f4594bac3797087916` |
| 88 | `theorem` | [dense_iff_inter_open](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-iff-inter-open.md) | 408 | `result-track:30f298d0e32fc847b4927e03c9403be4ab0d886de31f2e9fa04825e6571037c4` |
| 89 | `theorem` | [Dense.exists_mem_open](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-exists-mem-open.md) | 420 | `result-track:04381fe6578f5be734d3c0fdc7a02fee81c378bc3f8bb94ebacfb8001f7dd167` |
| 90 | `theorem` | [Dense.nonempty_iff](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-nonempty-iff.md) | 425 | `result-track:62e3cd3b91d1436ecdb3ddd0277db9d26810ec81b882f8ae21f5171cf4eba182` |
| 91 | `theorem` | [Dense.nonempty](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-nonempty.md) | 430 | `result-track:29bf2e0884e7f6b7fde9db76324f753ab267f238b75cb6dfbec675a600ecb5f7` |
| 92 | `theorem` | [Dense.mono](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-mono.md) | 434 | `result-track:665d1b8604fd93d95e69b8220cfa538f478cd8d6bb1358f7fcae748e89cab3d8` |
| 93 | `lemma` | [DenseRange.of_comp](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/denserange-of-comp.md) | 437 | `result-track:7c4830797c69215e0e36b1db31595e588644b29aba29ee43de927e50af8a103b` |
| 94 | `theorem` | [dense_compl_singleton_iff_not_open](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-compl-singleton-iff-not-open.md) | 442 | `result-track:acb638d30f64f0de00371807fc734d4b74d001bd83708aa7374677884649c1b2` |
| 95 | `lemma` | [Dense.induction](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/dense-induction.md) | 453 | `result-track:ab2c61ab8e7ac726d146f73526fb6b6661dbcb66e617b6b642425500f7e726ca` |
| 96 | `theorem` | [IsOpen.subset_interior_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isopen-subset-interior-closure.md) | 457 | `result-track:d10b20d5526da3e497d5d76a45cfdb59597dfd36107b1b7695302a69552ad099` |
| 97 | `theorem` | [IsClosed.closure_interior_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-closure-interior-subset.md) | 460 | `result-track:32cc0ad12ad1014ec55cde94c353374dacfc702346b6204c48eb4208634b1764` |
| 98 | `theorem` | [closure_interior_idem](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-interior-idem.md) | 463 | `result-track:3dc4e81519c906f459fd5437ae756568b6f69e8fdb2066fb49eaae9c3755efa1` |
| 99 | `theorem` | [interior_closure_idem](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-closure-idem.md) | 468 | `result-track:7b1fb574ca2c659898fbaaaa05e54dc22bdbd99032fb56eb6f88c43767b3649c` |
| 100 | `theorem` | [closure_sdiff_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-sdiff-interior.md) | 478 | `result-track:05791cd5867c751e2921f124d2cc171606b724ebe2b733eed5b1621f109fea58` |
| 101 | `lemma` | [disjoint_interior_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/disjoint-interior-frontier.md) | 484 | `result-track:7ae9f1672bd55d2c241c490e2f2e50c3d21e0d14f350650699e1d905052a8380` |
| 102 | `theorem` | [closure_sdiff_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-sdiff-frontier.md) | 489 | `result-track:8c1483175704abfaa7a68e29f142b5516d9fc1b5defe765e27db16d49fcaf346` |
| 103 | `theorem` | [self_sdiff_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/self-sdiff-frontier.md) | 495 | `result-track:fbb3eafc5c7f4999bfca41b0d30bba422b5a33f068da8dc7e3cec316363f50bd` |
| 104 | `lemma` | [mem_interior_iff_notMem_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/mem-interior-iff-notmem-frontier.md) | 501 | `result-track:0144a1a6e64ecb361bcc453f8f9e8177f0efc5da2d7c2df9d0aaa5acefa730f2` |
| 105 | `lemma` | [mem_frontier_iff_notMem_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/mem-frontier-iff-notmem-interior.md) | 505 | `result-track:93abfc1ad093fd26c119bead221f34a10eac58e0212c8fea205b377fe91745e7` |
| 106 | `theorem` | [frontier_eq_closure_inter_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-eq-closure-inter-closure.md) | 509 | `result-track:54ab0ea6f3714b99cdf523bc1ba193004163d259e56eb18feb50465151c9d081` |
| 107 | `theorem` | [frontier_subset_closure](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-subset-closure.md) | 512 | `result-track:464ed20c96535e1e234e27f1b0747f2df85bd93618c0f7001105e40a14f0af51` |
| 108 | `theorem` | [frontier_subset_iff_isClosed](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-subset-iff-isclosed.md) | 515 | `result-track:eb51f01a969e45aff8b4a4215d2c87068932866da608aa65903d73784e82e40a` |
| 109 | `theorem` | [frontier_closure_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-closure-subset.md) | 520 | `result-track:c429e897b49ccff9e870f7d769398bfc24b1e9496eaa38f8970b9a131891017c` |
| 110 | `theorem` | [frontier_interior_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-interior-subset.md) | 523 | `result-track:b8d9b92d3248fd39f83054addfa15db3458a17376849e4633fbe25837375cdc9` |
| 111 | `theorem` | [frontier_compl](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-compl.md) | 528 | `result-track:9af97d137418eedcb9dcf26a71ee9c7fb9ddb17f256a9705b062e44916fe37a9` |
| 112 | `theorem` | [frontier_univ](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-univ.md) | 532 | `result-track:ae33cc44dd31cf8864c7f48edb27c94609549cd7bfcd88c8d80927361e422182` |
| 113 | `theorem` | [frontier_empty](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-empty.md) | 535 | `result-track:397a7af8c889a9ac8e0346dac12a6de8fdcfb756802e96644a5808eb76bd9e1a` |
| 114 | `theorem` | [frontier_inter_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-inter-subset.md) | 537 | `result-track:df4d32a4a5051f39aa3561255f86d39fba403fcb00ea5fcf49c0f91e6d8d1faf` |
| 115 | `theorem` | [frontier_union_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-union-subset.md) | 544 | `result-track:fa68820a2e70162744edee8d2a79cec4f30141bac8d0f92d619c764886913d98` |
| 116 | `lemma` | [Finset.frontier_biUnion_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/finset-frontier-biunion-subset.md) | 548 | `result-track:cec5fc0c0a01e9114e702f067a8c6ad7b4a1f4ea04079050b2a106f13f0e5959` |
| 117 | `lemma` | [Set.Finite.frontier_biUnion_subset](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/set-finite-frontier-biunion-subset.md) | 557 | `result-track:b146ff445c068e73c84af7321fa4b994118a17c62480241579c608a1b8c175c5` |
| 118 | `theorem` | [IsClosed.frontier_eq](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-frontier-eq.md) | 561 | `result-track:34f3087acf7ad5ec3dc191157c1a8e5a754b9d1a8b8ceeaecead6bc7891ecb86` |
| 119 | `theorem` | [IsOpen.frontier_eq](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isopen-frontier-eq.md) | 564 | `result-track:0856220e85c31325ce8ae500964220cca03653118b43d34a0d87efa62ad1cb23` |
| 120 | `theorem` | [IsOpen.inter_frontier_eq](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isopen-inter-frontier-eq.md) | 567 | `result-track:971c6855e9d64c8e9652fbf097225c43ee62ff9e7dca5a71da1c72ab3ebc2c02` |
| 121 | `theorem` | [disjoint_frontier_iff_isOpen](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/disjoint-frontier-iff-isopen.md) | 570 | `result-track:8e5c702d5fec0057614937e3abe77ea61a8a1541949195935a74f24b6777144a` |
| 122 | `theorem` | [isClosed_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/isclosed-frontier.md) | 575 | `result-track:c92198a396224342c9c34193d0fd4be303d75174251b1154ad2f4a41b3e50ba9` |
| 123 | `theorem` | [interior_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/interior-frontier.md) | 579 | `result-track:52e87c5ea82c0e5326417ee191be2dfb6b6954a1eeddf7ada8b7bd426823e440` |
| 124 | `theorem` | [closure_eq_interior_union_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-eq-interior-union-frontier.md) | 587 | `result-track:8c4cca0cde2cdd22df99cf9a8d035065cb3ec8f9d11f686a19a9450355059cb9` |
| 125 | `theorem` | [closure_eq_self_union_frontier](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/closure-eq-self-union-frontier.md) | 590 | `result-track:c6ba537168511a428205204731306d8ea9f9c8bffc1151d966eefb0ba3f1178d` |
| 126 | `theorem` | [Disjoint.frontier_left](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/disjoint-frontier-left.md) | 593 | `result-track:14c23c365c81fa951c7ffcdbf23b356850ea8885c92514c002b6471b9a35d580` |
| 127 | `theorem` | [Disjoint.frontier_right](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/disjoint-frontier-right.md) | 597 | `result-track:88c93404a1eda1f760cdab11602ea40ad739e0fe09b8cb6328c0fe1da92c7def` |
| 128 | `theorem` | [frontier_eq_inter_compl_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/frontier-eq-inter-compl-interior.md) | 600 | `result-track:d1a875b11a328c510ebfb066c266d5a316b3aacc5d446b84c40c58aa7735155e` |
| 129 | `theorem` | [compl_frontier_eq_union_interior](../../../../GeneralTopology/TopologyClosurePublic.lean/declarations/compl-frontier-eq-union-interior.md) | 603 | `result-track:df35fe39bccbb36f8ea1b5e574efce2d7d89dff70a38e8e44c4af4d93c98c591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=644ce9df2abbb96d3f31bb616ef39b89bd4646ec29c6bdf65eef270beb9b4c99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
