# Verification target: Topology Flow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7153ad308725c66b6b273dbf3bf50724aa727fb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7153ad308725c66b6b273dbf3bf50724aa727fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Symbolic.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Flow.TagSet](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-tagset.md) | 6 | `declaration-track:5d69023958510b793c29f0ffc3a71d8dc9322eee61ae6c3f323d8c8bece47164` |
| 2 | `def` | [Flow.TagSet.toList](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-tagset-tolist.md) | 18 | `declaration-track:9a91014caf134e2b19eb0833c0a704ce34b6130ca96ab690ba1686825be49012` |
| 3 | `def` | [Flow.TagSet.apply](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-tagset-apply.md) | 31 | `declaration-track:4b338ab155d97c38dc6503eb99cd20865a5852cc3d74ec048f2d07e8cbd0dd19` |
| 4 | `def` | [Flow.TagSet.fullTopological](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-tagset-fulltopological.md) | 38 | `declaration-track:f0d7ee69419581decd350b7d31bb8874266d1debc46983325461d1e012da1574` |
| 5 | `def` | [Flow.TagSet.fullArithmeticAnalytic](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-tagset-fullarithmeticanalytic.md) | 50 | `declaration-track:87843f8917c79c5b44b96a943439834cd637a153ee078c4e12e86a3d573d9db3` |
| 6 | `def` | [Flow.homologyView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-homologyview.md) | 62 | `declaration-track:83de8b487dc82271cb973a9c9571c67041f95e3eb3630672a134c0aa257e36c0` |
| 7 | `def` | [Flow.prismaticTagView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-prismatictagview.md) | 68 | `declaration-track:f1a20a208fc5453af707689fc7886ad8472b0cc014340d5a4310505d713d9a13` |
| 8 | `def` | [Flow.symmetryGroupView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-symmetrygroupview.md) | 74 | `declaration-track:8fc968963686a6b40a61efabc416898bdec41186d89d316d5d6b9183f03b5d37` |
| 9 | `def` | [Flow.sieveView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-sieveview.md) | 80 | `declaration-track:38c310f0a6e5ad6e0fdf2a40088fd314b999956c61fc63d586c6d2a5aef8d011` |
| 10 | `def` | [Flow.topologicalPerspective](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyFlow.lean/declarations/flow-topologicalperspective.md) | 86 | `declaration-track:c02e41da9cc027b3e0d49ee5a0a80e6993250228f5583186a02e0a6bba39fa53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a1999939f2804d4cf869f2cc03119223b9d3f1bc0f38578346bc0b15c43d050 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
