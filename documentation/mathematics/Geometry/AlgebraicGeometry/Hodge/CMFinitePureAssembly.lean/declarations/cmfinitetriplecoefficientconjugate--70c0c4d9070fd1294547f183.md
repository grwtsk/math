# CMFiniteTripleCoefficientConjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e198df5f5047e390214af18741a4fea0417562be2c20dfa9d349c7e697ce8f33",
  "kind": "def",
  "lexical_name": "CMFiniteTripleCoefficientConjugate",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "cmfinitetriplecoefficientconjugate--70c0c4d9070fd1294547f183",
  "source": {
    "blob": "7981e637742b1d82f7d692dd11a07df4c69fd84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 362,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70c0c4d9070fd1294547f183e35063538bbb72d564f21ecf88903304823b87c5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e198df5f5047e390214af18741a4fea0417562be2c20dfa9d349c7e697ce8f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CMFiniteTripleCoefficientConjugate
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier) :
    ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) →ₗ[ℚ]
      ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) :=
  σ.toLinearMap.lTensor (E.carrier ⊗[ℚ] E.carrier) ∘ₗ
    (CMFiniteDiagonalScalarConjugate E σ).rTensor E.carrier

/-- Diagonal action on all four coefficient factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Geometry/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7981e637742b1d82f7d692dd11a07df4c69fd84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cf8c75e9ac5ccd5526aa57051929f38bd6691b1d3d29ca07c703ce8ed36397a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean","GRWTSK/Geometry/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
