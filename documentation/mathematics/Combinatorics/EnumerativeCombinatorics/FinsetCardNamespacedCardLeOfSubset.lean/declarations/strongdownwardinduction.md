# strongDownwardInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0dbe8dc2c3a077ef2bc29dee82d5d8619546c270ebab1034d356211f50ed6b0",
  "kind": "def",
  "lexical_name": "strongDownwardInduction",
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
  "slug": "strongdownwardinduction",
  "source": {
    "blob": "57681603e1333aca631464bbf2985eda8adfae38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 680,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant6b5753381857742ba704a1a3708e5114682ea2e6fdd2f102c8293c1e67e30e59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8f7692bcf678bbe964679e0fdb9a7c34cba127b7ee9ca4b6328fb256c9347c6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeOfSubset.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0dbe8dc2c3a077ef2bc29dee82d5d8619546c270ebab1034d356211f50ed6b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def strongDownwardInduction {p : Finset α → Sort*} {n : ℕ}
    (H : ∀ t₁, (∀ {t₂ : Finset α}, t₂.card ≤ n → t₁ ⊂ t₂ → p t₂) → t₁.card ≤ n → p t₁) :
    ∀ s : Finset α, s.card ≤ n → p s
  | s =>
    H s fun {t} ht h =>
      have : n - t.card < n - s.card := (tsub_lt_tsub_iff_left_of_le ht).2 (Finset.card_lt_card h)
      strongDownwardInduction H t ht
  termination_by strongDownwardInduction s => n - s.card
#align finset.strong_downward_induction Finset.strongDownwardInduction

@[nolint unusedHavesSuffices] --Porting note: false positive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeOfSubset.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant6b5753381857742ba704a1a3708e5114682ea2e6fdd2f102c8293c1e67e30e59.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57681603e1333aca631464bbf2985eda8adfae38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51faa3917208c807a8ee7609eacd25e092ebd1b7269040ebc9512cb2de1bc448 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant6b5753381857742ba704a1a3708e5114682ea2e6fdd2f102c8293c1e67e30e59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
