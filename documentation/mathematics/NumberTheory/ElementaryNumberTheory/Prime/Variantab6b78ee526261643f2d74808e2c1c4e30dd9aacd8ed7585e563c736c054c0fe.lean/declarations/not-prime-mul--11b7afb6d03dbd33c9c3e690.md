# not_prime_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6023809e-adce-f274-f175-c57c06dc4be9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d384f020-ebfe-85bd-ba4a-314eb6f63c15",
  "kind": "theorem",
  "lexical_name": "not_prime_mul'",
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
  "slug": "not-prime-mul--11b7afb6d03dbd33c9c3e690",
  "source": {
    "blob": "1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 221,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b7afb6d03dbd33c9c3e690f38c751bc1afb0f464d3b0dfe910ae9f15ce4996",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d384f020-ebfe-85bd-ba4a-314eb6f63c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_prime_mul' {a b n : ℕ} (h : a * b = n) (h₁ : 1 < a) (h₂ : 1 < b) : ¬Prime n := by
  rw [← h]
  exact not_prime_mul h₁ h₂
#align nat.not_prime_mul' Nat.not_prime_mul'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8af5fe43f0f42bc443e62881c9b70af94f8a305d11fc9d8b77a7271e1c7c7af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
