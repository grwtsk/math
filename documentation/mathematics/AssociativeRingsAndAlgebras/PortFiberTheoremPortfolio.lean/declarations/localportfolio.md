# localPortfolio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbcf2442b6eb3629b56e02b3b9f44fb38361ad14b1325d1c324b3b2ac9ad418a",
  "kind": "def",
  "lexical_name": "localPortfolio",
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
  "slug": "localportfolio",
  "source": {
    "blob": "4ba5497bfae010ec99ebd23fcac1724cff8e94a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed666b3e4b6e2baa53fc3d11e262b2b6bb9e75d4d1c4788c721eeec0bd1fb62b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AssociativeRingsAndAlgebras/PortFiberTheoremPortfolio.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbcf2442b6eb3629b56e02b3b9f44fb38361ad14b1325d1c324b3b2ac9ad418a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localPortfolio (O : OpenObligations) :
    Portfolio LocalIndex (LocalClaim O) where
  disposition
    | .simultaneousRestriction => .proved restrictionClaim_proof
    | .holomorphicSectionRing => .proved holomorphicSectionRingClaim_proof
    | .holomorphicEvaluationSpectrum => .proved holomorphicEvaluationSpectrumClaim_proof
    | .analyticAffineBridge => .proved analyticAffineBridgeClaim_proof
    | .primeSpectrumTopology => .proved primeSpectrumTopologyClaim_proof
    | .affineScheme => .proved affineSchemeClaim_proof
    | .affineGlobalSections => .proved affineGlobalSectionsClaim_proof
    | .affineStalkLocality => .proved affineStalkLocalityClaim_proof
    | .ordinaryFunctionGluing => .proved gluingClaim_proof
    | .holomorphicGlobalizationBoundary => .proved holomorphicBoundaryClaim_proof
    | .arithmeticBridge =>
        .unresolved "arithmetic-to-elliptic source bridge remains an external obligation"
    | .sourceComparison =>
        .unresolved "source-faithful comparison with the Weil form remains an external obligation"
    | .convergenceToWeil =>
        .unresolved "vanishing complete residual and convergence remain external obligations"

/-- Local branch dispositions and the terminal RH disposition are recorded independently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/PortFiberTheoremPortfolio.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba5497bfae010ec99ebd23fcac1724cff8e94a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5390d5697b44c06ccc99525abb163f5a0e10cdc4cbe39c5cb50ef037964f925 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
