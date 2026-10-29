# Verification target: Generators Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8e3f40f520d4979dd696f8fde6b00ecb6f15465",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8e3f40f520d4979dd696f8fde6b00ecb6f15465`.

Source path: `GRWTSK/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean.json)

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
| 1 | `structure` | [Group.Generators](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/group-generators.md) | 55 | `declaration-track:6691405dd6e102e8fa61d23633175d95a6256e16290bb0815ed2aa0329a95deb` |
| 2 | `abbrev` | [lift](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/lift.md) | 66 | `declaration-track:d972e30b3e95bdc6dde2c852615b769b24a68bca063388830c6e378156b784ec` |
| 3 | `lemma` | [lift_surjective](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/lift-surjective.md) | 68 | `result-track:ff88cf1b90a489e600fef5d86c389f1d2b59e308844bd2f57e4c8d177ce7e8b0` |
| 4 | `lemma` | [range_lift_eq_top](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/range-lift-eq-top.md) | 75 | `result-track:f61f81a75afdf642045686e8b697f2e162c4c8a55a422877708f8e47cb4fe14d` |
| 5 | `theorem` | [hom_ext](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/hom-ext.md) | 78 | `result-track:055c34613ef1d9c48cb6fa81fe9816a99ca8286ba365e632bd769b15162b3c3a` |
| 6 | `def` | [ofSet](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/ofset.md) | 82 | `declaration-track:8f38f1c78197b459bc669f51c457b0a1b939304164fb5d623780d243a213cde7` |
| 7 | `lemma` | [ofSet_val](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/ofset-val.md) | 87 | `result-track:9e1747242595a375e9f7b472636ea2b5598319f64735736c083aecec9188b24b` |
| 8 | `def` | [ofFreeGroupHom](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/offreegrouphom.md) | 92 | `declaration-track:504e5823f58d167a93b042d0e41222507ac8466bcb63bd8ac8a243a7d46f4743` |
| 9 | `lemma` | [ofFreeGroupHom_val](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/offreegrouphom-val.md) | 100 | `result-track:f66056ffe1039d351727a4ab3477da142c5928116a22364030e5cc7575c81f1f` |
| 10 | `lemma` | [ofFreeGroupHom_lift](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/offreegrouphom-lift.md) | 106 | `result-track:b2c1ebb7092f65dcf82490e3d6f600ce03bdc2a37c2db323ed7bf38290cda58f` |
| 11 | `def` | [map](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/map.md) | 111 | `declaration-track:8f9581a5b4db6a78b539c18b3b07d11f52491463aa1e3c1e2a92a23043e45192` |
| 12 | `lemma` | [map_val](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/map-val.md) | 118 | `result-track:08fba69c06bdd942c51db171ea26751e3c8ab611807ebf4231bdecbe9cc25f08` |
| 13 | `def` | [reindex](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/reindex.md) | 123 | `declaration-track:be9c33d0e77d06003d515c1026f379fbcf4958feeebeed99892c74e178574d76` |
| 14 | `lemma` | [reindex_val](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/reindex-val.md) | 129 | `result-track:1d4a42f1a0a1bc7d5bae4f7548de882bf66b070392ac074b038a13f3aaf880e4` |
| 15 | `theorem` | [fg](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/fg.md) | 134 | `result-track:aee3db1c62d039215239e25daba23ebd402a8233ba09e485f85afb85d1a0212d` |
| 16 | `theorem` | [Group.fg_iff_nonempty_finite_generators](../../../../GroupTheoryAndGeneralizations/GeneratorsNamespacedPublic.lean/declarations/group-fg-iff-nonempty-finite-generators.md) | 140 | `result-track:90ed04a295808f6cd0c9633f72ec59421fab399df0ab418c049ccfa5c50d155d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f0a08af00bba0516700b6524674a583f6e0bfd4c3a79b8a2fdfafba0b5c7cd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
