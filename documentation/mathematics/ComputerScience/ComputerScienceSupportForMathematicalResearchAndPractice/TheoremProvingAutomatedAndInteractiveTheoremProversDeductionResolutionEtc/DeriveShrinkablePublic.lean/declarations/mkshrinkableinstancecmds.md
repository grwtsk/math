# mkShrinkableInstanceCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95e50fba7a899eba786123dfdcfc717b23d867fe0f3f8ffbacfc3068c6aaaeba",
  "kind": "def",
  "lexical_name": "mkShrinkableInstanceCmds",
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
  "slug": "mkshrinkableinstancecmds",
  "source": {
    "blob": "324a8ef9f79136c8d56d6d96a3170ba570dc9038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bec4d6440c1faa878defb6a20e42afa47cd1f2d67e83a7221454f128bdb914c7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95e50fba7a899eba786123dfdcfc717b23d867fe0f3f8ffbacfc3068c6aaaeba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkShrinkableInstanceCmds (ctx : Deriving.Context) (typeNames : Array Name) :
    TermElabM (Array Command) := do
  let mut instances := #[]
  for i in 0...ctx.typeInfos.size do
    let indVal := ctx.typeInfos[i]!
    if typeNames.contains indVal.name then
      let auxFunName := ctx.auxFunNames[i]!
      let argNames ← mkInductArgNames indVal
      let binders ← mkImplicitBinders argNames
      let binders := binders ++ (← mkInstImplicitBinders ``Plausible.Shrinkable indVal argNames)
      let indType ← mkInductiveApp indVal argNames
      let type ← `(Shrinkable $indType)
      let instCmd ← `(instance $binders:implicitBinder* : $type := ⟨$(mkIdent auxFunName)⟩)
      instances := instances.push instCmd
  return instances

/-- Derives a `Shrinkable` instance for a single inductive type -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `324a8ef9f79136c8d56d6d96a3170ba570dc9038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=803dd0ede312f02122865d3ec421961c1d7d1b8fc15e839ea820892c3c5a22f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
