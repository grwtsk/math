# Verification target: Prime Walk Wang Zahl Geometry Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61449e3268961a9688f47a1a87848b059a7ad3fa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61449e3268961a9688f47a1a87848b059a7ad3fa`.

Source path: `GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RectangularPrism3](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/rectangularprism3.md) | 44 | `declaration-track:2fbe5a9777844dae4ad564ca56dc31a2fbb9a81f2e8b55862ba84891d9d62906` |
| 2 | `def` | [RectangularPrism3.carrier](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/rectangularprism3-carrier.md) | 52 | `declaration-track:caa30b16cd65df8053405813d9653aae75831db931dd4ab3357e9298aa7f4e9c` |
| 3 | `theorem` | [RectangularPrism3.isClosed_carrier](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/rectangularprism3-isclosed-carrier.md) | 58 | `result-track:6f067561b218979d2eb50201df8e665f4efd5d4b98f924c9256dd9f9e98ec414` |
| 4 | `theorem` | [RectangularPrism3.measurableSet_carrier](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/rectangularprism3-measurableset-carrier.md) | 73 | `result-track:00cbc1a77a9d667fd6c2db6e5983703adced153f12f637255f1bd009c86a2caa` |
| 5 | `theorem` | [UnitTube3.isClosed_carrier](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/unittube3-isclosed-carrier.md) | 80 | `result-track:6d211cbc42330f35ddbe5f67f9526df58b6a9e7babef60ed67d9d2f8e3411957` |
| 6 | `theorem` | [UnitTube3.measurableSet_carrier](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/unittube3-measurableset-carrier.md) | 88 | `result-track:6ffd2719c825f242f202aa22b865f6e07d404bd93096db676df61f41233a80b2` |
| 7 | `structure` | [EuclideanShadedTubeFamily](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/euclideanshadedtubefamily.md) | 101 | `declaration-track:d7b010ef7c6dbf533fc8fdc8bbc06bbde95d3069037c4d6578180be89c7af10b` |
| 8 | `theorem` | [EuclideanShadedTubeFamily.sum_carrier_volume](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/euclideanshadedtubefamily-sum-carrier-volume.md) | 129 | `result-track:38465680f18ffd05209978c1c0c758a4bd57b4076bb9bb1489cb3dc18d556e5a` |
| 9 | `theorem` | [EuclideanShadedTubeFamily.lambda_dense_card](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/euclideanshadedtubefamily-lambda-dense-card.md) | 146 | `result-track:9a4ad4ce549355b001b54862744a8907c321d6584ba2df22740523babd803501` |
| 10 | `def` | [KatzTaoConvexWolffAtMost](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/katztaoconvexwolffatmost.md) | 160 | `declaration-track:3c3725ac2dda2ccf549d62ef182279c3144c9240ef199236b0d369898743babf` |
| 11 | `def` | [wangZahlLowerTerm](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/wangzahllowerterm.md) | 172 | `declaration-track:1f6896bf0c04d655c371643201c54e9109f3ed61f95f1e079ff4985f73ae3766` |
| 12 | `def` | [WangZahlUnionLowerBoundAt](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/wangzahlunionlowerboundat.md) | 182 | `declaration-track:73c6ab88900faf2ce60196a5ba07f79a26da19c01fbf2d57534573bba5cc7155` |
| 13 | `def` | [WangZahlCorollary110](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/wangzahlcorollary110.md) | 196 | `declaration-track:5eea5c1e741a2a4255c6f213928f7d9bb6f48b92cce3d2ea724151f0bb9024ef` |
| 14 | `theorem` | [wangZahlLowerTerm_le_packetSuperlevel](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/wangzahllowerterm-le-packetsuperlevel.md) | 211 | `result-track:53ed3548ad7d668bf9d655370c141f61167e42b94fe548dd0ae6cafd504388ee` |
| 15 | `theorem` | [threshold_sq_mul_wangZahlLowerTerm_le_packetEnergy](../../../../GeneralTopology/PrimeWalkWangZahlGeometryPublic.lean/declarations/threshold-sq-mul-wangzahllowerterm-le-packetenergy.md) | 228 | `result-track:70abe72cce36101515321d191fc0fc775e7636dc15fd9eceb9acc64f813d3b11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=021313c3837bd03ff78e8f190436cc154f3ea46364d34b1553ef1a9b2af61937 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
