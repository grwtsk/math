# integral_dirac'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1031744-1df7-6b42-6bd5-2cd2e90e1f71",
  "kind": "theorem",
  "lexical_name": "integral_dirac'",
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
  "slug": "integral-dirac-source-edition-2",
  "source": {
    "blob": "231f6160cc10a85ea9f0f54834862b6657c8c993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1156,
    "line": 1148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b79fef6a9b0cd4d54960dbc266406ecb024a061018f5bbfb7236d1710c35d5d5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1031744-1df7-6b42-6bd5-2cd2e90e1f71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1148–1156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_dirac' [MeasurableSpace α] (f : α → E) (a : α) (hfm : StronglyMeasurable f) :
    ∫ x, f x ∂Measure.dirac a = f a := by
  borelize E
  calc
    ∫ x, f x ∂Measure.dirac a = ∫ _, f a ∂Measure.dirac a :=
      integral_congr_ae <| ae_eq_dirac' hfm.measurable
    _ = f a := by simp [Measure.dirac_apply_of_mem]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean#L1148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231f6160cc10a85ea9f0f54834862b6657c8c993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c33ff8bd3d7cd4e51564fa6a5171392b03cfc06aacd4820e782f8ca6c3e1674a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
