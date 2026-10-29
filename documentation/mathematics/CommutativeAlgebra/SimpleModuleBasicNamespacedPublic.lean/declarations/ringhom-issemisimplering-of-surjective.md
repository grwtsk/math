# RingHom.isSemisimpleRing_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9d8601b-91f7-5fe5-cad2-4da2914f44ea",
  "kind": "theorem",
  "lexical_name": "RingHom.isSemisimpleRing_of_surjective",
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
  "slug": "ringhom-issemisimplering-of-surjective",
  "source": {
    "blob": "a66ac3b32ed3beddbf54fc818e5d1f64f8598f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 467,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:039ef0c253fbc4d6708986be6a1d52bc6fd766a53b788c08711e8a67ff987368",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/SimpleModuleBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d8601b-91f7-5fe5-cad2-4da2914f44ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.isSemisimpleRing_of_surjective (f : R →+* S) (hf : Function.Surjective f)
    [IsSemisimpleRing R] : IsSemisimpleRing S := by
  let : Module R S := Module.compHom _ f
  have : RingHomSurjective f := ⟨hf⟩
  let e : S →ₛₗ[f] S := { AddMonoidHom.id S with map_smul' := fun _ _ ↦ rfl }
  rw [IsSemisimpleRing, ← e.isSemisimpleModule_iff_of_bijective Function.bijective_id]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/SimpleModuleBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a66ac3b32ed3beddbf54fc818e5d1f64f8598f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac5e6f72560ad2cd4bd4b9758eaf8d0f97a69b8a6eead6a6bd380cced47b652e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
