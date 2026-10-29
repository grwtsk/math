# disjoint_iff_inf_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bc6255a-d640-ca48-e083-59de0164f3aa",
  "kind": "theorem",
  "lexical_name": "disjoint_iff_inf_le",
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
  "slug": "disjoint-iff-inf-le--9fbd5be72d4a0d672a79b6bd",
  "source": {
    "blob": "669fe40d82b434e42a56f3a1d325449161afb1ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fbd5be72d4a0d672a79b6bd57e6860e9b87bb3614c2bf43c798e9f5a6480019",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc6255a-d640-ca48-e083-59de0164f3aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_iff_inf_le : Disjoint a b ↔ a ⊓ b ≤ ⊥ :=
  ⟨fun hd ↦ hd inf_le_left inf_le_right, fun h _ ha hb ↦ (le_inf ha hb).trans h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `669fe40d82b434e42a56f3a1d325449161afb1ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fb2e4cf34e9d1a394b50e81ab209077f621bf1b505f1c0933a0383c3e108458 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variant7c0ab754b97fec7af7668ee3097c26af7a500aa22a8fab61eb6bd57f2df76c70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
