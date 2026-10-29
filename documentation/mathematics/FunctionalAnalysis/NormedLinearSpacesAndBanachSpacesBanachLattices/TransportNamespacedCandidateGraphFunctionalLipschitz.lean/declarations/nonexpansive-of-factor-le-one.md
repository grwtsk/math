# nonexpansive_of_factor_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcd0f4e9-29d1-ec25-f30c-c68bc4abc77f",
  "kind": "theorem",
  "lexical_name": "nonexpansive_of_factor_le_one",
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
  "slug": "nonexpansive-of-factor-le-one",
  "source": {
    "blob": "b5974c87b0112baed5686aa02f5c85756c44afc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 240,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e04be83b371c60eb11abac8ce1d1514e37f64f15b5b41e52ed17a264d0edbca8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportNamespacedCandidateGraphFunctionalLipschitz.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcd0f4e9-29d1-ec25-f30c-c68bc4abc77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonexpansive_of_factor_le_one
    (layer : AnalyticLayer A B algebra diffuser transport)
    (hfactor : layer.stabilityFactor ≤ 1)
    (x y : B) :
    diffuser.graphNorm (layer.candidate x - layer.candidate y) ≤
      diffuser.graphNorm (x - y) := by
  calc
    diffuser.graphNorm (layer.candidate x - layer.candidate y)
        ≤ layer.stabilityFactor * diffuser.graphNorm (x - y) :=
      layer.candidate_graphFunctional_lipschitz x y
    _ ≤ 1 * diffuser.graphNorm (x - y) :=
      mul_le_mul_of_nonneg_right hfactor
        (diffuser.graphNorm_nonnegative (x - y))
    _ = diffuser.graphNorm (x - y) := one_mul _

end AnalyticLayer

end

end Mathematics.NeuralDiffusion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportNamespacedCandidateGraphFunctionalLipschitz.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5974c87b0112baed5686aa02f5c85756c44afc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b83a15798f87f9d7e86bdae76b74e6140884927b4bb3abb7058e8d75cdb92a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
