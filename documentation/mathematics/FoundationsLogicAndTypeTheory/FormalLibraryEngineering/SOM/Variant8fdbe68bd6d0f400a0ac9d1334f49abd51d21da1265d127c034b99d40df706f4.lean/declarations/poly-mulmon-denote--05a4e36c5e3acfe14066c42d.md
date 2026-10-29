# Poly.mulMon_denote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbb8fab0-68e3-28aa-361c-b1e589eaf24d",
  "kind": "theorem",
  "lexical_name": "Poly.mulMon_denote",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "poly-mulmon-denote--05a4e36c5e3acfe14066c42d",
  "source": {
    "blob": "706a16bccf9cf885f3aecdf20f96d46284bc4169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05a4e36c5e3acfe14066c42d964c9c21e2675814f9cc27f5f4787a251324e1b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbb8fab0-68e3-28aa-361c-b1e589eaf24d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.mulMon_denote (ctx : Context) (p : Poly) (k : Nat) (m : Mon) : (p.mulMon k m).denote ctx = p.denote ctx * k * m.denote ctx := by
  simp [mulMon, go]; simp!
where
  go (p : Poly) (acc : Poly) : (mulMon.go k m p acc).denote ctx = acc.denote ctx + p.denote ctx * k * m.denote ctx := by
   match p with
   | [] => simp!
   | (k', m') :: p =>
     simp! [go p, Nat.left_distrib, denote_insertSorted, Mon.mul_denote, Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm, Nat.add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `706a16bccf9cf885f3aecdf20f96d46284bc4169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c03079940d31d87bd9f7bb1667e2847affe4011c255fa073f99e2cb8dbc95d51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
