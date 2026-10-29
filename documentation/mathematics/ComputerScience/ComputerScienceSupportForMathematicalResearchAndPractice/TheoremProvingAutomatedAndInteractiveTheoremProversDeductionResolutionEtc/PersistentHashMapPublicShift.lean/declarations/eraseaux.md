# eraseAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c56d6e584c2807ab1739046b373bb7a5ac3d2d39fe71617f27af4cf7b337ab27",
  "kind": "def",
  "lexical_name": "eraseAux",
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
  "slug": "eraseaux",
  "source": {
    "blob": "e4d81c5cc33ac8d6e67ad217402ec8688b11486e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc63c5be5be6d19f7794cb0cf5ea4b2595bc3aadfd5b0717cbbfa0b2aa4aea32",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashMapPublicShift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c56d6e584c2807ab1739046b373bb7a5ac3d2d39fe71617f27af4cf7b337ab27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eraseAux [BEq α] : Node α β → USize → α → Node α β
  | n@(Node.collision keys vals heq), _, k =>
    match keys.finIdxOf? k with
    | some idx =>
      let keys' := keys.eraseIdx idx
      have keq := keys.size_eraseIdx idx _
      let vals' := vals.eraseIdx (Eq.ndrec idx heq)
      have veq := vals.size_eraseIdx (Eq.ndrec idx heq) _
      have : keys.size - 1 = vals.size - 1 := by rw [heq]
      Node.collision keys' vals' (keq.trans (this.trans veq.symm))
    | none     => n
  | n@(Node.entries entries), h, k =>
    let j       := (mod2Shift h shift).toNat
    let entry   := entries[j]!
    match entry with
    | Entry.null       => n
    | Entry.entry k' _ =>
      if k == k' then Node.entries (entries.set! j Entry.null) else n
    | Entry.ref node   =>
      let entries := entries.set! j Entry.null
      let newNode := eraseAux node (div2Shift h shift) k
      match isUnaryNode newNode with
      | none        => Node.entries (entries.set! j (Entry.ref newNode))
      | some (k, v) => Node.entries (entries.set! j (Entry.entry k v))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashMapPublicShift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d81c5cc33ac8d6e67ad217402ec8688b11486e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dd76ac144577f84030837c29ab2ac9091c610b286c36f194b0b4ca4f10690ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
