# Module.FaithfullyFlat.of_comap_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90c4e660-ddde-3f7f-a17c-b1b4e870a347",
  "kind": "lemma",
  "lexical_name": "Module.FaithfullyFlat.of_comap_surjective",
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
  "slug": "module-faithfullyflat-of-comap-surjective",
  "source": {
    "blob": "dfbe05a9165f834e092363166cc23795b5b747b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db5c60b3f5394161fd2e0f1e9108c9eb1273adf86fd2daf118d52c4ffed98eb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/FaithfullyFlatAlgebraNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90c4e660-ddde-3f7f-a17c-b1b4e870a347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FaithfullyFlat.of_comap_surjective [Flat A B]
    (h : Function.Surjective (PrimeSpectrum.comap (algebraMap A B))) :
    Module.FaithfullyFlat A B := by
  refine ⟨fun m hm ↦ ?_⟩
  obtain ⟨m', hm'⟩ := h ⟨m, hm.isPrime⟩
  have : m = Ideal.comap (algebraMap A B) m'.asIdeal := by
    rw [← PrimeSpectrum.comap_asIdeal (algebraMap A B) m', hm']
  rw [Ideal.smul_top_eq_map, this]
  exact (Submodule.restrictScalars_eq_top_iff _ _ _).ne.mpr
    fun top ↦ m'.isPrime.ne_top <| top_le_iff.mp <| top ▸ Ideal.map_comap_le

/-- If `A` is local and `B` is a local and flat `A`-algebra, then `B` is faithfully flat. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/FaithfullyFlatAlgebraNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfbe05a9165f834e092363166cc23795b5b747b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de88852f9b32cf84d72567e8521aae4395716be08939245bc95f81a492a44144 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
