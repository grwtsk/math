# ReifiedBVPred.of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a143d71e0df503da40b709d41517afad6538fdc531577cf3fa86944d1c7e928a",
  "kind": "def",
  "lexical_name": "ReifiedBVPred.of",
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
  "slug": "reifiedbvpred-of",
  "source": {
    "blob": "9d32708c727fd6a64789e7d836762a6bc71db988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantfc941a2fc05ea5c460a05a4fda2ad188d47232f34d0945982430346d0b93b963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:434299ddbe4bf2da062fc05dc75e445a6cde48985e4fb0192b164d73d5eec583",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReifyPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a143d71e0df503da40b709d41517afad6538fdc531577cf3fa86944d1c7e928a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def ReifiedBVPred.of (origExpr : Expr) : LemmaM (Option ReifiedBVPred) := do
  LemmaM.withBVPredCache origExpr fun origExpr => do
    match ← go origExpr with
    | some pred => return some pred
    | none => ReifiedBVPred.boolAtom origExpr
where
  /--
  Reify `origExpr`, returns `none` if the reification procedure failed.
  -/
  go (origExpr : Expr) : LemmaM (Option ReifiedBVPred) := do
    match_expr origExpr with
    | BEq.beq α _ lhsExpr rhsExpr =>
      let_expr BitVec _ := α | return none
      binaryReflection lhsExpr rhsExpr .eq origExpr
    | BitVec.ult _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .ult origExpr
    | BitVec.getLsbD _ subExpr idxExpr =>
      let some sub ← ReifiedBVExpr.of subExpr | return none
      let some idx ← getNatValue? idxExpr | return none
      return some (← ReifiedBVPred.mkGetLsbD sub subExpr idx origExpr)
    | _ => return none

  binaryReflection (lhsExpr rhsExpr : Expr) (pred : BVBinPred) (origExpr : Expr) :
      LemmaM (Option ReifiedBVPred) := do
    let some lhs ← ReifiedBVExpr.of lhsExpr | return none
    let some rhs ← ReifiedBVExpr.of rhsExpr | return none
    ReifiedBVPred.mkBinPred lhs rhs lhsExpr rhsExpr pred origExpr

/--
Reify an `Expr` that is a boolean expression containing predicates about `BitVec` as atoms.
Unless this function is called on something that is not a `Bool` it is always going to return `some`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReifyPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantfc941a2fc05ea5c460a05a4fda2ad188d47232f34d0945982430346d0b93b963.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d32708c727fd6a64789e7d836762a6bc71db988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f57be6b0ed414d5b41a72a40d6cb7df4c17d322bbc94c8945bafed82c39e4ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantfc941a2fc05ea5c460a05a4fda2ad188d47232f34d0945982430346d0b93b963.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
