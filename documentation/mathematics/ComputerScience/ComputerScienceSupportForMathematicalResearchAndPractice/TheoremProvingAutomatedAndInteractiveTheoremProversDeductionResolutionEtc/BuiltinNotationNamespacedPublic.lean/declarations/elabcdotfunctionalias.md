# elabCDotFunctionAlias?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f59394a0a9fe51c007faa471e58ba9ab8bce4b46867b42f9dfd67bcd412f89f4",
  "kind": "def",
  "lexical_name": "elabCDotFunctionAlias?",
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
  "slug": "elabcdotfunctionalias",
  "source": {
    "blob": "3420ebb6df810a5218fbfe80f93c70893eada123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de43ea144fae962d5004e061146fd6bdebcdff3fdcba20c9d326cfa796ad5580",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f59394a0a9fe51c007faa471e58ba9ab8bce4b46867b42f9dfd67bcd412f89f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabCDotFunctionAlias? (stx : Term) : TermElabM (Option Expr) := do
  let some stx ← liftMacroM <| expandCDotArg? stx | pure none
  let stx ← liftMacroM <| expandMacros stx
  match stx with
  | `(fun $binders* => $f $args*) =>
    if binders.raw.toList.isPerm args.raw.toList then
      try Term.resolveId? f catch _ => return none
    else
      return none
  | `(fun $binders* => binop% $f $a $b)
  | `(fun $binders* => binop_lazy% $f $a $b)
  | `(fun $binders* => leftact% $f $a $b)
  | `(fun $binders* => rightact% $f $a $b)
  | `(fun $binders* => binrel% $f $a $b)
  | `(fun $binders* => binrel_no_prop% $f $a $b) =>
    if binders == #[a, b] || binders == #[b, a] then
      try Term.resolveId? f catch _ => return none
    else
      return none
  | `(fun $binders* => unop% $f $a) =>
    if binders == #[a] then
      try Term.resolveId? f catch _ => return none
    else
      return none
  | _ => return none
where
  expandCDotArg? (stx : Term) : MacroM (Option Term) :=
    match stx with
    | `(($h:hygieneInfo $e)) => Term.expandCDot? e h.getHygieneInfo
    | _ => Term.expandCDot? stx none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinNotationNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3420ebb6df810a5218fbfe80f93c70893eada123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4328fb22f7fc236f56a71668c3041798ee86bfae653c31bacde5e58f8fff9f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
