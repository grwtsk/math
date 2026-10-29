# even_taylor_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b17ce24d-bff8-d4d0-05fd-d6773e965500",
  "kind": "theorem",
  "lexical_name": "even_taylor_term",
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
  "slug": "even-taylor-term",
  "source": {
    "blob": "a2a5a6b645892e9eb25c19137cf8f72530fdb9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:787d1159c1ae4ae9ae8b60695aec62f1f3653bfd4cc677afa843858735d79de5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b17ce24d-bff8-d4d0-05fd-d6773e965500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_taylor_term (n : ℕ) (u : ℂ) :
    ((2 * n).factorial : ℂ)⁻¹ • u ^ (2 * n) •
      iteratedDeriv (2 * n) xi (1 / 2) = (coefficient n : ℂ) * (u ^ 2) ^ n := by
  simp only [coefficient, Complex.ofReal_div, Complex.ofReal_natCast,
    xi_iteratedDeriv_even_real, smul_eq_mul, ← pow_mul]
  ring

/-- The actual xi function is the sum of its even Taylor terms at every complex argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a5a6b645892e9eb25c19137cf8f72530fdb9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20e8f204346af9aebce011739bab5b2d336337ef9054d75dd996a5f0b938d6c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
