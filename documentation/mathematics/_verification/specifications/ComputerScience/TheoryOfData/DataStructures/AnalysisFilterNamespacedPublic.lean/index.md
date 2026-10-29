# Verification target: Analysis Filter Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee9234d75da2577c6fba51c3601ecee23c3b1491",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee9234d75da2577c6fba51c3601ecee23c3b1491`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CFilter](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/cfilter.md) | 39 | `declaration-track:74c3e2bb566ac8a5e8346708f28dac73308b15a45eb0688538325e4205e6d5fa` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 48 | `declaration-track:56511aa04c58285139029123a948f0f13cd97d26da490ef08641e67664c7156d` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:2494988335b704e24750e0d721b027a4e8047faf0d429c3a111069dbc8bb6947` |
| 4 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/coe-mk.md) | 68 | `result-track:96294688314c43405beda39ead57c2f6fce47e7e79710a9f74c5c67c33bac69f` |
| 5 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/ofequiv-source-edition-3.md) | 72 | `declaration-track:d5eca90a9ea5764964a2967edbddfbbbfed7eef06e3bb0f087487def7a64737f` |
| 6 | `theorem` | [ofEquiv_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/ofequiv-val.md) | 81 | `result-track:93d1255f4902e5dfbbfd50888e9a34c8693395d6c63e84a60700c8f71b47072e` |
| 7 | `def` | [toFilter](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/tofilter.md) | 88 | `declaration-track:803b2637a35e5a9b8b7ba4395ddb801cc7198964ad6820790c75a07abecc3d69` |
| 8 | `theorem` | [mem_toFilter_sets](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/mem-tofilter-sets.md) | 96 | `result-track:aa9b98904b61b95910db2afd5def35eb28cc0616e2e379de868f0b9e366661f5` |
| 9 | `structure` | [Filter.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/filter-realizer.md) | 103 | `declaration-track:476a1c1f62f679dfafb29a9ecea54dccf631bfe5427d1e06665e2b4c22b43b92` |
| 10 | `def` | [CFilter.toRealizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/cfilter-torealizer.md) | 109 | `declaration-track:544701cd7d3936b07a7978fd9917aa3810ba753d202741b026156f6bcb21434f` |
| 11 | `theorem` | [mem_sets](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/mem-sets.md) | 114 | `result-track:5bc9e66653fb3cdf3162dd5c423783e295c4dfca04284ce57b4720e17fa6ba74` |
| 12 | `def` | [ofEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/ofeq.md) | 119 | `declaration-track:0841b39a6c50513e7fbe1726e31b94800b17e47b75089710df5a3c32ccc901b7` |
| 13 | `def` | [ofFilter](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/offilter.md) | 123 | `declaration-track:7ee94042bc4808c8307eaad3e3f042f37b47145e57f4b6957eab45359b9e7b64` |
| 14 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/ofequiv.md) | 133 | `declaration-track:85acb365f21ed0673d463cc50164a1ffc3bb7ffd60c4a23ae7a3479b13a509fa` |
| 15 | `theorem` | [ofEquiv_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/ofequiv-source-edition-2.md) | 140 | `result-track:a45e6df23ac42866544b56c8caa98daa1d0a09d819d4bb5abb74df816beac9b2` |
| 16 | `theorem` | [ofEquiv_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/ofequiv-f.md) | 144 | `result-track:125595f27f46f881cc9a7ee0038491987c18e76a4745eb6951fdf58e775b28cf` |
| 17 | `def` | [principal](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/principal.md) | 148 | `declaration-track:3157edb0e19e792de9e2846aa74078ca5a4be76ade3e0170470f18d8dffc4628` |
| 18 | `theorem` | [principal_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/principal-source-edition-2.md) | 158 | `result-track:fce08f90ca573d8e4d6a667a940dcc2001ae8c04c67b3e557e2ef0eb53e29ccd` |
| 19 | `theorem` | [principal_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/principal-f.md) | 162 | `result-track:d8e58c6fa8cc030ad47d9743bf5ba5405e92a7341dc727056d6821a823e7c9ec` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/instance.md) | 165 | `declaration-track:23d73e08586de204f4f2acde21f82854ea7093b985458bae1082f3970a208371` |
| 21 | `def` | [top](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/top-source-edition-2.md) | 169 | `declaration-track:856f112605b0e71a2b88f830eb326adc5d51d320b0bf5e946f91a380c2139994` |
| 22 | `theorem` | [top_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/top.md) | 173 | `result-track:11422daacdbf2d5c7e0e9049ee56d924603947da89a419dc76590212e27d2424` |
| 23 | `theorem` | [top_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/top-f.md) | 177 | `result-track:fb373ef522665dc03b0483ce31503288dd0075676e872d6ed53280e81147ab50` |
| 24 | `def` | [bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/bot.md) | 181 | `declaration-track:bcd3546595af7bb60bd9c9b356381543f88426e4057e03c552bb787d44051785` |
| 25 | `theorem` | [bot_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/bot-source-edition-2.md) | 185 | `result-track:d44297e2f0eeba2c5f7bc6776b775f404cd96f8dfb2f36ecbfbafa2967c31b66` |
| 26 | `theorem` | [bot_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/bot-f.md) | 189 | `result-track:b5ffc56330ffa8b44cbfbce0a98851518ce5fa8bf3c96f02378472eb19ddf7c5` |
| 27 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/map.md) | 193 | `declaration-track:6e6eec28350404343b6a7c2cac3e37011208b62b37ffb30884afe3312d8a3991` |
| 28 | `theorem` | [map_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/map-source-edition-2.md) | 205 | `result-track:d927b6359ef404489d069e30e5bd6fe0e0ad3877653d7dacce6660e6735533c5` |
| 29 | `theorem` | [map_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/map-f.md) | 209 | `result-track:144e04cbd37060ee998e18b599021eeb5fd2042ff61a8ab07cb58f299074e1a7` |
| 30 | `def` | [comap](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/comap.md) | 213 | `declaration-track:c259f9642c9fc3e22b57210dc5175ed8d90a4852e4699b43e5697a1d2276fca5` |
| 31 | `def` | [sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/sup.md) | 226 | `declaration-track:42883c403a9df53e3493f093e9961fd505b86bddf8407bbda7af85fb4b05cde1` |
| 32 | `def` | [inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/inf.md) | 236 | `declaration-track:002009a9d0533c8dffb059fdd14cf19c23b2eedfcca500ec3092825925d9e07c` |
| 33 | `def` | [cofinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/cofinite.md) | 255 | `declaration-track:1980da6838cba1ec325e69531319e69fa89bc6679823a814c7a5c4e5be359fca` |
| 34 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/bind.md) | 268 | `declaration-track:a46c5785274310ced487ed9a3344c375cc6676edaf80d79fdf5b5b693ec72ecf` |
| 35 | `def` | [iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/isup.md) | 293 | `declaration-track:407dac1732ce679945a91ecae9521130b2d4e6f121a73f1cc106b211630909c4` |
| 36 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/prod.md) | 302 | `declaration-track:0bf6e5e0ef076ed2c2ad2bf2a6bb44fae4b8a03e6daa19c34e4b3e46afeaedd3` |
| 37 | `theorem` | [le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/le-iff.md) | 305 | `result-track:c9d19b30751539c577aeda1fa6831ae23c56e50a0f65dbe7a30c60d37fbd185b` |
| 38 | `theorem` | [tendsto_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/tendsto-iff.md) | 313 | `result-track:92a2a3f8f6ff886f1c83e2edf9ec6f62a9fea2055fd4a62889bc116ebfdaa570` |
| 39 | `theorem` | [ne_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilterNamespacedPublic.lean/declarations/ne-bot-iff.md) | 317 | `result-track:97aefcec606bfea41c6ae2941fd21460d1b52d1a0fc4b448d8cef7ea3533e683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0b8027467cd5521429720b4638039aa87234a51e2bc2da725817d6ce208720d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
