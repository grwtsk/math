# baselNumericalSchema

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef989706b786748c7ddb5aa1599a4ff4d06e944abea57b0d2d92d91dac380289",
  "kind": "def",
  "lexical_name": "baselNumericalSchema",
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
  "slug": "baselnumericalschema",
  "source": {
    "blob": "2d4c888500af9ef2101af3751c7512f23c01ea58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 315,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3cba26264c84404add5b4529ade2f6f88c5943df81d14745e30d288fc0d0b1f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeriesNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef989706b786748c7ddb5aa1599a4ff4d06e944abea57b0d2d92d91dac380289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def baselNumericalSchema :
    VerifiedNumericalEstimate.NumericalAnalyticCertificateSchema where
  estimate := baselEstimateSymbol
  payload := baselFinitePayload
  domain := baselDomainSymbol
  precision := baselPrecisionSymbol
  algorithm := baselAlgorithmSymbol
  errorModel := baselErrorModelSymbol
  enclosureSound :=
    ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
      Real.pi ^ 2 / 6 ≤
        ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10
  enclosureProof := basel_interval_enclosure_10
  theoremInterpretation :=
    HasSum baselTerm (Real.pi ^ 2 / 6) ∧
      (((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
        Real.pi ^ 2 / 6 ≤
          ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10)
  theoremInterpretationProof :=
    ⟨basel_hasSum_pi_sq_div_six, basel_interval_enclosure_10⟩

/-- The interval-arithmetic authority for the Basel enclosure, with a
genuine proof field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeriesNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4c888500af9ef2101af3751c7512f23c01ea58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc5805b8b33342e873dffc5fbac4d1db162302c7dc117e29050affb2a0203797 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
