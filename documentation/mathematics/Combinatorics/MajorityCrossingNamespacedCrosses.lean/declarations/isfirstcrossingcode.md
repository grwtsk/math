# IsFirstCrossingCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8984674878cef299459334291e55d7ecd6b9ccdf6b1b0c31fadd739926360b9e",
  "kind": "structure",
  "lexical_name": "IsFirstCrossingCode",
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
  "slug": "isfirstcrossingcode",
  "source": {
    "blob": "4c67d361997688018e4bfadf52108e49c4f68304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a759ba89b849a4dbc00e64b6f80945b14a1c3bf7ebba79ee87e6327910e6b056",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/MajorityCrossingNamespacedCrosses.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8984674878cef299459334291e55d7ecd6b9ccdf6b1b0c31fadd739926360b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsFirstCrossingCode
    (magnitude : Nat)
    (word : List Bool) : Prop where
  magnitudePositive :
    0 < magnitude
  lengthPositive :
    1 ≤ word.length
  lengthBounded :
    word.length ≤ magnitude
  selectedCount_eq :
    selectedCount word =
      majorityThreshold magnitude
  terminalSelected :
    word.getLast? = some true
  everyPriorPrefixBelow :
    ∀ prefix,
      ProperPrefix prefix word →
      selectedCount prefix <
        majorityThreshold magnitude

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/MajorityCrossingNamespacedCrosses.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c67d361997688018e4bfadf52108e49c4f68304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ac38e32f0e67a3bf8fa1d845e96a04a75108461e71a75e27981f342d5f51534 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
