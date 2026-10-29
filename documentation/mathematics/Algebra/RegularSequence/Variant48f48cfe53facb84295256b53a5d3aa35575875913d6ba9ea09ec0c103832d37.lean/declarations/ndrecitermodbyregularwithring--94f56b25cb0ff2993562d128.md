# ndrecIterModByRegularWithRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db62ab5eca420b3b48c5f1f01b195e48f30de951e801520ace4c80131e1fc544",
  "kind": "def",
  "lexical_name": "ndrecIterModByRegularWithRing",
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
  "slug": "ndrecitermodbyregularwithring--94f56b25cb0ff2993562d128",
  "source": {
    "blob": "8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 487,
    "path": "GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94f56b25cb0ff2993562d128a005791ded4168c29cfa65f2e8d9f422b2d0beed",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db62ab5eca420b3b48c5f1f01b195e48f30de951e801520ace4c80131e1fc544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ndrecIterModByRegularWithRing
    {motive : (R : Type u) → [CommRing R] → (M : Type v) →
      [AddCommGroup M] → [Module R M] → (rs : List R) → Sort*}
    (nil : (R : Type u) → [CommRing R] → (M : Type v) →
      [AddCommGroup M] → [Module R M] → [Nontrivial M] → motive R M [])
    (cons : {R : Type u} → [CommRing R] → {M : Type v} →
      [AddCommGroup M] → [Module R M] → (r : R) → (rs : List R) →
      IsSMulRegular M r →
      IsRegular (QuotSMulTop r M)
        (rs.map (Ideal.Quotient.mk (Ideal.span {r}))) →
      motive (R ⧸ Ideal.span {r}) (QuotSMulTop r M)
        (rs.map (Ideal.Quotient.mk (Ideal.span {r}))) →
      motive R M (r :: rs))
    {R} [CommRing R] {M} [AddCommGroup M] [Module R M] {rs} :
    IsRegular M rs → motive R M rs :=
  recIterModByRegularWithRing (motive := fun R _ M _ _ rs _ => motive R M rs)
    nil cons

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae647cb85f9a58fa6e2f2ab4745cb4633eda9b895b869b0172b0707cb85abc4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
