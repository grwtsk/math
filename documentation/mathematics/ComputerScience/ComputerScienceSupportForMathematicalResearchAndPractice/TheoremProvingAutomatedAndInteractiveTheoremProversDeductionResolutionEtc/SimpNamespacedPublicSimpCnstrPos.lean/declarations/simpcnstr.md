# simpCnstr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d6a6170ff2c948a2e614a7ffeb277a21e943ad083d7356d21b746d1c263c991",
  "kind": "def",
  "lexical_name": "simpCnstr?",
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
  "slug": "simpcnstr",
  "source": {
    "blob": "cf5ee90a654ad7ad921950a98752f8e63485efca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant000df9f647ad4e15c645e7db29a4942583b78f60a66169f4f59a7860f1954cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455c4d07f7fdc107744f7cc1e8e070315cbbc479d80df06f09cada453863454d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicSimpCnstrPos.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d6a6170ff2c948a2e614a7ffeb277a21e943ad083d7356d21b746d1c263c991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpCnstr? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  if let some arg := e.not? then
    let mut eNew? := none
    let mut h₁    := default
    match_expr arg with
    | LE.le α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE (mkNatAdd b (mkNatLit 1)) a)
      h₁    := mkApp2 (mkConst ``Nat.not_le_eq) a b
    | GE.ge α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE (mkNatAdd a (mkNatLit 1)) b)
      h₁    := mkApp2 (mkConst ``Nat.not_ge_eq) a b
    | LT.lt α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE b a)
      h₁    := mkApp2 (mkConst ``Nat.not_lt_eq) a b
    | GT.gt α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE a b)
      h₁    := mkApp2 (mkConst ``Nat.not_gt_eq) a b
    | _ => pure ()
    let some eNew := eNew? | return none
    let some (eNew', h₂) ← simpCnstrPos? eNew | return (eNew, h₁)
    let h  := mkApp6 (mkConst ``Eq.trans [Level.one]) (mkSort Level.zero) e eNew eNew' h₁ h₂
    return some (eNew', h)
  else
    simpCnstrPos? e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicSimpCnstrPos.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant000df9f647ad4e15c645e7db29a4942583b78f60a66169f4f59a7860f1954cef.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf5ee90a654ad7ad921950a98752f8e63485efca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe1bbe657642f2ef7f07e3bcaa9d3892f5b3bfd978ecf5e40cf2ed2feae9f260 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant000df9f647ad4e15c645e7db29a4942583b78f60a66169f4f59a7860f1954cef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
