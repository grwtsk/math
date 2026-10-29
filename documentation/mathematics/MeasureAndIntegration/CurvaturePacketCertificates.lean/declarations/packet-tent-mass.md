# packet_tent_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76c1a813-0314-692d-415e-215b4c94f02d",
  "kind": "theorem",
  "lexical_name": "packet_tent_mass",
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
  "slug": "packet-tent-mass",
  "source": {
    "blob": "0a42a1526c0006be2b1269a7eeb14d10948e2a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variantae23ae21814c13ba46e46588a7805506d3b5fa47e65f13e261f732ffe4386e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae9b9d2a64a260d29ba0716427031fbefa49d479409ed165fb81f7af886936ad",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/CurvaturePacketCertificates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76c1a813-0314-692d-415e-215b4c94f02d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packet_tent_mass {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    (∫ u in 0..a + b, criticalDirichletTent (a + b) u b) = a * b / 2 := by
  have hD : ContDiff ℝ 2 (fun u : ℝ => u ^ 2) := contDiff_id.pow 2
  have hd : deriv (fun u : ℝ => u ^ 2) = fun u => 2 * u := by
    funext u
    simp
  have hdd : deriv (deriv (fun u : ℝ => u ^ 2)) = fun _ => (2 : ℝ) := by
    rw [hd]
    funext u
    simp
  have hi := packet_green_local ha hb (hD.of_le (by norm_num))
    hD.deriv'.contDiffOn.absolutelyContinuousOnInterval
  rw [hdd, intervalIntegral.integral_mul_const] at hi
  have hp : packetValue (fun u : ℝ => u ^ 2) b a b = a * b := by
    unfold packetValue
    field_simp [show a + b ≠ 0 by linarith]
    ring
  rw [hp] at hi
  linarith

/-- A curvature envelope costs exactly M*a*b/2, not M*a*b.
Signed coefficient combinations may be sharper than summing this envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/CurvaturePacketCertificates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variantae23ae21814c13ba46e46588a7805506d3b5fa47e65f13e261f732ffe4386e29.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a42a1526c0006be2b1269a7eeb14d10948e2a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90830519bfad1e8d4c322a4f92415abc33b948bcb3c50cbc35b2c47d7752420d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variantae23ae21814c13ba46e46588a7805506d3b5fa47e65f13e261f732ffe4386e29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
