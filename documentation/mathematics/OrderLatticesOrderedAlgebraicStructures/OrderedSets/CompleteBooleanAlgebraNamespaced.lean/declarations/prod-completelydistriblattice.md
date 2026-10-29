# Prod.completelyDistribLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61f142a427b99d73c6bd7af3aac798221165b2bdf6d8f6a26c8cde3c91b876ad",
  "kind": "instance",
  "lexical_name": "Prod.completelyDistribLattice",
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
  "slug": "prod-completelydistriblattice",
  "source": {
    "blob": "1af9642b98426eb8607a4730e5769fd04bc1ee97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 409,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant48ab5c07045a6bef03b0bc2f81a6576a9a4c68a447234d02786a5902434285af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95037f520227e2d741c0e71a300ab663894866af40d0add77f447c16ab62c7ca",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61f142a427b99d73c6bd7af3aac798221165b2bdf6d8f6a26c8cde3c91b876ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.completelyDistribLattice (α β)
    [CompletelyDistribLattice α] [CompletelyDistribLattice β] :
    CompletelyDistribLattice (α × β) where
  __ := Prod.completeLattice α β
  iInf_iSup_eq f := by ext <;> simp [fst_iSup, fst_iInf, snd_iSup, snd_iInf, iInf_iSup_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant48ab5c07045a6bef03b0bc2f81a6576a9a4c68a447234d02786a5902434285af.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1af9642b98426eb8607a4730e5769fd04bc1ee97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1903f78afb39bc23e38ed734ca75669470737006d4c3144f3bc3c42f9531b31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant48ab5c07045a6bef03b0bc2f81a6576a9a4c68a447234d02786a5902434285af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
