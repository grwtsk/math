# higherPairIndices_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6f9001c-20a3-f901-75be-95b3b44def59",
  "kind": "theorem",
  "lexical_name": "higherPairIndices_image",
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
  "slug": "higherpairindices-image",
  "source": {
    "blob": "2a1e2b419080e3f9c808bd6970cf5a642ad3a18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 460,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75e585701da60e6fef01f6b5cb762e3737dde0aa8fdf3e3dee856d373c16a427",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6f9001c-20a3-f901-75be-95b3b44def59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPairIndices_image (A : ℝ) :
    (higherPairIndices A).image powerIndex = higherPrimePowerIndices A := by
  classical
  ext n
  constructor
  · rintro hn
    obtain ⟨q, hq, rfl⟩ := Finset.mem_image.mp hn
    exact Finset.mem_preimage.mp hq
  · intro hn
    obtain ⟨p, k, hp, hk, hpn⟩ := (Finset.mem_filter.mp hn).2
    let q : HigherPowerIndex := (⟨p, hp⟩, ⟨k, hk⟩)
    have hq : powerIndex q = n := hpn
    exact Finset.mem_image.mpr ⟨q, Finset.mem_preimage.mpr (hq ▸ hn), hq⟩

/-- Genuine finite reindexing retains each original Mangoldt/square-root/correlation term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1e2b419080e3f9c808bd6970cf5a642ad3a18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dbd693fd5b15294a8a338162c9e1f9a48e8eb4a0ffb0721902b674ab55db647 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
