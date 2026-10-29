# ArgumentPrincipleAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60b1422a2d75fbf3cd2e5beb812f4a331a9c2a28221135011be0c49bace97ed2",
  "kind": "structure",
  "lexical_name": "ArgumentPrincipleAuthority",
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
  "slug": "argumentprincipleauthority",
  "source": {
    "blob": "f5c54b5c8399701376e194814e9f531b7f11a387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b9bfb5f7d2c0d1d5d8238ca291a43ba29bd6eba0dd602679f27b4f1c66cddc9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/ArgumentPrinciple.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60b1422a2d75fbf3cd2e5beb812f4a331a9c2a28221135011be0c49bace97ed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArgumentPrincipleAuthority
    (model : ContourIntegrationModel)
    (xi xiPrime : ℂ → ℂ) where
  divisor :
    (cell : AnalyticCell) →
      AnalyticZeroDivisor xi cell.interior
  argumentPrinciple :
    ∀ (cell : AnalyticCell)
      (_boundary :
        BoundaryZeroFreeCertificate xi cell)
      (integral :
        ValidatedArgumentIntegral
          model xi xiPrime cell),
      (divisor cell).count = integral.count

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/ArgumentPrinciple.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c54b5c8399701376e194814e9f531b7f11a387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9529a505888df3ad6f1be0d0b4cf4323f10e78b37c8c40762f0032f75580295 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
