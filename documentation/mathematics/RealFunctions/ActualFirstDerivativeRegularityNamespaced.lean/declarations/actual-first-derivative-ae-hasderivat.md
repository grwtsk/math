# actual_first_derivative_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de2e7291-443b-52b5-2efc-f97c0b28e7ee",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_ae_hasDerivAt",
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
  "slug": "actual-first-derivative-ae-hasderivat",
  "source": {
    "blob": "a1789a6f6072f982794bc5cf59354ae6c19a544a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ca3330e7a9248b3000321224708ae8792c810286a7886db54a4c9c94deef21",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/ActualFirstDerivativeRegularityNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de2e7291-443b-52b5-2efc-f97c0b28e7ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_ae_hasDerivAt (A : ℝ) (hA : 0 < A) :
    ∀ᵐ x : ℝ, HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (actualSecondProfile A x) x := by
  filter_upwards [volume.ae_ne (-A), volume.ae_ne A] with x hx0 hx1
  exact actual_first_derivative_hasDerivAt_of_ne_endpoints A x hA hx0 hx1

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/ActualFirstDerivativeRegularityNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1789a6f6072f982794bc5cf59354ae6c19a544a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f9f7a3dff8b2d3062666336f2447a62352bfe19561bde5987d1280fe2946b5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
