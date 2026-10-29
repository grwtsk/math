# primitive_below_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2197988e-2efc-2903-759b-6ff6bf1a6550",
  "kind": "theorem",
  "lexical_name": "primitive_below_first",
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
  "slug": "primitive-below-first",
  "source": {
    "blob": "11d7141e1dbb87a9ba11053a1983e166719726d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c3c23e303f120ca5b0420ee825295cf9457a33e0ba523d65ba6bf81036b2e00",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAttempt04Primitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2197988e-2efc-2903-759b-6ff6bf1a6550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_below_first {t : ℝ} (ht0 : 0 ≤ t) (ht : t < Real.log 2) :
    primitive t = 2*Real.exp (t/2)*(Real.eulerMascheroniConstant+2-t)-4-
      2*Real.eulerMascheroniConstant := by
  rw [primitive_eq_finite_arithmetic ht0, mangoldtLogError_below_first_atom ht,
    halfPrefix_below_first ht]
  ring

end ContinuousResearch.ExactCriticalPrimitive

#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive
#print axioms ContinuousResearch.ExactCriticalPrimitive.halfPrefix
#print axioms ContinuousResearch.ExactCriticalPrimitive.twiceExp_hasDerivAt
#print axioms ContinuousResearch.ExactCriticalPrimitive.twiceExp_deriv
#print axioms ContinuousResearch.ExactCriticalPrimitive.logSum_eq_halfPrefix
#print axioms ContinuousResearch.ExactCriticalPrimitive.prefix_weight_integrable
#print axioms ContinuousResearch.ExactCriticalPrimitive.prefix_weight_integral
#print axioms ContinuousResearch.ExactCriticalPrimitive.background_integral
#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive_integrable
#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive_eq_finite_arithmetic
#print axioms ContinuousResearch.ExactCriticalPrimitive.halfPrefix_below_first
#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive_below_first
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAttempt04Primitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11d7141e1dbb87a9ba11053a1983e166719726d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41f02dd79aa02c91e18d8daf0656efd3bc87a0abf6c53a6a24092a2340998843 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
