# tensorLineDerivTwo_canonicalCovariantTensor_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9976e17a-1e4c-7145-383b-ee57e693d149",
  "kind": "theorem",
  "lexical_name": "tensorLineDerivTwo_canonicalCovariantTensor_eq_sum",
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
  "slug": "tensorlinederivtwo-canonicalcovarianttensor-eq-sum",
  "source": {
    "blob": "7912bf4ca5ffa28b710ac5da31731f4ab4f36da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f50430dc52a06ec5dd761d47a3ab10af96b5bdf3090e209617204cb8acbee9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9976e17a-1e4c-7145-383b-ee57e693d149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorLineDerivTwo_canonicalCovariantTensor_eq_sum [Fintype ι] (v : OrthonormalBasis ι ℝ E)
    (f : V₁) : tensorLineDerivTwo ℝ f (canonicalCovariantTensor E) = ∑ i, ∂_{v i} (∂_{v i} f) := by
  simp [InnerProductSpace.canonicalCovariantTensor_eq_sum E v,
    tensorLineDerivTwo_eq_lineDerivOp_lineDerivOp]

end LinearMap

section ContinuousLinearMap

section definition

variable [CommRing R]
  [Module R V₁] [Module R V₂] [Module R V₃]
  [TopologicalSpace V₁] [TopologicalSpace V₂] [TopologicalSpace V₃] [IsTopologicalAddGroup V₃]
  [LineDerivAdd E V₁ V₂] [LineDerivSMul R E V₁ V₂] [ContinuousLineDeriv E V₁ V₂]
  [LineDerivAdd E V₂ V₃] [LineDerivSMul R E V₂ V₃] [ContinuousLineDeriv E V₂ V₃]

variable (R E V₁) in
/-- The Laplacian defined by iterated `lineDerivOp` as a continuous linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7912bf4ca5ffa28b710ac5da31731f4ab4f36da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2895bab8f4cd4777cb5785b0bb2fd6b504366c0a682016fe9236a8f7c3b90e6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
