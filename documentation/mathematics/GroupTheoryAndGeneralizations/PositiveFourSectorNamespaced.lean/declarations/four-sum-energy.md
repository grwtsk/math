# four_sum_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26fa06a2-f6ed-666d-5c5d-35a5d2b707eb",
  "kind": "theorem",
  "lexical_name": "four_sum_energy",
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
  "slug": "four-sum-energy",
  "source": {
    "blob": "89ce69d65e84dfb007ad240fe345dcf3a36f4365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e9b94d2e9b06b680b101d221758c7df446658f56a00d04f347f6fc5b8272b0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/PositiveFourSectorNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26fa06a2-f6ed-666d-5c5d-35a5d2b707eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_sum_energy
    (G : PositiveForm V) (a b c d : V)
    (hab : G.form a b = 0)
    (hac : G.form a c = 0)
    (had : G.form a d = 0)
    (hbc : G.form b c = 0)
    (hbd : G.form b d = 0)
    (hcd : G.form c d = 0) :
    G.form (a + b + c + d) (a + b + c + d) =
      G.form a a + G.form b b + G.form c c + G.form d d := by
  have hba : G.form b a = 0 := by
    rw [G.symmetric b a, hab]
  have hca : G.form c a = 0 := by
    rw [G.symmetric c a, hac]
  have hda : G.form d a = 0 := by
    rw [G.symmetric d a, had]
  have hcb : G.form c b = 0 := by
    rw [G.symmetric c b, hbc]
  have hdb : G.form d b = 0 := by
    rw [G.symmetric d b, hbd]
  have hdc : G.form d c = 0 := by
    rw [G.symmetric d c, hcd]
  simp [G.add_left, G.add_right, hab, hac, had, hbc, hbd, hcd,
    hba, hca, hda, hcb, hdb, hdc]

end PositiveForm

/-- Two commuting involutions compatible with the same positive geometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/PositiveFourSectorNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ce69d65e84dfb007ad240fe345dcf3a36f4365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=008b70b4bd7b5b2111e4d49c8af03bc19b8b538434db748172032b4ca6cff5fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
