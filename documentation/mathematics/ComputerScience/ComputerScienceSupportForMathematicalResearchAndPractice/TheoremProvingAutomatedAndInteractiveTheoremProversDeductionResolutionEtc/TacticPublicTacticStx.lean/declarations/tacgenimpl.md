# tacGenImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb7daff124095383b8a6e589dae3ad5f2ed3dd734d2b2deb69173ee73e1c84d8",
  "kind": "def",
  "lexical_name": "tacGenImpl",
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
  "slug": "tacgenimpl",
  "source": {
    "blob": "ca27a58658edca8199bb332c61321ddb0c523b4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b3d5e07c582b1ac77786200b74e7ed2956095d6ae4590c1578bfad686d4fd5c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicTacticStx.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb7daff124095383b8a6e589dae3ad5f2ed3dd734d2b2deb69173ee73e1c84d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def tacGenImpl (decl : Name) : RuleTac := λ input => do
  let tacGen ← evalConst TacGen decl
  let initialState ← saveState
  let suggestions ← tacGen input.goal
  let mut apps := Array.mkEmpty suggestions.size
  let mut errors : Array (String × Exception) := Array.mkEmpty suggestions.size
  for (tacticStr, successProbability) in suggestions do
    initialState.restore
    let env ← getEnv
    try
      let some successProbability := Percent.ofFloat successProbability
        | throwError "invalid success probability '{successProbability}', must be between 0 and 1"
      let .ok stx :=
        Parser.runParserCategory env `tactic tacticStr (fileName := "<stdin>")
        | throwError "failed to parse tactic syntax{indentD tacticStr}"
      let postGoals := (← run input.goal (evalTactic stx) |>.run').toArray
      let postState ← saveState
      if let some proof ← getExprMVarAssignment? input.goal then
        if ← hasSorry proof then
          throwError "generated proof contains sorry"
      let step := {
        preState := initialState
        preGoal := input.goal
        tacticBuilders := #[return .unstructured ⟨stx⟩]
        postState, postGoals
      }
      let postGoals ←
        postGoals.mapM (mvarIdToSubgoal (parentMVarId := input.goal) ·)
      apps := apps.push {
        goals := postGoals
        scriptSteps? := some #[step]
        successProbability? := successProbability
        postState
      }
    catch e =>
      errors := errors.push (tacticStr, e)
  if apps.isEmpty then throwError
    "Failed to apply any tactics generated. Errors:{indentD $ MessageData.joinSep (errors.toList.map (λ (tac, e) => m!"{tac}: {e.toMessageData}")) "\n"}"
  return ⟨apps⟩

-- Precondition: `decl` has type `TacGen`.
@[implemented_by tacGenImpl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicTacticStx.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca27a58658edca8199bb332c61321ddb0c523b4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a81dd9674dd4630b6d168ad0aed9e87958e3bc070851805c559f3db62589e126 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
