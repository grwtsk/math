# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Basic.Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9716b9e6301fcbcce60af2cda21e3bd87be2889f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/index.md) · [Full source](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9716b9e6301fcbcce60af2cda21e3bd87be2889f`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triangle](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/triangle--5148e15a6a95fc81dff21fc0.md) | 48 | `declaration-track:5148e15a6a95fc81dff21fc0e3b7f7fe279ca969e0fb96857306fa946e5e8604` |
| 2 | `def` | [Triangle.mk](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/triangle-mk--2745300787fc6896f3c8c366.md) | 69 | `declaration-track:2745300787fc6896f3c8c3664f6f7ce314405d442f4e2f15c5a8ebcba2c41e5b` |
| 3 | `instance` | [(anonymous)](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/instance--0beba9cace2ea396c42f9977.md) | 85 | `declaration-track:0beba9cace2ea396c42f99772eaddb339ced6ab8fa75882dc1cbae577236cae0` |
| 4 | `def` | [contractibleTriangle](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/contractibletriangle--8e29cf4dbb3e3d60b81a4ed3.md) | 91 | `declaration-track:8e29cf4dbb3e3d60b81a4ed34e31047f56f59cafa152d16a63a99d44376f6bd9` |
| 5 | `structure` | [TriangleMorphism](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/trianglemorphism--145c3c9dc3fa6bcd099a5253.md) | 113 | `declaration-track:145c3c9dc3fa6bcd099a5253ef996375557fa092289fba384c72dcb34e1f4ce0` |
| 6 | `def` | [triangleMorphismId](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/trianglemorphismid--99829dc484131eb4c504fa66.md) | 134 | `declaration-track:99829dc484131eb4c504fa6658274a93cbd69afd8a2eb2df7aff15831ddcb6ea` |
| 7 | `instance` | [(anonymous)](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/instance--031ddff46e335d61fb94e0f9.md) | 141 | `declaration-track:031ddff46e335d61fb94e0f9ed7edd4b7005dbeef68364da38845b29bcabd7ad` |
| 8 | `def` | [TriangleMorphism.comp](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/trianglemorphism-comp--c21a6da6c308ca6dbe7ea179.md) | 149 | `declaration-track:c21a6da6c308ca6dbe7ea179c42f2e360414c1297896c169b9e5e70def794bca` |
| 9 | `instance` | [triangleCategory](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/trianglecategory--d901b27ed559f64c7b1dfa4a.md) | 159 | `declaration-track:d901b27ed559f64c7b1dfa4a5c1a4559f5666aa59249e28f2b283d6dad63ba69` |
| 10 | `lemma` | [Triangle.hom_ext](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/triangle-hom-ext--fd2f6157e1ee651499af55b3.md) | 167 | `result-track:fd2f6157e1ee651499af55b3fd2e19285c55d07b1a6b46ae41ca074fe903ee33` |
| 11 | `def` | [Triangle.homMk](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/triangle-hommk--6eaed685d2204927e912ca9d.md) | 172 | `declaration-track:6eaed685d2204927e912ca9d4045555279fb9315a44aaf749beda8748e414141` |
| 12 | `def` | [Triangle.isoMk](../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/declarations/triangle-isomk--227e8eff8ee7cb254fbbc2e8.md) | 187 | `declaration-track:227e8eff8ee7cb254fbbc2e86a8cd54e97b42ed21dc0bd9e35f5ee672ab654b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bb8ad32d19781e9284d179751b7fbe69d200a01caa60eb162d1edde38a86676 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
