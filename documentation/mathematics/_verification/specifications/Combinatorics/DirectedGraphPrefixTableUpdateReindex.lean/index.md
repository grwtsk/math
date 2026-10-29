# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8f334e1f5cb3a723a9e1292e174c9aa35b77211",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/index.md) · [Full source](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8f334e1f5cb3a723a9e1292e174c9aa35b77211`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex`](../../../../Combinatorics/DirectedGraphPrefixTableReindex.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapOccurrence](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/mapoccurrence.md) | 33 | `declaration-track:fe47e38df518aafaf1c93c7ef66fab17f9c94f9879ef8428868c7d30c2f1e115` |
| 2 | `def` | [mapOccurrenceRows](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/mapoccurrencerows.md) | 37 | `declaration-track:174aadf65114b8b441a65ac5dca53ae402f668561ed91e5ceca283ef9fe6ebb6` |
| 3 | `theorem` | [encodePath_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/encodepath-map.md) | 41 | `result-track:044f5e2a08d4c884f36a6a145d7be0bb5e36140c64851c03d53c13fff3097ca5` |
| 4 | `theorem` | [trace_mapOccurrence](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/trace-mapoccurrence.md) | 54 | `result-track:535115bba6bd465295be3e4e3958a17cc87d4cb93bfea5ecbb220453b0ce17ac` |
| 5 | `theorem` | [traceRows_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/tracerows-map.md) | 58 | `result-track:a61cd781d7a5e51edb6d44ec8fc091484d068ccb2c7183eb72af24c3f84d1d99` |
| 6 | `theorem` | [inventory_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/inventory-map.md) | 67 | `result-track:8b9eeeaea10b5af553ab50f1b79754ed1b126649776017073f6c9b0e04c55eca` |
| 7 | `theorem` | [prefixEntries_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/prefixentries-map.md) | 80 | `result-track:cf15cc3f54486634ff9178b6fe3de00b9c8ba35d2f9043445eb6082bddd3902a` |
| 8 | `theorem` | [missingPayloads_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/missingpayloads-map.md) | 88 | `result-track:326b320705b7192e9cdf05551796a4df686068aacfbe25e2f340d4e866552dbd` |
| 9 | `theorem` | [expandedDictionary_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/expandeddictionary-map.md) | 112 | `result-track:d1270bb0def8aa0f46df352b9e7fbb21bba90da46a10375d9caada2ad5f6d029` |
| 10 | `theorem` | [extendedDictionary_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/extendeddictionary-map.md) | 122 | `result-track:20b643e97c7fd3b5a983c3d5b7742f2bad50ed8d534b3ee613762187aeeafad9` |
| 11 | `theorem` | [extendedNodes_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/extendednodes-map.md) | 133 | `result-track:b27c02f0d85d8ecb3add8f3b44af5568f28d0942fd06d7e9342f78cfc35a1cba` |
| 12 | `theorem` | [appendReferences_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/appendreferences-map.md) | 156 | `result-track:702a87b4cefdb86877ce23dfa6f0bc26f42ec56f8cb2ce0d3d8261f34db6e6cf` |
| 13 | `theorem` | [realReferences_map](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/realreferences-map.md) | 177 | `result-track:6df59b2372a5e15c7935833204439ec3b12c40c6a7f89ff8ea0610a11bd7e6b6` |
| 14 | `theorem` | [update_transport](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/update-transport.md) | 191 | `result-track:0cfcd1770a3ea8d6e372a79aa7d4a96ad7c76efff6beeb994c9a25bc170f4b94` |
| 15 | `theorem` | [mapped_update_wellFormed](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/mapped-update-wellformed.md) | 206 | `result-track:ed854c5c7e3086bca0fbdf24b3d99497afb7cd13f7cfaef677a879d4b7425bc6` |
| 16 | `theorem` | [decode_update_transport](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/decode-update-transport.md) | 214 | `result-track:923ea801370c2acf62ed9ff0def46ad442bf85d015c2d0f91c75170ba939d1ad` |
| 17 | `theorem` | [two_updates_transport](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/two-updates-transport.md) | 224 | `result-track:852cb36da2cf0a603d38c822a963d8463f81f076c43aadc3549e168315c11fcc` |
| 18 | `theorem` | [decode_two_updates_transport](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/declarations/decode-two-updates-transport.md) | 261 | `result-track:6e0dea192080f2b086a6a155c98e4b9d066663e1bcc31b41de3a8b47276433b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a075066707ecd3430e24af847bb5f9a73845c051fee16f693086a72929f3a5d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableUpdateReindex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
