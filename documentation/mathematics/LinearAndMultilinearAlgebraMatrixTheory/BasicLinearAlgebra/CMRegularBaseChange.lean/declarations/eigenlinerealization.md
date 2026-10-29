# eigenlineRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16d30ed01d1904e4c78e82f3543b556f7b7b2918d7a4ae718c063f66ad8bc4c1",
  "kind": "def",
  "lexical_name": "eigenlineRealization",
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
  "slug": "eigenlinerealization",
  "source": {
    "blob": "53b3197eac79c61eab514d6514150b3f91717efa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d32424a34a42e291618e9465c2036c7e8ab088c634fa4df29e8801872adb73b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CMRegularBaseChange.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16d30ed01d1904e4c78e82f3543b556f7b7b2918d7a4ae718c063f66ad8bc4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eigenlineRealization
    {G : Type*} {conj : G → G}
    (v : CMFourBalance.OddSignRow G conj)
    (embedding : G → E →ₐ[k] C)
    (hfin : ∀ g, Module.finrank C (embeddingEigenspace (k := k) (embedding g)) = 1)
    (hnonzero : ∀ g, ∃ t : C ⊗[k] E,
      t ∈ embeddingEigenspace (k := k) (embedding g) ∧ t ≠ 0)
    (typeAt : G → CMEmbeddingLines.WeightOneHodgeType)
    (htype : ∀ g, typeAt g = CMEmbeddingLines.typeOfSign (v.value g)) :
    CharacterEigenlineRealization E C (C ⊗[k] E) G conj v where
  action := regularAction (k := k) (E := E) (C := C)
  character := embedding
  line_finrank_one := hfin
  line_nonzero := hnonzero
  typeAt := typeAt
  typeAt_eq := htype

end

end GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CMRegularBaseChange.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53b3197eac79c61eab514d6514150b3f91717efa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccd7c3e212e6ee1157482144ffc9607aaa3c3be7869fbe96a8d650099b4fcb42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean","GRWTSK/Geometry/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
