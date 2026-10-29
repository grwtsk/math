# Verification target: Presentation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d184eef742764d8b0a72903bd4b18a496f1ffa94",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d184eef742764d8b0a72903bd4b18a496f1ffa94`.

Source path: `GRWTSK/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Group.Presentation](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/group-presentation.md) | 58 | `declaration-track:87ec976a416f19ea8342fb4bcab5fd171eac440994e2c91735962a8dcb517817` |
| 2 | `def` | [ofFreeGroupHom](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/offreegrouphom.md) | 71 | `declaration-track:46dfa9da983b744fb12e8cb1d6c3e4df3ae58128f99e31cc5a9eb37625848fe7` |
| 3 | `lemma` | [ofFreeGroupHom_toGenerators](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/offreegrouphom-togenerators.md) | 78 | `result-track:0e9828ddc9e72120476154b6519b20b099f27e0e2c91f9c871b8dd7991151360` |
| 4 | `lemma` | [ker_lift](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/ker-lift.md) | 83 | `result-track:7b20061a627e516a676fd0ad35878ca80f0c6bc6aba866c606def8905e70a2fa` |
| 5 | `theorem` | [lift_rel_eq_one](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/lift-rel-eq-one.md) | 87 | `result-track:c7aa51a2b0ecefe3590efb47687f80e6eabfe84a9cf664093005d6b2f3dc5d0c` |
| 6 | `lemma` | [isFinitelyNormallyGenerated_ker_lift](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/isfinitelynormallygenerated-ker-lift.md) | 91 | `result-track:36decb641b96d35ca45c5c0d467faee4508c2c48b416dee3b0f5eafa3518e0b8` |
| 7 | `def` | [presentedGroupEquiv](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/presentedgroupequiv.md) | 95 | `declaration-track:0c7022a3a7c7509a5ef20054eb838ffdcd0bd53323b2a33350e31578396df6e0` |
| 8 | `theorem` | [isFinitelyPresented](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/isfinitelypresented.md) | 100 | `result-track:ad4f240dc43e8590685b72a3a3e6e1c13f916b41a6c99c3523815ec9198ffefe` |
| 9 | `theorem` | [isFinitelyPresented_iff_exists_finite_presentation](../../../../GroupTheoryAndGeneralizations/PresentationNamespacedPublic.lean/declarations/isfinitelypresented-iff-exists-finite-presentation.md) | 105 | `result-track:44513bcf1455324f50589603432f02987334acfcf6307fa8a1338fbba17ace47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c243f86cf6bb4d95f91f521d5914eaeaef67f2f177a16826dc61354cdea1a8ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
