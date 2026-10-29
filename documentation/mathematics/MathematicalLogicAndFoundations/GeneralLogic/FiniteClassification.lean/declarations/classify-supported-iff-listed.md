# classify_supported_iff_listed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e698ce2-001a-9e90-0a88-8a35ed7cb6c0",
  "kind": "theorem",
  "lexical_name": "classify_supported_iff_listed",
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
  "slug": "classify-supported-iff-listed",
  "source": {
    "blob": "6a871da55bab141b1f6ab8617872291cffd60b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 334,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e3cfb936de17127eea85cb1e3372e1f3479ea7a95eb7ac8e674dac2597c8a20",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/FiniteClassification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e698ce2-001a-9e90-0a88-8a35ed7cb6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classify_supported_iff_listed :
    classify admissible observe claim seen inventory = .supported ↔
      Supports (ListedAdmissible admissible inventory) observe claim seen := by
  constructor
  · intro result
    have fields :=
      (Flags.classify_supported_iff (scan admissible observe claim seen inventory)).mp result
    obtain ⟨trace, member, compatible, _⟩ :=
      (scan_positive_iff admissible observe claim seen inventory).mp fields.1
    have allTrue := (scan_negative_false_iff admissible observe claim seen inventory).mp fields.2
    refine ⟨⟨trace, ⟨member, compatible.1⟩, compatible.2⟩, ?_⟩
    intro other otherCompatible
    exact allTrue other otherCompatible.1.1 ⟨otherCompatible.1.2, otherCompatible.2⟩
  · intro supported
    obtain ⟨trace, compatible⟩ := supported.1
    apply (Flags.classify_supported_iff (scan admissible observe claim seen inventory)).mpr
    constructor
    · exact (scan_positive_iff admissible observe claim seen inventory).mpr
        ⟨trace, compatible.1.1, ⟨compatible.1.2, compatible.2⟩,
          supported.2 trace compatible⟩
    · apply (scan_negative_false_iff admissible observe claim seen inventory).mpr
      intro other member otherCompatible
      exact supported.2 other ⟨⟨member, otherCompatible.1⟩, otherCompatible.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/FiniteClassification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a871da55bab141b1f6ab8617872291cffd60b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6ceb6a1ff1b233a969f926188651a97e5cd58cbadd3fccf0eb0210720cb2f2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
