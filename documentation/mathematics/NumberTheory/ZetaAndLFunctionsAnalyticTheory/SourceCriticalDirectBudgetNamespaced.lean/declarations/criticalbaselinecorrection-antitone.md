# criticalBaselineCorrection_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e55aff6a-d169-7ac0-556e-05cd91a7c39e",
  "kind": "theorem",
  "lexical_name": "criticalBaselineCorrection_antitone",
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
  "slug": "criticalbaselinecorrection-antitone",
  "source": {
    "blob": "429ea74ac9884d39124891e3fa16451c17a5c6dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variantdd57a3f06ac9e36785eec3324166c1e84f5e85af79941a67e382d76751e4e5c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47750122640b1670909bfbf9514de0c981461e2a28e816dce52f03beb0b70415",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalDirectBudgetNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55aff6a-d169-7ac0-556e-05cd91a7c39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBaselineCorrection_antitone (R A : ℝ) (hR : 0 ≤ R) (hRA : R ≤ A) :
    criticalBaselineCorrection A ≤ criticalBaselineCorrection R := by
  have hA : 0 ≤ A := hR.trans hRA
  have hs : R ^ 2 ≤ A ^ 2 := by nlinarith
  have hp : 0 ≤ (A ^ 2 - R ^ 2) *
      (102816 * (A ^ 2 + R ^ 2) + 1997568 + 1904 * A ^ 2 * R ^ 2) := by positivity
  have he : (7344 - 7 * R ^ 4) * (7 * A ^ 4 + 272 * A ^ 2 + 7344) -
      (7344 - 7 * A ^ 4) * (7 * R ^ 4 + 272 * R ^ 2 + 7344) =
      (A ^ 2 - R ^ 2) *
        (102816 * (A ^ 2 + R ^ 2) + 1997568 + 1904 * A ^ 2 * R ^ 2) := by ring
  unfold criticalBaselineCorrection
  apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalDirectBudgetNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variantdd57a3f06ac9e36785eec3324166c1e84f5e85af79941a67e382d76751e4e5c8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429ea74ac9884d39124891e3fa16451c17a5c6dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d45648d42c230149759c71dde9e355e579ae63c78b854c68ada8e7c7f8232525 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variantdd57a3f06ac9e36785eec3324166c1e84f5e85af79941a67e382d76751e4e5c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
