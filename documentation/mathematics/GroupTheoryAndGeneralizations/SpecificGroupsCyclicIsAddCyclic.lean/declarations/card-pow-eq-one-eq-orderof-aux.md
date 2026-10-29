# card_pow_eq_one_eq_orderOf_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1395ea96-4dc6-24ae-2982-aaa8af8d81de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:375ef4e8-8d33-1bf7-27d3-40ed837dd0ce",
  "kind": "theorem",
  "lexical_name": "card_pow_eq_one_eq_orderOf_aux",
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
  "slug": "card-pow-eq-one-eq-orderof-aux",
  "source": {
    "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 313,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53e9b676dd01711c681a794a494bb9fd2245d744261e9e03f074a50701d3a3ea",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/SpecificGroupsCyclicIsAddCyclic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:375ef4e8-8d33-1bf7-27d3-40ed837dd0ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_pow_eq_one_eq_orderOf_aux (a : α) :
    (Finset.univ.filter fun b : α => b ^ orderOf a = 1).card = orderOf a :=
  le_antisymm (hn _ (orderOf_pos a))
    (calc
      orderOf a = @Fintype.card (zpowers a) (id _) := orderOf_eq_card_zpowers
      _ ≤
          @Fintype.card (↑(univ.filter fun b : α => b ^ orderOf a = 1) : Set α)
            (Fintype.ofFinset _ fun _ => Iff.rfl) :=
        (@Fintype.card_le_of_injective (zpowers a)
          (↑(univ.filter fun b : α => b ^ orderOf a = 1) : Set α) (id _) (id _)
          (fun b =>
            ⟨b.1,
              mem_filter.2
                ⟨mem_univ _, by
                  let ⟨i, hi⟩ := b.2
                  rw [← hi, ← zpow_ofNat, ← zpow_mul, mul_comm, zpow_mul, zpow_ofNat,
                    pow_orderOf_eq_one, one_zpow]⟩⟩)
          fun _ _ h => Subtype.eq (Subtype.mk.inj h))
      _ = (univ.filter fun b : α => b ^ orderOf a = 1).card := Fintype.card_ofFinset _ _
      )

-- Use φ for `Nat.totient`
open Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/SpecificGroupsCyclicIsAddCyclic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb93a05c1b79c927c778756bad363f3dd5d0d421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6068532330f9df1e59518d34e803a82f0d536294fdfb056163a67cd8313dd939 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
