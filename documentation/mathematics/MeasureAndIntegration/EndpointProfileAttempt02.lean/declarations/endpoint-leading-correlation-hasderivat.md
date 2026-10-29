# endpoint_leading_correlation_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7901f683-54db-34b0-6a75-26be758975e3",
  "kind": "theorem",
  "lexical_name": "endpoint_leading_correlation_hasDerivAt",
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
  "slug": "endpoint-leading-correlation-hasderivat",
  "source": {
    "blob": "8b31e144cc78cc4fb0f30be6dc04210d9529a15b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937f9a9938b6774a70fdc3f526055deb3b16d09e4c67790b339010f5185e30b9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/EndpointProfileAttempt02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7901f683-54db-34b0-6a75-26be758975e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_leading_correlation_hasDerivAt (y : ℝ) :
    HasDerivAt endpointLeadingCorrelation
      ((8/35:ℝ)*y^4*(y^4-448*y^2+26880)) y := by
  have hd := (((hasDerivAt_id y).pow 5).mul
    (((((hasDerivAt_id y).pow 4).sub (((hasDerivAt_id y).pow 2).const_mul 576))).add_const 48384)).const_mul (8/315:ℝ)
  convert hd using 1 <;>
    simp [endpointLeadingCorrelation,Pi.pow_apply,Pi.mul_apply,Pi.sub_apply] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/EndpointProfileAttempt02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b31e144cc78cc4fb0f30be6dc04210d9529a15b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c3b0d63ef78ceae3c940f683261f7983cc18609d4c26ceddec451de08c14a27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
