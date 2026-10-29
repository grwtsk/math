# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:610fdaaf6bfa5585df1a59a28c903d0c26930f3bfe7c47b37f823d76d41b9cb3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance-source-edition-5",
  "source": {
    "blob": "7fbcc2d308a2c25aac965329c0bb94793db1b7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 575,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variantb2f9a4f661f7e909a0e7ba512c7f82bab61ecaacb726f600c4bbd66daf9037ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68f52c8e1f07db0a4bc78b9bea5e583f25fb7cdeb0fb5f2eb5608d77280c5b9b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PartNamespacedNotMemNoneAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:610fdaaf6bfa5585df1a59a28c903d0c26930f3bfe7c47b37f823d76d41b9cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LawfulMonad
      Part where
  bind_pure_comp := @bind_some_eq_map
  id_map f := by cases f; rfl
  pure_bind := @bind_some
  bind_assoc := @bind_assoc
  map_const := by simp [Functor.mapConst, Functor.map]
  --Porting TODO : In Lean3 these were automatic by a tactic
  seqLeft_eq x y := ext'
    (by simp [SeqLeft.seqLeft, Part.bind, assert, Seq.seq, const, (· <$> ·), and_comm])
    (fun _ _ => rfl)
  seqRight_eq x y := ext'
    (by simp [SeqRight.seqRight, Part.bind, assert, Seq.seq, const, (· <$> ·), and_comm])
    (fun _ _ => rfl)
  pure_seq x y := ext'
    (by simp [Seq.seq, Part.bind, assert, (· <$> ·), pure])
    (fun _ _ => rfl)
  bind_map x y := ext'
    (by simp [(· >>= ·), Part.bind, assert, Seq.seq, get, (· <$> ·)] )
    (fun _ _ => rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PartNamespacedNotMemNoneAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variantb2f9a4f661f7e909a0e7ba512c7f82bab61ecaacb726f600c4bbd66daf9037ea.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fbcc2d308a2c25aac965329c0bb94793db1b7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad56c78e32b5347489abeeb50ee95d4699aa53f2f5538f9ce31fc6f084d66afd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variantb2f9a4f661f7e909a0e7ba512c7f82bab61ecaacb726f600c4bbd66daf9037ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
