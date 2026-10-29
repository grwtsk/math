# EdgeRelaxation.boundaryAndPolish_acrossToyStripBlend_not_crisp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e2f0a04-9c2a-242b-a106-08dbfb7959b2",
  "kind": "theorem",
  "lexical_name": "EdgeRelaxation.boundaryAndPolish_acrossToyStripBlend_not_crisp",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "edgerelaxation-boundaryandpolish-acrosstoystripblend-not-crisp",
  "source": {
    "blob": "19656661a6f36a29215d14fe37a762de5f70d756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 427,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Varianta6d1579b71fa29dfaf18160b4e14017dc1d2ad2fb6442f34e0a32bbceebaa4b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f86d75b9f3be4135c81fb90633404d0aeb47b7392ebe890a02d495729840fd62",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e2f0a04-9c2a-242b-a106-08dbfb7959b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EdgeRelaxation.boundaryAndPolish_acrossToyStripBlend_not_crisp :
    EdgeRelaxation.evalStrictPolishAcrossToyStripBlend
        EdgeRelaxation.boundaryAndPolish =
      some
        (EdgeRelaxation.DensityExpr.conj
          (EdgeRelaxation.DensityExpr.density
            EdgeRelaxation.EpsilonDensity.eps)
          (EdgeRelaxation.DensityExpr.density
            EdgeRelaxation.EpsilonDensity.eps)) := by
  decide

/-- Combined model theorem for the toy strip blend embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Varianta6d1579b71fa29dfaf18160b4e14017dc1d2ad2fb6442f34e0a32bbceebaa4b7.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19656661a6f36a29215d14fe37a762de5f70d756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8c08fe004d78060921d06f8e1ea41d91fc8520c0d4ca9132ab56c8ac5c10ca8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Varianta6d1579b71fa29dfaf18160b4e14017dc1d2ad2fb6442f34e0a32bbceebaa4b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
