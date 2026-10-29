# chebyshevTheta_le_chebyshevPsi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9f32d0e-ec3d-7ead-f9dd-00794d376486",
  "kind": "theorem",
  "lexical_name": "chebyshevTheta_le_chebyshevPsi",
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
  "slug": "chebyshevtheta-le-chebyshevpsi",
  "source": {
    "blob": "552ab05a139521988263e750638c51b8fb26a2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80ae1e31f6b5bd0d6d1a78e9e64e36626ae2defc38a204a0575f2c4e8f936f5c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/PrimePowerLogSumsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9f32d0e-ec3d-7ead-f9dd-00794d376486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevTheta_le_chebyshevPsi
    (N : Nat) :
    chebyshevTheta N ≤ chebyshevPsi N := by
  unfold chebyshevTheta chebyshevPsi
  let f : Nat → Nat × Nat := fun p => (p, 1)
  have hinj : Function.Injective f := by
    intro a b h
    exact (Prod.ext_iff.mp h).1
  have hsubset :
      (primesUpTo N).image f ⊆ primePowerPairsUpTo N := by
    intro pk hpk
    rcases Finset.mem_image.mp hpk with ⟨p, hp, rfl⟩
    exact
      mem_primePowerPairsUpTo_iff.mpr
        ⟨primesUpTo_prime hp, by norm_num, by simpa using (mem_primesUpTo_iff.mp hp).2⟩
  calc
    (∑ p ∈ primesUpTo N, Real.log p)
        = ∑ pk ∈ (primesUpTo N).image f, Real.log pk.1 := by
          symm
          exact
            Finset.sum_image
              (s := primesUpTo N)
              (g := f)
              (f := fun pk : Nat × Nat => Real.log pk.1)
              (fun a _ha b _hb h => hinj h)
    _ ≤ ∑ pk ∈ primePowerPairsUpTo N, Real.log pk.1 := by
          exact
            Finset.sum_le_sum_of_subset_of_nonneg hsubset
              (fun pk hpk _hnot =>
                Real.log_nonneg
                  (by
                    rcases pk with ⟨p, k⟩
                    exact_mod_cast (mem_primePowerPairsUpTo_iff.mp hpk).1.one_le))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/PrimePowerLogSumsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `552ab05a139521988263e750638c51b8fb26a2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=248bdad90f54e7fec134f2ad83055d14d930d56a036d54bee54b19798937591d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
