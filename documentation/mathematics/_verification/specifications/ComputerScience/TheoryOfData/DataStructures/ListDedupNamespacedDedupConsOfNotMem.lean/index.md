# Verification target: List Dedup Namespaced Dedup Cons Of Not Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74bf89dce1b6233a01f9051bf43a59061b1c9459",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant46f29a2bc6594d81c7a90ec51ca382bc6a4b033b1d96ae5f2d400cb03eb2eb5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74bf89dce1b6233a01f9051bf43a59061b1c9459`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant46f29a2bc6594d81c7a90ec51ca382bc6a4b033b1d96ae5f2d400cb03eb2eb5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant46f29a2bc6594d81c7a90ec51ca382bc6a4b033b1d96ae5f2d400cb03eb2eb5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Pairwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-nil.md) | 38 | `result-track:fbd8caacc25fff766b01a9abec1c6d6e140d858c64d5b86aa2de3ec4df27dcb0` |
| 2 | `theorem` | [dedup_cons_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-cons-of-mem.md) | 41 | `result-track:12f5e4d21818f05d3d39d2dfae03ebb32508294df8ada93c3286dd1b1ffd3fc8` |
| 3 | `theorem` | [dedup_cons_of_notMem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-cons-of-notmem.md) | 44 | `result-track:a72b4c1a9dcc7c5d6f79df7fa3c8c22da95734134ce6c7a5cdcf40d3810a12cf` |
| 4 | `theorem` | [mem_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/mem-dedup.md) | 51 | `result-track:73f7ba99948fc772271ba91254802f61017ae37a848a789630fccd1f397f0c6c` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-cons-of-mem-source-edition-2.md) | 58 | `result-track:b372ab011af9ecd9086941663dfb8cc00df1ce83edeafd6a21b240bbbb53181f` |
| 6 | `theorem` | [dedup_cons_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-cons-of-notmem-source-edition-2.md) | 62 | `result-track:c0e72ab9ac2c12ebd15dba9a1fcc322936a71d6dacfd486829e0725f8ef94854` |
| 7 | `theorem` | [dedup_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-sublist.md) | 67 | `result-track:020a313c91eddc8405b19b45a58044a34855bfa583831e60391db1865e1c1552` |
| 8 | `theorem` | [dedup_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-subset.md) | 70 | `result-track:8ca6c05a1cc0c9dad376f031c48a7ca35ebaafc0341cf1826e99254f9dec70e6` |
| 9 | `theorem` | [subset_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/subset-dedup.md) | 73 | `result-track:a11d4f776ec86b5c04fe1351196d23ddaaf1c2e0045590b72a081382c8c333b0` |
| 10 | `theorem` | [nodup_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/nodup-dedup-source-edition-2.md) | 75 | `result-track:c144e44c935c49d8b0df22f6bf680661ddd474caf93a52baab9500632673f09d` |
| 11 | `theorem` | [headI_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/headi-dedup.md) | 78 | `result-track:8e5e61f20f4064a13bc97a1b1932b4d5e489b2b94eab2b4e7c0842578f0dfd3c` |
| 12 | `theorem` | [tail_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/tail-dedup.md) | 84 | `result-track:4ca2f6cb9170e2207328f5feefaf456f829a13cc67ecb9ef1b69da35c6613bfc` |
| 13 | `theorem` | [dedup_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-eq-self.md) | 90 | `result-track:31cb12214b2599071180799d56c9fb0c1272ede23a8691cc9afe3d7a70deeeec` |
| 14 | `theorem` | [dedup_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-eq-cons.md) | 93 | `result-track:5182ccdbf20fb80d1c5e1efd4d50468d759973256ee3375ec77677d7db432d97` |
| 15 | `theorem` | [dedup_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-eq-nil.md) | 107 | `result-track:bdaf5abc9d0a488958d298922df376f9926928d2e7ae12b1255c8f1bf5ca9b51` |
| 16 | `theorem` | [Nodup.dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/nodup-dedup.md) | 115 | `result-track:095bbe9cdf352205ef543f52f3b54c3dfb98b168a0359a3225441a9053a6d575` |
| 17 | `theorem` | [dedup_idem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-idem.md) | 119 | `result-track:ebe954b7dc1960557d015121184996bbf13a1aa786367a024655689bc90e8938` |
| 18 | `theorem` | [dedup_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-append.md) | 122 | `result-track:014ee78d71c8694b27f888049fd7ec2f777b03fa9514fdf98b4241dd175cc1e2` |
| 19 | `theorem` | [dedup_map_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/dedup-map-of-injective.md) | 130 | `result-track:d231b19b8aabb71191f25821794bfce58373972039414f0450fa8d0c6acd6d76` |
| 20 | `theorem` | [Subset.dedup_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/subset-dedup-append-right.md) | 143 | `result-track:3258b23334ab6754e44c8026a2c5702b20118a20a009f8d96948aaa4152fc058` |
| 21 | `theorem` | [Disjoint.union_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/disjoint-union-eq.md) | 147 | `result-track:2f3815d2399ea2e640e5b2e8369c7050be6f7762d4c983cc8f633155544c4ec3` |
| 22 | `theorem` | [Disjoint.dedup_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/disjoint-dedup-append.md) | 160 | `result-track:edc07ae396451a201cca6b1cf69aa8d1f3ac3c542fd96c36f38788b3ebe0227b` |
| 23 | `theorem` | [replicate_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/replicate-dedup.md) | 166 | `result-track:e6d3cacf5dad888653c919e2e8e90f489ea27132ec4b93b02d5a7a375e04d7ab` |
| 24 | `theorem` | [count_dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/count-dedup.md) | 173 | `result-track:30d0b5cb33f17ed01056786940f35660874f356d0c75bd722119ce768bda9e93` |
| 25 | `theorem` | [Perm.dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListDedupNamespacedDedupConsOfNotMem.lean/declarations/perm-dedup.md) | 176 | `result-track:2e0a7b12663b1364857204db37ef6d10b3a76b0fcb851d75d800669f5913f552` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=004f382839558cb364987ac58c94158f743e3b5d17d063d8c9f5027a89623da0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant46f29a2bc6594d81c7a90ec51ca382bc6a4b033b1d96ae5f2d400cb03eb2eb5f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant46f29a2bc6594d81c7a90ec51ca382bc6a4b033b1d96ae5f2d400cb03eb2eb5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
