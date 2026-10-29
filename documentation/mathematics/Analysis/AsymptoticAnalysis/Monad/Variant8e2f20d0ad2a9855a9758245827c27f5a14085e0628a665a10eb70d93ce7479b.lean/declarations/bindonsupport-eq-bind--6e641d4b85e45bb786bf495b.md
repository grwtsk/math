# bindOnSupport_eq_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a06dada1-f583-ce0d-8231-57d7650a34e6",
  "kind": "theorem",
  "lexical_name": "bindOnSupport_eq_bind",
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
  "slug": "bindonsupport-eq-bind--6e641d4b85e45bb786bf495b",
  "source": {
    "blob": "f712bc71420d6189a293035a43d07602009559dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 228,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e641d4b85e45bb786bf495b285fc4af03871f198384cd249bed34b0a484a879",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a06dada1-f583-ce0d-8231-57d7650a34e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bindOnSupport_eq_bind (p : PMF α) (f : α → PMF β) :
    (p.bindOnSupport fun a _ => f a) = p.bind f := by
  ext b
  have : ∀ a, ite (p a = 0) 0 (p a * f a b) = p a * f a b :=
    fun a => ite_eq_right_iff.2 fun h => h.symm ▸ symm (zero_mul <| f a b)
  simp only [bindOnSupport_apply fun a _ => f a, p.bind_apply f, dite_eq_ite, mul_ite,
    mul_zero, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f712bc71420d6189a293035a43d07602009559dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c69a1659ea2b63f5115ed218ffd445d21b2f417d3a1a384d3a1ae6d9c0cd3bf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
