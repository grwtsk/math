# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e0f49768d911995b3b1b6c5a239a2c416b781e6",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e0f49768d911995b3b1b6c5a239a2c416b781e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable`](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTableHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/loopvertexdecidableeq.md) | 16 | `declaration-track:ccdc9bdc605ffed9076831808eb8c0d67b0715afbbccb61842bd502d82680dad` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/looptagdecidableeq.md) | 19 | `declaration-track:b07fbdb12c73314106991ec6c87ae67b579df8c866446ec1e6f846c9b3a91ef9` |
| 3 | `def` | [falseTag](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/falsetag.md) | 22 | `declaration-track:26536ed35d9e99e3ab0dacdade7dfd4495c12d55fa65d6f0667464e6afbbda6f` |
| 4 | `def` | [trueTag](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/truetag.md) | 25 | `declaration-track:494c4cd891fb883a65eaaabf476a0d561027246ff301ca7d4585262db71c5bc8` |
| 5 | `theorem` | [tags_distinct](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/tags-distinct.md) | 28 | `result-track:e1d5cf7c2e82485def249cff6bc6d346e7bcd0dfd42955973f03e28e3bb8b31d` |
| 6 | `def` | [falseOccurrence](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/falseoccurrence.md) | 34 | `declaration-track:c1b51b050ca917a5a3f990017c83978dc58aec78c171a10b6c1c0a84137786dc` |
| 7 | `def` | [trueOccurrence](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/trueoccurrence.md) | 37 | `declaration-track:58a39d2a644d3b3e644ecc73d2b353bd4cd6f25ba5f3279f602e77ab7301800d` |
| 8 | `def` | [joinedOccurrence](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/joinedoccurrence.md) | 40 | `declaration-track:30d484bc19cbe058804b21642131ddcfac1c6220255fe70135700a2925b69bd0` |
| 9 | `def` | [oldRows](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/oldrows.md) | 43 | `declaration-track:e72d4584c24b996148f20e504983ac681f1dffcc00c010bd36af38774109a650` |
| 10 | `def` | [newRows](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/newrows.md) | 46 | `declaration-track:f4436057438c97b8759214e2c205a724241c77e2acaaca11ef240b454245381e` |
| 11 | `theorem` | [old_inventory](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/old-inventory.md) | 49 | `result-track:6f3a5f33f5695f44fc71f88cad447b6b6a81079ad73c307b6575148a03e27191` |
| 12 | `theorem` | [new_inventory](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/new-inventory.md) | 53 | `result-track:b15f28d9c34f91a46b92437be838d11bb1535f739aeb37c3c0407d432d477529` |
| 13 | `theorem` | [stable_dictionary](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/stable-dictionary.md) | 58 | `result-track:833f21f2d491ae40971f8289542fe772d48013ea54218358e19c406bc0e113de` |
| 14 | `theorem` | [canonical_dictionary](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/canonical-dictionary.md) | 63 | `result-track:8c24bd303c6ddc0094e8c9a6ecd7aac4c0fbf235a007825c1c64cc6335704b80` |
| 15 | `theorem` | [old_nodes](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/old-nodes.md) | 68 | `result-track:f88162ece96b7d874750c862bac9f19cf494a7c0cfc8d245af19587f9c28a8b5` |
| 16 | `theorem` | [stable_nodes](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/stable-nodes.md) | 71 | `result-track:7579939f816f0f8bc22b6b84511ff4e403e804f77998465f1df7abdd5b608a74` |
| 17 | `theorem` | [old_slot_preserved_canonical_slot_changed](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/old-slot-preserved-canonical-slot-changed.md) | 77 | `result-track:39719dae0d1647cbb35a96960a0f8fe508801179f17f78c2565f613f426bd884` |
| 18 | `theorem` | [complete_old_parent_cell_preserved](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/complete-old-parent-cell-preserved.md) | 83 | `result-track:82971187bb3e76437e6d00547e086b371a4ca120e96502f03b7d4c06cdef169d` |
| 19 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-7.md) | 89 | `declaration-track:800f82bab50a9f278a8f0b9dd59cd43a00a40fd672d96d7cb27d0924f8dd2637` |
| 20 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-8.md) | 91 | `declaration-track:866f8684df0d0c04eddfc41291f1400c04d2a8a38c7bf9db4f1910ea04a18057` |
| 21 | `theorem` | [actual_real_decode](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/actual-real-decode.md) | 94 | `result-track:b2482bf48ab191fc90b44835bb5b4b43b31ebef04b00fd1479ee84c3dd601dbb` |
| 22 | `theorem` | [no_new_rows_omitted](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/no-new-rows-omitted.md) | 97 | `result-track:a890b3ca42a82f6d780526454159f473635ea1eb9d5bf42e4724f12eb600083b` |
| 23 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-4.md) | 105 | `declaration-track:5226524b51fedb06b18f7689dfdf938dde7b1398317f6815a95e6e827945d6f4` |
| 24 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-6.md) | 108 | `declaration-track:7dd888268d6a1dab8c25c8e87a182930baf8248069b38f5d4f854184f710ae11` |
| 25 | `def` | [oldCertificate](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/oldcertificate.md) | 113 | `declaration-track:4326a5051ef3c81e96aa44a480a1911526f7487b516445b3a730e3710abc5db0` |
| 26 | `theorem` | [old_certificate_reused](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/old-certificate-reused.md) | 118 | `result-track:feafecf047e7efdfbb89108797e150e0b4eb5cf29f6b6e3283aee65fcc1a37b7` |
| 27 | `theorem` | [full_new_predicate_not_inherited](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/full-new-predicate-not-inherited.md) | 126 | `result-track:adb40e1e6f46553f61899db19d09927ae29eee1dbc7f36051eeffb53743e7dcc` |
| 28 | `def` | [sharedRows](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/sharedrows.md) | 140 | `declaration-track:b40afb929e602c23429f13e6fd786986aba3559bb960a8c83a11a95c0215035d` |
| 29 | `theorem` | [shared_inventory](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/shared-inventory.md) | 143 | `result-track:286d5beb171e969d3c13a1c66c024e5c099ca68fc04da6432e8c16a73393bc4d` |
| 30 | `theorem` | [shared_prefix_only_one_new_cell](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/shared-prefix-only-one-new-cell.md) | 148 | `result-track:3bb4d4fc443241aac4058818b4a89874c00f1448d14a7266296b4be684ba236e` |
| 31 | `def` | [repeatedRows](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/repeatedrows.md) | 153 | `declaration-track:edcc8e2d1081b521b23f942bcd5976b2eb93912c03d5e35fc9c736e78726f184` |
| 32 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-2.md) | 156 | `declaration-track:251060328219c005ef951c1774fd1f5005ed1c36b4e8ef78e26e24d2823bd7d7` |
| 33 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-9.md) | 160 | `declaration-track:c044a00202f8788bd00997dac2a5a5c441e9e1d223c19dd81ba59901111bdf90` |
| 34 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-5.md) | 163 | `declaration-track:6e5d1d5f9751a316a729aa2ff61767a9dc2e9eea57feaa05d7eb1266b5871cee` |
| 35 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example.md) | 167 | `declaration-track:24c4c2aa52439e6c954df2bc0001d04870c1526b200b886b383f52dfcbc4e8a2` |
| 36 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-3.md) | 170 | `declaration-track:2f6b610c6f5c4e50140889d980b14c9b68e7b61eda7909a2d3cc9694f1580359` |
| 37 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/example-source-edition-10.md) | 173 | `declaration-track:da67ad2e8a61dcb120c7bf27d05245559502bba3c25e9e71ce7baffc87a872bb` |
| 38 | `instance` | [boolQuiver](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/boolquiver.md) | 176 | `declaration-track:4697bc1c7c7f2f45e9aa7ee8a457e52905f89a1e35922fb607b867d8e5189797` |
| 39 | `instance` | [boolTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/booltagdecidableeq.md) | 178 | `declaration-track:6f4806713ac3506bde2cb1a6c6d0fc38a7ce259e1e1688c5beb1cad00f491605` |
| 40 | `def` | [emptyFalse](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/emptyfalse.md) | 181 | `declaration-track:c22ad7c36dc6ed6bac6e9834f8702dbae6082241aee87ef3502a35abf9586075` |
| 41 | `def` | [emptyTrue](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/emptytrue.md) | 184 | `declaration-track:a01c5083746f5503b59f34852f970ec44cd3856062dcae3675c83d37822126fe` |
| 42 | `theorem` | [empty_table_root_retained](../../../../../Combinatorics/GraphTheory/PositiveIncrementalPrefixTable.lean/declarations/empty-table-root-retained.md) | 187 | `result-track:689e9455304922c1ebe9330e4282800be2ee6ffbb4800fb4f11dec2ee31f3bf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06436bd21769f44a112d274eb5a58f4dce6cef0526a776679adbf3bf399322a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrence8cdd3cfb67c4f7498e3e3ec1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
