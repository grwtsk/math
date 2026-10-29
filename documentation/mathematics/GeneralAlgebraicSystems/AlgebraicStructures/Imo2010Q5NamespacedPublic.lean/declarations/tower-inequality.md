# tower_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c75b31e-7404-a8ef-a696-2f471af783ae",
  "kind": "lemma",
  "lexical_name": "tower_inequality",
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
  "slug": "tower-inequality",
  "source": {
    "blob": "8bc691bd9ccaa26445ba576e92accb19587359de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 216,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant970db080247f5a66ace2e81a28b335c46ba49561642a161d5812d11f7ae85cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6467082d57121cba79c173376003a910556f0a2c534526c646f84b05b997aa1f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/Imo2010Q5NamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c75b31e-7404-a8ef-a696-2f471af783ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tower_inequality {m n : ℕ} (hm : m = 2010) (hn : n = 11) :
    2010 ^ 2010 ^ m ≤ 2 ^ 2 ^ 2 ^ 2 ^ 2 ^ n := by
  calc
    _ ≤ 2 ^ (11 * 2010 ^ m) := by rw [pow_mul]; gcongr <;> lia
    _ ≤ _ := Nat.pow_le_pow_right Nat.zero_lt_two ?_
  calc
    _ ≤ 2 ^ (4 + 11 * m) := by rw [pow_add, pow_mul]; gcongr <;> lia
    _ ≤ _ := Nat.pow_le_pow_right Nat.zero_lt_two ?_
  calc
    _ ≤ 2 ^ 2 ^ 2 ^ 2 := by rw [hm]; lia
    _ ≤ _ := by
      iterate 3 apply Nat.pow_le_pow_right Nat.zero_lt_two
      lia

/-- `(0, 0, 0, 2010 ^ 2010 ^ 2010 / 4, 0, 0)` is reachable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/Imo2010Q5NamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant970db080247f5a66ace2e81a28b335c46ba49561642a161d5812d11f7ae85cfa.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bc691bd9ccaa26445ba576e92accb19587359de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22f9f39feb2f748a6dc91964bfab0dc2a9f98c36886f01bf8309f25f402e4bde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant970db080247f5a66ace2e81a28b335c46ba49561642a161d5812d11f7ae85cfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
