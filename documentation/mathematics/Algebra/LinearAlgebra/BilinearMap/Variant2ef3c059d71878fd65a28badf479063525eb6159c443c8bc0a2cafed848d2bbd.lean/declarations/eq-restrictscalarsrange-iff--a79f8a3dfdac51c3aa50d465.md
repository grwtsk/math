# eq_restrictScalarsRange_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:327e2568-5234-3d09-e0ae-4316f9a0273d",
  "kind": "lemma",
  "lexical_name": "eq_restrictScalarsRange_iff",
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
  "slug": "eq-restrictscalarsrange-iff--a79f8a3dfdac51c3aa50d465",
  "source": {
    "blob": "fc9dac722c29995805887b1f0e2c2f6068bb2eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 464,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a79f8a3dfdac51c3aa50d465a601ec31a08a5a5419f3ebd192739de831159274",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:327e2568-5234-3d09-e0ae-4316f9a0273d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_restrictScalarsRange_iff (m : M') (p : P') :
    p = restrictScalarsRange i k hk f hf m ↔ k p = f (i m) := by
  rw [← restrictScalarsRange_apply i k hk f hf m, hk.eq_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc9dac722c29995805887b1f0e2c2f6068bb2eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b6f434f7ca21058e5987df61098464d896a5591176532d70545f68f5b033f98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
