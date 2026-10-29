# OrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65606e2e0fd84b9f9d5e6ea666ca5e225c5980f39d22ca277a362e7670dea367",
  "kind": "class",
  "lexical_name": "OrderedRing",
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
  "slug": "orderedring",
  "source": {
    "blob": "350cbc6d49b24051540cf5d302d0b3db629d8b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 33,
    "path": "GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d3c85db54debdfd34ccb359a5a9c3f211e17b283499ea5e87bfb61fc4205bc9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AssociativeRingsAndAlgebras/RingNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65606e2e0fd84b9f9d5e6ea666ca5e225c5980f39d22ca277a362e7670dea367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class OrderedRing (R : Type u) [Semiring R] [LE R] [LT R] [IsPreorder R] extends OrderedAdd R where
  /-- In a strict ordered semiring, we have `0 < 1`. -/
  zero_lt_one : (0 : R) < 1
  /-- In a strict ordered semiring, we can multiply an inequality `a < b` on the left
  by a positive element `0 < c` to obtain `c * a < c * b`. -/
  mul_lt_mul_of_pos_left : ∀ {a b c : R}, a < b → 0 < c → c * a < c * b
  /-- In a strict ordered semiring, we can multiply an inequality `a < b` on the right
  by a positive element `0 < c` to obtain `a * c < b * c`. -/
  mul_lt_mul_of_pos_right : ∀ {a b c : R}, a < b → 0 < c → a * c < b * c

namespace OrderedRing

variable {R : Type u} [Ring R]

section Preorder

variable [LE R] [LT R] [LawfulOrderLT R] [IsPreorder R] [OrderedRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/RingNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `350cbc6d49b24051540cf5d302d0b3db629d8b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6df51b6779996c3d87f5530ea09d7d4976845f0a4a4618117d8745b756036f48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean","GRWTSK/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
