# inlineExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8484f32b72c7bfa6802dd6599160eebddda8b8b4d6fa57b3739d8e08d245ac0d",
  "kind": "def",
  "lexical_name": "inlineExpr",
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
  "slug": "inlineexpr",
  "source": {
    "blob": "5e2281389fe25ed6d76c50e2d78bed7a16b3ab36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 781,
    "line": 766,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ce4f264642d4b61eff66cea1b4ac11f1f82f570b449df1380e120f99eb93508",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MessagePublicMkErrorStringWithPos.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8484f32b72c7bfa6802dd6599160eebddda8b8b4d6fa57b3739d8e08d245ac0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–781.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inlineExpr (e : Expr) (maxInlineLength := 30) : MessageData :=
  .lazy
    (fun ctx => do
      let msg := MessageData.ofExpr e
      let render ← msg.formatExpensively ctx
      if render.positions.length > maxInlineLength || render.any (· == '\n') then
        return indentD msg ++ "\n"
      else
        return " `" ++ msg ++ "` ")
    (fun mctx => instantiateMVarsCore mctx e |>.1.hasSyntheticSorry)
    (fun () => return " `" ++ MessageData.ofExpr e ++ "` ")

/--
See `Lean.inlineExpr`. This variation is to be used when the expression is the trailing element of a
message; it does not append a newline or space after the expression.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MessagePublicMkErrorStringWithPos.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2281389fe25ed6d76c50e2d78bed7a16b3ab36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f66cef9f1178bdef46476afbb956c7c3959167a808b88a15bf47f2a512aea951 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
