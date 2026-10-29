# polyEquivTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fd4df4fc3b7d743eac63110d436b776b7c378ebbde6c2b4ff3a329b8b990301",
  "kind": "def",
  "lexical_name": "polyEquivTensor",
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
  "slug": "polyequivtensor--5a6c9d5daf605fdfe32a1588",
  "source": {
    "blob": "939fa4841b4c09c39bf4d5ddba40f8e9ee5c8efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 176,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a6c9d5daf605fdfe32a15888e4cead86d4d84102d0f13ff0d61eb2e5211dd32",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fd4df4fc3b7d743eac63110d436b776b7c378ebbde6c2b4ff3a329b8b990301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def polyEquivTensor : A[X] ≃ₐ[R] A ⊗[R] R[X] :=
  AlgEquiv.symm { PolyEquivTensor.toFunAlgHom R A, PolyEquivTensor.equiv R A with }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939fa4841b4c09c39bf4d5ddba40f8e9ee5c8efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb3d0c65803f6d9f625dbeb25f09c1c2abec8035175ddaf0201b93bc4e7d0657 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
