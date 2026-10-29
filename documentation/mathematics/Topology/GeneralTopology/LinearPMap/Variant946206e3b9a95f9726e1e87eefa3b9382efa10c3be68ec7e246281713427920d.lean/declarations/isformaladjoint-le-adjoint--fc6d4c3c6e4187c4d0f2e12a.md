# IsFormalAdjoint.le_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00198d7e-9157-3e3a-e2fb-b2b904c59065",
  "kind": "theorem",
  "lexical_name": "IsFormalAdjoint.le_adjoint",
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
  "slug": "isformaladjoint-le-adjoint--fc6d4c3c6e4187c4d0f2e12a",
  "source": {
    "blob": "50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc6d4c3c6e4187c4d0f2e12a59ccf21c07532346befeee9ed95481bf50c5a6fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00198d7e-9157-3e3a-e2fb-b2b904c59065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFormalAdjoint.le_adjoint (h : T.IsFormalAdjoint S) : S ≤ T† :=
  ⟨-- Trivially, every `x : S.domain` is in `T.adjoint.domain`
  fun x hx =>
    mem_adjoint_domain_of_exists _
      ⟨S ⟨x, hx⟩, h.symm ⟨x, hx⟩⟩,-- Equality on `S.domain` follows from equality
  -- `⟪v, S x⟫ = ⟪v, T.adjoint y⟫` for all `v : T.domain`:
  fun _ _ hxy => (adjoint_apply_eq hT _ fun _ => by rw [h.symm, hxy]).symm⟩

end LinearPMap

namespace ContinuousLinearMap

variable [CompleteSpace E] [CompleteSpace F]
variable (A : E →L[𝕜] F) {p : Submodule 𝕜 E}

set_option backward.isDefEq.respectTransparency false in
/-- Restricting `A` to a dense submodule and taking the `LinearPMap.adjoint` is the same
as taking the `ContinuousLinearMap.adjoint` interpreted as a `LinearPMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a7705cccb406dd2bdaea4ea3f22be331772509a2c9c6d85fb552ef25271b1fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
