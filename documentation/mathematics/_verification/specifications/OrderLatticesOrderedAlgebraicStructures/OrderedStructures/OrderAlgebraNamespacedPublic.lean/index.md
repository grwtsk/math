# Verification target: Order Algebra Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdae63c280445ca4b49bcf3d966f6a6052d7ee9e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdae63c280445ca4b49bcf3d966f6a6052d7ee9e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean.json)

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
| 1 | `theorem` | [IsOrderedModule.of_algebraMap_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/isorderedmodule-of-algebramap-mono.md) | 50 | `result-track:d021920a3d7b893f612517afb620187d14d6e916930484556c2c89f9763de478` |
| 2 | `lemma` | [algebraMap_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/algebramap-mono.md) | 61 | `result-track:4f487de0f0ebcee97919e0a63fc592cb721c1b6e1633544676e3547173426c47` |
| 3 | `lemma` | [algebraMap_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/algebramap-nonneg.md) | 64 | `result-track:ac99e2e9969524ec0d61227a2645d8caf5ab7ecd1b121ab1c86e9765f5b4fe18` |
| 4 | `theorem` | [isOrderedModule_iff_algebraMap_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/isorderedmodule-iff-algebramap-mono.md) | 69 | `result-track:11361bd3f672486f17f1890225bbee10a53500799bf1a760594f8cd89f9db0f7` |
| 5 | `lemma` | [algebraMap_le_algebraMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/algebramap-le-algebramap.md) | 77 | `result-track:ce630ce00c619352db937921df19e218b784ff4a872bcb01caf6cc7b507c01d5` |
| 6 | `lemma` | [algebraMap_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/algebramap-strictmono.md) | 85 | `result-track:1082ef4b201626089cf880b880dadf45e3beb7f164f4a8ce00f40cad12981a01` |
| 7 | `lemma` | [algebraMap_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/algebramap-pos.md) | 88 | `result-track:b8b44ed3083c62e9b9ab78fee74664e4c633b92396e63c5da4e1ad36b08a9c24` |
| 8 | `lemma` | [algebraMap_lt_algebraMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/algebramap-lt-algebramap.md) | 93 | `result-track:fd82c52bf38787552b813355c6b99bc5aeadbc5995b2f6adbd390a14e2ebc8df` |
| 9 | `def` | [evalAlgebraMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/evalalgebramap.md) | 106 | `declaration-track:178d8fbd7e89e90b3c11ce23fff1523dfc4bde9177297f7b05969e887b107196` |
| 10 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/example.md) | 137 | `declaration-track:2ff679f10505baec4c7ac22a9f09c4d6f8d153913be3116d82d4e219c2558339` |
| 11 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/example-source-edition-3.md) | 141 | `declaration-track:e06a0105d8f378a76236b7b98d0e1220ca7010099b9f44165598fb555eb0b1f0` |
| 12 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAlgebraNamespacedPublic.lean/declarations/example-source-edition-2.md) | 145 | `declaration-track:b8331910d13ff4e60aba66d346e615cffc8c8cdc560b96c58c77a2ac931064de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12a8bbeea4483a654d9ba0f9401cc08665c11d0685370b06b13f6a2eb23c9ada -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
