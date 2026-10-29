# Verification target: Order Of Vanishing Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae200a452b33a10cce4a7d697c0e194a821fe49",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae200a452b33a10cce4a7d697c0e194a821fe49`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean.json)

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
| 1 | `def` | [ordHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ordhom.md) | 43 | `declaration-track:1608328544a841ed9ced7c16855d324e70c9d74fa5e6a0995b5930568db5ffba` |
| 2 | `lemma` | [ordHom_of_isUnit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ordhom-of-isunit.md) | 47 | `result-track:4f911d97caf315ba97b4c9af3c1f96f42a636a29f72869acb2657d7067e819aa` |
| 3 | `def` | [ord](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord.md) | 60 | `declaration-track:f73eccebb907f38c4631522d504069831851f44cea89bf481add819810ca32dc` |
| 4 | `lemma` | [ord_eq_ordHom_of_coheight_eq_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-eq-ordhom-of-coheight-eq-one.md) | 65 | `result-track:c357ba7078d53714ffe4186e45acc6631699c38baadc5b2176b63e1195820f46` |
| 5 | `lemma` | [ord_eq_zero_of_coheight_neq_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-eq-zero-of-coheight-neq-one.md) | 69 | `result-track:da7fae6b8f73129304612c76d5139a97b3d7bea47fd106d8f373462d910d99c3` |
| 6 | `lemma` | [ord_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-zero.md) | 73 | `result-track:275e5281ad1a266a2987991fccd68e6f5481149c6809f2ebbd0170fe6088f2a5` |
| 7 | `lemma` | [ord_eq_unzero_ordHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-eq-unzero-ordhom.md) | 79 | `result-track:be26c814910a2d8cae44978e26bae8410e411c7cbcd73354cd702c798e60f7e2` |
| 8 | `lemma` | [ord_eq_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-eq-iff.md) | 83 | `result-track:9006cb75e0a80cd31fb32222c56f92da5d0fec970d717a1bcb4f52624fd003ad` |
| 9 | `lemma` | [ord_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-mul.md) | 89 | `result-track:ee7dc3bc56642cb58deca612906f970d2e2d8b5a31c93a59af4b7789933ae64a` |
| 10 | `lemma` | [ord_of_isUnit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-of-isunit.md) | 96 | `result-track:6e219e155b24d90d69cbb29c8038fc1573fe6c71be5da606db59901992bd6fa9` |
| 11 | `lemma` | [ord_le_ord_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-le-ord-iff.md) | 103 | `result-track:4c1a91b61a4f1e03e9351b762702a59e1c67d56caae2f41f1ea1156d77ae171e` |
| 12 | `lemma` | [le_ord_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/le-ord-iff.md) | 108 | `result-track:c4ff4ec8d53b326ca456abc833306aec00291901f623144b818b3f0dd4774137` |
| 13 | `lemma` | [ord_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-add.md) | 115 | `result-track:a344df600b05505bf7c738792a9a1f020acb5339d3add2a594ce59a3c3bff333` |
| 14 | `lemma` | [ord_le_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OrderOfVanishingNamespacedPublic.lean/declarations/ord-le-smul.md) | 127 | `result-track:0940dd9b098515a03e96a04213a6ae5e463640109e37bb19d65543f49b52d4ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56c15c5503c718afc495e58c8d5341ff1ee09b1de49d82f2a77378d23141643b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
