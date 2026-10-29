# Primrec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ec13e6b92fe2547b7937a9d1eb6094d5ffb1f12dbbb28575b783e66aea72d84",
  "kind": "inductive",
  "lexical_name": "Primrec'",
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
  "slug": "primrec-source-edition-4",
  "source": {
    "blob": "f234f502df30caee96a3c34099002b851c17d492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1378,
    "line": 1360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant3678b20826af0a732cf0473456b18c90f781dd4916450e398a77a1d7270aac61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d155296c316e57154c83d89fdaa7966c0eb63c6c1ff1eaaf44f51f1772db803d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecListGet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ec13e6b92fe2547b7937a9d1eb6094d5ffb1f12dbbb28575b783e66aea72d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1360–1378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Primrec' : ∀ {n}, (Vector ℕ n → ℕ) → Prop
  | zero : @Primrec' 0 fun _ => 0
  | succ : @Primrec' 1 fun v => succ v.head
  | get {n} (i : Fin n) : Primrec' fun v => v.get i
  | comp {m n f} (g : Fin n → Vector ℕ m → ℕ) :
      Primrec' f → (∀ i, Primrec' (g i)) → Primrec' fun a => f (ofFn fun i => g i a)
  | prec {n f g} :
      @Primrec' n f →
        @Primrec' (n + 2) g →
          Primrec' fun v : Vector ℕ (n + 1) =>
            v.head.rec (f v.tail) fun y IH => g (y ::ᵥ IH ::ᵥ v.tail)
#align nat.primrec' Nat.Primrec'

end Nat

namespace Nat.Primrec'

open Vector Primrec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecListGet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant3678b20826af0a732cf0473456b18c90f781dd4916450e398a77a1d7270aac61.lean#L1360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f234f502df30caee96a3c34099002b851c17d492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90e311f4da66f298ebf6e8eba40bc4c521ff702723dc4beddf6d6b82939a55b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant3678b20826af0a732cf0473456b18c90f781dd4916450e398a77a1d7270aac61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
