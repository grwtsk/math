# Verification target: Insert Idx Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d3055a361805aeaf6b2db15516f5923a3cf553",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d3055a361805aeaf6b2db15516f5923a3cf553`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean.json)

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
| 1 | `theorem` | [sublist_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/sublist-insertidx.md) | 44 | `result-track:aa0240d8c7f1857cc9c8895f76b11e7ff8fdaffb1445c0f9dead429bea6564fc` |
| 2 | `theorem` | [subset_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/subset-insertidx.md) | 48 | `result-track:979e2f3608ce9ee8d25588f06df8b312adbf1f746f60a61002099dba553c453f` |
| 3 | `theorem` | [insertIdx_eraseIdx_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/insertidx-eraseidx-self.md) | 56 | `result-track:a9ccfae931ad53c188b2320a828cf9a6a67960afa3f328ad71213071a832ef70` |
| 4 | `theorem` | [insertIdx_eraseIdx_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/insertidx-eraseidx-getelem.md) | 60 | `result-track:8e8e1bf8f02b10d56f377580760a0428ac848fd4706510c55d8c8b945866ebbf` |
| 5 | `theorem` | [eq_or_mem_of_mem_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/eq-or-mem-of-mem-insertidx.md) | 64 | `result-track:33d4d4ffff5ccb45a15ce1713bee2c5d9ce8f3d91dfca6f3234d98b85d3776ab` |
| 6 | `theorem` | [insertIdx_subset_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/insertidx-subset-cons.md) | 73 | `result-track:ab2ab85e12e4ebbf147e5dda8564a5e188d5f66e9930c3b317ac07e00028cdd8` |
| 7 | `theorem` | [insertIdx_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/insertidx-pmap.md) | 77 | `result-track:652af321a7a2bf5ecb02cf0959d12ae6093d1378596535c8829bd78eb0e58a6a` |
| 8 | `theorem` | [map_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/map-insertidx.md) | 85 | `result-track:18cbd115ab0095d22bd8804bdfa9fde84cae6f5056694abeb7b36ab82ec5d30c` |
| 9 | `theorem` | [eraseIdx_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/eraseidx-pmap.md) | 89 | `result-track:14f38f341f49438ddd8d6afa9b62053b0eb1657d4ec2f42f82ebff3c0ecaee2a` |
| 10 | `theorem` | [eraseIdx_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/eraseidx-map.md) | 97 | `result-track:d9e7bc4ac17bec6f49062f61af0ab8346b190611e0ad581e2c2bc55254d25487` |
| 11 | `theorem` | [get_insertIdx_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/get-insertidx-of-lt.md) | 101 | `result-track:53b5a3a610413432cffaad3a306c330347fc40d6859ec8cdde2239149899ce7e` |
| 12 | `theorem` | [get_insertIdx_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/get-insertidx-self.md) | 106 | `result-track:9a0298f687b7193a6e746f458920f561dbdf2665201cb9af5e27964b63238b0a` |
| 13 | `theorem` | [getElem_insertIdx_add_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/getelem-insertidx-add-succ.md) | 112 | `result-track:4fd5c51dfbe6a7ca3131c93564174e53fd64362f03b426ad5c8d8ad1e4eb76b4` |
| 14 | `theorem` | [get_insertIdx_add_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/get-insertidx-add-succ.md) | 118 | `result-track:fc5025d3099a3eeaee151899a42a5eccfd4d36e906363447a640e4482b530ad5` |
| 15 | `theorem` | [insertIdx_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/insertidx-injective.md) | 124 | `result-track:c05e0beed725933f4b1d58ca41b40247972f39eefbcd2ad0b1bee9c8d73a69b0` |
| 16 | `theorem` | [take_insertIdx_eq_take_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/take-insertidx-eq-take-of-le.md) | 129 | `result-track:6889b12dd4c44d47c2e2fae56124d8dd2c90244062f335b82bc1ea8d598dbd90` |
| 17 | `theorem` | [take_eraseIdx_eq_take_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/InsertIdxNamespacedPublic.lean/declarations/take-eraseidx-eq-take-of-le.md) | 133 | `result-track:23f2bac1b14e5adb6d100c6a22420c7a51c5ed86de9050d722a0732fda00543a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44c6b5423f76bb7730ed4466e74ca461f49b96a761607e4dd48f8095349d55c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
