# ObjectProperty.isCardinalFiltered_costructuredArrow_colimitsCardinalClosure_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddfcbce3270485ecca6f222869f456ecf9bd5c2ab3cddda21c5af9470e040b79",
  "kind": "instance",
  "lexical_name": "ObjectProperty.isCardinalFiltered_costructuredArrow_colimitsCardinalClosure_ι",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "objectproperty-iscardinalfiltered-costructuredarrow-colimitscardinalclos--e4a4b9f3374e145dc58d2783",
  "source": {
    "blob": "232ac409a31120aa2b6d74c110de3785f322901d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4a4b9f3374e145dc58d2783b196578249071e450719e7bfa2f5515a582c2e19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddfcbce3270485ecca6f222869f456ecf9bd5c2ab3cddda21c5af9470e040b79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ObjectProperty.isCardinalFiltered_costructuredArrow_colimitsCardinalClosure_ι
    (P : ObjectProperty C) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [HasColimitsOfSize.{w, w} C] (X : C) :
    IsCardinalFiltered (CostructuredArrow (P.colimitsCardinalClosure κ).ι X) κ where
  nonempty_cocone {J} _ K hJ := ⟨by
    have := ObjectProperty.isClosedUnderColimitsOfShape_colimitsCardinalClosure P κ J hJ
    exact colimit.cocone K⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232ac409a31120aa2b6d74c110de3785f322901d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b587d673cfde4229f84efaac5cdca21f0112af776a89b9d616ca50f2583cb4ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
