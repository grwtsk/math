# Verification target: Set Operations Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5d18fca655f6bf3079f859060f3738b5f2bc089",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant60e5fa9adbd7d068a553d5a28875f5250e0a20771b5179f9f552882d0865c68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5d18fca655f6bf3079f859060f3738b5f2bc089`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant60e5fa9adbd7d068a553d5a28875f5250e0a20771b5179f9f552882d0865c68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant60e5fa9adbd7d068a553d5a28875f5250e0a20771b5179f9f552882d0865c68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.BuiltinRules` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Frontend.Tactic` — import line 17; external provider; requires a separately pinned dependency.
- `Aesop.Main` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_ofPred_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-ofpred-eq.md) | 79 | `result-track:d463ab30790ec7f167b827c478acca8f4694a487f9f4d02ae18fe274c0983a2c` |
| 2 | `theorem` | [eq_mem_ofPred](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/eq-mem-ofpred.md) | 88 | `result-track:23efb68cb2dda25262615314c27e7d97fbf2bc4f25bd224bd29ed095debdc8c4` |
| 3 | `theorem` | [mem_ofPred](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-ofpred.md) | 92 | `result-track:aed499173c2c3e2e8e6a5d83b96e9d31323a49a7332d751f26fa99630974e8fb` |
| 4 | `theorem` | [notMem_ofPred_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/notmem-ofpred-iff.md) | 101 | `result-track:2fd2a2876afbfd8dd4501d249322fd7083cbbac640b4aa12c4a767903cd8968e` |
| 5 | `theorem` | [ofPred_mem_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/ofpred-mem-eq.md) | 105 | `result-track:7fdabcdd1790b7b711552f652a6e4a829b8d95eb4c45add81138be096c1187d9` |
| 6 | `theorem` | [mem_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-univ.md) | 110 | `result-track:e01ff5bdc9e6cb23f3c58a75c78bf734cb9d62c0f7a0d38b245358fda4156072` |
| 7 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/instance.md) | 114 | `declaration-track:8e712d6ee040003a13c3cbaef1dc664ad886458312e06c982d44f93f1b7287cc` |
| 8 | `theorem` | [mem_compl_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-compl-iff.md) | 117 | `result-track:f879a725f5cb8164ae9da07192485513a28dcff32ffea4f9a4a3658e0581f84c` |
| 9 | `theorem` | [sdiff_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/sdiff-eq.md) | 119 | `result-track:71873d680402158d24401ee939c4f365eb303f1fd164bbd80b3993414192dda0` |
| 10 | `theorem` | [mem_sdiff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-sdiff.md) | 124 | `result-track:44b4b8a833df0f549c178bb8191b26ad72c520759617478d37f52fc67d1a5bf3` |
| 11 | `theorem` | [mem_sdiff_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-sdiff-of-mem.md) | 128 | `result-track:5cca0342add9c202a31a473014665244cc53bd6367bee3c1b2bfa331f24267e2` |
| 12 | `def` | [preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/preimage.md) | 135 | `declaration-track:9da0fb3c85dc3aaa4e398a07eaf97a48b45bbb7a08b01f2e1a7ca4ca70cd3ca9` |
| 13 | `theorem` | [mem_preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-preimage.md) | 141 | `result-track:b3201733072d0de6509c6537ea28144e4d1cdbedc4a398eadfc3476b046b1470` |
| 14 | `theorem` | [mem_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-image.md) | 147 | `result-track:ece6d2fdedd8bba39054a1a1849b5a1cfa514e294af1398ed3f795dd107fdb70` |
| 15 | `theorem` | [mem_image_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-image-of-mem.md) | 151 | `result-track:bc3bc5a253c313dc4e08c60cf67ce0a425fee0717a856ca7909ac635c54eb645` |
| 16 | `def` | [imageFactorization](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/imagefactorization.md) | 155 | `declaration-track:ff0c89f672b2517b34d0bd3e47f73f74bb1f68d02094d144a0366d81727e8091` |
| 17 | `def` | [kernImage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/kernimage.md) | 159 | `declaration-track:562ac9bcdecdbb46816b7971a586bac1d605123e2135c092c28e98e074eeb1e5` |
| 18 | `lemma` | [subset_kernImage_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/subset-kernimage-iff.md) | 161 | `result-track:6fd7a29abb27958827e12bfbb3c75ac91af8bbfe06d049eb48f8aad6e7c89835` |
| 19 | `def` | [range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/range.md) | 173 | `declaration-track:c14395e3381d9b8b2cdb9f99935c75a4ade02f036de870ebb46d6996a6035631` |
| 20 | `theorem` | [mem_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-range.md) | 175 | `result-track:ae70a7d54526fddce8a1ba1803e8ef4865b3b6068a1e6900f70cadeefac05a0f` |
| 21 | `theorem` | [mem_range_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-range-self.md) | 177 | `result-track:8768ff7b10c5b859f8afef93037d67eba24431438c2bfa5743ff3a7192ee0c22` |
| 22 | `def` | [rangeFactorization](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rangefactorization.md) | 180 | `declaration-track:232f14a80792ab9c440dcdae4a94c00d0a67466e2ba80f571e0776bef0dc6584` |
| 23 | `lemma` | [rangeFactorization_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rangefactorization-injective.md) | 182 | `result-track:ec3aabe336e8d3114b913590138a53b920b758bd7f52557e1b51a7eeffcd358c` |
| 24 | `lemma` | [rangeFactorization_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rangefactorization-surjective.md) | 186 | `result-track:c5c3d3d310065e12c5ebd1c3b9f1def444c4a9d814acaa717560d16c2079cf02` |
| 25 | `lemma` | [rangeFactorization_bijective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rangefactorization-bijective.md) | 189 | `result-track:45c9be3603ebf486951256e3a15fc5118a2d81fd607209ae67a36a1b50dbca73` |
| 26 | `lemma` | [rangeFactorization_eq_rangeFactorization_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rangefactorization-eq-rangefactorization-iff.md) | 192 | `result-track:877d5e3eea3b56191144c0fbd9a2d5df578d18c1d111b43df3e01af850c1656f` |
| 27 | `lemma` | [rangeFactorization_eq_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rangefactorization-eq-iff.md) | 196 | `result-track:432940e5a9d2cf0ddd085bcec3beff6d5e5ba40b78b37c71cbb296030cd744da` |
| 28 | `def` | [rangeSplitting](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rangesplitting.md) | 203 | `declaration-track:ed63e1a6ce400f9d6fde3dbf39ba57725f039b5b0dcfb75379154d366602ecab` |
| 29 | `theorem` | [apply_rangeSplitting](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/apply-rangesplitting.md) | 206 | `result-track:321d36c8c80dcbc1e98e8e3cda3fe0c72d9ebb72e64dae0137e5f7c0eed1e619` |
| 30 | `theorem` | [comp_rangeSplitting](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/comp-rangesplitting.md) | 210 | `result-track:c4a36e20ced768c6b48fb591d591f59cb9e1a8add539fd087563423d47badce1` |
| 31 | `lemma` | [Subtype.range_coind](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/subtype-range-coind.md) | 215 | `result-track:a59c83d6a343cd083912c770e291b5779e15794b7b2caf50442a786b2c3777a7` |
| 32 | `def` | [prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/prod.md) | 223 | `declaration-track:19b17e86c0ccbc87655ec3c5ffce9da4e0761fcde8f1ed021e0e8f8646656cc1` |
| 33 | `instance` | [instSProd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/instsprod.md) | 226 | `declaration-track:564e02a01806bf89d57e346fc5a61415f5cce636e6f7d5fa79605662e24d1a25` |
| 34 | `theorem` | [prod_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/prod-eq.md) | 229 | `result-track:9c386c639fb43ebf4c654409889d7d989f1d0153cb82b4a5acb656d5305efd65` |
| 35 | `theorem` | [mem_prod_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-prod-eq.md) | 233 | `result-track:e82ccacf9ea7f5f3de2535da601502fea1e48f18fe0ec8f0211c76a5a631c695` |
| 36 | `theorem` | [mem_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-prod.md) | 236 | `result-track:c47c10e926b5f505ef1d130a57ce536e15b0ba56c9fb4c2f14969cb73c8e4548` |
| 37 | `theorem` | [prodMk_mem_set_prod_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/prodmk-mem-set-prod-eq.md) | 240 | `result-track:1c373fc44972f3d09f5748909d47047b7c0e220e1036543996573e6cc303c5d5` |
| 38 | `theorem` | [mk_mem_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mk-mem-prod.md) | 243 | `result-track:449e11f01ce237dd1fb9e53a72dc00fdbf5e3d64ff3fd3e6493f8e4fcd0696c3` |
| 39 | `theorem` | [prod_image_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/prod-image-left.md) | 245 | `result-track:448f2b615c08e87fa433971dd99022fb438e595a24050323e9e1de52cca39794` |
| 40 | `theorem` | [prod_image_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/prod-image-right.md) | 249 | `result-track:b8e45ecf50e7a940a8141a6d713d009cdbf6cf1d49b713e9e59436a22e8d5d03` |
| 41 | `def` | [diagonal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/diagonal.md) | 258 | `declaration-track:6b20d948ccb65e7dce8c014bb3640d3deadae98f8a29040b749b78fb2b80ff38` |
| 42 | `theorem` | [mem_diagonal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-diagonal.md) | 260 | `result-track:27bb9599904bcb35b42aeb9fbb5bbdf93fbd98f66d2d5354ba8163a9a4fb2099` |
| 43 | `theorem` | [mem_diagonal_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-diagonal-iff.md) | 262 | `result-track:7034642e766dc934dcb5f36c31d07a21583090b8746f89dc9f7d1de6f7ccde3b` |
| 44 | `def` | [offDiag](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/offdiag.md) | 265 | `declaration-track:cb6036b980e046412b3cab14481c054de9531dcc984d07e7679176a5ce4dcc1d` |
| 45 | `theorem` | [mem_offDiag](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-offdiag.md) | 268 | `result-track:8e33d52badee622c1e675302804c313598315f78e4333dc8af6601b3369dc0fe` |
| 46 | `def` | [pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/pi.md) | 280 | `declaration-track:b0a1e28951779838b8f9be3c5b382aa1de8686177568fd2d89e1e45ba15c3aee` |
| 47 | `theorem` | [mem_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-pi.md) | 284 | `result-track:87ce30c4d6070a12c7e892f8cb82bf9cfd7021d08b2125b6937977cfc0395814` |
| 48 | `theorem` | [mem_univ_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-univ-pi.md) | 286 | `result-track:07eac9843915b34c57e8578e9c5343db53388c7b5efb01ad4cee83b85be560b4` |
| 49 | `def` | [EqOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/eqon.md) | 291 | `declaration-track:8f57e3facb0ad7f7c77d8416c5f00ce7f302bbe7ded74f84a5ea53594cc048b4` |
| 50 | `def` | [MapsTo](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mapsto.md) | 294 | `declaration-track:1a3fad112bc86f61c0eb8b1847cce7a3809f401384d4fce603aa5fa775557d32` |
| 51 | `theorem` | [mapsTo_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mapsto-image.md) | 296 | `result-track:c4a04954b8fdc833c65d3c5cfe57d4e566dd709c80342fb02c52deb3a9767cb0` |
| 52 | `theorem` | [mapsTo_preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mapsto-preimage.md) | 298 | `result-track:e659adfc62551073e8bf926d5e67326ac272190cbcf42747827e069447d7a07a` |
| 53 | `def` | [MapsTo.restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mapsto-restrict.md) | 302 | `declaration-track:e57856d815fa4ad8b6f33e6b71abfb262df2b8967f6728032b42cd2b6e59099e` |
| 54 | `def` | [restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/restrictpreimage.md) | 307 | `declaration-track:29d027465b95da548c58a5a0fcd0cc8d270d8f0c4bcaea90bed63086a0b6435a` |
| 55 | `def` | [InjOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/injon.md) | 311 | `declaration-track:15377af3a2542354fdb8dfbd54140952bf55e2c8280d6bde0d9f449a3d535715` |
| 56 | `def` | [graphOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/graphon.md) | 315 | `declaration-track:54ff79fbb598962cc6aaef03bd3754b466a1eb2bf0d40fdedcaa5bdb45f3cd3e` |
| 57 | `def` | [SurjOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/surjon.md) | 318 | `declaration-track:4b1a141af734442550341d127c7cbbe06520e3445afc6cb57d53dd9939c68763` |
| 58 | `def` | [BijOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/bijon.md) | 321 | `declaration-track:18818e5d131aa0dbd97b68b24390a9aad874e8c84f4342cea4f58ae668a846a5` |
| 59 | `def` | [LeftInvOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/leftinvon.md) | 324 | `declaration-track:5322c0b846ccaff8333446464700652103da60196a7f740acc7c747b8762d6dd` |
| 60 | `abbrev` | [RightInvOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/rightinvon.md) | 327 | `declaration-track:449b34874b2f9d85d9c771931bba222f812c3aba112acd437152899bb2d6492f` |
| 61 | `def` | [InvOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/invon.md) | 330 | `declaration-track:422dd3fcb56450eb61c1ea3cd9096eefb26f36643eda042a3551743b5ddab44a` |
| 62 | `def` | [image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/image2.md) | 337 | `declaration-track:c8912add5f94081122769587353f76ed8d72b3a570a231b8036a7d18ab0b127d` |
| 63 | `theorem` | [mem_image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-image2.md) | 341 | `result-track:b0b77b8c6068fc46a20cbe44827909b6f707ca8f630788b8f15fab66de7aa342` |
| 64 | `theorem` | [mem_image2_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-image2-of-mem.md) | 343 | `result-track:7516ef667b49c9a4e8b390db994ab6483aaebf2a0ab49f1382378ca470c255bf` |
| 65 | `def` | [seq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/seq.md) | 350 | `declaration-track:7f63ad0d074bc7ae45d93c0e9f66576bafb3f6f3778b8b4095c0c5c393e38e14` |
| 66 | `theorem` | [mem_seq_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/mem-seq-iff.md) | 353 | `result-track:6e795efe7eb151a04e5040c4b15773a63a67c93b21f004f443b5fa71c8fe3bdd` |
| 67 | `lemma` | [seq_eq_image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOperationsPublic.lean/declarations/seq-eq-image2.md) | 357 | `result-track:37bef3c34fe1a063a264e8cf110bbed5eda98c76a8a1e353d5a8e0100016f6c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62b81efb6f5e7219531e96f800f61c0d993090e62f41f0e0b504cc443bb2f54d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant60e5fa9adbd7d068a553d5a28875f5250e0a20771b5179f9f552882d0865c68e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant60e5fa9adbd7d068a553d5a28875f5250e0a20771b5179f9f552882d0865c68e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
