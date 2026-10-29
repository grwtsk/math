# HasAddFundamentalDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c883ca217243d83e0a5428ea01d56a27c62b5cb5e9a5674c4ca50ac2a13c7bad",
  "kind": "class",
  "lexical_name": "HasAddFundamentalDomain",
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
  "slug": "hasaddfundamentaldomain--76e7aecb77b8ffd0ab05d1ec",
  "source": {
    "blob": "5e9b5177031108464bab07bc7c073dd351f89dd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 662,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76e7aecb77b8ffd0ab05d1ecef0f4cc7648a588a4b5c04f1bde972cdc5c35b04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c883ca217243d83e0a5428ea01d56a27c62b5cb5e9a5674c4ca50ac2a13c7bad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasAddFundamentalDomain (G α : Type*) [Zero G] [VAdd G α] [MeasurableSpace α]
    (ν : Measure α := by volume_tac) : Prop where
  ExistsIsAddFundamentalDomain : ∃ s : Set α, IsAddFundamentalDomain G s ν

/-- We say a quotient of `α` by `G` `HasFundamentalDomain` if there is a measurable set `s` for
  which `IsFundamentalDomain G s` holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e9b5177031108464bab07bc7c073dd351f89dd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=414b94326ebc6ee158315190f02e51e0697c587e6d18f0fe6e932087819c7e62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
