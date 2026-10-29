# integerNormalization_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45f84ce0-5af4-a77e-9666-c89467153542",
  "kind": "theorem",
  "lexical_name": "integerNormalization_eq_zero_iff",
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
  "slug": "integernormalization-eq-zero-iff-source-edition-2",
  "source": {
    "blob": "70bbddb523939a045ac3dcd118a1fa44b755cb52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7d8d9a889ec382bd9c0d52d24f6297ba85cfdf786722898ffa1e4923a89c92",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/IntegralNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45f84ce0-5af4-a77e-9666-c89467153542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerNormalization_eq_zero_iff [IsDomain R] (hM : M ≤ nonZeroDivisors R) (p : S[X]) :
    integerNormalization M p = 0 ↔ p = 0 := by
  obtain ⟨_, hb₁, hb₂⟩ := integerNormalization_spec M p
  let := isDomain_of_le_nonZeroDivisors S hM
  let := (faithfulSMul_iff_algebraMap_injective R S).mpr <| IsLocalization.injective S hM
  let : Function.Injective <| mapRingHom (algebraMap R S) := by
    rw [coe_mapRingHom, map_injective_iff]
    exact IsLocalization.injective S hM
  rw [← _root_.map_eq_zero_iff (mapRingHom (algebraMap R S)) this, coe_mapRingHom, hb₂]
  exact smul_eq_zero_iff_right <| nonZeroDivisors.ne_zero (hM hb₁)

variable {R' : Type*} [CommRing R']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/IntegralNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70bbddb523939a045ac3dcd118a1fa44b755cb52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b98698955b18b505d33ebb4399f3dcf2d265892f3656192fe61181cb0168b36d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
