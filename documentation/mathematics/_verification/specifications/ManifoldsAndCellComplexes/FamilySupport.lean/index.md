# Verification target: GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.FamilySupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc71d41a16ff504c49889fa46ccf75c748a24e3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/index.md) · [Full source](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc71d41a16ff504c49889fa46ccf75c748a24e3`.

Source path: `GRWTSK/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.SmoothFramedSurgery.CollaredGluing` — import line 25; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.Theory`](../../../../MathematicalLogicAndFoundations/GeneralLogic/Theory.lean/index.md) — import line 26; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_endpoints_distinct](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/time-endpoints-distinct.md) | 62 | `result-track:623f37f4ecf90705ee08c786dc483d7fba9d91906c5535b76e64df51918e3891` |
| 2 | `theorem` | [ambientFamily_isSmooth](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/ambientfamily-issmooth.md) | 67 | `result-track:c4bed9935164ee4c9ad93aa405e732a2793cda6b0d1d266d98378e02aacbdfc2` |
| 3 | `theorem` | [framedEmbeddingAt_isSmooth](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/framedembeddingat-issmooth.md) | 75 | `result-track:acc79e873474d6f3db3fb1a080dc18ad02825ca6f49f2ca2f130d98bbc85c960` |
| 4 | `theorem` | [ambientFamily_zero](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/ambientfamily-zero.md) | 83 | `result-track:f8cea9ff87f96f38b27263a630a7be2f4a374d0f4ff5e713a667e87e703e372c` |
| 5 | `theorem` | [framedEmbeddingAt_zero](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/framedembeddingat-zero.md) | 91 | `result-track:d834f4fd61fdd0c7c2bca3cb5366cd9f0e3d038a6c7a4a049b156875fb5fc272` |
| 6 | `theorem` | [framedEmbeddingAt_one](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/framedembeddingat-one.md) | 99 | `result-track:a5d5273084fc01f576a8a0c69d514d53ee5738d89f47a39f67f1e374609cdeaa` |
| 7 | `theorem` | [ambientFamily_one](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/ambientfamily-one.md) | 107 | `result-track:fd6a5fdd950a1a2cba954dd66d1edb83583628afb833c9e6e5897f27d0e36e73` |
| 8 | `theorem` | [carries_embedding_at](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/carries-embedding-at.md) | 115 | `result-track:20d6c0590b09174fbcb49b710d56ded5948e7a4cc54c104efc607cc1920ff284` |
| 9 | `theorem` | [supported_away_from_old_boundary_at](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/supported-away-from-old-boundary-at.md) | 124 | `result-track:1d5012f0bf5a621a0409e8f063e651a5c2deb95f80e95f2352f49581a0371bb8` |
| 10 | `theorem` | [supported_in_interior_at](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/supported-in-interior-at.md) | 133 | `result-track:46aaee07967cfc2efaa3e81131c8085b21a595d82c77bd541a76a5f3fd2da119` |
| 11 | `theorem` | [fixes_outside_support_at](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/fixes-outside-support-at.md) | 142 | `result-track:3a76ecf58ded627d5e3751338bf4e6f7dbc6fb81de82d9c24763421c6b0ad052` |
| 12 | `theorem` | [fixes_old_boundary_at](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/fixes-old-boundary-at.md) | 151 | `result-track:b392ba0fe86ff0fcd5f00448fc9930f4f262f5415be0030af54db881e11f8069` |
| 13 | `theorem` | [ambient_family_certificate](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/ambient-family-certificate.md) | 165 | `result-track:ae62b9deecbe33b01b5ba164e510cea2fa56b4910f7de2e0b34a26aaabd85f91` |
| 14 | `theorem` | [supported_away_from_old_boundary](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/supported-away-from-old-boundary.md) | 195 | `result-track:db827677ddc53d476ef2cbf9085c89393e05b353768603c831e09f237d31ab20` |
| 15 | `theorem` | [supported_in_interior](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/supported-in-interior.md) | 204 | `result-track:04b76eb7151f804046aefafbd6a97d4f153567d09abdb71ddc2c802ae8dd6e44` |
| 16 | `theorem` | [fixes_outside_support](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/fixes-outside-support.md) | 213 | `result-track:afcb961d8a9327868b7fed96764e349d1abbe16fa0f4bbb80bb4086e551f5fd3` |
| 17 | `theorem` | [fixes_old_boundary](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/fixes-old-boundary.md) | 222 | `result-track:44f21ffb7f080bd42a67a56dd2beeedb0cf65e8b1124866d30d05aa6e5dbf38c` |
| 18 | `theorem` | [carries_embedding](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/carries-embedding.md) | 231 | `result-track:528a41db3081e8dae7ebfce4be0767f4be9979be6cac7103b6639a1e90d67328` |
| 19 | `theorem` | [controlled_support](../../../../ManifoldsAndCellComplexes/FamilySupport.lean/declarations/controlled-support.md) | 244 | `result-track:5a60f48ba576b029f197613a60e6ad80ec2a943e19f05c0c240722f8cf51f9fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b3146bbbcf139a871a12813ce33bcf6c504d02e575d4cb72b401c8390056e67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean","GRWTSK/_verification/specifications/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
