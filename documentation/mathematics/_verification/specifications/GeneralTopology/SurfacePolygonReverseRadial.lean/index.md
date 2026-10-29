# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07a01e4ed5d1235da0eb74ffc23270ff7833b47",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseRadial.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/index.md) · [Full source](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07a01e4ed5d1235da0eb74ffc23270ff7833b47`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseRadial.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonReverseRadial.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionContinuity`](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionContinuity.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Topology.Separation.Hausdorff` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/cornerdiscretetopology.md) | 17 | `declaration-track:4cd174cf6c4403665fc15e9ed04ff084862aea122d2af57f06c2b2504bed5f6d` |
| 2 | `def` | [productProjection](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/productprojection.md) | 20 | `declaration-track:db4f0eaf68ee31efbe5ea12f7ae7472995c25362125831388eaef1bffb0883f1` |
| 3 | `def` | [perimeterCylinderToFilling](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/perimetercylindertofilling.md) | 24 | `declaration-track:bd78c04d31bdd9f8040b34ccf048e7f341ddc5f1c019e4a32e7a9595f3636f74` |
| 4 | `theorem` | [perimeterCylinderToFilling_source](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/perimetercylindertofilling-source.md) | 28 | `result-track:d92d3cb0388abf3f2ebc533ad6f99677587dfbb19284de156e0dbe6c9d749771` |
| 5 | `theorem` | [perimeterCylinderToFilling_comp](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/perimetercylindertofilling-comp.md) | 34 | `result-track:fc911cc0fb162824aac23fd694b320909a5ea4dbf82ecd8fd1d28645d3026bc2` |
| 6 | `theorem` | [productProjection_continuous](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/productprojection-continuous.md) | 40 | `result-track:b4bab7a2a05aeadebaf4818fd225f750d10286cc83a794a502c293a3badcfb61` |
| 7 | `theorem` | [productProjection_surjective](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/productprojection-surjective.md) | 44 | `result-track:d2ab656d440a99c7a2e45392a7473132922481ccffe0262419f8fc4a044cf628` |
| 8 | `theorem` | [perimeterT2](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/perimetert2.md) | 51 | `result-track:0fa010389bcd54c2bbee4eb397a3dde6a25c3979ed1d59400093ffe8c42ab535` |
| 9 | `theorem` | [radialSourceCompact](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/radialsourcecompact.md) | 54 | `result-track:25e032d22634c17a1766e414bcde3486215e7b71488697d8ea08575d61fecaf8` |
| 10 | `theorem` | [productProjection_isQuotientMap](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/productprojection-isquotientmap.md) | 58 | `result-track:ff9e7066f3d51be1a82ccddc145cd44761e6ce2cd719de19dfaff3eed4cdbc03` |
| 11 | `theorem` | [perimeterCylinderToFilling_continuous](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/perimetercylindertofilling-continuous.md) | 66 | `result-track:367932efa0cc1362a087494210f7b3a310386e19ba1e64b305d573e27299d2a2` |
| 12 | `theorem` | [perimeterCylinderToFilling_zero](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/perimetercylindertofilling-zero.md) | 72 | `result-track:d6f762ad8a8e7875444b10746b90101bbfbc38b69ffe718c1eb8cab5f5a185d4` |
| 13 | `theorem` | [perimeterCylinderToFilling_one](../../../../GeneralTopology/SurfacePolygonReverseRadial.lean/declarations/perimetercylindertofilling-one.md) | 77 | `result-track:17e86f6dfbab770998577c1e1909c0906cd663f471805b896862508098d8b3a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edc69814044e1356c7703b4a9e27fddbcb3326163821cbde3ea264455caeb221 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseRadial.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonReverseRadial.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
