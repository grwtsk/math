# Simps.symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ce1d8eedf7a5a0cd959da008beb9d544638e8215a2261cc05a56b8ef417138e",
  "kind": "def",
  "lexical_name": "Simps.symm_apply",
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
  "slug": "simps-symm-apply--ec4471c00feeac64df414e08",
  "source": {
    "blob": "7627a73917ef9453e1e477b42dc86094e15cc8ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec4471c00feeac64df414e088eeae8d7fa797bea9883a964a161f1ecfbf668fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ce1d8eedf7a5a0cd959da008beb9d544638e8215a2261cc05a56b8ef417138e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Simps.symm_apply (e : P₁ ≃ᴬ[k] P₂) : P₂ → P₁ :=
  e.symm

initialize_simps_projections ContinuousAffineEquiv (toFun → apply, invFun → symm_apply)

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7627a73917ef9453e1e477b42dc86094e15cc8ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f7d812fc0dc5f67c395162e05ed9d9a42dbedd3fd6436ed25e6eb70be589134 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
