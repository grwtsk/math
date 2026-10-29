# smul_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:208611b6-c428-d7e3-5cdb-20dd4fd6d5e2",
  "kind": "theorem",
  "lexical_name": "smul_monomial",
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
  "slug": "smul-monomial--181f7f2ffeb13e50f6b5b0c1",
  "source": {
    "blob": "d0d47e09a9ebac442d472b1e4aca5dd6045fca98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 225,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:181f7f2ffeb13e50f6b5b0c19c6ef2b49d63f2d321792a15397300134fde882c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208611b6-c428-d7e3-5cdb-20dd4fd6d5e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_monomial {S₁ : Type*} [SMulZeroClass S₁ R] (r : S₁) :
    r • monomial s a = monomial s (r • a) := smul_single _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0d47e09a9ebac442d472b1e4aca5dd6045fca98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3aa4d80647a9500c41ed3d8b2508a643c96ba8cc3fbb0cd079da5df81263f5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
