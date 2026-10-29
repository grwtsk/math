# ConditionalPlacePassivity.toCapacity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ebd7a5849e0ceb346070abe90f4ae45e855113a377a738cce28cf65986cb9fe",
  "kind": "def",
  "lexical_name": "ConditionalPlacePassivity.toCapacity",
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
  "slug": "conditionalplacepassivity-tocapacity",
  "source": {
    "blob": "5ce060d483e5e8f7074629ffbd7db79cf37ac89c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalPassivity/Variant6e99eedfcce112b0195664ff3e68fe0777f40ade422e9ae14e2f0d7826405e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f914fb0b3e5bf50b57e4b137dfc3e135b7d4303acc6a3cf22b2b2c8677ed628d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/ConditionalPassivityNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ebd7a5849e0ceb346070abe90f4ae45e855113a377a738cce28cf65986cb9fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConditionalPlacePassivity.toCapacity
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {hardy : HardyDefectFamily model Prime}
    (passivity :
      ConditionalPlacePassivity hardy) :
    PrimeCutDefectCapacity model Prime where
  defect := hardy.defect
  selfAdjoint := hardy.selfAdjoint
  nonnegative := hardy.nonnegative
  boundedByIdentity :=
    passivity.boundedByIdentity
  monotone := passivity.monotone
  digest := ⟨hardy.digest.value⟩

end Mathematics.SemiLocalDefect.Hardy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/ConditionalPassivityNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalPassivity/Variant6e99eedfcce112b0195664ff3e68fe0777f40ade422e9ae14e2f0d7826405e3e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce060d483e5e8f7074629ffbd7db79cf37ac89c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e25bd10e2314b5da98f2247ffa2c5f95468e2a72e9e16eadeefdf142c4b91ec8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalPassivity/Variant6e99eedfcce112b0195664ff3e68fe0777f40ade422e9ae14e2f0d7826405e3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
