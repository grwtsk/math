# documentedSourceRelativeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc7f671e2f7440e3983534dbb6b20e1bf56bdbe4d3df8a990a93fb96643c4f5b",
  "kind": "def",
  "lexical_name": "documentedSourceRelativeEquiv",
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
  "slug": "documentedsourcerelativeequiv",
  "source": {
    "blob": "0625ca3865b8e8f05b4424581193784b11c44763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ExactSourceRelativeRepresentations/Variant340ee1d86c16a661/DocumentedAnalyticInverse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0af785b322b4ab2f9106ed0ebde5cc3f5fb25e6383830ebb021c555a8ff1cce8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/DocumentedAnalyticInverse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc7f671e2f7440e3983534dbb6b20e1bf56bdbe4d3df8a990a93fb96643c4f5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def documentedSourceRelativeEquiv :
    BitMatrix.Topology.ExactCantorScalar ≃
      BitMatrix.Carrier.BooleanState
        BitMatrix.Carrier.SequentialPrimeCarrierAddress :=
  BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/DocumentedAnalyticInverse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ExactSourceRelativeRepresentations/Variant340ee1d86c16a661/DocumentedAnalyticInverse.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0625ca3865b8e8f05b4424581193784b11c44763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04ead74caad1c19062d23d0b8f80c3cd1cf42dacf443d60d34da781cc078687b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ExactSourceRelativeRepresentations/Variant340ee1d86c16a661/DocumentedAnalyticInverse.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
