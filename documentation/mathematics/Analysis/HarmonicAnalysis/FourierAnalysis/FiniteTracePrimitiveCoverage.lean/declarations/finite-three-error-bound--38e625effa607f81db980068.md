# finite_three_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:334836a9-1c6e-ae9b-f23a-00d85bbf3038",
  "kind": "theorem",
  "lexical_name": "finite_three_error_bound",
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
  "slug": "finite-three-error-bound--38e625effa607f81db980068",
  "source": {
    "blob": "f5a4c670beb8dce56684d1af6473e2b68a71c495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 186,
    "path": "GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38e625effa607f81db980068e7b1cca23e3a86dd9749e275998efe2a5a604a6e",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:334836a9-1c6e-ae9b-f23a-00d85bbf3038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_three_error_bound
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M) :
    ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket (fullInput t u) M)‖ ≤
      aliasMass q (tracePacket t K) + omittedMass t K M +
        primitiveMissingMass t u M := by
  have hfull := integralProjection_full_eq_selected_add_missing t u M
  have hdiff :
      torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket (fullInput t u) M) =
      (torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M)) -
        primitiveMissingSelected t u M := by
    rw [hfull]
    abel
  rw [hdiff]
  exact (norm_sub_le _ _).trans
    (add_le_add
      (finite_trace_cutoff_alias_error t q hKM)
      (primitiveMissingSelected_norm_le t u M))

/-- A finite-universe COVERAGE premise. It must be sourced by a separate,
genuine enumeration checker if this route is used for real geodesics.
The predicate alone neither constructs nor authenticates the universe. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a4c670beb8dce56684d1af6473e2b68a71c495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24911bf48d8fd2b90f56af2bd8dece9293b0b4e00650d4d8ebac71f07dd69ea5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean","GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
