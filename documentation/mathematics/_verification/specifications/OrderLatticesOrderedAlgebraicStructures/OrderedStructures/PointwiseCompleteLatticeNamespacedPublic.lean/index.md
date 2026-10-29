# Verification target: Pointwise Complete Lattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46ea51d72b4e590bc44daefe18aaf4bec059917f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc92d3b092a1e5c325f480313953aeeade8b0101d0fba5afde5ff4e33851ca628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46ea51d72b4e590bc44daefe18aaf4bec059917f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc92d3b092a1e5c325f480313953aeeade8b0101d0fba5afde5ff4e33851ca628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc92d3b092a1e5c325f480313953aeeade8b0101d0fba5afde5ff4e33851ca628.lean.json)

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
| 1 | `lemma` | [csSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/cssup-one.md) | 43 | `result-track:663de17481891578c1ac99e3dcf9331ba825e5fa0ba156f35fd61fe1a3071e44` |
| 2 | `lemma` | [csInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/csinf-one.md) | 44 | `result-track:acb2991cc47ee7d256b1dbb22f6c05bad63f2bd202b5c57796f06730be2017e6` |
| 3 | `lemma` | [csSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/cssup-inv.md) | 53 | `result-track:5608b490853e9ed28c86e1c632eb8c26fc633b669371bc747f2e95c94e5f51b6` |
| 4 | `lemma` | [csInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/csinf-inv.md) | 58 | `result-track:6425fc896f3e529df8052173420a768c731f5903e757a719a8d93249e368248d` |
| 5 | `lemma` | [csSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/cssup-mul.md) | 63 | `result-track:797e98bad17134c813eee6325daf8ab81c4c26723a7680051bbe17ea68c9f897` |
| 6 | `lemma` | [csInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/csinf-mul.md) | 69 | `result-track:97ab08cd5a130b46818b4f52407e6eaa9340fc0df90c7fffbae450a8a16e8af1` |
| 7 | `lemma` | [csSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/cssup-div.md) | 75 | `result-track:cb1c58b1d530767947fc047b0bd5790286e68e078c8b7f6de7b1c4cdf4451ed1` |
| 8 | `lemma` | [csInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/csinf-div.md) | 80 | `result-track:2403e9b0714a1a6d05fbe6c3d52c962da580cd15ec87a003bceda7c0b7037b04` |
| 9 | `lemma` | [sSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/ssup-one.md) | 93 | `result-track:bb50147b625d908121b2e91cf5351cd3671a4e52b7bc46e44cc2bc314ff32b8b` |
| 10 | `lemma` | [sInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/sinf-one.md) | 94 | `result-track:30ba6fa696722289dd05a802b1d6d6a6a87f134fc1f658f86e47554d02d42a16` |
| 11 | `lemma` | [sSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/ssup-inv.md) | 103 | `result-track:0f06b5179ad95358d64ee5ffe7bcc227b99b25c6f0dc4dbd14e06dce1530e8e5` |
| 12 | `lemma` | [sInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/sinf-inv.md) | 108 | `result-track:faf316d4b2ed8400263a24763d66925f71e4f1cf3abefa1b8ba2d17386f608c0` |
| 13 | `lemma` | [sSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/ssup-mul.md) | 113 | `result-track:c46f32f8cf5cc2666e19ba71521dee6aad73f4c447ebd9c3a9f40b7f8368deab` |
| 14 | `lemma` | [sInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/sinf-mul.md) | 118 | `result-track:61214d214b5972481a44a47034d736260d36434cabd9f15ec4d8242e92374c74` |
| 15 | `lemma` | [sSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/ssup-div.md) | 123 | `result-track:c21ea5cb3976bdca25c85c852b31f0a01c94393a71ee1722e061d42b0736e459` |
| 16 | `lemma` | [sInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespacedPublic.lean/declarations/sinf-div.md) | 126 | `result-track:44351215cdd1af37a213134a8106b94c8b42fdad95014174a5a29ce7c5103f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed2e91e10050bfa51069e57435c89624aee6358478e5aea597f5bfcfdd4a2abd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc92d3b092a1e5c325f480313953aeeade8b0101d0fba5afde5ff4e33851ca628.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc92d3b092a1e5c325f480313953aeeade8b0101d0fba5afde5ff4e33851ca628.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
