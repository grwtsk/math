# Verification target: Positive Geometry Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "327237747c052d139a36c11ce47bb5b24a4b8c02",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant63569ccdde8811d8a916bf288085867c8df50d282928d1205ac28006ecf8d087.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `327237747c052d139a36c11ce47bb5b24a4b8c02`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant63569ccdde8811d8a916bf288085867c8df50d282928d1205ac28006ecf8d087.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveGeometry/Variant63569ccdde8811d8a916bf288085867c8df50d282928d1205ac28006ecf8d087.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveForm](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/positiveform.md) | 36 | `declaration-track:1c738ecec1fe491a94bb49ea35bbd617988d02def5fb053481bf3879d500537b` |
| 2 | `def` | [Visible](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/visible.md) | 53 | `declaration-track:4d0dd90766c5445226c8116ce033e86c613bde4076398abe1f47bd0b440e926a` |
| 3 | `def` | [IsNull](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/isnull.md) | 57 | `declaration-track:bfeea518f681a165fa7568814fd3396f02f153fc8787febbc9c5f5c48525fb9a` |
| 4 | `def` | [pullback](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/pullback.md) | 61 | `declaration-track:392261f96290b6b615669a49713acb2fc05eb65d9355d35e311f6406789f40da` |
| 5 | `theorem` | [pullback_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/pullback-nonnegative.md) | 75 | `result-track:f9c81ce7ec80ef629c0ad451f08a0356a0219e7e17b6758c99511d57ec50fe8c` |
| 6 | `theorem` | [pullback_visible_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/pullback-visible-iff.md) | 80 | `result-track:ecb80d9d74c33254852b9617baf0da187cd3e62e2b5ffe4b721201840ca63aab` |
| 7 | `theorem` | [pullback_isNull_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/pullback-isnull-iff.md) | 85 | `result-track:cce6d1ff135170b5bcb5a62cedf4cba73b68e926216520c1235f913e28348698` |
| 8 | `def` | [add](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/add.md) | 90 | `declaration-track:fc8f8ecfe64d0399e8447e43028f9a3a34a387d7f9b406cade5241edc9239664` |
| 9 | `theorem` | [add_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/add-nonnegative.md) | 109 | `result-track:dc9affd3e5f16202629af4367ccc1d9a5e379c01d676c766edae91bbb50fa3b3` |
| 10 | `structure` | [ProvenanceResidualization](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/provenanceresidualization.md) | 120 | `declaration-track:86b2c248d3c3f255404c667a8dd6cf0ff9ffbbaeceff059bca02d695ef7b10bc` |
| 11 | `def` | [residualForm](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/residualform.md) | 135 | `declaration-track:9eaa76548266e194a8738218255b8d18dd6092a2fac3ab47efa977db886daebe` |
| 12 | `theorem` | [residual_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/residual-nonnegative.md) | 140 | `result-track:e46c8ebc8c1f564c23761a2c8f8ebbe1be878c9277088408f0ab8daef4c18e7d` |
| 13 | `theorem` | [residual_visible_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/residual-visible-iff.md) | 147 | `result-track:c2310a1b64a83d595a7484bcb64a42391201c0b6c72692fdbd776b478015bb48` |
| 14 | `theorem` | [residual_isNull_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryNamespacedEdition1.lean/declarations/residual-isnull-iff.md) | 154 | `result-track:2df1dadc545427f10e0ece4a864b60a0d66cadf98578cffd7f731d0d2d12b6f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89c603c61283082df81a26ffedcf37e13ae9a8f9a10f16b63420d0720415184b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant63569ccdde8811d8a916bf288085867c8df50d282928d1205ac28006ecf8d087.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveGeometry/Variant63569ccdde8811d8a916bf288085867c8df50d282928d1205ac28006ecf8d087.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
