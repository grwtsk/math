# AnalyticPDESpectralTheoremInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:893dc6efa9c9c66ed8b85cc908d05b326e14e2f3bc6e081eccd2a7da26d64baf",
  "kind": "structure",
  "lexical_name": "AnalyticPDESpectralTheoremInput",
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
  "slug": "analyticpdespectraltheoreminput",
  "source": {
    "blob": "7fdb0b1e7d0a7d37a899fefdb0e307cc4ab0f1b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 79,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3466dd43b0be576a1bf9f354cfc0646e653a54812a9a7810763e27e02e9029c2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/AnalyticPDEBridgeNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:893dc6efa9c9c66ed8b85cc908d05b326e14e2f3bc6e081eccd2a7da26d64baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticPDESpectralTheoremInput
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  finiteConvergence :
    FiniteGraphLaplacianConvergenceCertificate T
  finiteConvergenceCertified :
    finiteConvergence.certifiedForHilbertEvidence

  theoremGates : AnalyticPDETheoremGates
  theoremGatesCertified :
    theoremGates.certifiedForMajorProof

  analyticHeat : Flow.AnalyticHeatFlowCertificate
  analyticHeatCertified :
    analyticHeat.certifiedForMajorProof

  ricci : Flow.RicciFlowTheoremCertificate
  ricciCertified :
    ricci.certifiedForMajorProof

  orientedFlatness :
    Homology.OrientedFlatnessCertificate
  orientedFlatnessCertified :
    orientedFlatness.certifiedForMajorProof

  heatOperatorMatchesHilbertLimit : Prop
  heatOperatorMatchesHilbertLimitCertified :
    heatOperatorMatchesHilbertLimit

  ricciGeometryCompatibleWithHilbertLimit : Prop
  ricciGeometryCompatibleWithHilbertLimitCertified :
    ricciGeometryCompatibleWithHilbertLimit

  noSpectralTheoremFromFinitePDEDataAlone : Prop
  noSpectralTheoremFromFinitePDEDataAloneCertified :
    noSpectralTheoremFromFinitePDEDataAlone

  boundary : List String

/-- Major-proof predicate for analytic PDE spectral bridge input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/AnalyticPDEBridgeNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdb0b1e7d0a7d37a899fefdb0e307cc4ab0f1b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26d086cc3a2b2dae16028c34c4c6de6f78b473760a59893a21ad9f4d99898b02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
