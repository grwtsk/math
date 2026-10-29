# coindVLEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a68761b5a8d31e37d6e2c2f85c19601d9061868fc5f35f939c25184f6e419c8b",
  "kind": "def",
  "lexical_name": "coindVLEquiv",
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
  "slug": "coindvlequiv",
  "source": {
    "blob": "8f141cb0a6cd560a3d34cd65a877ce1dc631c7a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 170,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32749e71de08425fc0b665278131834b5aeaad64d9d98dfeb756205099c40469",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/Coinduced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a68761b5a8d31e37d6e2c2f85c19601d9061868fc5f35f939c25184f6e419c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coindVLEquiv :
    A.ρ.coindV φ ≃ₗ[k] ((Action.res _ φ).obj (leftRegular k H) ⟶ A) where
  toFun f := {
    hom := ModuleCat.ofHom <| linearCombination _ f.1
    comm g := ModuleCat.hom_ext <| lhom_ext' fun _ => LinearMap.ext_ring <| by
      simp [ModuleCat.endRingEquiv, f.2 g] }
  map_add' _ _ := coind'_ext φ fun _ => by simp
  map_smul' _ _ := coind'_ext φ fun _ => by simp
  invFun f := {
    val h := f.hom (single h 1)
    property g h := by have := (hom_comm_apply f g (single h 1)).symm; simp_all [Rep.res_obj_ρ φ] }
  left_inv x := by simp
  right_inv x := coind'_ext φ fun _ => by simp

/-- `coind φ A` and `coind' φ A` are isomorphic representations, with the underlying
`k`-linear equivalence given by `coindVLEquiv`. -/
@[simps! hom_hom_hom inv_hom_hom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/Coinduced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f141cb0a6cd560a3d34cd65a877ce1dc631c7a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e25baf08d58d2f98218434057759375420e1da41238e12e0a151b510b165309 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
