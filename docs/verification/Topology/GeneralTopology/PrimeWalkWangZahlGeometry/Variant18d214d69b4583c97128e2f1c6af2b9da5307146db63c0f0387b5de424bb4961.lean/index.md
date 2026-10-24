# Verification target: GRWTSK.Topology.GeneralTopology.PrimeWalkWangZahlGeometry.Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23251cc423e48e620cb1957f021588124e3c974d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23251cc423e48e620cb1957f021588124e3c974d`.

Source path: `GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RectangularPrism3](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/rectangularprism3--61ef0872a99f202719445c4f.md) | 52 | `declaration-track:61ef0872a99f202719445c4f1ee1cb99ce868ab3c301b2a2eef1d97b5ae5cc3a` |
| 2 | `def` | [RectangularPrism3.carrier](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/rectangularprism3-carrier--c245018cb466bc7f4e6e313b.md) | 60 | `declaration-track:c245018cb466bc7f4e6e313b3a205038c6e82edc236f07c515127a2892d0b9ca` |
| 3 | `theorem` | [RectangularPrism3.isClosed_carrier](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/rectangularprism3-isclosed-carrier--650dd3520ece22779a1f3b9a.md) | 66 | `result-track:650dd3520ece22779a1f3b9a223e165dc56707b5d6375f4232952cc175cea81c` |
| 4 | `theorem` | [RectangularPrism3.measurableSet_carrier](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/rectangularprism3-measurableset-carrier--520d5b65a54c78096ace1218.md) | 81 | `result-track:520d5b65a54c78096ace121829baca939ed59a72c39062e6a151eb39c9a5afaf` |
| 5 | `theorem` | [UnitTube3.isClosed_carrier](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/unittube3-isclosed-carrier--a1b8bf85bde2446ca265cf0a.md) | 88 | `result-track:a1b8bf85bde2446ca265cf0a7743375d4da9c859e94704d5a15df2292d2a87f8` |
| 6 | `theorem` | [UnitTube3.measurableSet_carrier](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/unittube3-measurableset-carrier--365616669d48c735fa584ce7.md) | 96 | `result-track:365616669d48c735fa584ce7998d4c9c5be1745d689ae407ecdae14ad5f296a1` |
| 7 | `structure` | [EuclideanShadedTubeFamily](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/euclideanshadedtubefamily--ee73b9b7db19dfab12095521.md) | 109 | `declaration-track:ee73b9b7db19dfab12095521976ac46d245525a1045ff493835978ca945e93b2` |
| 8 | `theorem` | [EuclideanShadedTubeFamily.sum_carrier_volume](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/euclideanshadedtubefamily-sum-carrier-volume--67cf1825adaa9b8b1c1dba6e.md) | 137 | `result-track:67cf1825adaa9b8b1c1dba6efe5f4a56f2578fb495be652c137b41d851209a47` |
| 9 | `theorem` | [EuclideanShadedTubeFamily.lambda_dense_card](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/euclideanshadedtubefamily-lambda-dense-card--ddd683755f64b785637dc39e.md) | 154 | `result-track:ddd683755f64b785637dc39e95c13320a8743e4988577280d3a08fffaf7c9b7f` |
| 10 | `def` | [KatzTaoConvexWolffAtMost](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/katztaoconvexwolffatmost--ef2da5a40538ca30dc592f3f.md) | 168 | `declaration-track:ef2da5a40538ca30dc592f3f57f09dd6e6ed1ec87d60ca798be2ad6c2034a1a9` |
| 11 | `def` | [wangZahlLowerTerm](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/wangzahllowerterm--302ab361fc45f2708ccb870d.md) | 180 | `declaration-track:302ab361fc45f2708ccb870de5b0c2b0d903595d166e026616cc80bdf84d4569` |
| 12 | `def` | [WangZahlUnionLowerBoundAt](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/wangzahlunionlowerboundat--bd1fc1be843d166fce30405c.md) | 190 | `declaration-track:bd1fc1be843d166fce30405cd69c8c5c238832c9b9f26bc95dfc4e920c9c509d` |
| 13 | `def` | [WangZahlCorollary110](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/wangzahlcorollary110--3803c023f375ce64a97ffe3c.md) | 204 | `declaration-track:3803c023f375ce64a97ffe3cabda5c3d5507081a3871299b1d8ae3c6bab1dc6c` |
| 14 | `theorem` | [wangZahlLowerTerm_le_packetSuperlevel](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/wangzahllowerterm-le-packetsuperlevel--909492807b6a153ae7e45a7a.md) | 219 | `result-track:909492807b6a153ae7e45a7a022a63ca198ed2f83e2afd22a54107a1006fdb05` |
| 15 | `theorem` | [threshold_sq_mul_wangZahlLowerTerm_le_packetEnergy](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/declarations/threshold-sq-mul-wangzahllowerterm-le-packetenergy--57883c2d61bc9332528565ca.md) | 236 | `result-track:57883c2d61bc9332528565ca265d9ebb1ef8b5aa2ab72366eeace9d50cec5820` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
