# Verification target: Lemmas Lemmas Namespaced Public Scan Aux M

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23ea5244971815a2433ae91553aa77f3bbe99505",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2967e7b39e04d1e6caa04afe6e6ef852127496d31692b526ddc40acc6d16bfc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23ea5244971815a2433ae91553aa77f3bbe99505`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2967e7b39e04d1e6caa04afe6e6ef852127496d31692b526ddc40acc6d16bfc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2967e7b39e04d1e6caa04afe6e6ef852127496d31692b526ddc40acc6d16bfc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scanAuxM.go_eq_append_map](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanauxm-go-eq-append-map.md) | 37 | `result-track:74cbb43371255766a116fa64bcaf1f59bce12ec19a0276af6e883a92be570e22` |
| 2 | `theorem` | [scanAuxM_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanauxm-nil.md) | 44 | `result-track:722811f9ddff94989619b9d70ad55836711434e7ede387a11eaa3368f3fec81e` |
| 3 | `theorem` | [scanAuxM_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanauxm-cons.md) | 47 | `result-track:c2870602b474259c677f97283f3fbe4be8e6427c077951f5add54964ff458514` |
| 4 | `theorem` | [scanlM_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanlm-nil.md) | 53 | `result-track:3c5793c0ef84dcc9cc92a9044d8134cc3a204c5cc4289ff62b3c59184c0ad730` |
| 5 | `theorem` | [scanlM_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanlm-cons.md) | 58 | `result-track:51f4100182adf2e5c8913dcc1057292f55267b59af700a765e09260e9531ad67` |
| 6 | `theorem` | [scanrM_concat](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanrm-concat.md) | 63 | `result-track:33c614d68d9ecac7897e2322b0b0a20487ec865e76a432a444153e99c77e2dca` |
| 7 | `theorem` | [scanrM_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanrm-nil.md) | 68 | `result-track:247e877f8bc2cde4062a6f04a22dd69073dc8953218fb5498d6bcccab31170b6` |
| 8 | `theorem` | [scanlM_eq_scanrM_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanlm-eq-scanrm-reverse.md) | 72 | `result-track:3ee8f744c59d60a2e515741ccf4709e1179518f74d71ea7171a9b5e8e86e640c` |
| 9 | `theorem` | [scanrM_eq_scanlM_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanrm-eq-scanlm-reverse.md) | 77 | `result-track:0209d2bab79b0e7dd09fb16d9d2ec532bf22e4e4d2fbdd785ba1e7eda8c37113` |
| 10 | `theorem` | [scanrM_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanrm-reverse.md) | 83 | `result-track:d7fd35972a6fde426396f4de800195fafc9d81997648da7dd5b1108004dda4bf` |
| 11 | `theorem` | [scanlM_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanlm-reverse.md) | 88 | `result-track:07b70f085e06bfe6d4858586116d7eccf9986631eefc0492cb8f44d22a0b6417` |
| 12 | `theorem` | [scanlM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanlm-pure.md) | 92 | `result-track:fc501c2ec2c15f720cb10971d57852a740a6920e86f1bbaf8c0dab2fe8d84b2d` |
| 13 | `theorem` | [scanrM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanrm-pure.md) | 96 | `result-track:ccc00e38a4e40f5533e7bbdb7488f426dba3dfe973c1aae2520890398305669f` |
| 14 | `theorem` | [idRun_scanlM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/idrun-scanlm.md) | 103 | `result-track:c1c82e08a8f7716d1e45f2807a95d1395025e28b0227ce3d0c2780afc7b182a6` |
| 15 | `theorem` | [idRun_scanrM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/idrun-scanrm.md) | 107 | `result-track:bd536d87d4d374c7e06d38d9be5f72685f92ef55d038cbb8e621280a194d5a9c` |
| 16 | `theorem` | [scanlM_map](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanlm-map.md) | 112 | `result-track:79150c718e4e8fdcc49e0c0cc0285e0345af90a5085a85769c75f92d4386930d` |
| 17 | `theorem` | [scanrM_map](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanrm-map.md) | 118 | `result-track:5a97ef543b5e01315025e749e445653a47bad2d7fb5e41df7bc89527478c76b3` |
| 18 | `theorem` | [length_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/length-scanl.md) | 127 | `result-track:b886c6834659851942c5e98e7e79c8edb5060f76e3112c2528f3dc62e4963ba2` |
| 19 | `theorem` | [scanl_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-nil.md) | 133 | `result-track:71b0d0bdba302f8428b0cefcba174a03adc161e04db4eb66377e58b459f6c2bf` |
| 20 | `theorem` | [scanl_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-cons.md) | 136 | `result-track:6b5eedef86be080cae8a2a5094ee824c9fab8e8793376a87484cd7962735ffc7` |
| 21 | `theorem` | [scanl_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-singleton.md) | 139 | `result-track:913a59683cc0b4edc9434dd8f005b468a663793fce11329f8d0d5b2544d3e639` |
| 22 | `theorem` | [scanl_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-ne-nil.md) | 142 | `result-track:588bdde3bb5d2bb3928a9201d8a6c445025e87b1c14f0475c74a3dd6a6cd4384` |
| 23 | `theorem` | [scanl_iff_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-iff-nil.md) | 146 | `result-track:a34c8b1b510fa6cb59956ad2935e1d73d857778abb874af664c7f77f90598874` |
| 24 | `theorem` | [getElem_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanl.md) | 152 | `result-track:cceaa4e382979215c7d5d1b6eb5b682f728cbc1b12f102ada9b6223cfaf2903a` |
| 25 | `theorem` | [getElem?_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanl-source-edition-2.md) | 159 | `result-track:f4fe91968c095dcdbf0d502df07ecf41352ce79b35ddd97ec43c65cddba19053` |
| 26 | `theorem` | [take_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/take-scanl.md) | 167 | `result-track:79a114f1bdf2f557f449c261162da71c7572f169c1f6e88244756474b4029efe` |
| 27 | `theorem` | [getElem?_scanl_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanl-zero.md) | 175 | `result-track:76ce6031954ee39f3e10df81023c06de2ede980a03dca823bc2b4096f066f0fc` |
| 28 | `theorem` | [getElem_scanl_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanl-zero-source-edition-2.md) | 178 | `result-track:e6dea9c24579dd8953c1fdc6bea7ac650a4063b6e793351b95a768e87d36dbaf` |
| 29 | `theorem` | [head_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/head-scanl.md) | 182 | `result-track:56b71667eb6292f9fc5abc9b76060025d22cb2d48e4e0b8535d14dc4bd691747` |
| 30 | `theorem` | [head?_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/head-scanl-source-edition-2.md) | 186 | `result-track:d6fb3d5b06ee663d9b0d997338dff043a313be74bfb923501e6d1deb9c4fcbb2` |
| 31 | `theorem` | [getLast_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getlast-scanl-source-edition-2.md) | 189 | `result-track:856059837581fa4be291c9dc70d670f780ad2789ca80714157bf454dccc0ac1c` |
| 32 | `theorem` | [getLast?_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getlast-scanl.md) | 193 | `result-track:442b9d0dd61ed8d7c4e4b86849aea8d87da345d75cd3665ee76209c1d673bb57` |
| 33 | `theorem` | [tail_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/tail-scanl.md) | 197 | `result-track:2c211d0d8d86ce95d0a073f36c40f1308b25ff99442b596a5b5197be2e43ce56` |
| 34 | `theorem` | [getElem?_succ_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-succ-scanl.md) | 203 | `result-track:ad037dd90dd9b749d8da0d913130aaf08c17eab47ba9fa088164de0382421bcf` |
| 35 | `theorem` | [getElem_succ_scanl](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-succ-scanl-source-edition-2.md) | 215 | `result-track:f9d048c05423b8e5ee0f71b4dafb297c0ad95d98ed0124d9b38573460a407eeb` |
| 36 | `theorem` | [scanl_append](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-append.md) | 221 | `result-track:70155beb8b0debcb60931a700aa8ce92c7baf75cd48b236c3eb229db681f25ea` |
| 37 | `theorem` | [scanl_map](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-map.md) | 228 | `result-track:f4d7633c50ba9788e92e400c80f2009e84cfbf47b2217731f478bee6167a1503` |
| 38 | `theorem` | [scanl_eq_scanr_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-eq-scanr-reverse.md) | 232 | `result-track:a8ed858d9b6f47b6c5a5f42364ed4dc43baa3417f1702ae6d32944a890f61f75` |
| 39 | `theorem` | [scanr_eq_scanl_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-eq-scanl-reverse.md) | 237 | `result-track:814cdf713460be93bc930626b14545c46a8936bf2213343e824fdcea437953c1` |
| 40 | `theorem` | [scanl_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanl-reverse.md) | 243 | `result-track:f6d5f5b72bb3f057607df8c5109ba58bd63d05494f4f507f7c16d27c8945d976` |
| 41 | `theorem` | [scanr_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-reverse.md) | 248 | `result-track:69cf6014c83c0907ead2e1d7c8e6da4938dc20ee8e44e5a4f738ed4a55a13b6b` |
| 42 | `theorem` | [scanr_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-nil.md) | 253 | `result-track:018c672f7f31720733a577492c8407e3946ef99b1ffd7eaa4965d8d216bcab23` |
| 43 | `theorem` | [scanr_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-cons.md) | 256 | `result-track:26554863143887cd714aa3429c5d5317c4e5761515ac9d28d4bc439f73c5c89c` |
| 44 | `theorem` | [scanr_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-ne-nil.md) | 261 | `result-track:390c674120014c805133eec8a6bb5be1132f2b25cc391310429c2ff7f739c1ff` |
| 45 | `theorem` | [scanr_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-singleton.md) | 264 | `result-track:6c7a721b040fca011fc5a9dd70a084356a5a2f9340e68240dec0d1462b8318c7` |
| 46 | `theorem` | [length_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/length-scanr.md) | 268 | `result-track:23a218f09081f850e73cc31461f65db16c2ce676afa6dca893e550e07f69606c` |
| 47 | `theorem` | [scanr_iff_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-iff-nil.md) | 275 | `result-track:018757e189d883cf523366007b2eb0aa871f96c59d46996663597b210f4237ac` |
| 48 | `theorem` | [scanr_append](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-append.md) | 279 | `result-track:ce49e3fe6a8b070d39a3f826ab1ce3bdfd124547ccbb91dd3769b793d35838a4` |
| 49 | `theorem` | [head_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/head-scanr-source-edition-2.md) | 284 | `result-track:5e3498d5b127b30facf54a6ad2e75f0bbf7574789aa0b56bb102f417baae971a` |
| 50 | `theorem` | [getLast_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getlast-scanr.md) | 289 | `result-track:0d0a0d5bc7548afe46966f2da37c229b72b0046393d40ce0a1c37e8880741f98` |
| 51 | `theorem` | [getLast?_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getlast-scanr-source-edition-2.md) | 293 | `result-track:2e256927b03e46746b163ac520a427f37afd02847c6277cf3e1387f74ed1ec44` |
| 52 | `theorem` | [tail_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/tail-scanr.md) | 297 | `result-track:c440b6380673b1ffbb0f47a791532a124a8cf468d1e9dd29f253ed7627f0aa3d` |
| 53 | `theorem` | [drop_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/drop-scanr.md) | 302 | `result-track:c9ab3c715546e8a0c9e0546dc76310274f390cd72412b859c83a1078d1c6e92e` |
| 54 | `theorem` | [getElem_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanr-source-edition-2.md) | 313 | `result-track:fda8b3fec20a66f6072073666e9e52100baab52c7aadb245227b2e095616e36c` |
| 55 | `theorem` | [getElem?_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanr.md) | 320 | `result-track:ce427a4f7d280462c82a2a8218ed039b8e0bc5e6824a31c85c4dc512bb00ea21` |
| 56 | `theorem` | [head?_scanr](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/head-scanr.md) | 328 | `result-track:2d59eea241d133171bf10a4b1f653f1090651b6bec8a8574df96532fbfe6cc4d` |
| 57 | `theorem` | [getElem_scanr_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanr-zero-source-edition-2.md) | 331 | `result-track:c589804f8f5cca829d7eab126946b50a32be3d4ae30ab0e5f4555eb8279c788d` |
| 58 | `theorem` | [getElem?_scanr_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanr-zero.md) | 334 | `result-track:08aeed868bba35e1872ebbf80ed3297fb9f1564d832d5b72542fa5be52d6d9b8` |
| 59 | `theorem` | [getElem?_scanr_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/getelem-scanr-of-lt.md) | 337 | `result-track:22360054d8233eed12afd08101c432c2bcfa8dfc1576434a81b7a4ec28be80a8` |
| 60 | `theorem` | [scanr_map](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicScanAuxM.lean/declarations/scanr-map.md) | 342 | `result-track:95146ac64deb336226b7d053cbb7a782ae1ae8f57f10e2a2d827014afbaba44a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dce7592ae1c62da7995cb0f429e88b1abcf8f2b75ad404ea58550acb68426e63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2967e7b39e04d1e6caa04afe6e6ef852127496d31692b526ddc40acc6d16bfc4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2967e7b39e04d1e6caa04afe6e6ef852127496d31692b526ddc40acc6d16bfc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
