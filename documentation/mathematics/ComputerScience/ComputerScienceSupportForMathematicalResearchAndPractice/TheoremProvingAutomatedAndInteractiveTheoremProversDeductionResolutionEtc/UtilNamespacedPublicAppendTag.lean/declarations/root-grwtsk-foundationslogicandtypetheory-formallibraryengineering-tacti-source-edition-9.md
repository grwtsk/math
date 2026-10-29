# getNondepPropHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e11b8fd03a134003f072219dafc83b749e0f08e96ad47811130f292dec64cd56",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.getNondepPropHyps",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-tacti-source-edition-9",
  "source": {
    "blob": "eb0c9dec45a7469361a15ed6373dfc71305ec31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant34437610092ad24f9e2be82a3fb7216abb295fa08de119bb656ad719be670f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9c2f72c2d3bbc7eb48d63a10c735155b66f4ce6a71a8df60b8420ad0003848f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicAppendTag.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e11b8fd03a134003f072219dafc83b749e0f08e96ad47811130f292dec64cd56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticResultCNM.Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.Lean.MVarId.getNondepPropHyps (mvarId : MVarId) : MetaM (Array FVarId) :=
  let removeDeps (e : Expr) (candidates : FVarIdHashSet) : MetaM FVarIdHashSet := do
    let e ← instantiateMVars e
    let visit : StateRefT FVarIdHashSet MetaM FVarIdHashSet := do
      if e.hasFVar then
        e.forEachWhere Expr.isFVar fun e => modify fun s => s.erase e.fvarId!
      get
    visit |>.run' candidates
  mvarId.withContext do
    let mut candidates : FVarIdHashSet := {}
    for localDecl in (← getLCtx) do
      unless localDecl.isImplementationDetail do
        candidates ← removeDeps localDecl.type candidates
        match localDecl.value? with
        | none => pure ()
        | some value => candidates ← removeDeps value candidates
        if (← isProp localDecl.type) && !localDecl.hasValue then
          candidates := candidates.insert localDecl.fvarId
    candidates ← removeDeps (← mvarId.getType) candidates
    if candidates.isEmpty then
      return #[]
    else
      let mut result := #[]
      for localDecl in (← getLCtx) do
        if candidates.contains localDecl.fvarId then
          result := result.push localDecl.fvarId
      return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicAppendTag.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant34437610092ad24f9e2be82a3fb7216abb295fa08de119bb656ad719be670f97.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0c9dec45a7469361a15ed6373dfc71305ec31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c55aaa5b5139f99c5591ac6af8262292622674a92451fe48d4d550b334e6973d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant34437610092ad24f9e2be82a3fb7216abb295fa08de119bb656ad719be670f97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
