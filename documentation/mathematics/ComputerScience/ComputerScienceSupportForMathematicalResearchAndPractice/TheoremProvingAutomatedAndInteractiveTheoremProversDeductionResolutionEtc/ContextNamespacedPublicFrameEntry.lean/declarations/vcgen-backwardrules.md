# VCGen.BackwardRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af18b8ad8cf426c5b42a15812b55c0946a008922bda554ad39b545089818887f",
  "kind": "structure",
  "lexical_name": "VCGen.BackwardRules",
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
  "slug": "vcgen-backwardrules",
  "source": {
    "blob": "58f14342b51dd1104999a5d1e021a92d8a37ab47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianteec95f239c0b153ac72169b71177159320bb13496dbe54317e55543ee0d88103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9277ad988ff19d741f6c14fea3edb47a39f13eb0833fde104cc62366961cd9db",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContextNamespacedPublicFrameEntry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af18b8ad8cf426c5b42a15812b55c0946a008922bda554ad39b545089818887f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure VCGen.BackwardRules where
  /-- The backward rule for `Triple.intro`. Unfolds `⦃P⦄ x ⦃Q; E⦄` into `P ⊑ wp x Q E`. -/
  tripleIntro : BackwardRule
  /-- The backward rule for `Lean.Order.le_of_forall_le`. Peels one excess state argument
  from a function-lattice entailment. -/
  stateArgIntro : BackwardRule
  /-- The backward rule for `Lean.Order.le_of_imp_top_le`. Introduces a bare pure
  precondition on the `Prop` lattice. -/
  propPreIntro : BackwardRule
  /-- The backward rule for `Lean.Order.ofProp_le`. Introduces an embedded pure
  precondition `⌜p⌝` on any complete lattice. -/
  ofPropPreIntro : BackwardRule
  /-- The backward rule for `Lean.Order.true_le_of_top_le`. Replaces a `True` precondition
  with `⊤` on the `Prop` lattice. -/
  truePreIntro : BackwardRule
  /-- The backward rule for `Lean.Order.top_le_prop`. Strips a `(⊤ : Prop) ⊑ ·` wrapper
  from a VC before it is emitted. -/
  elimPre : BackwardRule
  /-- The backward rule for `And.intro`. -/
  andIntro : BackwardRule
  /-- The backward rule for `Lean.Order.PartialOrder.rel_refl`. Closes a reflexive
  entailment `pre ⊑ pre`. -/
  refl : BackwardRule
  /-- The backward rule for `meet_top_le_of_le`. Cancels a redundant `⊓ ⊤` on the left of an
  entailment, turning `P ⊓ ⊤ ⊑ Q` into `P ⊑ Q`. -/
  meetTop : BackwardRule

/-- Build the backward rules used by `solve` from their underlying lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContextNamespacedPublicFrameEntry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianteec95f239c0b153ac72169b71177159320bb13496dbe54317e55543ee0d88103.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f14342b51dd1104999a5d1e021a92d8a37ab47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17c85bc000749e4a7e18cf30aafbb4a098d4467874810746a5f689b4baacf510 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianteec95f239c0b153ac72169b71177159320bb13496dbe54317e55543ee0d88103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
