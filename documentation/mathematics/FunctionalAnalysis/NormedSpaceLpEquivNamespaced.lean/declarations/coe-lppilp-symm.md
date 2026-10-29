# coe_lpPiLpₗᵢ_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25d71a05-9bd5-d0ab-c590-d8bd61e3ff0d",
  "kind": "theorem",
  "lexical_name": "coe_lpPiLpₗᵢ_symm",
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
  "slug": "coe-lppilp-symm",
  "source": {
    "blob": "34921f37b1d0b930d0ee29f29b9531796811fd54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1299b9b53d4af10546cacc60a0691ec22933c29f85193f82613f0e5e8f2d2c76",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d71a05-9bd5-d0ab-c590-d8bd61e3ff0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_lpPiLpₗᵢ_symm [Fact (1 ≤ p)] (f : PiLp p E) :
    ((lpPiLpₗᵢ E 𝕜).symm f : ∀ i, E i) = f :=
  rfl
#align coe_lp_pi_Lpₗᵢ_symm coe_lpPiLpₗᵢ_symm

end Equivₗᵢ

end LpPiLp

section LpBcf

open scoped BoundedContinuousFunction

open BoundedContinuousFunction

-- note: `R` and `A` are explicit because otherwise Lean has elaboration problems
variable {α E : Type*} (R A 𝕜 : Type*) [TopologicalSpace α] [DiscreteTopology α]

variable [NormedRing A] [NormOneClass A] [NontriviallyNormedField 𝕜] [NormedAlgebra 𝕜 A]

variable [NormedAddCommGroup E] [NormedSpace 𝕜 E] [NonUnitalNormedRing R]

section NormedAddCommGroup

/-- The canonical map between `lp (λ (_ : α), E) ∞` and `α →ᵇ E` as an `AddEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34921f37b1d0b930d0ee29f29b9531796811fd54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=daed2b9459a9b41918dc3035928620b5069ddfa2613e82910642a7d5f6132f80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
