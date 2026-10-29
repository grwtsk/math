# tendsto_iff_coeff_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04d39c40-f8ef-1784-c4b6-5c7775bdd898",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_coeff_tendsto",
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
  "slug": "tendsto-iff-coeff-tendsto",
  "source": {
    "blob": "9ed47f9528a50e06c606e90ac9cb906813bca790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2add317071676be6459592db5564abdc7f618fbaeeaf37b5fb6bfbdfca995a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/PiTopologyNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d39c40-f8ef-1784-c4b6-5c7775bdd898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_coeff_tendsto [Semiring R] {ι : Type*}
    (f : ι → PowerSeries R) (u : Filter ι) (g : PowerSeries R) :
    Tendsto f u (nhds g) ↔
    ∀ d : ℕ, Tendsto (fun i => coeff d (f i)) u (nhds (coeff d g)) := by
  rw [MvPowerSeries.WithPiTopology.tendsto_iff_coeff_tendsto]
  apply (Finsupp.uniqueLinearEquiv ℕ ℕ ()).toEquiv.forall_congr
  intro d
  simp only [LinearEquiv.coe_toEquiv, Finsupp.uniqueLinearEquiv_apply, coeff]
  apply iff_of_eq
  congr
  · ext _; congr; ext; simp
  · ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/PiTopologyNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed47f9528a50e06c606e90ac9cb906813bca790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=196bba10f10b4607e3115a99b63bddad0f481f81ce681c62a76a763a40388b56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
