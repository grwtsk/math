# AtomicSwitchTensorData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9be0fbe45f3ac06b1a7dd17bf5c122ecc7d4168c2d3c3b5dcceca7fe6a2b22b0",
  "kind": "structure",
  "lexical_name": "AtomicSwitchTensorData",
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
  "slug": "atomicswitchtensordata",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2410,
    "line": 2382,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d8e59a03c29a1b6ef87ccd36b42dbc8e9fc3a382d46e1ac009660ed84cabb1d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9be0fbe45f3ac06b1a7dd17bf5c122ecc7d4168c2d3c3b5dcceca7fe6a2b22b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2382–2410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AtomicSwitchTensorData
    {conj : G → G}
    {hconj : Function.Involutive conj}
    {x target : I → G → ℤ}
    {hxsign : ∀ r h, IsSign (x r h)}
    {hxodd : IsOddMatrix conj x}
    {g : G} {hg : g ≠ conj g}
    {i : PosNegMismatch (fun r => x r g) (fun r => target r g)}
    {j : NegPosMismatch (fun r => x r g) (fun r => target r g)}
    (P : AtomicSwitchFourFactorProfile
      conj hconj x target hxsign hxodd g hg i j) where
  V : Type*
  [V_addCommGroup : AddCommGroup V]
  [V_moduleQ : Module ℚ V]
  hodgeSubspace :
    Submodule ℂ (ℂ ⊗[ℚ] V)
  tensor :
    GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
      ⊗[ℚ] V
  all_scalar_conjugates_mem :
    ∀ σ :
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ≃ₐ[ℚ]
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers,
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.coefficientInclusion
        (GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.scalarConjugate
          σ tensor) ∈ hodgeSubspace

/-- Linewise monomial transport yields the orbit-span Hodge package locally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L2382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55d313898db66c68306dc83555c55f638f8fdd4194374f9b731b92d12c63d892 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean","GRWTSK/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
