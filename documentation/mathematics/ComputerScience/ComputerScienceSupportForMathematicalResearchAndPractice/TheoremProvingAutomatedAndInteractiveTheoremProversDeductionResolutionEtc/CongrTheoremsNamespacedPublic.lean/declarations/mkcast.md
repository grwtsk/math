# mkCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:486f97029408e356b0721cf7087137425ae0f3a2864b4c183b5cbb05f3082095",
  "kind": "def",
  "lexical_name": "mkCast",
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
  "slug": "mkcast",
  "source": {
    "blob": "e593393d2884ed01fe5b1a6f3b325e9a9c76bd12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23fe056a01b8dfa4571e8721614ae76e491b4732630f4beba7d84221f669936e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrTheoremsNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:486f97029408e356b0721cf7087137425ae0f3a2864b4c183b5cbb05f3082095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkCast (fvarId : FVarId) (type : Expr) (deps : Array Nat) (eqs : Array (Option EqInfo)) : MetaM Expr := do
  -- Remark: we use the `subst` tactic to avoid re-implementing the `revert`/`intro` logic used there.
  let eqs := deps.filterMap fun idx => eqs[idx]!
  if eqs.isEmpty then return mkFVar fvarId
  let mvar ← mkFreshExprMVar type
  let mut mvarId := mvar.mvarId!
  let mut s : FVarSubst := {}
  for eq in eqs do
    match eq with
    | .hyp fvarId =>
      let fvarId := getFVarId s fvarId
      let (s', mvarId') ← substCore mvarId fvarId (symm := true) s
      s := s'
      mvarId := mvarId'
    | .decSubsingleton lhsFVarId rhsFVarId =>
      let lhsFVarId := getFVarId s lhsFVarId
      let rhsFVarId := getFVarId s rhsFVarId
      let lhs := mkFVar lhsFVarId
      let rhs := mkFVar rhsFVarId
      let eq ← mvarId.withContext <| mkEq lhs rhs
      let h ← mvarId.withContext <| mkAppM ``Subsingleton.elim #[lhs, rhs]
      mvarId ← mvarId.assert `h eq h
      let (fvarId', mvarId') ← mvarId.intro1
      let (s', mvarId') ← substCore mvarId' fvarId' (symm := true) s
      s := s'
      mvarId := mvarId'
  let fvarId := getFVarId s fvarId
  mvarId.assign (mkFVar fvarId)
  instantiateMVars mvar

/--
Creates a congruence theorem that is useful for the simplifier and `congr` tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrTheoremsNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e593393d2884ed01fe5b1a6f3b325e9a9c76bd12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d43d3b5c453568bb52f3359509a2dd7e48a993c77190344be712bdc481008c93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
