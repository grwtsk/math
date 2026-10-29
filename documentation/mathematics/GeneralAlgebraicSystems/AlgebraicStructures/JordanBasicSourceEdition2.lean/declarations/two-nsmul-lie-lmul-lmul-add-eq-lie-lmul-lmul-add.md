# two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdce4746be8cd112a355d0317052e8ab9e952180",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c240c68-18dd-2dc4-e66a-3323ab54ec72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5cc57f1-5470-1d9b-b27d-d5b3463b08c0",
  "kind": "theorem",
  "lexical_name": "two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add",
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
  "slug": "two-nsmul-lie-lmul-lmul-add-eq-lie-lmul-lmul-add",
  "source": {
    "blob": "bdce4746be8cd112a355d0317052e8ab9e952180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 158,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14ab2c5f98d9c94abf4a4c261ad4a6ebc7bcf85604fc86f7b50860f2dbbf9bc9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/JordanBasicSourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5cc57f1-5470-1d9b-b27d-d5b3463b08c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add [IsCommJordan A] (a b : A) :
    2 • (⁅L a, L (a * b)⁆ + ⁅L b, L (b * a)⁆) = ⁅L (a * a), L b⁆ + ⁅L (b * b), L a⁆ := by
  suffices 2 • ⁅L a, L (a * b)⁆ + 2 • ⁅L b, L (b * a)⁆ + ⁅L b, L (a * a)⁆ + ⁅L a, L (b * b)⁆ = 0 by
    rwa [← sub_eq_zero, ← sub_sub, sub_eq_add_neg, sub_eq_add_neg, lie_skew, lie_skew, nsmul_add]
  convert (commute_lmul_lmul_sq (a + b)).lie_eq using 1
  simp only [add_mul, mul_add, map_add, lie_add, add_lie, mul_comm b a,
    (commute_lmul_lmul_sq a).lie_eq, (commute_lmul_lmul_sq b).lie_eq, zero_add, add_zero, two_smul]
  abel

-- Porting note: the monolithic `calc`-based proof of `two_nsmul_lie_lmul_lmul_add_add_eq_zero`
-- has had four auxiliary parts `aux{0,1,2,3}` split off from it.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/JordanBasicSourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdce4746be8cd112a355d0317052e8ab9e952180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a25567329e309afca09f3ccc88086b628aab53b242a1147632ae214e1bb94a16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/86/86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
