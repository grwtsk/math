# Verification target: GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8460d6c0d1e45a4f5eb51f1068860a5d15659022",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8460d6c0d1e45a4f5eb51f1068860a5d15659022`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision`](../../../../../Combinatorics/GraphTheory/DirectedGraphRootedTraceRevisionHistoricalSourceEdition2.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalDictionary`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIncrementalDictionary.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixEntries](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/prefixentries.md) | 38 | `declaration-track:97aecaf17b517f8011ae367159b2e5d7db4ee76bc90222c298646605cbc40de0` |
| 2 | `def` | [dictionary](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/dictionary.md) | 43 | `declaration-track:3b657d5608d018ea958eb28e02841bfbb198a6ac482f4a25a13d64140f206ff7` |
| 3 | `theorem` | [mem_dictionary_iff](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/mem-dictionary-iff.md) | 47 | `result-track:ef832b730ae89fdcf79f38491a1b7446d87ff8314eef0dc1e0e6514b8a9f4671` |
| 4 | `theorem` | [dictionary_prefix](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/dictionary-prefix.md) | 56 | `result-track:87ad83eaf3d15285a54b6f5e4c729595fb96fe4294cafbd9d808cc4b1c6942f1` |
| 5 | `theorem` | [dictionary_nodup](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/dictionary-nodup.md) | 60 | `result-track:0c3263456976afe6d8ac2a6bdd2d79bcb755babba20b90956d29136dbdfaf85b` |
| 6 | `theorem` | [dictionary_closed](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/dictionary-closed.md) | 64 | `result-track:2cfba5e532e7f8bda91997ba487d7b530c2723d75cce1e3523c8f0003d295b55` |
| 7 | `theorem` | [dictionary_valid](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/dictionary-valid.md) | 74 | `result-track:73a09bc576dc460367ee23f3e3da5efec0ce4f2987e69b81183af23cacceff92` |
| 8 | `def` | [cell](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/cell.md) | 82 | `declaration-track:20ce16cd59c5a546096b0e9e5386307fc4ab5ec093774cc9cc10a1d702f97f3a` |
| 9 | `def` | [nodes](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/nodes.md) | 88 | `declaration-track:b3e116ef491cbb3f05631018000f400274ed5493c5ae3b7143dff573112025cb` |
| 10 | `theorem` | [nodes_prefix](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/nodes-prefix.md) | 93 | `result-track:e5a5b9658452bcd8af997baba9a1051d30ec52a87c39bcf2a4179bf801cabd74` |
| 11 | `theorem` | [old_cell_eq](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/old-cell-eq.md) | 97 | `result-track:b9a0674036953b5c5e75d9477fbe2fa7dc4b5dc2a1a40a2f59063177a2234acd` |
| 12 | `theorem` | [nodes_eq_map](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/nodes-eq-map.md) | 112 | `result-track:ce702c9bf54310b24227b5fa3336b6c2b078fea451a0b43e4f28c2f70406e39d` |
| 13 | `theorem` | [old_dictionary_lookup](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/old-dictionary-lookup.md) | 123 | `result-track:6e05beeac8f702d70e5024fa93e8a160c9cfb72a38f7d155a5768c62e1cfbb3f` |
| 14 | `theorem` | [old_node_lookup](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/old-node-lookup.md) | 128 | `result-track:ea9802693ff67073d0f86c385dbe182eaa23df2ee3376b14190a528c6c6da839` |
| 15 | `theorem` | [old_parent_lookup](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/old-parent-lookup.md) | 134 | `result-track:4e9c66d11c4f25f53461c35a892da3774e37e0fdc11c80ed4514e21200d3f657` |
| 16 | `theorem` | [node_lookup](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/node-lookup.md) | 147 | `result-track:cdd03334006c6890e2fdcb0d3ae3c1b2454a6df0dff24b2e34f0a4eb8c036f58` |
| 17 | `theorem` | [parent_lookup](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/parent-lookup.md) | 154 | `result-track:d1b714bca7e3cb022b200f256d57a25d4cff9b33f1b97fab471a08f278b7eb17` |
| 18 | `theorem` | [nodes_validRanks](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/nodes-validranks.md) | 161 | `result-track:c89d9a5d3b29e263e3dd6f6987f98b92e97529ad1598b0751b3aee600cff8186` |
| 19 | `theorem` | [expand_nodes](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/expand-nodes.md) | 176 | `result-track:98fa9463711f1613d83ee5eb47966eed7065ddd52e034a39a2d7198d89f874ac` |
| 20 | `theorem` | [decodeSlot_nodes](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/decodeslot-nodes.md) | 202 | `result-track:9f596575c8e79e1bbb2c9325f1c31d8d9fbe1b79b51c9824c1210759da4b22d4` |
| 21 | `theorem` | [expandDictionary_nodes](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/expanddictionary-nodes.md) | 210 | `result-track:509a79281e48930ffa37b8451f09c560c4f31baba665bb7df05bc63a24b9200a` |
| 22 | `def` | [oldPacked](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/oldpacked.md) | 238 | `declaration-track:89f1f6a91c2e10d8803af1ad0b2956cd3b1c70fcaa3b96f8974db600753d50fb` |
| 23 | `theorem` | [unpack_oldPacked](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/unpack-oldpacked.md) | 242 | `result-track:dbb8d373592e02c09256216e09b820bb5c1b650d10617ddb063232b8cf472476` |
| 24 | `theorem` | [oldPacked_valid](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/oldpacked-valid.md) | 252 | `result-track:fab0d8867e6cddee9f0333bffc2d6c78e1248d7b59968a6e9b9b785893a3add9` |
| 25 | `def` | [realPacked](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/realpacked.md) | 259 | `declaration-track:52d20638627e64766ad8eb62b17a169f3037c530ed22ee84d9eb9b4aedcb1b9d` |
| 26 | `theorem` | [new_trace_mem](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/new-trace-mem.md) | 263 | `result-track:4c2c07719e3246ec0a7e754587d838f0e5fe21754c7005aab61918f1346a6625` |
| 27 | `theorem` | [realPacked_dictionary](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/realpacked-dictionary.md) | 270 | `result-track:3cda87593671bf927cd82e7b25b900c51f53ae4e7d3bf96d66e96a4de77dcdb2` |
| 28 | `def` | [representation](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/representation.md) | 283 | `declaration-track:d8fcb8ab8a2109bb99fc2d0c47e243f867816320e67863bbc77a540f47605323` |
| 29 | `theorem` | [expandedPacked_representation](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/expandedpacked-representation.md) | 286 | `result-track:e4dc623288b1f9062563478944f96430805a59535e8b180df744f82265a0925f` |
| 30 | `theorem` | [unpack_realPacked](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/unpack-realpacked.md) | 291 | `result-track:688b6cd4019b5185253a49869cc1aab1934327ac5a1bfb7b86d17e679d0d0574` |
| 31 | `theorem` | [decode_representation](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/decode-representation.md) | 297 | `result-track:1c0f58743f4e04e96651596b81c62595ad7e14ba43845eeed1c8d4e502e4992d` |
| 32 | `theorem` | [real_reference_count](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/real-reference-count.md) | 302 | `result-track:73192c1ea4643cb168ea8faf36f2b6e572a0b7d80050d4e3731c75416f349625` |
| 33 | `theorem` | [output_valid](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/output-valid.md) | 308 | `result-track:a168ecfde629f3f54f39a94efd878cd4545b57c2fe82e993b4538fef142b0b65` |
| 34 | `theorem` | [output_recovers](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/output-recovers.md) | 317 | `result-track:037e5cc83448601a773b8418a3d4038f60578ece3f5941ed2a65b49fa2e5401f` |
| 35 | `theorem` | [expand_old_revision](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/expand-old-revision.md) | 327 | `result-track:f1df2055025cf503d9da18845697d242497d5d58370697f44d261474eaadc8d5` |
| 36 | `theorem` | [certified_old_references](../../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/declarations/certified-old-references.md) | 337 | `result-track:cc76d833a97b4d7f6fde253ac898e03a2dd9e0a49e0e47a4002a55cd6860fd16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=600fb71e0888b894dced83540b27b54ccfbbf0dc3131bf6630fcd220a724d78c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
