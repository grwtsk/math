# Verification target: Arborescence Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b7f5a4553da8a9fc739ca5f264f73c0b06fa6f7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b7f5a4553da8a9fc739ca5f264f73c0b06fa6f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Arborescence](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/arborescence.md) | 47 | `declaration-track:463b4239640f7f75147c387eb47b72a6881a7d58acc3d0a15a529ba385469aa8` |
| 2 | `def` | [root](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/root.md) | 54 | `declaration-track:7c3e93f05fa91dc682c2676942057453cad85cb0bba5cd03885756446ebff2b4` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/instance.md) | 57 | `declaration-track:6a470067b275d0f4de6f687b4374f5feeaa2b998fceefa599be759c6b57eb56d` |
| 4 | `def` | [arborescenceMk](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/arborescencemk.md) | 66 | `declaration-track:4bcef916d693670bd22c1025cc143f4685eb7cada22576057276def06519a41e` |
| 5 | `class` | [RootedConnected](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/rootedconnected.md) | 103 | `declaration-track:5746b9a00560817d7a20a86c6a896947883286373a415857874fc67319768018` |
| 6 | `def` | [shortestPath](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/shortestpath.md) | 113 | `declaration-track:d0d0cdca96c8687190f2d4e7116763609bc31c7ba8cd66f8843d403eca62d725` |
| 7 | `theorem` | [shortest_path_spec](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/shortest-path-spec.md) | 117 | `result-track:ffa28996abbf77eda63cf01c92a067752a7a1e844224d565934a483882b9f9dc` |
| 8 | `def` | [geodesicSubtree](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/geodesicsubtree.md) | 121 | `declaration-track:256d429af02e0d9da565174611d26098ac2a32be6e16af14b2e1f602b6963e84` |
| 9 | `instance` | [geodesicArborescence](../../../../../Combinatorics/GraphTheory/ArborescenceNamespacedPublic.lean/declarations/geodesicarborescence.md) | 125 | `declaration-track:6e70f35907b5f112538e32915dd3294a5abd2883d68118c3e07c855dc7349aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5d7e2a0b0b06723256e0366b605e32dea3c74a675f3c17aef7dd324d399bbd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
