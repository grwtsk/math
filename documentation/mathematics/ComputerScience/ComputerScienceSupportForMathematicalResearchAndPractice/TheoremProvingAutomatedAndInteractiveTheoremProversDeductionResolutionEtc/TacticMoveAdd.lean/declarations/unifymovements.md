# unifyMovements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab8451d1bd9d3d5f1c1a1b8c84da8142e3eecb0f6e0ae90d0211497ccc29fc0e",
  "kind": "def",
  "lexical_name": "unifyMovements",
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
  "slug": "unifymovements",
  "source": {
    "blob": "abb6107c6f0c1525bbaf41e0beeff2a2b4118678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 390,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:902096404cf85e7a720d87f03bd1e65f397240e5595251b5d80c2ebd308b88ad",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab8451d1bd9d3d5f1c1a1b8c84da8142e3eecb0f6e0ae90d0211497ccc29fc0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unifyMovements (data : Array (Expr × Bool × Syntax)) (tgt : Expr) :
    MetaM (List (Expr × Bool) × (List MessageData × List Syntax) × Array MessageData) := do
  let ops ← getOps op tgt
  let atoms := (ops.map Prod.fst).flatten.toList.filter (!isBVar ·)
  -- `instr` are the unified user-provided terms, `neverMatched` are non-unified ones
  let (instr, neverMatched) ← pairUp data.toList atoms
  let dbgMsg := #[m!"Matching of input variables:\n\
    * pre-match:  {data.map (Prod.snd ∘ Prod.snd)}\n\
    * post-match: {instr}",
    m!"\nMaximum number of iterations: {ops.size}"]
  -- if there are `neverMatched` terms, return the parsed terms and the syntax
  let errMsg := neverMatched.map fun (t, a, stx) => (if a then m!"← {t}" else m!"{t}", stx)
  return (instr, errMsg.unzip, dbgMsg)

section parsing
open Elab Parser Tactic

/-- `parseArrows` parses an input of the form `[a, ← b, _ * (1 : ℤ)]`, consisting of a list of
terms, each optionally preceded by the arrow `←`.
It returns an array of triples consisting of
* the `Expr`ession corresponding to the parsed term,
* the `Bool`ean `true` if the arrow is present in front of the term,
* the underlying `Syntax` of the given term.

E.g. convert `[a, ← b, _ * (1 : ℤ)]` to
``[(a, false, `(a)), (b, true, `(b)), (_ * 1, false, `(_ * 1))]``.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb6107c6f0c1525bbaf41e0beeff2a2b4118678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a79a37cc4a97a50e52478b36f6935329712c4c5ffd60a35e1293c708e17fe10b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
