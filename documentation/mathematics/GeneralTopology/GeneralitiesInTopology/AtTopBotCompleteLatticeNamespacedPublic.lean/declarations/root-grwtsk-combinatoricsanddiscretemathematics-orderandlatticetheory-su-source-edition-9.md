# ciSup_comp_tendsto_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdc7000e-ba09-728e-8595-de050a4b9553",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SubsingletonAtTopEq.Variantff0a6afdf5928a0163607dc199804c38403d1aad3eb7b6cbda744bdcafd72033.Antitone.ciSup_comp_tendsto_atBot",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-su-source-edition-9",
  "source": {
    "blob": "1b5f39e9e408286d3430014ee4bb9583b7b8661e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe4fd04f4d3b0011a6cd27d3c439a6dd9e1a93607feac629f1f1dc8e77f47376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e762ff0d2569c0b83dd4cd49638149e81a35cb220fb399b43315ca35bcc11208",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/GeneralitiesInTopology/AtTopBotCompleteLatticeNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdc7000e-ba09-728e-8595-de050a4b9553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SubsingletonAtTopEq.Variantff0a6afdf5928a0163607dc199804c38403d1aad3eb7b6cbda744bdcafd72033.Antitone.ciSup_comp_tendsto_atBot [Preorder β] [ConditionallyCompleteLattice γ]
    {l : Filter α} [l.NeBot] {f : β → γ} (hf : Antitone f) (hb : BddAbove (range f))
    {g : α → β} (hg : Tendsto g l atBot) : ⨆ a, f (g a) = ⨆ b, f b :=
  hf.dual_left.ciSup_comp_tendsto_atTop hb hg

/-- If `f` is a monotone function taking values in a conditionally complete linear order
and `g` tends to `atTop` along a nontrivial filter,
then the indexed supremum of `f ∘ g` is equal to the indexed supremum of `f`. -/
@[to_dual
/-- If `f` is a monotone function taking values in a conditionally complete linear order
and `g` tends to `atBot` along a nontrivial filter,
then the indexed infimum of `f ∘ g` is equal to the indexed infimum of `f`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralTopology/GeneralitiesInTopology/AtTopBotCompleteLatticeNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe4fd04f4d3b0011a6cd27d3c439a6dd9e1a93607feac629f1f1dc8e77f47376.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b5f39e9e408286d3430014ee4bb9583b7b8661e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67b62bf62e268a20c013b738dc7d541e73dfdd4758ab0690e3ae9409dbe6251a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe4fd04f4d3b0011a6cd27d3c439a6dd9e1a93607feac629f1f1dc8e77f47376.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
