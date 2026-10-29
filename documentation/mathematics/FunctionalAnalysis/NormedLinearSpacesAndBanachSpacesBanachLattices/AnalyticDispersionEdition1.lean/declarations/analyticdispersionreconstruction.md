# AnalyticDispersionReconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20d3a111d4796ec050ec4e98541b508b72c49e69a5674c8d47ebfd03e6e2efed",
  "kind": "structure",
  "lexical_name": "AnalyticDispersionReconstruction",
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
  "slug": "analyticdispersionreconstruction",
  "source": {
    "blob": "b3134d8ef634a942f0cd9dc10e90ef5498892c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb0b8f9b6842fa7e240f62a19e0784b90a7596f7978723a79202249b9c855a1d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20d3a111d4796ec050ec4e98541b508b72c49e69a5674c8d47ebfd03e6e2efed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticDispersionReconstruction (E : Type u)
    [NormedAddCommGroup E] [NormedSpace ℝ E] where
  /-- Scalar potential whose derivatives determine the dispersion form. -/
  potential : E → ℝ
  /-- Continuous linear first derivative supplied for the potential. -/
  gradient : E → (E →L[ℝ] ℝ)
  /-- Continuous bilinear second derivative supplied through the gradient. -/
  hessian : E → (E →L[ℝ] (E →L[ℝ] ℝ))
  /-- Positive form identified with the Hessian at each state. -/
  dispersion : E → PositiveForm E
  potential_analytic : ∀ x, AnalyticAt ℝ potential x
  gradient_analytic : ∀ x, AnalyticAt ℝ gradient x
  potential_hasFDeriv : ∀ x, HasFDerivAt potential (gradient x) x
  gradient_hasFDeriv : ∀ x, HasFDerivAt gradient (hessian x) x
  hessian_eq_dispersion :
    ∀ x u v, hessian x u v = (dispersion x).form u v

namespace AnalyticDispersionReconstruction

variable (D : AnalyticDispersionReconstruction E)

/-- The Frechet derivative of the potential is the stored gradient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AnalyticDispersionEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3134d8ef634a942f0cd9dc10e90ef5498892c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80cdd51fdae4802c784d65663a8bc856c9d6fc7d399b0bf8d5e7cc3284f7c1c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
