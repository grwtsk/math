# exists_algEquiv_matrix_divisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a481c4a-02d6-8936-0af6-af387f7dd5b1",
  "kind": "theorem",
  "lexical_name": "exists_algEquiv_matrix_divisionRing",
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
  "slug": "exists-algequiv-matrix-divisionring",
  "source": {
    "blob": "0243a75c05e43368fab2f075932bc76f4afb9942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db67ef68e3a2e9682f32fb6ed9306ab426f64e54804b4ba46180355da70c84aa",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/SimpleModuleWedderburnArtinNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a481c4a-02d6-8936-0af6-af387f7dd5b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_algEquiv_matrix_divisionRing :
    ∃ (n : ℕ) (_ : NeZero n) (D : Type u) (_ : DivisionRing D) (_ : Algebra R₀ D),
      Nonempty (R ≃ₐ[R₀] Matrix (Fin n) (Fin n) D) := by
  have ⟨n, hn, I, _, ⟨e⟩⟩ := exists_algEquiv_matrix_end_mulOpposite R₀ R
  classical exact ⟨n, hn, _, _, _, ⟨e⟩⟩

/-- The Wedderburn–Artin Theorem, algebra form, finite case: a finite Artinian simple algebra is
isomorphic to a matrix algebra over a finite division algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/SimpleModuleWedderburnArtinNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0243a75c05e43368fab2f075932bc76f4afb9942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1430be8c7f13a3b9e4eb2932efb7b9d92efc200c5ddab764317043e35fcd6894 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
