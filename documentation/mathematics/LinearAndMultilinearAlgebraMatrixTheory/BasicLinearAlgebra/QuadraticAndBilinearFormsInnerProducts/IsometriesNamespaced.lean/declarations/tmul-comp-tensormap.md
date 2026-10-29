# tmul_comp_tensorMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18712d16-8b4f-ee56-f4e3-5d5c7fa03d89",
  "kind": "theorem",
  "lexical_name": "tmul_comp_tensorMap",
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
  "slug": "tmul-comp-tensormap",
  "source": {
    "blob": "56e303222edcd1f7dabf0e779c8fb878b6c1a5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3770fd0cef897b537881370866b38d56fa7681f738ce181583c1998f32b13130",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/IsometriesNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18712d16-8b4f-ee56-f4e3-5d5c7fa03d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_comp_tensorMap
    {Q₁ : QuadraticForm R M₁} {Q₂ : QuadraticForm R M₂}
    {Q₃ : QuadraticForm R M₃} {Q₄ : QuadraticForm R M₄}
    (f : Q₁ →qᵢ Q₂) (g : Q₃ →qᵢ Q₄) :
    (Q₂.tmul Q₄).comp (TensorProduct.map f.toLinearMap g.toLinearMap) = Q₁.tmul Q₃ := by
  have h₁ : Q₁ = Q₂.comp f.toLinearMap := QuadraticMap.ext fun x => (f.map_app x).symm
  have h₃ : Q₃ = Q₄.comp g.toLinearMap := QuadraticMap.ext fun x => (g.map_app x).symm
  refine (QuadraticMap.associated_rightInverse R).injective ?_
  ext m₁ m₃ m₁' m₃'
  simp [-associated_apply, h₁, h₃, associated_tmul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/IsometriesNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e303222edcd1f7dabf0e779c8fb878b6c1a5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76c57421a1358774936776dfa66a299aa51e16ac4ab8035161672952e2fd18c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
