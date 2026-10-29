# Verification target: Order Three Recursive Cumulant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0211d45af56e4d0fbd2497fa0055611f2c45aa7c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0211d45af56e4d0fbd2497fa0055611f2c45aa7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blocks01_2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blocks01-2.md) | 38 | `declaration-track:e7bf1d0caa5d3f8261c9d8e27f0b64d631c740b7d2f71dfd241dea4c7c49f685` |
| 2 | `def` | [blocks02_1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blocks02-1.md) | 42 | `declaration-track:2247973645c898d02577c751236cf8dc72da3113e1d0a7212ab831765fc3d7b7` |
| 3 | `def` | [blocks12_0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blocks12-0.md) | 46 | `declaration-track:326cdae60b7f24cb11b17a17077b7a315be875cf9e8ab49bfd1c804d094b9b39` |
| 4 | `def` | [pairPartition01_2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/pairpartition01-2.md) | 50 | `declaration-track:814f9f03ae3abb12eb178003744749c7de7efb8aaac7e0e7d80536830bd99f66` |
| 5 | `def` | [pairPartition02_1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/pairpartition02-1.md) | 61 | `declaration-track:ec11160bb65687f1886d4dcb3ec369613e59771a0835ec2549d4a16a0d1e7704` |
| 6 | `def` | [pairPartition12_0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/pairpartition12-0.md) | 72 | `declaration-track:773df1bffdd0d7a6fb84065a4c02a5c8bdbeae67fbe948f76c7925602708a875` |
| 7 | `theorem` | [pairPartition01_2_parts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/pairpartition01-2-parts.md) | 83 | `result-track:0e491c9441dcc75fcc5fc80370e558834a244a918dbc276321de712bbe25f671` |
| 8 | `theorem` | [pairPartition02_1_parts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/pairpartition02-1-parts.md) | 88 | `result-track:7177ece6e9d0b1d907d5fecab504e74383cb431cc5bd4ca3225192dab397f931` |
| 9 | `theorem` | [pairPartition12_0_parts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/pairpartition12-0-parts.md) | 93 | `result-track:39e16a2fb28ac7c845764a0d96838b395dbfb68d8b9fe775e5dba3af8bdf8298` |
| 10 | `def` | [properPartitionsThreeExplicit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/properpartitionsthreeexplicit.md) | 98 | `declaration-track:e080a96abba77a6f3628ba916fcbc21dcce860d16f5131d7e21dcc8d5f32cd4c` |
| 11 | `theorem` | [properPartitions_three_eq_explicit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/properpartitions-three-eq-explicit.md) | 108 | `result-track:3d531e110c74d0dc1572dfe4f4be6171e52d6971fec968684243d41d9f75031f` |
| 12 | `theorem` | [parts_bot_three_eq_triple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/parts-bot-three-eq-triple.md) | 128 | `result-track:6c61a027dea01e4b4f9b0d1220a3a9a97e94412013f21bb6fd294d4cb5c1a89b` |
| 13 | `theorem` | [blockDirections_pair01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blockdirections-pair01.md) | 134 | `result-track:8b922f7500a0172df7f38a7c5be1446f4537f265b93d1831bc82b4b1f90bf09e` |
| 14 | `theorem` | [blockDirections_pair02](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blockdirections-pair02.md) | 149 | `result-track:219a3f81865893f4cd1cd6ea14ac1c0a57308947519f6adb4c773bf6b92db8e9` |
| 15 | `theorem` | [blockDirections_pair12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blockdirections-pair12.md) | 164 | `result-track:244d7ee30b970ae92e2c75b3f7f7e2b30ad67bec3aff350500717dbea9658a52` |
| 16 | `theorem` | [blockCumulantValue_pair01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blockcumulantvalue-pair01.md) | 180 | `result-track:bc52bc067f6d97907c698401c796d0cdcad88f23c70c78c3c8fc035acaeabba8` |
| 17 | `theorem` | [blockCumulantValue_pair02](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blockcumulantvalue-pair02.md) | 191 | `result-track:6bfb5f5f5796140c50a6b0dfacc3bea972297da3fb75c7af3a75694a6f0c02ce` |
| 18 | `theorem` | [blockCumulantValue_pair12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/blockcumulantvalue-pair12.md) | 202 | `result-track:064238faba3bb2f832e449f9ce452e2f482937be26ffabda327bcf1a6ebfa5e9` |
| 19 | `theorem` | [directionalPartitionWeight_bot_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/directionalpartitionweight-bot-three.md) | 212 | `result-track:9601e52ba58e76530897eb4937093f9d5ba88f68030b0057d41ad570f81afd7d` |
| 20 | `theorem` | [directionalPartitionWeight_pair01_2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/directionalpartitionweight-pair01-2.md) | 228 | `result-track:b4e46aff60884943e2da80a1fcc325169d1a15ab79dbb8fc52bf4d0709d22251` |
| 21 | `theorem` | [directionalPartitionWeight_pair02_1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/directionalpartitionweight-pair02-1.md) | 242 | `result-track:e83c51965e25fbdaefaac3431b1a651d70b63a2e08691754ef1fe954fb3be4e5` |
| 22 | `theorem` | [directionalPartitionWeight_pair12_0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/directionalpartitionweight-pair12-0.md) | 256 | `result-track:e72840e5cbdd285c53fbf5eff892a194014b3f143b045239f1bd88d3ab6463a6` |
| 23 | `theorem` | [directionalProperContribution_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/directionalpropercontribution-three.md) | 270 | `result-track:7c047247af7785dd9d8febc0b756f5dbdd1db52ca3c53143a4648199b5a0aa71` |
| 24 | `theorem` | [rawDirectionalMoment_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/rawdirectionalmoment-three.md) | 337 | `result-track:c234e525f9442fddd7cbecdecc2c812f92734a27b9f2f499fd77a5dfa6acbbed` |
| 25 | `theorem` | [thirdCumulantOperator_eq_rawThird_sub_lower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/thirdcumulantoperator-eq-rawthird-sub-lower.md) | 351 | `result-track:a51507b7c894a6ccc02b1dda9916a6e823c60858af7ae6642c520fa5d5231027` |
| 26 | `theorem` | [rawMomentHierarchy_three_eq_cumulants](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/rawmomenthierarchy-three-eq-cumulants.md) | 552 | `result-track:305012d5d0932444d7eaf0f2c073ccc4edc49eb8029c6605b79267f07bd93a67` |
| 27 | `theorem` | [recursiveRawProperContribution_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/recursiverawpropercontribution-three.md) | 647 | `result-track:3ebe2fd7bed61ffb2757e30c1aac7ad6422f3254e6458ace8e0bb5e49c71c9a6` |
| 28 | `theorem` | [recursiveRawCumulantFamily_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/recursiverawcumulantfamily-three.md) | 681 | `result-track:d31934bd3254c3436d9a3cc7d7e93e9b80f3f8e8fb2c6293db703be888354859` |
| 29 | `theorem` | [recursiveRawCumulantFamily_matches_order_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderThreeRecursiveCumulant.lean/declarations/recursiverawcumulantfamily-matches-order-three.md) | 700 | `result-track:6df66ba17b02861e9b83f859862777d85b02d96e68c7729c10b924af64925515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d865dbc1a8c9e323c1a3b31be5bd6fb57c0f6d28263727e07efee48de8f5ab90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
