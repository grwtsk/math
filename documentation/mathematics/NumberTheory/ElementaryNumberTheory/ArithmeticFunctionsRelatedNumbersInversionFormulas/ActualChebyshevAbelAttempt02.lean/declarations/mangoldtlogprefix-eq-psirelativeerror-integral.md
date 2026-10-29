# mangoldtLogPrefix_eq_psiRelativeError_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b50d06de-5c0e-0e68-8e63-8992a136554e",
  "kind": "theorem",
  "lexical_name": "mangoldtLogPrefix_eq_psiRelativeError_integral",
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
  "slug": "mangoldtlogprefix-eq-psirelativeerror-integral",
  "source": {
    "blob": "3cdd2464acaa259838d0cebe59d4edf6a87d5d63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7c2cad81b6bd9e6080f2bc09950097f88fcff7934c61cedac1e9334ec1e0733",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b50d06de-5c0e-0e68-8e63-8992a136554e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogPrefix_eq_psiRelativeError_integral {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogPrefix t = 1+psiRelativeError t +
      ∫ u in Ioc (0:ℝ) t, (1+psiRelativeError u) := by
  rw [mangoldtLogPrefix, weightedMangoldt_eq_psi_add_integral
    (show 1 ≤ Real.exp t by simpa using Real.exp_le_exp.mpr ht),
    psi_integral_log_dictionary]
  unfold psiRelativeError
  rw [Real.exp_neg]
  ring

/-- Literal finite centering dictionary; the infinite centering equality remains a separate obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cdd2464acaa259838d0cebe59d4edf6a87d5d63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f3723fd2e5f42139acbd1ab6565ba48677d6a8bd41098e4bfded668d074c599 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
