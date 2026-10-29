# TopRep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c229196db203030d1fcc9cf2a37d39e12c0892405b81468c1040df57a1783f6",
  "kind": "structure",
  "lexical_name": "TopRep",
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
  "slug": "toprep",
  "source": {
    "blob": "a7c9739830ecedd826d4390974896c3927e9a61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant2badbfa2c056c28a607e98b86b1fe5b4b744ca3a643adc5e9df8f814bdac6e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f610e0ed1dafbd809c02b562bc969bd5448f74e2bbceb27c15b598ce9a695d6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TopRepNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c229196db203030d1fcc9cf2a37d39e12c0892405b81468c1040df57a1783f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TopRep (k : Type u) (G : Type v) [Ring k] [TopologicalSpace k] [Monoid G] where
  _mkInternal ::
  /-- the underlying type of an object in `TopRep k G` -/
  V : Type w
  [hV1 : AddCommGroup V]
  [hV2 : Module k V]
  [hV3 : TopologicalSpace V]
  [hV4 : IsTopologicalAddGroup V]
  [hV5 : ContinuousSMul k V]
  /-- the underlying continuous representation of an object in `TopRep k G` -/
  ρ : ContRepresentation k G V

namespace TopRep

variable {k : Type u} {G : Type v} {X Y : Type w} [TopologicalSpace k] [Ring k]
  [Monoid G] [AddCommGroup X] [Module k X] [TopologicalSpace X]
  [IsTopologicalAddGroup X] [ContinuousSMul k X] [AddCommGroup Y] [Module k Y] [TopologicalSpace Y]
  [IsTopologicalAddGroup Y] [ContinuousSMul k Y] {ρ : ContRepresentation k G X}
  {σ : ContRepresentation k G Y}

open ContRepresentation CategoryTheory

attribute [instance] hV1 hV2 hV3 hV4 hV5

initialize_simps_projections TopRep (-hV1, -hV2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TopRepNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant2badbfa2c056c28a607e98b86b1fe5b4b744ca3a643adc5e9df8f814bdac6e40.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7c9739830ecedd826d4390974896c3927e9a61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1324eb7fbd1d05f6ca8bfbc162b409114ebb25c460c95e81e40e7fbfc09aa2ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant2badbfa2c056c28a607e98b86b1fe5b4b744ca3a643adc5e9df8f814bdac6e40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
