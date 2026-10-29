# fixedKernel_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cb4ec82-f92c-95ad-c957-3b3f1b4ac6c6",
  "kind": "theorem",
  "lexical_name": "fixedKernel_summable",
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
  "slug": "fixedkernel-summable",
  "source": {
    "blob": "0cc779688fb7a8b53426b5bbba689d80830b9974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variant45750cd09dec1bd8c7688b957f5d500d3c9699c4295bc675f752e611cdaabf96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43d05c8d4cbb8e4ecec48bb554741fcb0d420729af54f02aeb4e8e010b54c478",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/FixedKernelAdmissionStatementsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cb4ec82-f92c-95ad-c957-3b3f1b4ac6c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_summable (t : ℝ) : Summable (fun n : ℕ => logSample t (n + 1)) := by
  apply summable_of_ne_finset_zero (s := Finset.range (⌊Real.exp t⌋₊ + 1))
  intro n hn
  have hnN : ⌊Real.exp t⌋₊ + 1 ≤ n := Nat.le_of_not_gt
    (by simpa only [Finset.mem_range] using hn)
  apply logSample_zero_of_exp_le t _ (by positivity)
  have hnr : ((⌊Real.exp t⌋₊ + 1 : ℕ) : ℝ) ≤ n := by exact_mod_cast hnN
  have hx := Nat.lt_floor_add_one (Real.exp t)
  push_cast at hnr
  linarith

/-- Source admission preserves the literal n^(-1/2) weights, not Mangoldt weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/FixedKernelAdmissionStatementsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variant45750cd09dec1bd8c7688b957f5d500d3c9699c4295bc675f752e611cdaabf96.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cc779688fb7a8b53426b5bbba689d80830b9974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5807972cfd2bfdf4f4cd1e3850c0da5007260184cf590efc69ca98b63f46980 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variant45750cd09dec1bd8c7688b957f5d500d3c9699c4295bc675f752e611cdaabf96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
