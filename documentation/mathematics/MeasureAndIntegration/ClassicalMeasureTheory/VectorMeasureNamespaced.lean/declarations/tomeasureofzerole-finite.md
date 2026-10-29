# toMeasureOfZeroLE_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6748a9553c6cf2638a4c00eb95f2e5ea2a67d6960069b2d148b27a7900274bbc",
  "kind": "instance",
  "lexical_name": "toMeasureOfZeroLE_finite",
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
  "slug": "tomeasureofzerole-finite",
  "source": {
    "blob": "1bc7047d4e9c89a107ff3c8d23514847ae0ce913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1388,
    "line": 1381,
    "path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6762430e4e0a8d588e866398c86249e6e71d28e59e1b44124e7c43e00765d821",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6748a9553c6cf2638a4c00eb95f2e5ea2a67d6960069b2d148b27a7900274bbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1381–1388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toMeasureOfZeroLE_finite (hi : 0 ≤[i] s) (hi₁ : MeasurableSet i) :
    IsFiniteMeasure (s.toMeasureOfZeroLE i hi₁ hi) where
  measure_univ_lt_top := by
    rw [toMeasureOfZeroLE_apply s hi hi₁ MeasurableSet.univ]
    exact ENNReal.coe_lt_top
#align measure_theory.signed_measure.to_measure_of_zero_le_finite MeasureTheory.SignedMeasure.toMeasureOfZeroLE_finite

/-- `SignedMeasure.toMeasureOfLEZero` is a finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean#L1381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc7047d4e9c89a107ff3c8d23514847ae0ce913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f74c807b63996a02bf0e6ccd26a40dd3e0d933f10daea61eb3e3cb4d4a25860 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
