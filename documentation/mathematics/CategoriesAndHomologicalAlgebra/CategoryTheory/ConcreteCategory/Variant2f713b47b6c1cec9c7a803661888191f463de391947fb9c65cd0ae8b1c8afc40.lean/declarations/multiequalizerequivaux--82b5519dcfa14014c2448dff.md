# multiequalizerEquivAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:916d1ab19f217dc0c1d8e732a9e5ba2bcc20fa7fa3ca7e46aefe465847df8c03",
  "kind": "def",
  "lexical_name": "multiequalizerEquivAux",
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
  "slug": "multiequalizerequivaux--82b5519dcfa14014c2448dff",
  "source": {
    "blob": "21d8038fe67cffcd4bf87bcb16dfef1ec0219f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 279,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82b5519dcfa14014c2448dffd0ccadd883267338ec810d5976ac7dbcbff48f40",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:916d1ab19f217dc0c1d8e732a9e5ba2bcc20fa7fa3ca7e46aefe465847df8c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multiequalizerEquivAux {J : MulticospanShape.{w, w'}} (I : MulticospanIndex J C) :
    (I.multicospan ⋙ forget C).sections ≃
    { x : ∀ i : J.L, ToType (I.left i) // ∀ i : J.R, I.fst i (x _) = I.snd i (x _) } where
  toFun x :=
    ⟨fun _ => x.1 (WalkingMulticospan.left _), fun i => by
      have a := x.2 (WalkingMulticospan.Hom.fst i)
      have b := x.2 (WalkingMulticospan.Hom.snd i)
      rw [← b] at a
      exact a⟩
  invFun x :=
    { val := fun j =>
        match j with
        | WalkingMulticospan.left _ => x.1 _
        | WalkingMulticospan.right b => I.fst b (x.1 _)
      property := by
        rintro (a | b) (a' | b') (f | f | f)
        · simp
        · rfl
        · dsimp
          exact (x.2 b').symm
        · simp }
  left_inv := by
    intro x; ext (a | b)
    · rfl
    · rw [← x.2 (WalkingMulticospan.Hom.fst b)]
      rfl
  right_inv := by
    intro x
    ext i
    rfl

/-- The equivalence between the noncomputable multiequalizer and
the concrete multiequalizer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21d8038fe67cffcd4bf87bcb16dfef1ec0219f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f6ad401ff895b49dabb2ae19f9b7894a1c2866b349a1cd31ec94230a2a94eee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
