# VariableChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6d035c36761686ac0fc28b22c9f3f8127ee5e38efafd5ff97d81c8a752a3fb8",
  "kind": "structure",
  "lexical_name": "VariableChange",
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
  "slug": "variablechange--b5cc264bc7fc073d6c49d606",
  "source": {
    "blob": "966a35b23963e2357f57e1630d1593901ce200ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 61,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5cc264bc7fc073d6c49d606c32a60f1020386f517b58fb7ec3c0957f5320b9f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6d035c36761686ac0fc28b22c9f3f8127ee5e38efafd5ff97d81c8a752a3fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure VariableChange (R : Type u) [CommRing R] where
  /-- The `u` coefficient of an admissible linear change of variables, which must be a unit. -/
  u : Rˣ
  /-- The `r` coefficient of an admissible linear change of variables. -/
  r : R
  /-- The `s` coefficient of an admissible linear change of variables. -/
  s : R
  /-- The `t` coefficient of an admissible linear change of variables. -/
  t : R

namespace VariableChange

variable (C C' : VariableChange R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966a35b23963e2357f57e1630d1593901ce200ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44d7e5b245449f8b41aed90d4f8ce51c5c65bb9052c6576e2cbdfaf08d671676 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
