# subsumesInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78d191f2a66a0f05766ccb1d4ee789c55918c6a21dec9e90d2c4af79e11b0573",
  "kind": "def",
  "lexical_name": "subsumesInfo",
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
  "slug": "subsumesinfo",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2314,
    "line": 2276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0618e78484f84ca671430aaae4b18a4827f5a50ae7d5e8ae6b5ff2c63d91b661",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EnvironmentNamespacedPublicModuleIdx.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78d191f2a66a0f05766ccb1d4ee789c55918c6a21dec9e90d2c4af79e11b0573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2276–2314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def subsumesInfo (constMap : Std.HashMap Name ConstantInfo) (cinfo₁ cinfo₂ : ConstantInfo) : Bool :=
  cinfo₁.name == cinfo₂.name &&
    cinfo₁.type == cinfo₂.type &&
    cinfo₁.levelParams == cinfo₂.levelParams &&
    match cinfo₁, cinfo₂ with
    | .thmInfo tval₁, .thmInfo tval₂ => tval₁.all == tval₂.all
    | .thmInfo tval₁, .axiomInfo aval₂ => tval₁.all == [aval₂.name] && !aval₂.isUnsafe
    | .axiomInfo aval₁, .axiomInfo aval₂ =>
      -- In this case, we cannot a priori assume that both axioms came from theorems and thus their
      -- former bodies are irrelevant - they could be both from definitions with different bodies
      -- that were used to derive statements that would be contradictory if the axioms were merged.
      -- Thus we do a rough, pure approximation of `Lean.Meta.isProp` that is sufficient for the
      -- restricted types we use for realizable theorems and ensures the former bodies of the two
      -- axioms must be irrelevant after all.
      aval₁.isUnsafe == aval₂.isUnsafe && isPropCheap aval₁.type
    | _, _ => false
where
  /--
  Check if `ty = ∀ ..., p xs...` and `p : ∀ args..., Prop` where `xs` and `args` are of the same
  length.
  -/
  isPropCheap (ty : Expr) : Bool := Id.run do
    let mut ty := ty
    while ty.isForall do
      let .forallE (body := body) .. := ty | return false
      ty := body
    let .const n .. := ty.getAppFn | return false
    let some decl := constMap[n]? | return false
    let mut p := decl.type
    for _ in 0...ty.getAppNumArgs do
      let .forallE (body := body) .. := p | return false
      p := body
    p.isProp

/--
Constructs environment from `importModulesCore` results.

See also `importModules` for parameter documentation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EnvironmentNamespacedPublicModuleIdx.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L2276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c8382fb203837fc045a3eb62a0f3f0a8f26db2cb3e443404635f18c6708f5d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
