# Verification target: Avalanche Partition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7fb086259213433eea5f7bb36e8becb48906309",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/AvalanchePartition.lean/index.md) · [Full source](../../../../Combinatorics/AvalanchePartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7fb086259213433eea5f7bb36e8becb48906309`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AbsoluteRegion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AvalanchePartitionTree](../../../../Combinatorics/AvalanchePartition.lean/declarations/avalanchepartitiontree.md) | 18 | `declaration-track:781b1790c7e8211676db232760ee764328e3a5cbb4bfa79beeba25365c283684` |
| 2 | `def` | [Child](../../../../Combinatorics/AvalanchePartition.lean/declarations/child.md) | 62 | `declaration-track:4e5bfd102563b65937d03d34b986ba3c13b0cbce5691abc2c1ff3854d5ac939f` |
| 3 | `theorem` | [child_rank_decreases](../../../../Combinatorics/AvalanchePartition.lean/declarations/child-rank-decreases.md) | 66 | `result-track:b46732cda3f7c1d53c17e5fbebc28149cbd08a987aa86662f5174db112903bf3` |
| 4 | `theorem` | [child_wellFounded](../../../../Combinatorics/AvalanchePartition.lean/declarations/child-wellfounded.md) | 73 | `result-track:6051ee006da643735d88790b2ff8635f86d44d719882fc3b3be4bb4080557dfa` |
| 5 | `theorem` | [no_child_cycle](../../../../Combinatorics/AvalanchePartition.lean/declarations/no-child-cycle.md) | 81 | `result-track:943abd5b0e1b3934145ff4f1f610eb8ac07d8612b8d69ab9734d577ca1150ccc` |
| 6 | `theorem` | [root_covers_every_coordinate](../../../../Combinatorics/AvalanchePartition.lean/declarations/root-covers-every-coordinate.md) | 86 | `result-track:0eb0a460a3291af4a5bbbad999ee022f39853ed174282e665c8695841f974679` |
| 7 | `def` | [frontierAtDepth](../../../../Combinatorics/AvalanchePartition.lean/declarations/frontieratdepth.md) | 105 | `declaration-track:c85ef3902e408c7f66ecb149c133a24e6eb4fd0b018beea94fb11c9a1c6ee60b` |
| 8 | `theorem` | [frontierAtDepth_zero](../../../../Combinatorics/AvalanchePartition.lean/declarations/frontieratdepth-zero.md) | 117 | `result-track:a119017a3c0af7cc1bb9afb4c72469a3f6f2cfd0118183f4b862e9b291ea219e` |
| 9 | `theorem` | [frontierAtDepth_succ](../../../../Combinatorics/AvalanchePartition.lean/declarations/frontieratdepth-succ.md) | 121 | `result-track:b5f2c2b175e4f91f18d9806a33eda42069456bf498637970bd33294ce14d3f87` |
| 10 | `theorem` | [frontierAtDepth_runtime_independent](../../../../Combinatorics/AvalanchePartition.lean/declarations/frontieratdepth-runtime-independent.md) | 131 | `result-track:ce4fcf53b925572bcf4c9b4e62651a20bd780ca2ca0450f78dd5b0133a6ff0fc` |
| 11 | `structure` | [GlobalAvalanchePartition](../../../../Combinatorics/AvalanchePartition.lean/declarations/globalavalanchepartition.md) | 142 | `declaration-track:06e1581e0dbb7968e961398b4b917ad726d3ed6826ab0a64c48b9b5a18fa67c2` |
| 12 | `structure` | [DeterministicGlobalAvalanchePartition](../../../../Combinatorics/AvalanchePartition.lean/declarations/deterministicglobalavalanchepartition.md) | 169 | `declaration-track:fc71ab17a2377a794fad86f9cd48c8442074472f8458551a497111152755ac23` |
| 13 | `theorem` | [nodes_eq_frontier](../../../../Combinatorics/AvalanchePartition.lean/declarations/nodes-eq-frontier.md) | 181 | `result-track:bcc969d15fffd43eaee73e082b0de64c27120292a6835028ea7ec32bf8ea6404` |
| 14 | `theorem` | [deterministic](../../../../Combinatorics/AvalanchePartition.lean/declarations/deterministic.md) | 187 | `result-track:5493616d254e92723e1404484400e25f60a61d29d46ccc97316bebb9f3f6840f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad4a8b09f0a4e14156b232432dbe55d69b76bfefa84ba7f2909a35da2e6f7432 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
