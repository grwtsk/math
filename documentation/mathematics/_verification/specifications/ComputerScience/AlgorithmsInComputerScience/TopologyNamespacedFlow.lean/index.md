# Verification target: Topology Namespaced Flow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cd0479821abc98f816755d254affa11eda11507",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cd0479821abc98f816755d254affa11eda11507`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Symbolic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Flow.TagSet](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-tagset.md) | 14 | `declaration-track:f6403c0629c676e9d9c6279865ba0a6a9abec72405c0abb4fb7fbcc180857d5e` |
| 2 | `def` | [Flow.TagSet.toList](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-tagset-tolist.md) | 26 | `declaration-track:a9d061d8e29f3c8b1f175d09c6ccd697a8200e936d5d62d47c0b257e6c2baede` |
| 3 | `def` | [Flow.TagSet.apply](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-tagset-apply.md) | 39 | `declaration-track:406b4d1afa79d33413dc83dd4e9754bdab20afed863759f07301b50769b5182b` |
| 4 | `def` | [Flow.TagSet.fullTopological](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-tagset-fulltopological.md) | 46 | `declaration-track:926e2141b4475d85d54aa5d4e553a1c83b287bea70da712ccba25848d4657460` |
| 5 | `def` | [Flow.TagSet.fullArithmeticAnalytic](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-tagset-fullarithmeticanalytic.md) | 58 | `declaration-track:916bf057a4d389fe75c3436b819270b58e7d76c19ca013075dcb10002cfcd400` |
| 6 | `def` | [Flow.homologyView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-homologyview.md) | 70 | `declaration-track:41b4689bb81fc1850976a77bc37a5dbb0fb05448e135d0d32035d4e366cec566` |
| 7 | `def` | [Flow.prismaticTagView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-prismatictagview.md) | 76 | `declaration-track:43b9b5fbf1be72967cf01d40f58d2e88a69e864c3d583d5400a91e0bab4ac85b` |
| 8 | `def` | [Flow.symmetryGroupView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-symmetrygroupview.md) | 82 | `declaration-track:7258fe146630d6f1f52534c985f7df9bc898deee1b43ba59f4e56cf11b4f4463` |
| 9 | `def` | [Flow.sieveView](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-sieveview.md) | 88 | `declaration-track:b112c9f9f9dc538b77ab2603eac8d0dcd1b94647be3c63d0e7cf47ef1b1c92ce` |
| 10 | `def` | [Flow.topologicalPerspective](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologyNamespacedFlow.lean/declarations/flow-topologicalperspective.md) | 94 | `declaration-track:ec8fd5cc310109bc1ef06ece8c31a0bc6403d42978e4a7993f3165664ebe9732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f691cae280eb0d3f8e9c50ef39b060fe32d2b4bbe88b606840d53c68003bb13d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
