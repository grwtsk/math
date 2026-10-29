# Fix.rec_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49842e76436040e4aaf006b59f1ab664caf2c6a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f64892e-ad25-aa2a-66b5-3816dc3316bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c85d5ca-5e90-49fb-53e4-0d23974d08db",
  "kind": "theorem",
  "lexical_name": "Fix.rec_eq",
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
  "slug": "fix-rec-eq",
  "source": {
    "blob": "49842e76436040e4aaf006b59f1ab664caf2c6a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb580ec7c4aab741dc1652e56bc3613226036f85188ddfe1ec2e28a9d717eda9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c85d5ca-5e90-49fb-53e4-0d23974d08db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fix.rec_eq {β : Type u} (g : F (append1 α β) → β) (x : F (append1 α (Fix F α))) :
    Fix.rec g (Fix.mk x) = g (appendFun id (Fix.rec g) <$$> x) := by
  have : recF g ∘ fixToW = Fix.rec g := by
    apply funext
    apply Quotient.ind
    intro x
    apply recF_eq_of_wEquiv
    apply wrepr_equiv
  conv =>
    lhs
    rw [Fix.rec, Fix.mk]
    dsimp
  cases' h : repr x with a f
  rw [MvPFunctor.map_eq, recF_eq', ← MvPFunctor.map_eq, MvPFunctor.wDest'_wMk']
  rw [← MvPFunctor.comp_map, abs_map, ← h, abs_repr, ← appendFun_comp, id_comp, this]
#align mvqpf.fix.rec_eq MvQPF.Fix.rec_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49842e76436040e4aaf006b59f1ab664caf2c6a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e656b7c1b40ec9a931a2b615bb3876a952c1073533ce3c0cd32d4eaa6dd71073 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
