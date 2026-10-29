# mkHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0488ebb8cff87a545a9a13e088b0c04c039286899f2adfdc56f3ed311a29e831",
  "kind": "def",
  "lexical_name": "mkHom",
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
  "slug": "mkhom-source-edition-2",
  "source": {
    "blob": "a494d4bef9dae920d6bac00f9b790c3d6168efcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 186,
    "path": "GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed9a04511e5fd2d45a393562cdd21c27ae247b9ef80b9d735757a6110e3a226c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/DifferentialGeometry/TensorialityPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0488ebb8cff87a545a9a13e088b0c04c039286899f2adfdc56f3ed311a29e831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mkHom
    -- `Φ` and `x` explicit to make it easier to generate the side condition at point of use
    (Φ : (Π x : M, V x) → A) (x : M) (hΦ : TensorialAt I F Φ x) :
    V x →L[𝕜] A :=
  have : T2Space (V x) := FiberBundle.t2Space F V x
  have : FiniteDimensional 𝕜 (V x) := VectorBundle.finiteDimensional 𝕜 F V x
  have : IsTopologicalAddGroup (V x) :=
    (VectorBundle.continuousLinearEquivAt 𝕜 F V x).toContinuousAddEquiv.isTopologicalAddGroup
  have (x : M) : ContinuousSMul 𝕜 (V x) :=
    (VectorBundle.continuousLinearEquivAt 𝕜 F V x).continuousSMul
  LinearMap.toContinuousLinearMap {
    toFun v := Φ (extend F v)
    map_add' v₁ v₂ := by
      rw [← hΦ.add (mdifferentiableAt_extend ..) (mdifferentiableAt_extend ..)]
      apply hΦ.pointwise (mdifferentiableAt_extend ..) <|
        mdifferentiableAt_add_section (mdifferentiableAt_extend ..) (mdifferentiableAt_extend ..)
      simp
    map_smul' c v := by
      dsimp
      rw [← hΦ.smul (f := fun _ ↦ c) (mdifferentiable_const ..) (mdifferentiableAt_extend ..)]
      apply hΦ.pointwise (mdifferentiableAt_extend ..) <|
        mdifferentiableAt_const.smul_section (mdifferentiableAt_extend ..)
      simp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/DifferentialGeometry/TensorialityPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a494d4bef9dae920d6bac00f9b790c3d6168efcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85865ed2ad9dc016f2c4e53a689e3c0dc96c39cd2858b3c5b63d2602c04a75c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
