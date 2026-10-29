# relativeVelocity_eq_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6df7923-8f33-42c8-22bf-6acd85482a01",
  "kind": "theorem",
  "lexical_name": "relativeVelocity_eq_deriv",
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
  "slug": "relativevelocity-eq-deriv",
  "source": {
    "blob": "4010be6be89620619de965758e34ce348c6ed5d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca41150822afe05963dd9d71da907db05274184a6ddd5def8ae67dda88ed2886",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/CoordinatesNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6df7923-8f33-42c8-22bf-6acd85482a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relativeVelocity_eq_deriv
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (time : ℝ)
    (differentiable :
      ∀ label,
        DifferentiableAt ℝ
          (fun parameter ↦
            family.relative label (trajectory parameter))
          time)
    (label : Label) :
    family.relativeVelocity trajectory label time =
      deriv
        (fun parameter ↦
          family.relative label (trajectory parameter))
        time := by
  have componentwise :=
    deriv_pi
      (φ := fun parameter ↦
        family.coordinate (trajectory parameter))
      differentiable
  exact congrFun componentwise label

/-- Difference quotient used for beacon-metric derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/CoordinatesNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4010be6be89620619de965758e34ce348c6ed5d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=576df160fd41b6027de7349b67475c6f9ea6010e1a68118639bcfeeebcde5aed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Coordinates/Variantd06ad7a94972bb4664be3688e0d6d907c1bed0c4fa4896262ddc5ac08548223d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
