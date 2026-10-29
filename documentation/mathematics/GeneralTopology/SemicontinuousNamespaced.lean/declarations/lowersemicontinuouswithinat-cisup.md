# lowerSemicontinuousWithinAt_ciSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a27def7b-1637-90ef-a7b8-77c627640a20",
  "kind": "theorem",
  "lexical_name": "lowerSemicontinuousWithinAt_ciSup",
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
  "slug": "lowersemicontinuouswithinat-cisup",
  "source": {
    "blob": "f469bca6e9ca2ec3703fce6cc168ac9146931f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 558,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant8eb931c5e767af77b2b1167724dde6ddc6971f61e84afef2f8c07f8bf4ee2400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc8c9f6817f424c2838515f1d284a8be991631470ce3f19144dfaec5a07777dd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/SemicontinuousNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a27def7b-1637-90ef-a7b8-77c627640a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerSemicontinuousWithinAt_ciSup {f : ι → α → δ'}
    (bdd : ∀ᶠ y in 𝓝[s] x, BddAbove (range fun i => f i y))
    (h : ∀ i, LowerSemicontinuousWithinAt (f i) s x) :
    LowerSemicontinuousWithinAt (fun x' => ⨆ i, f i x') s x := by
  cases isEmpty_or_nonempty ι
  · simpa only [iSup_of_empty'] using lowerSemicontinuousWithinAt_const
  · intro y hy
    rcases exists_lt_of_lt_ciSup hy with ⟨i, hi⟩
    filter_upwards [h i y hi, bdd]with y hy hy' using hy.trans_le (le_ciSup hy' i)
#align lower_semicontinuous_within_at_csupr lowerSemicontinuousWithinAt_ciSup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/SemicontinuousNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant8eb931c5e767af77b2b1167724dde6ddc6971f61e84afef2f8c07f8bf4ee2400.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f469bca6e9ca2ec3703fce6cc168ac9146931f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd16039eb0ab5514601200be836da02b4a4e90634cb6bc6bf3209853ff467690 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant8eb931c5e767af77b2b1167724dde6ddc6971f61e84afef2f8c07f8bf4ee2400.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
