# solve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:887ab57e5758018e46d3b7ae543ce1580baaf9468d553ab47f165051a0c2f661",
  "kind": "def",
  "lexical_name": "solve",
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
  "slug": "solve",
  "source": {
    "blob": "a132a66f99f5b4590b5de5c3d7eca5dc970a577a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c270e458b5428e5605bf3913bc09a62fcdfe9c5afc6e604c70ec1cbfd902252d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LevelDefEqNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:887ab57e5758018e46d3b7ae543ce1580baaf9468d553ab47f165051a0c2f661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def solve (u v : Level) : MetaM LBool := do
    match u, v with
    | Level.mvar mvarId, _ =>
      if (← mvarId.isReadOnly) then
        return LBool.undef
      else if (← isMVarWithGreaterDepth v mvarId) then
        -- If both `u` and `v` are both metavariables, but depth of v is greater, then we assign `v := u`.
        -- This can only happen when levelAssignDepth is set to a smaller value than depth (e.g. during TC synthesis)
        trace[Meta.isLevelDefEq.step] "{v} := {u}"
        assignLevelMVar v.mvarId! u
        return LBool.true
      else if !u.occurs v then
        trace[Meta.isLevelDefEq.step] "{u} := {v}"
        assignLevelMVar u.mvarId! v
        return LBool.true
      else if v.isMax && !strictOccursMax u v then
        solveSelfMax u.mvarId! v
        return LBool.true
      else
        return LBool.undef
    | _, Level.mvar .. => return LBool.undef -- Let `solve v u` to handle this case
    | Level.zero, Level.max v₁ v₂ =>
      Bool.toLBool <$> (isLevelDefEqAux Level.zero v₁ <&&> isLevelDefEqAux Level.zero v₂)
    | Level.zero, Level.imax _ v₂ =>
      Bool.toLBool <$> isLevelDefEqAux Level.zero v₂
    | Level.zero, Level.succ .. => return LBool.false
    | Level.succ u, v =>
      if v.isParam then
        return LBool.false
      else if u.isMVar && u.occurs v then
        return LBool.undef
      else
        match (← Meta.decLevel? v) with
        | some v => Bool.toLBool <$> isLevelDefEqAux u v
        | none   => return LBool.undef
    | _, _ =>
      if (← read).univApprox then
        if (← tryApproxSelfMax u v) then
          return LBool.true
        if (← tryApproxMaxMax u v) then
          return LBool.true
      return LBool.undef

  @[export lean_is_level_def_eq]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LevelDefEqNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a132a66f99f5b4590b5de5c3d7eca5dc970a577a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=962f5b06367c96688b65716514cccb8daa8177f4b62288637d378f0e9a17bdbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
