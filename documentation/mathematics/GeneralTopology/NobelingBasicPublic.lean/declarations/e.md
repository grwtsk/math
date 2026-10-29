# e

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84acb849b6ec320b644940894f0c12b227503741b225e1c8479030e18f80ea1c",
  "kind": "def",
  "lexical_name": "e",
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
  "slug": "e",
  "source": {
    "blob": "1626c32749317249f436e4fa0e0e56d88176b2ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 292,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ca7aa0e2502e5f5cbf6bd2a55bd78fca8cb87aaf33686d6547f2611bdea1c2f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/NobelingBasicPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84acb849b6ec320b644940894f0c12b227503741b225e1c8479030e18f80ea1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def e (i : I) : LocallyConstant C ℤ where
  toFun := fun f ↦ (if f.val i then 1 else 0)
  isLocallyConstant := by
    rw [IsLocallyConstant.iff_continuous]
    exact (continuous_of_discreteTopology (f := fun (a : Bool) ↦ (if a then (1 : ℤ) else 0))).comp
      ((continuous_apply i).comp continuous_subtype_val)

variable [LinearOrder I]

/--
`Products I` is the type of lists of decreasing elements of `I`, so a typical element is
`[i₁, i₂, ...]` with `i₁ > i₂ > ...`. We order `Products I` lexicographically, so `[] < [i₁, ...]`,
and `[i₁, i₂, ...] < [j₁, j₂, ...]` if either `i₁ < j₁`, or `i₁ = j₁` and `[i₂, ...] < [j₂, ...]`.

Terms `m = [i₁, i₂, ..., iᵣ]` of this type will be used to represent products of the form
`e C i₁ ··· e C iᵣ : LocallyConstant C ℤ` . The function associated to `m` is `m.eval`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/NobelingBasicPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1626c32749317249f436e4fa0e0e56d88176b2ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c7404701d9f2cebace8d68176b74a4cf8623e31910a5db434879c0332f67f81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
