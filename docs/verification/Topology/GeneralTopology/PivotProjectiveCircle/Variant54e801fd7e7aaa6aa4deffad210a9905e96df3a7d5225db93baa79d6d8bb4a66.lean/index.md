# Verification target: GRWTSK.Topology.GeneralTopology.PivotProjectiveCircle.Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotChartTopology` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitionFixtures` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RealCircle](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/realcircle--812eee76f3f1df48da8e8119.md) | 33 | `declaration-track:812eee76f3f1df48da8e811955607064d06d1936606a5301032716251355b2ca` |
| 2 | `def` | [firstPivot](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstpivot--4c899105336c6d16e1992fbd.md) | 36 | `declaration-track:4c899105336c6d16e1992fbdfe253c4b610af29f32b8053ea3ad78c3a3c7acaf` |
| 3 | `def` | [secondPivot](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/secondpivot--e82b04abff7d1348666d2482.md) | 42 | `declaration-track:e82b04abff7d1348666d2482da9aa8699e1bd096de59a024b4ff2e5145eddbbd` |
| 4 | `theorem` | [firstPivot_apply](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstpivot-apply--8f7b0b72c5b8359d7398dff3.md) | 47 | `result-track:8f7b0b72c5b8359d7398dff39cb91c1c595ef4097cb8b045bec1e114944cf96b` |
| 5 | `theorem` | [secondPivot_apply](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/secondpivot-apply--866f07f8709ecb09cc51d4cb.md) | 49 | `result-track:866f07f8709ecb09cc51d4cbb0f856b6f82f7015d4aefcf0881857a080b3e0a2` |
| 6 | `def` | [doubleAngle](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/doubleangle--4ad89d7354c67cc4b0595c94.md) | 52 | `declaration-track:4ad89d7354c67cc4b0595c94fb67db54a6f51190dc4b4a9b73a948b66148a0cf` |
| 7 | `theorem` | [doubleAngle_unit](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/doubleangle-unit--316e609c138ff4ecfef36b2b.md) | 55 | `result-track:316e609c138ff4ecfef36b2b6ffea4656365840faba31e654f16652399c15e28` |
| 8 | `theorem` | [doubleAngle_scale](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/doubleangle-scale--e7556417245c9212936b75f7.md) | 61 | `result-track:e7556417245c9212936b75f756362b7e7c804b2e92d7b8c9e61569d9c5139f1d` |
| 9 | `theorem` | [fullRankFrame_denominator_pos](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/fullrankframe-denominator-pos--f6deaf129cb13e31ddabdfc1.md) | 68 | `result-track:f6deaf129cb13e31ddabdfc1fc851b106c59849925e641d27d85a8675a2b89f0` |
| 10 | `def` | [frameCircle](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/framecircle--ae19a754430a3434f82e9eec.md) | 87 | `declaration-track:ae19a754430a3434f82e9eec85a69526e516c15fd7a0821be5c1e84361eb0e15` |
| 11 | `theorem` | [frameCircle_eq_of_rowSpace_eq](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/framecircle-eq-of-rowspace-eq--762f57d2c43356a6c59db055.md) | 92 | `result-track:762f57d2c43356a6c59db055912318994e15d04664be8b2c7da60c6b4602a6c6` |
| 12 | `def` | [circleMap](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circlemap--a8418c845cad4627f52a8baf.md) | 105 | `declaration-track:a8418c845cad4627f52a8bafb63fc8ee7226e13a868e90561f633c9fca9c9783` |
| 13 | `theorem` | [circleMap_representedPlane](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circlemap-representedplane--09a862788a38ccbe9abd90fe.md) | 107 | `result-track:09a862788a38ccbe9abd90fe223945f3c6e8527dc228a3c1d8a26a524c0d0c98` |
| 14 | `theorem` | [circleMap_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circlemap-normalizedpivotplane--51926cea31939651e221d898.md) | 112 | `result-track:51926cea31939651e221d8981edeaa9e338e6102372f1b92d569ba15f1d99b9a` |
| 15 | `theorem` | [continuous_circleMap_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/continuous-circlemap-normalizedpivotplane--b17ba55f20460a10a905ca00.md) | 119 | `result-track:b17ba55f20460a10a905ca00a0d4d88d798e33291649d8d9c717b468c7056c61` |
| 16 | `theorem` | [continuous_circleMap](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/continuous-circlemap--4149628db2f72ad617d97445.md) | 145 | `result-track:4149628db2f72ad617d97445820dd562840ac1500ec625e89bce78956a5fd814` |
| 17 | `def` | [firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstpoint--2191f40dae39aacd7d58667e.md) | 152 | `declaration-track:2191f40dae39aacd7d58667e4b09c2a2057cb288c62a6270bcf33adb8f0456eb` |
| 18 | `def` | [secondPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/secondpoint--8de91b02fe2e84a308bb0e52.md) | 160 | `declaration-track:8de91b02fe2e84a308bb0e52142e2764fa5d55c955dad201dd4bc2e535a93add` |
| 19 | `theorem` | [circleMap_firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circlemap-firstpoint--d8f2a4a98ca01a33f3b9e191.md) | 167 | `result-track:d8f2a4a98ca01a33f3b9e19199619f5335da4d6a3764e62b34499f1df662bd77` |
| 20 | `theorem` | [circleMap_secondPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circlemap-secondpoint--d4198d82daf5eed34ddcdf5e.md) | 171 | `result-track:d4198d82daf5eed34ddcdf5e5fbdd70b7299d669f4f1ec66a1f9cbd86f1260f7` |
| 21 | `theorem` | [normalized_frame_eq_first](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/normalized-frame-eq-first--bb00509258e5ce68e795b5f0.md) | 175 | `result-track:bb00509258e5ce68e795b5f014f073c626c1986733c3b95ea18a0367ffe6e1d7` |
| 22 | `theorem` | [normalized_frame_eq_second](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/normalized-frame-eq-second--13d00ca16a1f493d7878f350.md) | 183 | `result-track:13d00ca16a1f493d7878f350aaaeb5081f0c2b5e134ec6508730035b5ef84c58` |
| 23 | `theorem` | [firstPoint_secondPoint_cover](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstpoint-secondpoint-cover--704bf74a95df0ac5d2711952.md) | 192 | `result-track:704bf74a95df0ac5d27119522f6d5821cb97a91e332df486dcfc090862699956` |
| 24 | `theorem` | [firstPoint_eq_secondPoint_inv](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstpoint-eq-secondpoint-inv--51436b3fa43998e49cc062d6.md) | 211 | `result-track:51436b3fa43998e49cc062d6075293ae81850438887c9ff5a71b475496aeee34` |
| 25 | `theorem` | [firstCircle_fst_ne_neg_one](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstcircle-fst-ne-neg-one--356d3b3d1cd0b273a9a9d234.md) | 219 | `result-track:356d3b3d1cd0b273a9a9d2347993e3ea8509658e851e99bb5a289606be6a80d7` |
| 26 | `theorem` | [firstCircle_coordinate](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstcircle-coordinate--feecaa536fe05ecd8c670337.md) | 226 | `result-track:feecaa536fe05ecd8c67033736f903ac22ba3d7f640d4ba18dd5b35d31759657` |
| 27 | `theorem` | [firstCircle_inverse](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/firstcircle-inverse--05257fd141df1159962d4a8b.md) | 239 | `result-track:05257fd141df1159962d4a8b648f6340e45ba3c162f436206f467a2405532551` |
| 28 | `def` | [circleInverse](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circleinverse--08d303e526f0a1e22da4e8bd.md) | 249 | `declaration-track:08d303e526f0a1e22da4e8bdeedbd4c658b4dc3ae6b9d0fb84a94f26cf0c4532` |
| 29 | `theorem` | [circleInverse_firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circleinverse-firstpoint--db0fd4a56baab6346c07c141.md) | 252 | `result-track:db0fd4a56baab6346c07c141cc37e73ff8a2391505447a11ad8cfa33f7ca08ff` |
| 30 | `theorem` | [circleInverse_circleMap](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circleinverse-circlemap--0182a73df98c464f74fec58a.md) | 256 | `result-track:0182a73df98c464f74fec58abd26ba539a0b49959342a7098d32d97fdc6ca1de` |
| 31 | `theorem` | [circleMap_circleInverse](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circlemap-circleinverse--7b0232fe58886f030d49fef8.md) | 269 | `result-track:7b0232fe58886f030d49fef8837d06fc0449e608ef8d8628c9903d0f382fcea2` |
| 32 | `def` | [circleEquiv](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circleequiv--7cfab3213c8736021ad30215.md) | 282 | `declaration-track:7cfab3213c8736021ad30215123302586a393cf561b27b5485d1283ab4ac7867` |
| 33 | `theorem` | [continuous_firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/continuous-firstpoint--85958c16a169b866ac19c3eb.md) | 288 | `result-track:85958c16a169b866ac19c3ebe46aba74ca34d1b6386e56a6d810c9f6d3d3509c` |
| 34 | `theorem` | [continuous_secondPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/continuous-secondpoint--d882ad17efc48a8b00e6b664.md) | 297 | `result-track:d882ad17efc48a8b00e6b664078aae131b9762311497b9e9d6a31f0a61d93609` |
| 35 | `theorem` | [bounded_chart_cover](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/bounded-chart-cover--09a82edb6c97a7c93ec366da.md) | 307 | `result-track:09a82edb6c97a7c93ec366daffb2c09b02938a1528dc602836c667a9fe8951a0` |
| 36 | `instance` | [compactSpace_intrinsicProjectiveLine](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/compactspace-intrinsicprojectiveline--0926eefd39a9373a2aac9bc0.md) | 327 | `declaration-track:0926eefd39a9373a2aac9bc0ded3cf5f0be665d770da21144f9506a0e752938c` |
| 37 | `def` | [circleHomeomorph](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/declarations/circlehomeomorph--7a72a0093d9550eb70e5be41.md) | 334 | `declaration-track:7a72a0093d9550eb70e5be41f0aab61a890499a4382756ec1569f4b82aeaa0fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
