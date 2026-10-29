# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Similarity.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddb2db17d1e15082e9d4a2532332d16e3b332b4d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/index.md) · [Full source](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddb2db17d1e15082e9d4a2532332d16e3b332b4d`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [similar_of_angle_angle](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/declarations/similar-of-angle-angle--a8959375a79109d635404490.md) | 36 | `result-track:a8959375a79109d6354044906ba0eb7d32bad2d23e7dc6eecce5a7c885a5e9df` |
| 2 | `theorem` | [similar_of_side_angle_side](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/declarations/similar-of-side-angle-side--6603a09f22c303b98344014a.md) | 77 | `result-track:6603a09f22c303b98344014a7de05b7bc85adb611a344672e89d5e5a2be99faf` |
| 3 | `theorem` | [_root_.Similar.angle_eq](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/declarations/root-similar-angle-eq--908e3d2fbec58171fc594f87.md) | 113 | `result-track:908e3d2fbec58171fc594f8777d5c64f8a0f2834c29a4103c3174d91abe8abb8` |
| 4 | `theorem` | [_root_.Similar.angle_eq_all](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/declarations/root-similar-angle-eq-all--a24bcc94737a4c710caae572.md) | 140 | `result-track:a24bcc94737a4c710caae572204632236f13279f50082e61e3aad5cf885faf28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d5e9b7c98b399f1b58a2e19ab9f63a9bb9196e1a117221924765e8c0e9255d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
