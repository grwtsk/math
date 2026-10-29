# SmoothFramedSurgeryTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d734af58d411b29883a0b017f23bfac555c68b930c8a1d82814854852ba6c635",
  "kind": "structure",
  "lexical_name": "SmoothFramedSurgeryTheory",
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
  "slug": "smoothframedsurgerytheory",
  "source": {
    "blob": "4a71178157f432c03afb416a36e1ac691a893a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8dcd3b97c0c68c3174c23a816efeeae62f47501e72afb84fa81c0660455b3dc",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/CoreNamespacedSmoothFramedSurgeryTheory.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d734af58d411b29883a0b017f23bfac555c68b930c8a1d82814854852ba6c635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SmoothFramedSurgeryTheory where
  Manifold : Type uS
  FramedEmbedding : Nat -> Nat -> Manifold -> Type uS
  FramedIsotopic :
    {p q : Nat} -> {M : Manifold} ->
      FramedEmbedding p q M -> FramedEmbedding p q M -> Prop
  Disjoint :
    {p q p' q' : Nat} -> {M : Manifold} ->
      FramedEmbedding p q M -> FramedEmbedding p' q' M -> Prop
  RelBoundaryDiffeomorphic : Manifold -> Manifold -> Prop
  rel_refl : forall X, RelBoundaryDiffeomorphic X X
  rel_symm : forall {X Y},
    RelBoundaryDiffeomorphic X Y -> RelBoundaryDiffeomorphic Y X
  rel_trans : forall {X Y Z},
    RelBoundaryDiffeomorphic X Y -> RelBoundaryDiffeomorphic Y Z ->
      RelBoundaryDiffeomorphic X Z
  surgery :
    {p q : Nat} -> {M : Manifold} -> FramedEmbedding p q M -> Manifold
  Trace : Manifold -> Manifold -> Type uS
  TraceBoundaryRelative :
    {M N : Manifold} -> Trace M N -> Prop
  framed_isotopy_invariant :
    {p q : Nat} -> {M : Manifold} ->
      forall e0 e1 : FramedEmbedding p q M,
        FramedIsotopic e0 e1 ->
          RelBoundaryDiffeomorphic (surgery e0) (surgery e1)

namespace SmoothFramedSurgeryTheory

/-- Relative-boundary diffeomorphism supplied by a framed isotopy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/CoreNamespacedSmoothFramedSurgeryTheory.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a71178157f432c03afb416a36e1ac691a893a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38e5ee2e98ad09bc5c24f55f6087806ff5597166af45926bf6f47b576ad7033c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
