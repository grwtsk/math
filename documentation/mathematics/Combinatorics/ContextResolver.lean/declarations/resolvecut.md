# resolveCut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94b3f1a36f98c3f2cce958175da03e5c8749920c221c5a98232f03b23e2b776e",
  "kind": "def",
  "lexical_name": "resolveCut",
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
  "slug": "resolvecut",
  "source": {
    "blob": "1ab89f27567d1935753fdb23d5a9585a81757d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71ef87195b269174c6ece59b505615d114e0502140533a9ff3b215f416ebb427",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/ContextResolver.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94b3f1a36f98c3f2cce958175da03e5c8749920c221c5a98232f03b23e2b776e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveCut
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    ContextResolution validator profile cut :=
  if valid : validator.Valid cut then
    if closed :
        unresolved cut.core.obligations checker
          cut.core.proofRegistry = ∅ then
      let certificate :=
        fixedCertificateOfUnresolvedEmpty
          cut.core.obligations checker
          cut.core.proofRegistry closed
      .solved valid
        (profile.buildSolution cut certificate) certificate
    else
      let nonempty := Finset.nonempty_iff_ne_empty.mpr closed
      .unknown valid
        (profile.firstPacket cut nonempty)
        (profile.continuation cut nonempty)
        ⟨nonempty, True, True.intro⟩
  else
    .rejected (validator.classifyFailure cut) valid

end Mathematics.Resolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/ContextResolver.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab89f27567d1935753fdb23d5a9585a81757d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86aec9fe995c192c675a1a012ee7d589c41c592fd86650a9272efbe761275c01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
