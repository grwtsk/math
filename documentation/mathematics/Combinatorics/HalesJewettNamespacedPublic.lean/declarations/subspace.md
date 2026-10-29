# Subspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b36104f303f5d38ccb0122480f7942782d6300b39a0a474c221d70fe57b6272e",
  "kind": "structure",
  "lexical_name": "Subspace",
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
  "slug": "subspace",
  "source": {
    "blob": "8e999e0f6222add6024a306ec2cab77164d5592c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant097b93696a64ba590a20e801bdac51f9043eb67d4b4d9f909ceed22cafc9c408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ff6dcb1926b129bbbfbb4442304e822cd2b05354f24011355289d9b779069fb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/HalesJewettNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b36104f303f5d38ccb0122480f7942782d6300b39a0a474c221d70fe57b6272e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Subspace (η α ι : Type*) where
  /-- The word representing a combinatorial subspace. `l.idxfun i = Sum.inr e` means that
  `l x i = x e` for all `x` and `l.idxfun i = some a` means that `l x i = a` for all `x`. -/
  idxFun : ι → α ⊕ η
  /-- We require combinatorial subspaces to be nontrivial in the sense that `fun x ↦ l x i` is
  `fun x ↦ x e` for at least one coordinate `i`. -/
  proper : ∀ e, ∃ i, idxFun i = Sum.inr e

namespace Subspace
variable {η α ι κ : Type*} {l : Subspace η α ι} {x : η → α} {i : ι} {a : α} {e : η}

/-- The combinatorial subspace corresponding to the identity embedding `(ι → α) → (ι → α)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/HalesJewettNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant097b93696a64ba590a20e801bdac51f9043eb67d4b4d9f909ceed22cafc9c408.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e999e0f6222add6024a306ec2cab77164d5592c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2d434e9fa2dd5fb2f973d8c812fe1281857dde5d28e296053e4c3b0f1ead84a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant097b93696a64ba590a20e801bdac51f9043eb67d4b4d9f909ceed22cafc9c408.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
