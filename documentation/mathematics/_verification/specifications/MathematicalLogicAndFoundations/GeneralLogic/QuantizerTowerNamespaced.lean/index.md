# Verification target: Quantizer Tower Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9f59d2b2f3525dead2c7ba082b0e94a2b1c1504",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9f59d2b2f3525dead2c7ba082b0e94a2b1c1504`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.ObserverFactor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuantizerTower](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/quantizertower.md) | 37 | `declaration-track:845b20cd7a71e9e7e9f5f99d614c5f9a2a18adc31ebf690b7f6beb6bd6bf7a34` |
| 2 | `theorem` | [localCausalEquivalent_of_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localcausalequivalent-of-le.md) | 63 | `result-track:d81091443ce25f18470a32b8564bd662d372309c2f1fa62ce3810f79fab28229` |
| 3 | `def` | [localProject](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localproject.md) | 81 | `declaration-track:2df191af71921448185628798fe3f4bdcf69a26e39689f21515d1ebf29b6c2e0` |
| 4 | `theorem` | [localProject_toLocalCausal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localproject-tolocalcausal.md) | 90 | `result-track:db3c59b231dde49e0cd39355b70cf2a8e89a21384a39730ae2d02fe4c682e9cd` |
| 5 | `theorem` | [localProject_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localproject-surjective.md) | 100 | `result-track:8c1332bdb216a83ddf0562a425dfdc5afe4efc69583cfb7ddf2359d1ac17ddec` |
| 6 | `theorem` | [localProject_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localproject-step.md) | 111 | `result-track:565e296d42eabb1f1b59a2d4b46324a1f9ef2510c5eb803aebb9356fa702f2ee` |
| 7 | `theorem` | [localProject_observe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localproject-observe.md) | 124 | `result-track:127b3c541c96b43aaf9ef75d0610734b08eab4595d31b025667100f4b5b04802` |
| 8 | `theorem` | [localProject_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localproject-refl.md) | 136 | `result-track:1ea7bdfd84e1241fbf4e34edb7d82c4bb6f44bc8d43cc72791bb1821e9660865` |
| 9 | `theorem` | [localProject_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localproject-trans.md) | 146 | `result-track:2eb78b47f1d74d843689e51c0a869300e1423f50701cf61efa5027f05e549be8` |
| 10 | `theorem` | [causalToLocal_naturality](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/causaltolocal-naturality.md) | 159 | `result-track:543de71ce72057ad2697dc1165bd4c21ad78c011996c8b1f83684eabfbc5fb97` |
| 11 | `theorem` | [causalToFinestLocal_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/causaltofinestlocal-injective.md) | 175 | `result-track:3d23a55beed66072ff01a7c5bdccd9b7f2a526ae0b79487422e6ef3c3d5cd0bb` |
| 12 | `def` | [causalStateEquivFinestLocal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/causalstateequivfinestlocal.md) | 200 | `declaration-track:75ea687a045b9253b268894c9050f3cb479a5a0dda115cf25974af296695cd3b` |
| 13 | `theorem` | [causalStateEquivFinestLocal_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/causalstateequivfinestlocal-apply.md) | 208 | `result-track:8f20853ae8f20fcdd7b6c710989fdc2757fac05165478628755734ae38d1d060` |
| 14 | `structure` | [ClosedObservation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/closedobservation.md) | 228 | `declaration-track:f0860de3c85e870b873eca2db7bf5e5cbf887aa9fba76fb58c91363baa22533b` |
| 15 | `theorem` | [localCausalEquivalent_iff_currentObservation_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizerTowerNamespaced.lean/declarations/localcausalequivalent-iff-currentobservation-eq.md) | 240 | `result-track:77697ea2e2bbe743b61361ebc04e9e8c140eb0742ca22eafb1d027f40435832e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf0a1c6520284ae6ed867740183be4fe0aa2758bb496951c8f34f39ed2a64696 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
