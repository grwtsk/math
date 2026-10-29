# restrictScalars_localized'_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0200698-b229-09f1-005b-6a821cd52442",
  "kind": "lemma",
  "lexical_name": "restrictScalars_localized'_smul",
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
  "slug": "restrictscalars-localized-smul",
  "source": {
    "blob": "cc06937d994efab6beec8afc09e8ec2ea7d0fe7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af6d59640858c4bff3f29f20444c4d09985913277f3af4cca0f0bd6a40b5439a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/LocalizedModuleSubmoduleNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0200698-b229-09f1-005b-6a821cd52442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictScalars_localized'_smul (I : Submodule R R) (N' : Submodule S N) :
    (I.localized' S p (Algebra.linearMap R S) • N').restrictScalars R =
      I • N'.restrictScalars R := by
  refine le_antisymm (fun x hx ↦ ?_) (Submodule.smul_le.mpr fun r hr n hn ↦ ?_)
  · refine smul_induction_on ((Submodule.restrictScalars_mem _ _ _).mp hx) ?_ fun _ _ ↦ add_mem
    rintro _ ⟨r, hr, s, rfl⟩ n hn
    rw [← IsLocalization.mk'_eq_mk', IsLocalization.mk'_eq_mul_mk'_one, mul_smul, algebraMap_smul]
    exact smul_mem_smul hr ((Submodule.restrictScalars_mem _ _ _).mpr <| smul_mem _ _ hn)
  · rw [← algebraMap_smul S, Submodule.restrictScalars_mem]
    exact Submodule.smul_mem_smul ⟨_, hr, 1, by simp⟩ hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/LocalizedModuleSubmoduleNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc06937d994efab6beec8afc09e8ec2ea7d0fe7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e812c63c9628793fe9b78f38cbb31d197d88738657121657a0577e2290c0d041 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
