# Verification target: Analysis Filter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cee8d254b9e8e6f325e97b8c4e3d454f311e7ed4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cee8d254b9e8e6f325e97b8c4e3d454f311e7ed4`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CFilter](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/cfilter.md) | 27 | `declaration-track:05586d50f69ed3c39c0bf922fad73d3b3375f9d878269fa42765c1f83ebd9b18` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/instance.md) | 36 | `declaration-track:096e914e15d26514d0a15ce0c13d0fc76115e88958251dc45a25a2e9fc1d387d` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:124e7e6020da975190dd81059db2d63fb5c0a7786e7e2f9b52e768b7f66b7b00` |
| 4 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/coe-mk.md) | 56 | `result-track:f9178b7adcd04646d654f5a55a04e6323e6b4dc291c41cb97ecd711418f6a9e1` |
| 5 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/ofequiv-source-edition-3.md) | 60 | `declaration-track:891e1dda19437b687c4cc7fa081e61faa05738a152d9ff337112353b47089d44` |
| 6 | `theorem` | [ofEquiv_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/ofequiv-val.md) | 69 | `result-track:7190a171e39609834eadf2a382039b7091eb8ec6145870a1b2ec1cb4f69b554d` |
| 7 | `def` | [toFilter](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/tofilter.md) | 76 | `declaration-track:edf41ee7620031301ff43de46bcc04dc9948100a0080e588131d9fd26e858bb8` |
| 8 | `theorem` | [mem_toFilter_sets](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/mem-tofilter-sets.md) | 84 | `result-track:3aec3575c14bec12381b293f03ec2c9463efb68bef577f545262980d9cd26114` |
| 9 | `structure` | [Filter.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/filter-realizer.md) | 91 | `declaration-track:b3cbd131c946a03e468e10883b59d184708e8351eb230db59e85dd207c64ded2` |
| 10 | `def` | [CFilter.toRealizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/cfilter-torealizer.md) | 97 | `declaration-track:766d704bd2e0bb76f85ebd07187ee1c765311a00cd6b34df8bfcf61c3a1a5699` |
| 11 | `theorem` | [mem_sets](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/mem-sets.md) | 102 | `result-track:c85259f72e7c6e73880a3cb7ee983b3aee5bf93c0b5c81677ef321e49ce88816` |
| 12 | `def` | [ofEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/ofeq.md) | 107 | `declaration-track:b3e601ce7dc87be62aae1f24a6f85071f32f4128ae8867ecb7da246bd82639e1` |
| 13 | `def` | [ofFilter](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/offilter.md) | 111 | `declaration-track:6eee993089e77173d93caf0c42d5d07e5a765cf0fa1ca54222257dfa56e7cd74` |
| 14 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/ofequiv-source-edition-2.md) | 121 | `declaration-track:5b8204136e9d2544b52da32c1d4011b4a0ea0b6efe822b2e3ac2bd3c86013547` |
| 15 | `theorem` | [ofEquiv_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/ofequiv.md) | 128 | `result-track:0eac3cdbfb7ff557d128cbc52843257229581e640822f19094cee566441683dc` |
| 16 | `theorem` | [ofEquiv_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/ofequiv-f.md) | 132 | `result-track:44cb91c4ec68917aa0f6356b3d8cb383b2194bcc216f9314fb4d90a149f32cdf` |
| 17 | `def` | [principal](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/principal-source-edition-2.md) | 136 | `declaration-track:ff06606d25e70b4baa161859dea88f754ab144ef59bd7a1280496aa6f10cb11f` |
| 18 | `theorem` | [principal_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/principal.md) | 146 | `result-track:b5233f768d31177265eba2df098e71440e0328b44546a45cfde314e091abe7c4` |
| 19 | `theorem` | [principal_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/principal-f.md) | 150 | `result-track:8467a8ed0a5f28cafedf62adb8a2e88770b9b1be3129c2e7e001c9a5a12b12f3` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/instance-source-edition-3.md) | 153 | `declaration-track:2f284d42bb65b8933e2c95e69dc36d9af7ec99f93da6fe764cbe8fca6c8a4957` |
| 21 | `def` | [top](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/top.md) | 157 | `declaration-track:3eb6b46411900111a5b3e61f26570d5fd41d1d3f87901ce24f46806ebccd88c0` |
| 22 | `theorem` | [top_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/top-source-edition-2.md) | 161 | `result-track:ccc2a56acb114b98cb74954f98e5cd0f0444685afdde053a2338156326f81ac5` |
| 23 | `theorem` | [top_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/top-f.md) | 165 | `result-track:96019fad7a272206724f3f357cef74a315adbe938f3f8a2c2434696d3fff6d8a` |
| 24 | `def` | [bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/bot.md) | 169 | `declaration-track:aeb9a632b6898aa7c44a58e73effbd94cd426569982a72ea8cedc75f493be92a` |
| 25 | `theorem` | [bot_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/bot-source-edition-2.md) | 173 | `result-track:b8b3ba745708a5948b5e47856441c8040345adfc42a48d9e31acc47111664d45` |
| 26 | `theorem` | [bot_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/bot-f.md) | 177 | `result-track:d1236255f2cbb4ab7889fff732c3054425e61e26bfab4568eb8c74bc1fdb80a0` |
| 27 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/map.md) | 181 | `declaration-track:ee9b6ac0aa18edcbc83d06cd1f7f5a7d1c7ca626fdd2129a05865def8d1adadf` |
| 28 | `theorem` | [map_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/map-source-edition-2.md) | 193 | `result-track:ff7082f28f50bbe395a1844a4c7c6abecfe3f19f4cf359b84ce95799d8c7a14c` |
| 29 | `theorem` | [map_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/map-f.md) | 197 | `result-track:f522230fa3a58f0fbc4a8d88cc9c19fc969d36eac846c28b03a7313a0db9444e` |
| 30 | `def` | [comap](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/comap.md) | 201 | `declaration-track:175ef7b933e993d828e8f17cc64041b803772a8b8cf613dfa78b00762be5a8af` |
| 31 | `def` | [sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/sup.md) | 214 | `declaration-track:0b1fdcde926fb5ef8b3faa99b416df95835d6c4fb1cf9fd2afd31076f910fcc5` |
| 32 | `def` | [inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/inf.md) | 224 | `declaration-track:6a4d24ad884ff7ba57af1c58dbea7e391fc8c036ce96960950892e116fece96a` |
| 33 | `def` | [cofinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/cofinite.md) | 242 | `declaration-track:d395d4f5e5dd748ea990f717be734b8f65cfe9b257f29a0f6ebcd918b9bb3f84` |
| 34 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/bind.md) | 255 | `declaration-track:5b4f61348831dbe11b7400c1e8df37f5ffcf066c5551411d422b4b44b25fab73` |
| 35 | `def` | [iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/isup.md) | 280 | `declaration-track:aad04be29bb9b348ce1a7186dec5da1fe118c41cbe147f35c9edf129a0ef135d` |
| 36 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/prod.md) | 289 | `declaration-track:9c11318aa018f50eedb2d2a7fa5312e843b017a31a1e5b7f19fc2792ad8df5cd` |
| 37 | `theorem` | [le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/le-iff.md) | 292 | `result-track:111479ea6b8d4c1aa142f5a0e36284ef8e2aae6acdd3c85b2483904924923677` |
| 38 | `theorem` | [tendsto_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/tendsto-iff.md) | 300 | `result-track:175afea8f757fa8118181832cd68216a409bb988f2e95c2374236996ed237b57` |
| 39 | `theorem` | [ne_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisFilter.lean/declarations/ne-bot-iff.md) | 304 | `result-track:1d60870ca4c092189c8596419cc7bbd21a56c9cc3a3b3c7599df3902a5a8f716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49b6b6baf7519061641df5051b5ebd707646e4c6800858a781c8e74891a425f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
