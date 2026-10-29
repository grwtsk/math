# nonzero_cross_projection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4194548f-81a5-8a56-136c-d026019268cf",
  "kind": "theorem",
  "lexical_name": "nonzero_cross_projection",
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
  "slug": "nonzero-cross-projection",
  "source": {
    "blob": "2317c8ea84cc6ba710467f7f8ed9f19737bf095e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d804595acbbfb4d7643eb6ae5746f64936ac2a21f5036ac3f8590579336e69",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinalFeshbachFixtureAuditNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4194548f-81a5-8a56-136c-d026019268cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzero_cross_projection :
    project two two (fun _ => 3, fun _ => 7) = (fun _ => 3, fun _ => -3) := by
  exact nonzero_cross_lift

end FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures

-- Exact fixture source: tests/positive_atlas_feshbach_hermitian.lean

/-!
Finite tests of the exact Hermitian Feshbach sign adapter.

The nonzero-coupling packet checks the cross-block and inverse normalization.
The two diagonal packets have the same linear equation kernel but different
signs. No radical-ideal equality is claimed by this fixture; that obligation is
owned by the polynomial equation layer. Tests authored by the Codex AI assistant.
-/

namespace FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures

open Matrix

noncomputable section

attribute [local instance] invertibleOne

/-- A positive packet with genuine cross coupling has center `3 - 1 = 2`.
At `(x,y)=(2,3)`, its energy is `8 + 25 = 33`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinalFeshbachFixtureAuditNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2317c8ea84cc6ba710467f7f8ed9f19737bf095e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76871059fde9fc87f236fc0ef51ffb0b692d8c2e3c5b9838263656288fe7d175 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
