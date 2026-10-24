# Verification target: GRWTSK.Topology.GeneralTopology.PivotProjectiveCircle.Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "925a634a4d405002a30235e5cc11b34fc191f5b5",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `925a634a4d405002a30235e5cc11b34fc191f5b5`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotChartTopology` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitionFixtures` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RealCircle](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/realcircle--0f10878addfc7a27a28fbafc.md) | 25 | `declaration-track:0f10878addfc7a27a28fbafc086e185b6a57ab3a15f8ece28388cccf003f4502` |
| 2 | `def` | [firstPivot](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstpivot--74de45479e61c226f5336800.md) | 28 | `declaration-track:74de45479e61c226f533680087dea1a11ebc2be0be060ff695edb1939c2fe815` |
| 3 | `def` | [secondPivot](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/secondpivot--c1534e375471bb206e9a7829.md) | 34 | `declaration-track:c1534e375471bb206e9a7829e37693049b19ad45991454f50f760cc28df7b161` |
| 4 | `theorem` | [firstPivot_apply](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstpivot-apply--c6d73df2ac7ef09e0241f0e6.md) | 39 | `result-track:c6d73df2ac7ef09e0241f0e633629a1e90aba696596323011496520e3ba21ebb` |
| 5 | `theorem` | [secondPivot_apply](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/secondpivot-apply--e65d9154f63434df12e9ed30.md) | 41 | `result-track:e65d9154f63434df12e9ed303c9cb6e107895496d88c00a24c4c46d7dc611fc0` |
| 6 | `def` | [doubleAngle](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/doubleangle--2d2091d768e4afa52a5719b6.md) | 44 | `declaration-track:2d2091d768e4afa52a5719b6386b43d1a391004a9a0cb48e8d3e865e86fa1731` |
| 7 | `theorem` | [doubleAngle_unit](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/doubleangle-unit--19ba4fda5fffc8a98adb6af6.md) | 47 | `result-track:19ba4fda5fffc8a98adb6af68e4db7f83496461e6cb5e850eef80d159c3c69dc` |
| 8 | `theorem` | [doubleAngle_scale](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/doubleangle-scale--11069fb02ec8df759162ef43.md) | 53 | `result-track:11069fb02ec8df759162ef4323c4cca6c8b322ae2f2d34aba64bef6a445409fe` |
| 9 | `theorem` | [fullRankFrame_denominator_pos](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/fullrankframe-denominator-pos--80535638a74ef90fca6e2197.md) | 60 | `result-track:80535638a74ef90fca6e2197e2a361c82b90509f4c868f972e7f9fdbf3f07471` |
| 10 | `def` | [frameCircle](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/framecircle--8e0fbfbf644a79d9ba5b73a6.md) | 79 | `declaration-track:8e0fbfbf644a79d9ba5b73a6d63cb34848959e180cf77bdfd63b4db4b964bf78` |
| 11 | `theorem` | [frameCircle_eq_of_rowSpace_eq](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/framecircle-eq-of-rowspace-eq--88c981812a75a52338d76e5c.md) | 84 | `result-track:88c981812a75a52338d76e5cb50c2b5264603f3db1fa3e0d03250ba658066747` |
| 12 | `def` | [circleMap](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circlemap--2ce7b6f9c63e7ad77e94032e.md) | 97 | `declaration-track:2ce7b6f9c63e7ad77e94032ee118566f96fd33388600e663a0c56423c8ac9ea9` |
| 13 | `theorem` | [circleMap_representedPlane](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circlemap-representedplane--982313534c2cf9f8d2b262b2.md) | 99 | `result-track:982313534c2cf9f8d2b262b2bc4f1adcd397031417ce98982caed6863aed2149` |
| 14 | `theorem` | [circleMap_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circlemap-normalizedpivotplane--05a99f33c0e535a807de0bdc.md) | 104 | `result-track:05a99f33c0e535a807de0bdc81530357dcbfdabae672c882f929813198ebb8f9` |
| 15 | `theorem` | [continuous_circleMap_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/continuous-circlemap-normalizedpivotplane--35d59acc8460910170a8f1bb.md) | 111 | `result-track:35d59acc8460910170a8f1bbddb2c35d052f9028af8d19a867f8688ed5ba4892` |
| 16 | `theorem` | [continuous_circleMap](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/continuous-circlemap--9e7430535c9a9389f8a36a49.md) | 137 | `result-track:9e7430535c9a9389f8a36a49e86ba6b51bb9055bb31ac3ccd640ab593aca0c65` |
| 17 | `def` | [firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstpoint--9d51c297ed7cbc6caaa3cd06.md) | 144 | `declaration-track:9d51c297ed7cbc6caaa3cd06c6c201b334dc8646ccdc35cab7692d56a726e03f` |
| 18 | `def` | [secondPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/secondpoint--d32bb652fe6a7e80ed4f08f2.md) | 152 | `declaration-track:d32bb652fe6a7e80ed4f08f289f9a905db7cc0976b58601fc8500e494f7f6682` |
| 19 | `theorem` | [circleMap_firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circlemap-firstpoint--be45fd05b93ddf064de4ff0e.md) | 159 | `result-track:be45fd05b93ddf064de4ff0e865a203a6c6e160f0e397f627fea2194094fdf39` |
| 20 | `theorem` | [circleMap_secondPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circlemap-secondpoint--740c550fa999c453eb4070a2.md) | 163 | `result-track:740c550fa999c453eb4070a24625ad7a03e47ad606be57847ffd273f01841416` |
| 21 | `theorem` | [normalized_frame_eq_first](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/normalized-frame-eq-first--5ef5e6b89f08b9249f6ebcad.md) | 167 | `result-track:5ef5e6b89f08b9249f6ebcadb61e1a8fe6fa92f23dafe790c46d3ffbb6dd78de` |
| 22 | `theorem` | [normalized_frame_eq_second](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/normalized-frame-eq-second--3203064142e30c8dc0fd6f62.md) | 175 | `result-track:3203064142e30c8dc0fd6f62488c937c554916d4782d78890db5cea724c4848a` |
| 23 | `theorem` | [firstPoint_secondPoint_cover](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstpoint-secondpoint-cover--82802a4ea0b21ced98adc5ef.md) | 184 | `result-track:82802a4ea0b21ced98adc5ef162eb3f143962d05399300286481570b291a4e82` |
| 24 | `theorem` | [firstPoint_eq_secondPoint_inv](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstpoint-eq-secondpoint-inv--2b6efa0819c4f3026a5ef58f.md) | 203 | `result-track:2b6efa0819c4f3026a5ef58ff7f02b1f2e19336d4e520d3f41fb25281c349020` |
| 25 | `theorem` | [firstCircle_fst_ne_neg_one](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstcircle-fst-ne-neg-one--3d1e06ee560384123137efb0.md) | 211 | `result-track:3d1e06ee560384123137efb0528b9f9fc134e2e8b4472013a2cc61d1f9f4a90e` |
| 26 | `theorem` | [firstCircle_coordinate](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstcircle-coordinate--230616c108cac06fb94e4801.md) | 218 | `result-track:230616c108cac06fb94e480110f2a314462e695253652f95e2801bf5b213a04b` |
| 27 | `theorem` | [firstCircle_inverse](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/firstcircle-inverse--df62477c26c6d251f23ac841.md) | 231 | `result-track:df62477c26c6d251f23ac841433cf24c7a2e43feabd54e50646301f357ab9775` |
| 28 | `def` | [circleInverse](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circleinverse--502f8970d5d3294b38af4c11.md) | 241 | `declaration-track:502f8970d5d3294b38af4c11fb631f517d9592551f4ef879b4b8b1e9f012aed0` |
| 29 | `theorem` | [circleInverse_firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circleinverse-firstpoint--8f58230fa381e83434f0eaca.md) | 244 | `result-track:8f58230fa381e83434f0eaca9368feb9dc1e90ff19dd935aa2d1c312cdfff2f3` |
| 30 | `theorem` | [circleInverse_circleMap](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circleinverse-circlemap--0414c248f324f99138f084bd.md) | 248 | `result-track:0414c248f324f99138f084bdf53feae9886ddc7805d0970c48fb9636f8e38f1e` |
| 31 | `theorem` | [circleMap_circleInverse](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circlemap-circleinverse--f0619583d1cd10a20b7b9653.md) | 261 | `result-track:f0619583d1cd10a20b7b9653384b2179cb1af86aa05893728acc6fc22fd76f16` |
| 32 | `def` | [circleEquiv](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circleequiv--f050250d4c4d46e872d11fb9.md) | 274 | `declaration-track:f050250d4c4d46e872d11fb9e031a5aa6968e4b15399b18a4e3cc22d1a03609d` |
| 33 | `theorem` | [continuous_firstPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/continuous-firstpoint--9e72c246206b98bfcd05ec57.md) | 280 | `result-track:9e72c246206b98bfcd05ec5773f6ca56620cbd94357f8af3753c07b570cf8d17` |
| 34 | `theorem` | [continuous_secondPoint](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/continuous-secondpoint--5d4ea678e3c409b027c71bd4.md) | 289 | `result-track:5d4ea678e3c409b027c71bd49f683a5676f9f5e3400b604912e8353c6810a099` |
| 35 | `theorem` | [bounded_chart_cover](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/bounded-chart-cover--af9a4117bd1a66eb97888145.md) | 299 | `result-track:af9a4117bd1a66eb978881451abbbe2c1cefed7ea11ac369d3c0741f0ca1fdf6` |
| 36 | `instance` | [compactSpace_intrinsicProjectiveLine](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/compactspace-intrinsicprojectiveline--53b71e3c900e6cd7211067e0.md) | 319 | `declaration-track:53b71e3c900e6cd7211067e064292a38743c51e14196bff5f4e3e31a2e10086f` |
| 37 | `def` | [circleHomeomorph](../../../../../mathematics/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/declarations/circlehomeomorph--cd716242e2ec6ba5c7f187e8.md) | 326 | `declaration-track:cd716242e2ec6ba5c7f187e8e709bb62e3b39f560bb2738ff28f82059bcaefa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
