# not_dvd_exponent_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c24b9d9f29337f742582dd694483db4d722483cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86d7dced-f217-0e8c-d6cf-d49177814e59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba6cbd64-1b23-b878-af67-470b0ad2823b",
  "kind": "theorem",
  "lexical_name": "not_dvd_exponent_iff",
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
  "slug": "not-dvd-exponent-iff",
  "source": {
    "blob": "c24b9d9f29337f742582dd694483db4d722483cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654feae58cc1aefee4b4749b3fbc26464a2d9e1c27b3f86ff268a513c9e4d31d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba6cbd64-1b23-b878-af67-470b0ad2823b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_dvd_exponent_iff {p : ℕ} [Fact (Nat.Prime p)] :
    ¬ p ∣ exponent θ ↔ Codisjoint (comap (algebraMap ℤ (𝓞 K)) (conductor ℤ θ)) (span {↑p}) := by
  rw [codisjoint_comm, ← IsCoatom.not_le_iff_codisjoint, ← under_def, ← Ideal.dvd_iff_le,
    ← Int.ideal_span_absNorm_eq_self (under ℤ (conductor ℤ θ)),
    Ideal.span_singleton_dvd_span_singleton_iff_dvd, Int.natCast_dvd_natCast, exponent]
  exact isMaximal_def.mp <| Int.ideal_span_isMaximal_of_prime p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24b9d9f29337f742582dd694483db4d722483cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a28ad2d4c36b9de40256cd3a9d150f0bb123a27fcdddb6117efa439e0007513 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
