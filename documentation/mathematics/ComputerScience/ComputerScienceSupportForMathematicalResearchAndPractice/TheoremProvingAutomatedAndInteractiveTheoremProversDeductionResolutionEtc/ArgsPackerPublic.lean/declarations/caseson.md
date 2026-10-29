# casesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64a868f7638a0bf419e36752e17ea3ec8fa0af11395f31735e077e7d36f45c71",
  "kind": "def",
  "lexical_name": "casesOn",
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
  "slug": "caseson",
  "source": {
    "blob": "0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80c264fc5562073195fc625508209cb1884f0499d5243f4f980b130b49152f12",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64a868f7638a0bf419e36752e17ea3ec8fa0af11395f31735e077e7d36f45c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def casesOn (varNames : List Name) (e : Expr) (u : Level) (codomain : Expr) (alt : Expr) : MetaM Expr := do
  match varNames with
  | [] => return alt
  | [_] => return alt.beta #[e]
  | n :: m :: ns => do
    let t ← inferType e
    match_expr t with
    | PSigma a b =>
      let us := t.getAppFn.constLevels!
      let motive ← mkLambdaFVars #[e] codomain
      let alt ←
        withLocalDeclD n a fun x => do
          withLocalDeclD m (b.beta #[x]) fun y => do
            let codomain' := motive.beta #[mkApp4 (.const ``PSigma.mk us) a b x y]
            mkLambdaFVars #[x,y] (← casesOn (m :: ns) y u codomain' (alt.beta #[x]))
      return mkApp5 (.const ``PSigma.casesOn (u :: us)) a b motive e alt
    | _ => throwError "ArgsPacker.Binary.casesOn: Expected PSigma type, got {t}"

/--
Given expression `e` of type `(x : A) → (y : B[x]) → … → (z : D[x,y]) → R[x,y,z]`
returns an expression of type `(x : A ⊗' B ⊗' … ⊗' D) → R[x.1, x.2.1, x.2.2]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8d420f8bd90f32984eb245b6f1bd32fa2e1d0cb0ef84de3afe2935408d82dfd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
