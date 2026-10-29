# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.ParentTraceDictionary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d555dbf4a002d3f5ec22cb94cee91f2d89135e2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d555dbf4a002d3f5ec22cb94cee91f2d89135e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.ParentTraceDictionary`](../../../../../Combinatorics/GraphTheory/DirectedGraphParentTraceDictionary.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/looptagdecidableeq.md) | 14 | `declaration-track:d6ee1b93bd868370f08243f10b447965a8135ff0757deca8b2696e013f5d3b7a` |
| 2 | `def` | [falseTag](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/falsetag.md) | 17 | `declaration-track:e33c0f237262868f2ca3802062f72344d757054c6276ae502a6cf00fcc946a46` |
| 3 | `def` | [trueTag](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/truetag.md) | 20 | `declaration-track:013d75b468c4b42345b180f5d5aaac17365c9c9da843b2598f3190cafe1e5b19` |
| 4 | `def` | [falseOccurrence](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/falseoccurrence.md) | 23 | `declaration-track:83550abbad3f40941afc12f42c0f37cb17cc3a8d4ae9b87f1de7191507129f35` |
| 5 | `def` | [trueOccurrence](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/trueoccurrence.md) | 26 | `declaration-track:2b1e71a0ab99e605dc470a70150f846d610526ab1bbb675be91635f0347d0e3c` |
| 6 | `def` | [twiceOccurrence](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/twiceoccurrence.md) | 29 | `declaration-track:c3367305ec56315147d17b9ada8d72e8e5217f1d75586b80d1bdeddad34dc6f2` |
| 7 | `def` | [backwardRows](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/backwardrows.md) | 32 | `declaration-track:9a80842328f118bd6548e3e8f1eaf473e850406fa8bfeb014868f95c64cb60e5` |
| 8 | `theorem` | [backward_inventory](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/backward-inventory.md) | 36 | `result-track:c2a0a4688c0631c6ef799093ea163fb2927f55c033bc2bdb59afa84150a579dd` |
| 9 | `theorem` | [backward_nodes](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/backward-nodes.md) | 41 | `result-track:4bd22511d259e4360567a8fb6181bfccf5033dd43dbd355945d3bdef4390c056` |
| 10 | `theorem` | [actual_parent_index_later](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/actual-parent-index-later.md) | 45 | `result-track:4a071e06fa540cc8ea7fcfdcf7897aa248bf4445a006e6aae76f3fa0ead44569` |
| 11 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-8.md) | 50 | `declaration-track:8e6b3e8485cb5ed024d2b5e693d3e0d38e10931132c12ecb4ad15b0565210acf` |
| 12 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-10.md) | 52 | `declaration-track:9ece186e587ceffa0eee10d2da893a473783e49ba1ebd75145ce0c91f237d1c1` |
| 13 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-5.md) | 56 | `declaration-track:704cc300ccfaea21283be8553da5d21b7ef1bf36071e9b59db010d97fdc0a7b2` |
| 14 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-14.md) | 60 | `declaration-track:e6769e3491ca5d6a78914726aaf4043ea4805d8d64fee63e3de3adb6e532733c` |
| 15 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-9.md) | 63 | `declaration-track:9102760cf19db3fd2800d75de415f59e3bd5679d15aa1bc5b735f47ef9f67cd0` |
| 16 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-12.md) | 68 | `declaration-track:d5eb088ea8f754409406fab74b72933d7a011cee9eb225046831d82a6dd53da7` |
| 17 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-15.md) | 70 | `declaration-track:e9dc964771ee0758725d7dee6beeb4954f9bf58baf64d82feb6f05fa363146e4` |
| 18 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-13.md) | 73 | `declaration-track:d6800fa4609bf800e9cb1172ca8408ff59658d8019dd22d48c32dd67264cb2ba` |
| 19 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-7.md) | 76 | `declaration-track:82455d3821cb0e21e1ed3becba6e35214a70a7dfe785d44613d42bfe87b5fcb2` |
| 20 | `def` | [repeatedRows](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/repeatedrows.md) | 79 | `declaration-track:931e5be6195abae463a4a01a2b247b9564ea396b7dc09011ded8ced351b9e538` |
| 21 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example.md) | 82 | `declaration-track:13a80f2132bbdcb5c3ae6e2ecf7b43ba1b11c9d4ac3ce90193102e243f3a4a2c` |
| 22 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-11.md) | 86 | `declaration-track:b17407d00d2983c71bf52fcbc5941e5f91aa98a069d7ac002e601f6f3202b86a` |
| 23 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-4.md) | 88 | `declaration-track:570f2e6d88cc997921e0c9fbadc6ef0df1b25de181f819c998433de83f2bdd02` |
| 24 | `theorem` | [parallel_identity_preserved](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/parallel-identity-preserved.md) | 93 | `result-track:494e153be0d9ace41dbb1f54f3de963c66cb29d6a32763f129c587c4cf2459a6` |
| 25 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-3.md) | 98 | `declaration-track:27f445cf692be437f027201f64cffce0948c130bb180527a527b040779b24648` |
| 26 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-6.md) | 100 | `declaration-track:7692783d3e0cde8c67dd6acdb42715d27526c516772a6caf5b0a8eb96d353cf5` |
| 27 | `theorem` | [missing_parent_rejected](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/missing-parent-rejected.md) | 103 | `result-track:f220c2f4595298742eca2c1503287a623eb1238f21c4ca94badc5eff31517a3a` |
| 28 | `theorem` | [self_cycle_rejected](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/self-cycle-rejected.md) | 106 | `result-track:bfec8aae8c59f4ca2ff575aad93e0d3339c2dd2e797f09c3c89a7ad61e27d2b1` |
| 29 | `theorem` | [self_cycle_not_validRanks](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/self-cycle-not-validranks.md) | 108 | `result-track:f9214045dcdd6ecbcaaa33809f8ec84f56a2e49ea12d660860e4a5266314579a` |
| 30 | `theorem` | [increasing_rank_rejected](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/increasing-rank-rejected.md) | 116 | `result-track:ec0ef5833b630052604be6e1c9a3815f83e4b097e50eb052b6fce01a2a7e6b25` |
| 31 | `theorem` | [nonzero_empty_rejected](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/nonzero-empty-rejected.md) | 120 | `result-track:5c2dd456053f85df965f45ab17a0ed8b3e8a124a025b898b2005ff33baf6d721` |
| 32 | `instance` | [boolQuiver](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/boolquiver.md) | 122 | `declaration-track:7424d883382041fc81bdd665cd32d8dce2a0bfbf2c6c1fd585bd694237b2ba9b` |
| 33 | `instance` | [boolTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/booltagdecidableeq.md) | 124 | `declaration-track:0128f1090f330a4af19683b93216de589acc47eedd7d76778f99ddba51f02137` |
| 34 | `theorem` | [same_empty_words](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/same-empty-words.md) | 128 | `result-track:131ce285d897804120743a5820e75f8ae7b3dba6f0ca27f57a5e69d06eb99d93` |
| 35 | `theorem` | [empty_roots_distinct](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/empty-roots-distinct.md) | 130 | `result-track:1d5c570682939561a8a2206497b1a6230a26368c80368d8c71f5d3783a383ea4` |
| 36 | `theorem` | [root_loss_counterexample](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/root-loss-counterexample.md) | 133 | `result-track:bd78d8f6d2c2a24d843409edc6df4a2a8344323332cb21373cc996f7ada49d53` |
| 37 | `theorem` | [no_empty_word_root_decoder](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/no-empty-word-root-decoder.md) | 138 | `result-track:85c07808248843c53031c051e80961f04dc92e684ce7036500f05d0b9ee8da4f` |
| 38 | `theorem` | [explicit_roots_retained](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/explicit-roots-retained.md) | 144 | `result-track:1af4ab01df300c555b81d42bd8d0e81e17e76244ebd3bfaabb0e2725fab09009` |
| 39 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveParentTraceDictionary.lean/declarations/example-source-edition-2.md) | 148 | `declaration-track:162d1df71fe3f969deebcd9193851d5fc16827a2c5775d7c1e1b0524c901603c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ab7163714dfaac9bd21801d19bf3403416a787906d38bd2882a919f6c836f97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrence09d9eef6005d55b2e1e7eb24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
