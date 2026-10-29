# Verification target: Frobenius Surface Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29429f4e41f0deb8af893001557c2a559cb506ed",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant142df2434d6f4d9c850f8218752dae3fd59093e87504860bf3d22c0c93b5cc3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/index.md) · [Full source](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29429f4e41f0deb8af893001557c2a559cb506ed`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant142df2434d6f4d9c850f8218752dae3fd59093e87504860bf3d22c0c93b5cc3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant142df2434d6f4d9c850f8218752dae3fd59093e87504860bf3d22c0c93b5cc3b.lean.json)

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
| 1 | `structure` | [FrobeniusSurface](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/declarations/frobeniussurface.md) | 13 | `declaration-track:ac4b32a98df552a296b5c4477fb3c6b853774c85f21dcf78f9fd0cd5a1309d47` |
| 2 | `def` | [currentGeometryBoundary](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/declarations/currentgeometryboundary.md) | 19 | `declaration-track:fa523ed15b29940eeba51c951a1041523913b9c6f3595534b05c157779684197` |
| 3 | `theorem` | [absolute_frobenius_not_implemented](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/declarations/absolute-frobenius-not-implemented.md) | 21 | `result-track:e8baded71556bef91f5aa7b76d443b9c44370da50399cca0dba236e1adbe8262` |
| 4 | `theorem` | [geometric_frobenius_not_glued](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/declarations/geometric-frobenius-not-glued.md) | 25 | `result-track:38b2743979ae8fab5cf586eacc692fc53c8337b06db71f41b40878acbcc51b8f` |
| 5 | `theorem` | [mathlib_scheme_interface_not_active](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/declarations/mathlib-scheme-interface-not-active.md) | 29 | `result-track:7bdc22ad772fafc20dbf02487705971eeddc0f8aa314246551b11b309d9088df` |
| 6 | `theorem` | [drinfeld_shtuka_residue_isolated](../../../../Geometry/FrobeniusSurfaceNamespaced.lean/declarations/drinfeld-shtuka-residue-isolated.md) | 33 | `result-track:489bb842f462de7bdbc9782dbbc916ec9344f896f245bece79efa3c7891baf93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=746bffc41cdaec06bacb8a8fab373436d1e0d87d9dff578e7de11933d30c6341 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant142df2434d6f4d9c850f8218752dae3fd59093e87504860bf3d22c0c93b5cc3b.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant142df2434d6f4d9c850f8218752dae3fd59093e87504860bf3d22c0c93b5cc3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
