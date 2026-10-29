# MultilinearMap.domCoprod_alternization_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63306fe0-ad4b-c133-9146-189b706e4d98",
  "kind": "theorem",
  "lexical_name": "MultilinearMap.domCoprod_alternization_eq",
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
  "slug": "multilinearmap-domcoprod-alternization-eq",
  "source": {
    "blob": "2fce6ce35d7fb13fd09ab98df1c48322b29f46ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 241,
    "path": "GRWTSK/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92326bac363d6f71f3f36555cd0862135f7b289bc836c1069b0615daf82d7ca2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DomCoprodNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63306fe0-ad4b-c133-9146-189b706e4d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MultilinearMap.domCoprod_alternization_eq [DecidableEq ιa] [DecidableEq ιb]
    (a : Mᵢ [⋀^ιa]→ₗ[R'] N₁) (b : Mᵢ [⋀^ιb]→ₗ[R'] N₂) :
    MultilinearMap.alternatization
      (MultilinearMap.domCoprod a b : MultilinearMap R' (fun _ : ιa ⊕ ιb => Mᵢ) (N₁ ⊗ N₂)) =
      ((Fintype.card ιa).factorial * (Fintype.card ιb).factorial) • a.domCoprod b := by
  rw [MultilinearMap.domCoprod_alternization, coe_alternatization, coe_alternatization, mul_smul,
    ← AlternatingMap.domCoprod'_apply, ← AlternatingMap.domCoprod'_apply,
    ← TensorProduct.smul_tmul', TensorProduct.tmul_smul,
    LinearMap.map_smul_of_tower AlternatingMap.domCoprod',
    LinearMap.map_smul_of_tower AlternatingMap.domCoprod']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DomCoprodNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fce6ce35d7fb13fd09ab98df1c48322b29f46ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d25c3205b7eb66c82d9ad9844e65fbbce590572d06709bd8ccb8ad847efd4a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
