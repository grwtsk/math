# classifyInvariantUse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4176748f75afaa7ee197a51d1d6346566b811e1d1de892bef63acf07a920e7a",
  "kind": "def",
  "lexical_name": "classifyInvariantUse",
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
  "slug": "classifyinvariantuse",
  "source": {
    "blob": "61262511d113b689159480e4d4e106eef227e231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e33fc49d79762a914f92a1a26bf6efe30e2d8aa0a0534565d4cdd1b7dc4ad2a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SuggestInvariantPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4176748f75afaa7ee197a51d1d6346566b811e1d1de892bef63acf07a920e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classifyInvariantUse (assertion : Expr) (inv : MVarId) : ClassifyInvariantUseResult := Id.run do
  -- Looking through metadata here is important because of the name hints the proof mode leaves behind
  let assertion := assertion.consumeMData
  -- `assertion` looks like `?inv.2.2....1 payload args`. The number of `2`s is the condition index.
  -- The 0 index case is the success condition case and by far the most common.
  -- There we have `assertion = ?inv.1 payload args`.
  -- The chain of `.2.2...1` is normalized to nested applications of `Prod.fst` and `Prod.snd`:
  --   `@Prod.fst _ _ (@Prod.snd _ _ (@Prod.snd _ _ ... ?inv)) payload args`
  if !assertion.isAppOf ``Prod.fst then return .notAnInvariantUse
  let mut head := assertion.getArg! 2 -- indices 0 and 1 are type args
  let mut conditionIdx := 0
  while head != mkMVar inv do
    if !head.isAppOfArity ``Prod.snd 4 then return .notAnInvariantUse -- cannot classify as a use of the invariant!
    conditionIdx := conditionIdx + 1
    head := head.getRevArg! 1
  -- `head` is ?inv => Found the end of the chain.
  -- conditionIdx is the number of `Prod.snd`s in the chain, and ?inv really is the end of the chain.

  let args := assertion.getAppArgs
  -- logWarning m!"Found Prod.fst. Args: {args}"
  if args.size < 4 then return .notAnInvariantUse -- not an overapplication of `Prod.fst`. Types should prohibit this case
  let payload := args[3]!
  let stateArgs := args[4:]
  -- `stateArgs` can be non-empty when `σs` is non-empty.
  -- logWarning m!"Payload: {payload}"

  let_expr Prod.mk _ _ cursor letMutsTuple := payload | return .unknownInvariantUse -- NB: be conservative here
  let_expr List.Cursor.mk _α _l pref suff _prf := cursor | return .unknownInvariantUse -- dito
  let mut acc := letMutsTuple
  let mut letMuts := #[]
  while acc.isAppOfArity ``Prod.mk 4 do
    letMuts := letMuts.push (acc.getArg! 2)
    acc := acc.getArg! 3
  letMuts := letMuts.push acc
  return .success { conditionIdx, cursorPrefix := pref, cursorSuffix := suff, letMuts, letMutsTuple, stateArgs }

/--
Returns `some (ρ, σ)` if `letMutsTy` is of the form `Prod (Option ρ) σ` and every VC in `vcs`
uses the `Option ρ` component according to early return semantics.
* `ρ` is the type of early return (`Unit` in case of `break`)
* `σ` is an `n`-ary `Prod`, carrying the current value of the `let mut` variables.
  NB: When `n=0`, we have `Prod (Option ρ) PUnit` rather than `Option ρ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SuggestInvariantPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61262511d113b689159480e4d4e106eef227e231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a45415fb511300a7de7ec7de2f3d25a82703a0fda885e314d066dff3a3b0c788 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
