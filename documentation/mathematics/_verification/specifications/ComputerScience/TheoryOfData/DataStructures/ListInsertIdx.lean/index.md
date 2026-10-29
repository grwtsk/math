# Verification target: List Insert Idx

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9a548d36e80c139461ae2647739249a89d56f7d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9a548d36e80c139461ae2647739249a89d56f7d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sublist_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/sublist-insertidx.md) | 31 | `result-track:d27f069c05a5fadc162eb31ffc40f2bfc186b80a2e69c4c64cb39e4ba096db6e` |
| 2 | `theorem` | [subset_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/subset-insertidx.md) | 35 | `result-track:ff4da224cedb8e2879df41b21bb6795c25a34aa0096dcc3e32903922c586a749` |
| 3 | `theorem` | [insertIdx_eraseIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/insertidx-eraseidx.md) | 43 | `result-track:229b2a255c759e622df457c2b43975b7c54ad86c40544dd195ef7dd25fa4515c` |
| 4 | `theorem` | [insertIdx_eraseIdx_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/insertidx-eraseidx-getelem.md) | 47 | `result-track:809f4fc4a6063b4da77a3f440b7dc4da0cbf333e6d45c241aec05924e2dfa33d` |
| 5 | `theorem` | [eq_or_mem_of_mem_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/eq-or-mem-of-mem-insertidx.md) | 51 | `result-track:083e83ba99becb9e97ba751a31533c36d6658d27ca4e77e28f12a66f273c0407` |
| 6 | `theorem` | [insertIdx_subset_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/insertidx-subset-cons.md) | 60 | `result-track:c526d4d59e24dc764acfb7d84b2b16e402a30d604bdd90dadcdd954b4f1b9fb1` |
| 7 | `theorem` | [insertIdx_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/insertidx-pmap.md) | 64 | `result-track:1767b060070b15baa6fd82c9ac8060a0308530c3c6b028b76dd8d8c2ce497bca` |
| 8 | `theorem` | [map_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/map-insertidx.md) | 72 | `result-track:62b30bc6db0eff51387cedce84c81ac7cde84beafa216cbd81d5713cb53c5a10` |
| 9 | `theorem` | [eraseIdx_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/eraseidx-pmap.md) | 76 | `result-track:e649c266b6c0e7d1348c1a5547e85905ca4380c5ff662e0e01200d44bde90bcd` |
| 10 | `theorem` | [eraseIdx_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/eraseidx-map.md) | 84 | `result-track:d21dab2e7a2d7859489f504e5a60175b2c141bdee2b6eab4e89418b57d50973d` |
| 11 | `theorem` | [get_insertIdx_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/get-insertidx-of-lt.md) | 88 | `result-track:308ceaf390b7b94a302044cb94dfefedf0bbe3c0567ce4ce219060784ee265f0` |
| 12 | `theorem` | [get_insertIdx_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/get-insertidx-self.md) | 93 | `result-track:5d830ef9e0805277b9ee6e364422211217ba155dd80dea15ebb63aad6e54dee7` |
| 13 | `theorem` | [getElem_insertIdx_add_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/getelem-insertidx-add-succ.md) | 99 | `result-track:64bf37f61c9614cc288f18eb349288f9fed30edb4f9c865ecb76b2e44dfdfb61` |
| 14 | `theorem` | [get_insertIdx_add_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/get-insertidx-add-succ.md) | 106 | `result-track:04a452baf44d215820dc0096d319761daf077b97830ac65ac24d0eb3015807c3` |
| 15 | `theorem` | [insertIdx_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListInsertIdx.lean/declarations/insertidx-injective.md) | 113 | `result-track:e92f251ca5899b65a603f80aee5460a54e7f3afed49e65edb0122b65011a2bb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a46ddae860e69bc525de984a722c79a1c5d1c064178fd9c52f8b87efae2f391 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
