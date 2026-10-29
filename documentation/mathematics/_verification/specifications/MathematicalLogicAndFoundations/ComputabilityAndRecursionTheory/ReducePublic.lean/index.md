# Verification target: Reduce Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "176545e6619036fad9ca82bfcfcbc32eebf8a7a8",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `176545e6619036fad9ca82bfcfcbc32eebf8a7a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f.lean.json)

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
| 1 | `def` | [ManyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyonereducible.md) | 41 | `declaration-track:c297ec28b2097c956870722ebb0b042483ce45868f2bb1c25f2f9486d6c17b40` |
| 2 | `theorem` | [ManyOneReducible.mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyonereducible-mk.md) | 47 | `result-track:351505bb7a26b242088c8e3a5608f349fd44ec6a9e3bb299810b6cbeb012c03a` |
| 3 | `theorem` | [manyOneReducible_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyonereducible-refl.md) | 52 | `result-track:05b9da03335f654f697be8dae39ba14d0af970f24f11cc0afa850593e610fd12` |
| 4 | `theorem` | [ManyOneReducible.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyonereducible-trans.md) | 56 | `result-track:4c8bf039aff9262a678e077dc7e362425ccd6d4f424bdbfc9428f9d23405196b` |
| 5 | `instance` | [stdRefl_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/stdrefl-manyonereducible.md) | 62 | `declaration-track:8e6e91f450647a1f237b701c890799a88a76f68ab9c8381a557bdce4a326a97d` |
| 6 | `instance` | [isTrans_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/istrans-manyonereducible.md) | 67 | `declaration-track:1664214e73b1a4901dd644d56f26604801e54fee1d9fac6e2d2266600a715fcc` |
| 7 | `def` | [OneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible.md) | 74 | `declaration-track:8cc780c79b6fcc4f31c7bb32cd3485099c0c76d1bb8574ba63f5a0d7c83af3f9` |
| 8 | `theorem` | [OneOneReducible.mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-mk.md) | 80 | `result-track:63d547f5a0e4448b3b0b84c434bef2f5de76be354a4ba4f475ef62bf5edf5637` |
| 9 | `theorem` | [oneOneReducible_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-refl.md) | 85 | `result-track:7319b1bf1f49e2b12e6c048f44031fbce7687da89e79a45fe2e3c8cfa9668f60` |
| 10 | `theorem` | [OneOneReducible.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-trans.md) | 89 | `result-track:158978a1cd1f8ac969f349dd553f3db02fcd405eec7d0a8b060df6bfd3293b7a` |
| 11 | `theorem` | [OneOneReducible.to_many_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-to-many-one.md) | 95 | `result-track:c565e5bb5dee0265b1e3f4336c973a948d4c3ad3112d2326199f0c6148516173` |
| 12 | `theorem` | [OneOneReducible.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-of-equiv.md) | 99 | `result-track:17306e6615275e693fd67b310dba83def18c5a6b13179c72d8ccf4717b1a9d72` |
| 13 | `theorem` | [OneOneReducible.of_equiv_symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-of-equiv-symm.md) | 103 | `result-track:23280c4aaaf5c070106f62e7e86bd699bd68c7a7a476837850731a9a37200ed2` |
| 14 | `instance` | [stdRefl_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/stdrefl-oneonereducible.md) | 107 | `declaration-track:91967ec21c8eb9d84c34427dabcadf34873501ed561c9afe1a809b6c4ad63cab` |
| 15 | `instance` | [isTrans_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/istrans-oneonereducible.md) | 112 | `declaration-track:2b6fc4aedaa78a585bea4c6fc8805577a8a03ba68bcd4fa5d7083a760effbedc` |
| 16 | `theorem` | [computable_of_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/computable-of-manyonereducible.md) | 121 | `result-track:086b7af1cca89598f7d48145ee1bdb89196033907fdc15a2b6a61f0a419ef6ad` |
| 17 | `theorem` | [computable_of_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/computable-of-oneonereducible.md) | 128 | `result-track:aba5c59cd5e0be1d5e10d68421114fd180ebad9c2f35b97db986e72917b878b2` |
| 18 | `def` | [ManyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv.md) | 135 | `declaration-track:2a32020eb05daa2654f27e966853607af9e3434ab20200ddaf15572873a157fb` |
| 19 | `def` | [OneOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv.md) | 139 | `declaration-track:52a0b0b1d55e3c69a370e00f96514b6361854111a09e6d599edf21265f2b641a` |
| 20 | `theorem` | [manyOneEquiv_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-refl.md) | 143 | `result-track:b04a4dc4007e953f9069e36f9c44d6e74514ec37bd3eb6b547c31cebb8afcbdd` |
| 21 | `theorem` | [ManyOneEquiv.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-symm.md) | 147 | `result-track:c2ff1ac3f605612bbafeaa72e14956cc84428a9ae14a5b253bd5aab33c788faf` |
| 22 | `theorem` | [ManyOneEquiv.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-trans.md) | 152 | `result-track:c5d36882a59546aa4b3a0b67e7eaf7f523d511e21ec3eb6a42bee6b3fc511ef7` |
| 23 | `theorem` | [equivalence_of_manyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/equivalence-of-manyoneequiv.md) | 156 | `result-track:da9db82d6c59dd9d9eda937d4d4a66099d1a19fef3b2b62590090afef0fdc378` |
| 24 | `theorem` | [oneOneEquiv_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-refl.md) | 160 | `result-track:4901d84b8639aa1ccf427e3a6d2cf217e565996dd7a3266a62a5aeff9a978b97` |
| 25 | `theorem` | [OneOneEquiv.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-symm.md) | 164 | `result-track:8fa330e8083ae7cd998c9cd3cd6066f6d9f6c7328eb753b14f6d9a46b338cef7` |
| 26 | `theorem` | [OneOneEquiv.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-trans.md) | 169 | `result-track:3d364cdfbbe59e07a4f52661162911738e7c9dcc4333890db3ea46ea22eeed0c` |
| 27 | `theorem` | [equivalence_of_oneOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/equivalence-of-oneoneequiv.md) | 173 | `result-track:c26ab28245c302ad1f1a8585d11157bb3fbb7c5074a151efaa5de50538df25f8` |
| 28 | `theorem` | [OneOneEquiv.to_many_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-to-many-one.md) | 176 | `result-track:6ca9f4ac9718efe43ae11706aeda0383c94cf922124fcf951d2e4f7e6d5b3c99` |
| 29 | `def` | [Equiv.Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/equiv-computable.md) | 181 | `declaration-track:9e57025ac953fccd3498bcce2305442bad38869c7338a7dbe210eec4922139c9` |
| 30 | `theorem` | [Equiv.Computable.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/equiv-computable-symm.md) | 184 | `result-track:55ed81a3ea5db075d60a7fd47020af68dd102fd8555f98b1863e811a149e3822` |
| 31 | `theorem` | [Equiv.Computable.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/equiv-computable-trans.md) | 188 | `result-track:57eb1fd51ae4c193c743e016db40f60ff4e068ae3c8e6f0f79bd68e0d6a258f8` |
| 32 | `theorem` | [Computable.eqv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/computable-eqv.md) | 192 | `result-track:022035ad8a316d297da0e902eb6bb4c0429525a35520d671a4e3091f8647f0cc` |
| 33 | `theorem` | [Computable.equiv₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/computable-equiv.md) | 195 | `result-track:afc25199c584e49ac6ee1566067bd23896999ecff54f28f28d646f2ab06a7134` |
| 34 | `theorem` | [OneOneEquiv.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-of-equiv.md) | 199 | `result-track:34ae6968ec031d1b2033c42b7bdb4d6be5c83646c62ea7170f806724ed7a7f5d` |
| 35 | `theorem` | [ManyOneEquiv.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-of-equiv.md) | 203 | `result-track:f4141c06841ed9eaeba0133ef32c363332fa6e957bd5122aa770ceb90b8430e1` |
| 36 | `theorem` | [ManyOneEquiv.le_congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-le-congr-left.md) | 207 | `result-track:a62ec622c5020c4161d0784c7de96e5095da17bed6695e8cd04323b9dfc50b3a` |
| 37 | `theorem` | [ManyOneEquiv.le_congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-le-congr-right.md) | 211 | `result-track:e24d4d66755bdcea10502cd64e4422a0045f1b4a1b7cb89cb4baf2d62ed6d9aa` |
| 38 | `theorem` | [OneOneEquiv.le_congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-le-congr-left.md) | 215 | `result-track:3dc340297316f8efaf9292e59ca78020fba399393e85a662a5f93b05bf07148c` |
| 39 | `theorem` | [OneOneEquiv.le_congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-le-congr-right.md) | 219 | `result-track:5b46e58cbf022aa7eaf6b2e4e53bcbbd9ccdf43d2a87113ef7266ea394fb12ff` |
| 40 | `theorem` | [ManyOneEquiv.congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-congr-left.md) | 223 | `result-track:ae8d394939884171bbaccb6688d3b13d2aca34e94e8f1b7b4e1648d04216eea7` |
| 41 | `theorem` | [ManyOneEquiv.congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-congr-right.md) | 228 | `result-track:d31a125a14a5d899d7061f96b9ddd4599d61dc92654ff788903e553a061e4f72` |
| 42 | `theorem` | [OneOneEquiv.congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-congr-left.md) | 233 | `result-track:586cf54a6a6690b9f8d2ba5655c6f38be132657276459a68f954312ba63cfbaa` |
| 43 | `theorem` | [OneOneEquiv.congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneoneequiv-congr-right.md) | 238 | `result-track:2918870d0aedc896e5ea771107da8d02b5aedfcf5eea11be3574db2574a227f2` |
| 44 | `theorem` | [ULower.down_computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/ulower-down-computable.md) | 244 | `result-track:f242b3265c4a7d49274ce6caac08d535e428b7fb5ed81627cd3475568bf66b98` |
| 45 | `theorem` | [manyOneEquiv_up](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-up.md) | 247 | `result-track:db432842efebb922a243e4b227562a3aaf74d2a95a3f890686b91e040fc85c58` |
| 46 | `theorem` | [OneOneReducible.disjoin_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-disjoin-left.md) | 254 | `result-track:4d48308e80de428bf7c015d20792eac698f9eff6cafb179ca79e361cfe3dac7a` |
| 47 | `theorem` | [OneOneReducible.disjoin_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/oneonereducible-disjoin-right.md) | 258 | `result-track:ef94764d5a7640732222061b06c55447565ba8ea8db61d0a3de275b501fb119a` |
| 48 | `theorem` | [disjoin_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/disjoin-manyonereducible.md) | 262 | `result-track:839bef398e72d0d3d4d8b296cc42875d71cb412fa1437e6d7dbb4df0d393d36f` |
| 49 | `theorem` | [disjoin_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/disjoin-le.md) | 269 | `result-track:d57e0204ab9c72d260295c2555a773f7e9e159e710bfd5a8c37be68525a9b78c` |
| 50 | `def` | [toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/tonat.md) | 280 | `declaration-track:331e78aad9f3287542877703436b474e5b24d691cb3fcbedeebb97d25f4a7189` |
| 51 | `theorem` | [toNat_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/tonat-manyonereducible.md) | 284 | `result-track:d8d6ca5bee9dd2a6804dd0fcbdbdb815ea4add9e732a91b7caf00b6aff05e63c` |
| 52 | `theorem` | [manyOneReducible_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyonereducible-tonat.md) | 289 | `result-track:d63e71e12bf89faa653917710569c39b16d963f7e4ef84a9a299340bbd048680` |
| 53 | `theorem` | [manyOneReducible_toNat_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyonereducible-tonat-tonat.md) | 293 | `result-track:3624d24bff7327516ae6024075bffc9996b5bbca6516fd14df2ce3771b557e49` |
| 54 | `theorem` | [toNat_manyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/tonat-manyoneequiv.md) | 298 | `result-track:c531ef6b8bb40baaa57967c5b4b9fd9d7a6c69b2106700ace30b70d4f4ead0f9` |
| 55 | `theorem` | [manyOneEquiv_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyoneequiv-tonat.md) | 301 | `result-track:93769ff60c0a09f0b639e7bb11b3b14096c9c782e0e4e48097c546f9cf0e2b39` |
| 56 | `def` | [ManyOneDegree](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/manyonedegree.md) | 305 | `declaration-track:4e29a96e4c63fa278a6be80357e6f80c8dfea4d5f201af9d5048dab8fa4c59c1` |
| 57 | `def` | [of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/of.md) | 311 | `declaration-track:8c74a019d0350df7ffb8362397a99b917b1ed203b1a6310cc299243990ca3604` |
| 58 | `theorem` | [ind_on](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/ind-on.md) | 315 | `result-track:58d09db9e1a8e30e65811305a17923acfbd62c8b673e8ee95d36028e818796d5` |
| 59 | `abbrev` | [liftOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/lifton.md) | 320 | `declaration-track:63d1bc21d1b617cd087bc3f079f1500041fea6a532bd4b76ddaa188d541290c0` |
| 60 | `theorem` | [liftOn_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/lifton-eq-source-edition-2.md) | 325 | `result-track:88f5bc0c23e43610748f9593620105804c461aa2ff2144def9f012845cd55779` |
| 61 | `def` | [liftOn₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/lifton-source-edition-2.md) | 331 | `declaration-track:cf42743ad9f3e630d247513e7ff48a6e5f02579cea73536ac3a4e759090da559` |
| 62 | `theorem` | [liftOn₂_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/lifton-eq.md) | 342 | `result-track:38813249fa5108e01631c36347d0836ce841811b1874299227ab26225ab187aa` |
| 63 | `theorem` | [of_eq_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/of-eq-of.md) | 349 | `result-track:dc6214260e80225f2e5321467b22ea88655c4555cc786a298ef2549172782248` |
| 64 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/instinhabited.md) | 353 | `declaration-track:59121bfb7a0b31f431be34766f86731728816ab92ae752a203615ba6cd5b3ff1` |
| 65 | `instance` | [instLE](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/instle.md) | 359 | `declaration-track:aedbc56586fc68523831a0e2c7627bd6bab2ddb06c084bff6db592e14fd20188` |
| 66 | `theorem` | [of_le_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/of-le-of.md) | 365 | `result-track:1a0860e906c715d666037216144affeddf35df767a2fd838ce9c1b39178c5031` |
| 67 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/le-refl.md) | 370 | `result-track:02b623f573b097775c066042477a1b104498188380cd19ee641529610cccce17` |
| 68 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/le-antisymm.md) | 375 | `result-track:da3ff41848455f90fb6b9695c52e8989363fad617323626b4252cb0c3cd3c534` |
| 69 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/le-trans.md) | 382 | `result-track:4f3484fe3f3a7fe02e7d61a9eb6dd0f5eb0aac39892fbf6d1b4a0bdfb6b3fc97` |
| 70 | `instance` | [instPartialOrder](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/instpartialorder.md) | 390 | `declaration-track:7846b7f0d32b7c8038e29fe8e707bfe80a0d3224261aa72545464be6d51de263` |
| 71 | `instance` | [instAdd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/instadd.md) | 396 | `declaration-track:64311fc121471565d4f37f4ae5816017d33ee75ff1cdb8def382370c5efec3d0` |
| 72 | `theorem` | [add_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/add-of.md) | 409 | `result-track:5f12a6677352c23566963b62d911f129cb3931eee97c4757bdde42170a518b31` |
| 73 | `theorem` | [add_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/add-le.md) | 420 | `result-track:bba6343e2173bf5fb81413d41f4982bc0d892d76376fb98fe73064977d8f014c` |
| 74 | `theorem` | [le_add_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/le-add-left.md) | 427 | `result-track:eebf1f85a4c10b8ff2b1eac9b95dfc1abeb163a8d93df34a0f37b81e351f3142` |
| 75 | `theorem` | [le_add_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/le-add-right.md) | 431 | `result-track:fcf6293972bd4a6c46c6f5f421cf717502d6571b3709094d9f7f4d59611b9577` |
| 76 | `instance` | [instSemilatticeSup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReducePublic.lean/declarations/instsemilatticesup.md) | 434 | `declaration-track:f6e14ad1561fcdd700c0160fe956d24bf7db8a46d5056f27d17cd873fec128ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90e461c23e06bf0e718392c97135cb1ba4549705160adc99e76075c52bbf9262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
