# Verification target: List Dedup Dedup Cons Of Not Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c85014487ab0706f50cde0c1507ec66095797e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c85014487ab0706f50cde0c1507ec66095797e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Pairwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-nil.md) | 30 | `result-track:0442988ffb3703a74bce99dfe9d4926518d533747c0a94f3009fb1d01e9a8ded` |
| 2 | `theorem` | [dedup_cons_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-cons-of-mem-source-edition-2.md) | 33 | `result-track:f42026e1d9516e3348576f2a44fb9c6962a3ed76fc407ca210a249ff94e88922` |
| 3 | `theorem` | [dedup_cons_of_notMem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-cons-of-notmem-source-edition-2.md) | 36 | `result-track:d1ec078f01eb726df236f43835be004f260a63ae8794147e5fe0e277f17dfbba` |
| 4 | `theorem` | [mem_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/mem-dedup.md) | 43 | `result-track:d8db3c19f911077d4cdd0d8e7819e74e417afdf40349a172af221a85508c840e` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-cons-of-mem.md) | 50 | `result-track:6da47c9d35fc1e5e8d38d946158134c3f0c6b8eeefe053eca4f26b24730d5b59` |
| 6 | `theorem` | [dedup_cons_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-cons-of-notmem.md) | 54 | `result-track:b9be0e13eb723857a1763c76e8c851d1338265f8ac9ac6e2ec30caa31661240a` |
| 7 | `theorem` | [dedup_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-sublist.md) | 59 | `result-track:5fd4ae049e575a671d6cc20c7d9d31d6545630484cab1c57cee11773e55efc06` |
| 8 | `theorem` | [dedup_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-subset.md) | 62 | `result-track:a56d05acd3a56ac9e9cb5613bc9003c59bfafa44755d6d28e31aa47b9bb96301` |
| 9 | `theorem` | [subset_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/subset-dedup.md) | 65 | `result-track:9d8d1af29025617e47378a5fd6309a1ad00cc6611b82147f6c5e8956786b5498` |
| 10 | `theorem` | [nodup_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/nodup-dedup.md) | 67 | `result-track:3bb72eaedff0aca0f5c1c8e280a9e659c39745240414fcaaf3b7763de0a853b8` |
| 11 | `theorem` | [headI_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/headi-dedup.md) | 70 | `result-track:e6fb736187f2aee09b1ef94528c2d3c548538fbe0912469f1839d1fa13b15355` |
| 12 | `theorem` | [tail_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/tail-dedup.md) | 76 | `result-track:62386792f417f111452ec7db2dd7787d61e0438d2509312ee1f64ee282951de1` |
| 13 | `theorem` | [dedup_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-eq-self.md) | 82 | `result-track:319e0d1cb2382f678dd32af4bc3b22a975a05d7e1e5afc019455b34a11f447a7` |
| 14 | `theorem` | [dedup_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-eq-cons.md) | 85 | `result-track:21a04733bf8e84287972ecd7c690b99fd18cae733fc8dd8009ef438361580fbb` |
| 15 | `theorem` | [dedup_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-eq-nil.md) | 99 | `result-track:bc9074fe0dc1baa875aa7678dbb77e39a46ca9d29e7cf492bae43bfb55f14ad6` |
| 16 | `theorem` | [Nodup.dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/nodup-dedup-source-edition-2.md) | 107 | `result-track:a022f561548b29f4d830c362768745a308eeeecb05cbbffee28b669c3b93b280` |
| 17 | `theorem` | [dedup_idem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-idem.md) | 111 | `result-track:2e3c8af7d95f0ecfcbcdb745ef4f488eb6b481578b62a099b70fdfc70643b687` |
| 18 | `theorem` | [dedup_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-append.md) | 114 | `result-track:b13777773b8f45866fca5fe99d9eb61ebb5cb49bff52d8da44886415f1b3b05e` |
| 19 | `theorem` | [dedup_map_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/dedup-map-of-injective.md) | 122 | `result-track:b438e3ffcdc83c44a641d30b0bbf29c4c30a8182bc05e3fc8d2038ce4c6d2c03` |
| 20 | `theorem` | [Subset.dedup_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/subset-dedup-append-right.md) | 135 | `result-track:1d48723d9134fb06bd4e9a5a4a9722491dc7f468ea14c16b67b2c2a089f3fa02` |
| 21 | `theorem` | [Disjoint.union_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/disjoint-union-eq.md) | 139 | `result-track:8dade97ab28a6407481b99e5322afc9c4933a56bc315aeed75aaecef180ed55b` |
| 22 | `theorem` | [Disjoint.dedup_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/disjoint-dedup-append.md) | 152 | `result-track:b77fcfc0bb2c86f58547707e44162038897647618614853e7c2bf6fc82e21820` |
| 23 | `theorem` | [replicate_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/replicate-dedup.md) | 158 | `result-track:c5b122c5de0a0ece091264723a9275ae7b3f80e68e337f6ee355beb360fc5e4a` |
| 24 | `theorem` | [count_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/count-dedup.md) | 165 | `result-track:a994b0603bdafc24a2a3774843eba671cb9dfff895e8f9fa3a98d64c92fa4c16` |
| 25 | `theorem` | [Perm.dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupDedupConsOfNotMem.lean/declarations/perm-dedup.md) | 168 | `result-track:dcbc90a1ca77c748aff98da1ba4523601350c526aa587e23c2a00086a6372722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8de66e6d80c0b3f93e5beef9cadf68595ca8dc9f64b0ea58fb091d01a88f271a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
