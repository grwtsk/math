# isSolvable_tensorProduct_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79071755-1878-bdf3-c799-ead7dcdff9de",
  "kind": "theorem",
  "lexical_name": "isSolvable_tensorProduct_iff",
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
  "slug": "issolvable-tensorproduct-iff",
  "source": {
    "blob": "14467736b606bc536f6acd49be29d21eb7fafe25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 309,
    "path": "GRWTSK/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90595f984d9bec1b01a9f381894c40af5c4dbed417a321f5b73f4ab0bffd8d79",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79071755-1878-bdf3-c799-ead7dcdff9de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSolvable_tensorProduct_iff : IsSolvable (A ⊗[R] L) ↔ IsSolvable L := by
  refine ⟨?_, fun _ ↦ inferInstance⟩
  rw [isSolvable_iff A, isSolvable_iff R]
  rintro ⟨k, h⟩
  use k
  rw [eq_bot_iff] at h ⊢
  intro x hx
  rw [derivedSeries_baseChange] at h
  specialize h <| Submodule.tmul_mem_baseChange_of_mem 1 hx
  rw [LieSubmodule.mem_bot] at h ⊢
  rwa [Module.FaithfullyFlat.one_tmul_eq_zero_iff] at h

end LieAlgebra

variable {R L}

namespace Function

open LieAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14467736b606bc536f6acd49be29d21eb7fafe25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddc272d0858b2785eaa49da706228ba6b503e99b28ea09d1c3cc2570e17dbcf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
