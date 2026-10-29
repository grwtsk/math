# IndepFun.process_indepFun_process

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:592580af-4321-9aa2-5bed-62a39c9566c9",
  "kind": "lemma",
  "lexical_name": "IndepFun.process_indepFun_process",
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
  "slug": "indepfun-process-indepfun-process",
  "source": {
    "blob": "2362a7c914b9f8a3015e4c5c2628628019deb82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 381,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25846d8ffd86af6e667c1008cd4a4aff761f173eac166fc0f5bba9dcfd40b029",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ProcessBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:592580af-4321-9aa2-5bed-62a39c9566c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IndepFun.process_indepFun_process {T : Type*} {𝓧 : S → Type*} {𝓨 : T → Type*}
    [∀ i, MeasurableSpace (𝓧 i)] [∀ j, MeasurableSpace (𝓨 j)] {X : (i : S) → Ω → 𝓧 i}
    {Y : (j : T) → Ω → 𝓨 j} (hX : ∀ i, Measurable (X i)) (hY : ∀ j, Measurable (Y j))
    (h : ∀ (I : Finset S) (J : Finset T),
      (fun ω (i : I) ↦ X i ω) ⟂ᵢ[P] (fun ω (j : J) ↦ Y j ω)) [IsZeroOrProbabilityMeasure P] :
    IndepFun (fun ω i ↦ X i ω) (fun ω j ↦ Y j ω) P :=
  Kernel.IndepFun.process_indepFun_process hX hY h

/-- Two stochastic processes $(X_s)_{s \in S}$ and $(Y_t)_{t \in T}$ are independent if
for all $s_1, ..., s_p \in S$ and $t_1, ..., t_q \in T$ the two families
$(X_{s_1}, ..., X_{s_p})$ and $(Y_{t_1}, ..., Y_{t_q})$ are independent.

This version only requires a.e.-measurability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ProcessBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2362a7c914b9f8a3015e4c5c2628628019deb82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e04dc764c99c5cc20a524bc3ce62ce27503aceae3f48eee194ebb9b8a57261e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
