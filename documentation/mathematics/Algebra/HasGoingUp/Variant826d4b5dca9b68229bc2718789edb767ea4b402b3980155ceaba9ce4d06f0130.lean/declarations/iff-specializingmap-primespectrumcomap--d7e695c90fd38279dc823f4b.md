# iff_specializingMap_primeSpectrumComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba6d3048c4e8007f84ee08b1958155419e4ed2e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1068c728-b5de-dd07-2e17-40ae9160d934",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87fc762b-f7e5-1959-df41-1681227f327f",
  "kind": "lemma",
  "lexical_name": "iff_specializingMap_primeSpectrumComap",
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
  "slug": "iff-specializingmap-primespectrumcomap--d7e695c90fd38279dc823f4b",
  "source": {
    "blob": "ba6d3048c4e8007f84ee08b1958155419e4ed2e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7e695c90fd38279dc823f4bc7cb40d3ac742a2fb419e7f6178b238705904504",
  "verification": {
    "reference": "docs/verification/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87fc762b-f7e5-1959-df41-1681227f327f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_specializingMap_primeSpectrumComap :
    Algebra.HasGoingUp R S ↔
      SpecializingMap (PrimeSpectrum.comap (algebraMap R S)) := by
  refine ⟨?_, fun h ↦ ⟨fun {q} hq P hP hlt ↦ ?_⟩⟩
  · intro h P q hq
    simp only [flip] at hq
    rw [← PrimeSpectrum.le_iff_specializes] at hq
    obtain ⟨Q, hle, hQ, h⟩ := P.asIdeal.exists_ideal_ge_liesOver_of_le (q := q.asIdeal)
      (p := P.asIdeal.under R) hq
    refine ⟨⟨Q, hQ⟩, (PrimeSpectrum.le_iff_specializes P _).mp hle, ?_⟩
    ext : 1
    exact h.over.symm
  · have : PrimeSpectrum.comap (algebraMap R S) ⟨P, hP⟩ ⤳ (⟨q, hq⟩ : PrimeSpectrum R) :=
      (PrimeSpectrum.le_iff_specializes _ _).mp hlt.le
    obtain ⟨Q, hs, heq⟩ := h this
    refine ⟨Q.asIdeal, (PrimeSpectrum.le_iff_specializes _ _).mpr hs, Q.2, ⟨?_⟩⟩
    simpa [PrimeSpectrum.ext_iff] using heq.symm

variable (R S) in
@[stacks 00HX]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba6d3048c4e8007f84ee08b1958155419e4ed2e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=432fddc0777cb571278ad0649a2ee1e4f7d2ccab446cc07e385e266bdcb2aa06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/82/826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
