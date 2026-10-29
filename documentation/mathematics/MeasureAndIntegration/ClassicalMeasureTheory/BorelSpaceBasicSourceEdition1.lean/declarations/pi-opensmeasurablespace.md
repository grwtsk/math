# Pi.opensMeasurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75d99d32a31aff7231d4682ba9d563a996bff4c720b0a05c18ff837e57722b6b",
  "kind": "instance",
  "lexical_name": "Pi.opensMeasurableSpace",
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
  "slug": "pi-opensmeasurablespace",
  "source": {
    "blob": "2095417a1394f77dd8b7a70a5fdc925d93c9fcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 393,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d981c94e74cea104c8f8e507b1fce3fa6554ca2ad8ba05259dfd474a129f3431",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75d99d32a31aff7231d4682ba9d563a996bff4c720b0a05c18ff837e57722b6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.opensMeasurableSpace {ι : Type*} {π : ι → Type*} [Countable ι]
    [t' : ∀ i, TopologicalSpace (π i)] [∀ i, MeasurableSpace (π i)]
    [∀ i, SecondCountableTopology (π i)] [∀ i, OpensMeasurableSpace (π i)] :
    OpensMeasurableSpace (∀ i, π i) := by
  constructor
  have : Pi.topologicalSpace = .generateFrom { t | ∃ (s : ∀ a, Set (π a)) (i : Finset ι),
      (∀ a ∈ i, s a ∈ countableBasis (π a)) ∧ t = pi (↑i) s } := by
    rw [funext fun a => @eq_generateFrom_countableBasis (π a) _ _, pi_generateFrom_eq]
  rw [borel_eq_generateFrom_of_subbasis this]
  apply generateFrom_le
  rintro _ ⟨s, i, hi, rfl⟩
  refine' MeasurableSet.pi i.countable_toSet fun a ha => IsOpen.measurableSet _
  rw [eq_generateFrom_countableBasis (π a)]
  exact .basic _ (hi a ha)
#align pi.opens_measurable_space Pi.opensMeasurableSpace

/-- The typeclass `SecondCountableTopologyEither α β` registers the fact that at least one of
the two spaces has second countable topology. This is the right assumption to ensure that continuous
maps from `α` to `β` are strongly measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2095417a1394f77dd8b7a70a5fdc925d93c9fcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01723cfcd39b5973418f38aa3d0fd0610f08d664ff9bdfe0f16e0d733282c742 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
