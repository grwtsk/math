# Verification target: Cohomological Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84c77d34cb68961611dc54cefae1bb0eb77bdf1a",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84c77d34cb68961611dc54cefae1bb0eb77bdf1a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Cohomology` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 2; external provider; requires a separately pinned dependency.
- `Authority.BoundaryCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CohomologyTheorySymbol](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologytheorysymbol.md) | 31 | `declaration-track:7cd6626d74b3a3a0d81d81aa0fc274ef9f8d62c6bbd6f4cc4e5279dd11b57c80` |
| 2 | `structure` | [CohomologyObjectSymbol](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologyobjectsymbol.md) | 37 | `declaration-track:717d6c79a5d67665777889402a6b4274c969c7adb4b33406b67531a2a24978f7` |
| 3 | `structure` | [CohomologyGroupSymbol](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologygroupsymbol.md) | 44 | `declaration-track:beedc1d7385c51483639650bb0d080bf0e60f229b8c554b43eaf4f3b52ce64bc` |
| 4 | `structure` | [ComparisonMapSymbol](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonmapsymbol.md) | 52 | `declaration-track:019df7bb790f2f8b60fe8a14f16909e5d55b08edff52299ff446980198ddfeaf` |
| 5 | `structure` | [ComparisonIsomorphismSymbol](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonisomorphismsymbol.md) | 59 | `declaration-track:266bccfbd2acd73e94d04dd04ee97ae03bc2f1ac2d15d427a26d43746f713125` |
| 6 | `inductive` | [ComparisonFamily](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonfamily.md) | 67 | `declaration-track:ffbb1f4391a89faae46bfe3b1b17b41fbdc943409f3bdd9c62405d23c1285d97` |
| 7 | `structure` | [CohomologyTheoryAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologytheoryauthority.md) | 85 | `declaration-track:98651188b341647155fea81271dfbfbb4c32a59467b34711810a89dc8eac608b` |
| 8 | `structure` | [ComparisonMapAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonmapauthority.md) | 93 | `declaration-track:40f6692bf613f31b91805fceab84fe1de5ab90fa1c20b0ae32b1036d9f494574` |
| 9 | `structure` | [ComparisonIsomorphismAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonisomorphismauthority.md) | 111 | `declaration-track:2489c41812afd82671eb3137ef3e6ae4045af2d0ebdf9e99eea8d36ee60da01c` |
| 10 | `structure` | [PrismaticComparisonAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/prismaticcomparisonauthority.md) | 125 | `declaration-track:06697cbc1346cddda0170a259cf0cbb2f22c4d98cd96db23eef42b7b9954e733` |
| 11 | `structure` | [CrystallineComparisonAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/crystallinecomparisonauthority.md) | 133 | `declaration-track:da2b7145868ce7026e6089d9fd2c819de314e74c2fcccb8d6437aad166f1071e` |
| 12 | `structure` | [DeRhamComparisonAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/derhamcomparisonauthority.md) | 139 | `declaration-track:9466616a545dbc81b1ac1a894cd2186f36d171672ff6fe4ace956dbea45415ad` |
| 13 | `structure` | [EtaleComparisonAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/etalecomparisonauthority.md) | 145 | `declaration-track:6531e41f19e22c672235a291782b086349dd7aa8505853836d5ea5d7ae26527b` |
| 14 | `structure` | [HodgeTateComparisonAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/hodgetatecomparisonauthority.md) | 151 | `declaration-track:a77f8c52bb350fb47c68f68ac770ae494696085ba131b111e133b9c6438c3b3f` |
| 15 | `structure` | [BettiComparisonAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/betticomparisonauthority.md) | 157 | `declaration-track:b59c2a41be24e2047c065ede53268e94789ff6cd0ed611efa5a8a61f37096a8e` |
| 16 | `structure` | [MotivicComparisonAuthority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/motiviccomparisonauthority.md) | 163 | `declaration-track:5a4e7dfbfd963772eb9d1ccb04e3826af22a3200d621dab6280684415ccc4237` |
| 17 | `theorem` | [cohomology_theory_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomology-theory-authorized.md) | 168 | `result-track:88454bbf444b9a0c38095110e78805229554676fb9a5d1136d538ad72bc87de5` |
| 18 | `theorem` | [comparison_map_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparison-map-authorized.md) | 173 | `result-track:9f9ec2610d3d8686e55b824b96c745fa1afe1f04a2bc7e86b7dcc74ad536674d` |
| 19 | `theorem` | [comparison_isomorphism_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparison-isomorphism-authorized.md) | 184 | `result-track:0a7aeb6ac413d1ef0583448c6cb03a7558432da0c5948113037e4a3a2a15e39d` |
| 20 | `theorem` | [prismatic_comparison_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/prismatic-comparison-authorized.md) | 195 | `result-track:4a6433c7bf76615469886a9383d12a029138a1a6a58860b60104f6214a7ca861` |
| 21 | `theorem` | [prismatic_comparison_authority_gate_sound](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/prismatic-comparison-authority-gate-sound.md) | 206 | `result-track:c5b1f7820a7c69e205b198d7c49c1f4b29963f37fbf615cb7da6fb642a4b7825` |
| 22 | `theorem` | [crystalline_comparison_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/crystalline-comparison-authorized.md) | 221 | `result-track:386f3aeff0fca07fd0bcb1ccde0b50545025061b5d393a00beca62654dd109ed` |
| 23 | `theorem` | [de_rham_comparison_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/de-rham-comparison-authorized.md) | 226 | `result-track:d4b707753ea6d02bdb630c945818eaea8c4c8fd1123f8be6727aba15ed882b1b` |
| 24 | `theorem` | [etale_comparison_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/etale-comparison-authorized.md) | 231 | `result-track:d8ddd29caf311f8aa07f9d740cac42938ebb41f7e255e9bb3b0d3ff5e37e7424` |
| 25 | `theorem` | [hodge_tate_comparison_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/hodge-tate-comparison-authorized.md) | 236 | `result-track:1aeda2add5cbc0b2330e0b516212be6970b3d10b5202de7671c0f56429be3888` |
| 26 | `theorem` | [betti_comparison_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/betti-comparison-authorized.md) | 241 | `result-track:317e46ad15dcc9b4bac949b72ca0c58ea9b517223befaf8a953eab39918a6f0c` |
| 27 | `theorem` | [motivic_comparison_authorized](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/motivic-comparison-authorized.md) | 246 | `result-track:517c9e196df3c61006283d7f4e98da9a6f2c0c06b478602ca2598eb0640ae837` |
| 28 | `def` | [CohomologyGroupSymbolOwnsTheoryConstruction](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologygroupsymbolownstheoryconstruction.md) | 252 | `declaration-track:0204479a722be36a7e6cf10b63af8dd512b1e23cd0b503fa84435a203e73d26a` |
| 29 | `def` | [CohomologyGroupSymbolOwnsComparisonMap](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologygroupsymbolownscomparisonmap.md) | 257 | `declaration-track:dc799339c6f6d31b5038ca9cd77cf94a789b6110491ee4e71551773ad8e5e96a` |
| 30 | `def` | [CohomologyGroupSymbolOwnsComparisonIsomorphism](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologygroupsymbolownscomparisonisomorphism.md) | 262 | `declaration-track:68ad33c0e4b15b6f6e5f9686f228db0ae6f493a037af0e0b9732fb47024f8e76` |
| 31 | `def` | [ComparisonMapSymbolOwnsIsomorphism](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonmapsymbolownsisomorphism.md) | 267 | `declaration-track:7337a6dc8c6a22a1428db6f4d9cda73320073ea0c1922bc0e93bb2ceb3c75961` |
| 32 | `def` | [ComparisonIsomorphismSymbolOwnsComparisonTheorem](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonisomorphismsymbolownscomparisontheorem.md) | 272 | `declaration-track:b4ba443e76b35b00093c2073e2d68f79a275d9203497d723e7954c92ebea171b` |
| 33 | `theorem` | [cohomology_group_symbol_not_theory_construction_authority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomology-group-symbol-not-theory-construction-authority.md) | 276 | `result-track:309c86682b230b41b1bd73e6d19291b451ec8e44a482bba5b8fa0cbb15435e5f` |
| 34 | `theorem` | [cohomology_group_symbol_not_comparison_map_authority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomology-group-symbol-not-comparison-map-authority.md) | 282 | `result-track:c30aa7e47e2d4c6b8c3411db3ef1de2fe0a8ae25b3deb0a22fbfe89233c8bd51` |
| 35 | `theorem` | [cohomology_group_symbol_not_comparison_isomorphism_authority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomology-group-symbol-not-comparison-isomorphism-authority.md) | 288 | `result-track:3d83602dccaa7497ed0922069e469eb299e045e0cb935c0feea6c4525c3a3ce7` |
| 36 | `theorem` | [comparison_map_symbol_not_isomorphism_authority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparison-map-symbol-not-isomorphism-authority.md) | 294 | `result-track:35970b969af0efe24dd547d5e8c3cea18ec3c1685f5d572f7e6d908e46fd8b6c` |
| 37 | `theorem` | [comparison_isomorphism_symbol_not_comparison_theorem_authority](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparison-isomorphism-symbol-not-comparison-theorem-authority.md) | 300 | `result-track:e0d891bd639bbb9426013713dda76fa9d04be00a5eac86bdc4be9b40189e3f3a` |
| 38 | `theorem` | [cohomological_comparison_symbol_boundary_summary](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomological-comparison-symbol-boundary-summary.md) | 312 | `result-track:282d708cee8a1e21238cdc154e246d37e66854584be895b680a142a96f6115ae` |
| 39 | `def` | [cohomologyTheoryCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/cohomologytheorycertificate.md) | 328 | `declaration-track:cd14c9f4f20ef11c05239b7b3e3a04ffba256ab230e172b14fcebf0eee4da725` |
| 40 | `def` | [comparisonMapCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonmapcertificate.md) | 338 | `declaration-track:b48773517569ab40bfd14e5ec70b1b93477d9d43aa69bd0cbdec8270de66f2de` |
| 41 | `def` | [comparisonIsomorphismCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/comparisonisomorphismcertificate.md) | 352 | `declaration-track:9e4288b2280ccafb1d73e6781afec500d3b23d0e8e1dfa117a295b043a6ca149` |
| 42 | `def` | [prismaticComparisonCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/prismaticcomparisoncertificate.md) | 366 | `declaration-track:1e63b03dd769d6d4adb812f4c1d76a67aa9e4ad04ca295880121f1fd66530d24` |
| 43 | `theorem` | [prismatic_comparison_certificate_sound](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/prismatic-comparison-certificate-sound.md) | 376 | `result-track:f0536115ab76e9927fc00f06dda080034796f27db59f6b4001c3b53b198f81dc` |
| 44 | `def` | [FiniteShadowRoutesDirectlyToPrismaticTheorem](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/finiteshadowroutesdirectlytoprismatictheorem.md) | 382 | `declaration-track:e794c4f38c499de5118663862fe9a389ab1a88c67010f050dbe7d27fccd30e87` |
| 45 | `theorem` | [finite_shadow_direct_prismatic_route_rejected](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/finite-shadow-direct-prismatic-route-rejected.md) | 387 | `result-track:6b4cb0b3a98a569f4668d76c7a80480a0ce93d5a81e7eb38005251907553aded` |
| 46 | `def` | [crystallineComparisonCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/crystallinecomparisoncertificate.md) | 394 | `declaration-track:5917f15515948cb7072ed5c375786f5b034f2d5fc27113df4ec67ade877da862` |
| 47 | `def` | [deRhamComparisonCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/derhamcomparisoncertificate.md) | 404 | `declaration-track:961b84ab45eb56af20616be1c2c29d9191259a55ab0623421f22c53c35097925` |
| 48 | `def` | [etaleComparisonCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/etalecomparisoncertificate.md) | 414 | `declaration-track:e695d3a209d11939adc3f3393060259790532c951ac17acc10da1b6a49505530` |
| 49 | `def` | [hodgeTateComparisonCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/hodgetatecomparisoncertificate.md) | 424 | `declaration-track:f79135f80d4c8b0cc87b4cb1fe5ddd1172bc0f3bcabd8fddf74ace98f7757681` |
| 50 | `def` | [bettiComparisonCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/betticomparisoncertificate.md) | 434 | `declaration-track:0aa7df2e69ddb19e2a6c81916196769e0c30651a10537aba09113ef38b127a3b` |
| 51 | `def` | [motivicComparisonCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/CohomologicalComparison.lean/declarations/motiviccomparisoncertificate.md) | 444 | `declaration-track:4aa3c648a8024222f14907c6603ec3bf7c04f3ece8de508da0c4dead5352bdbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22ebc1e1434439bb791d9be7bb33d08a6fdbcbd098f0420fc6926f0ee3f50167 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
