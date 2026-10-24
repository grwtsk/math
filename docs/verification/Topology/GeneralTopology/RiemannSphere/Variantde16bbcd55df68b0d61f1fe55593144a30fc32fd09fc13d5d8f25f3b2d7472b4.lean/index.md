# Verification target: GRWTSK.Topology.GeneralTopology.RiemannSphere.Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a4d61f76e5bfc96259090e5cc906a725a2ac994",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a4d61f76e5bfc96259090e5cc906a725a2ac994`.

Source path: `GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedXYZPoint](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/normalizedxyzpoint--8b5fe407018be259e9ba4f97.md) | 51 | `declaration-track:8b5fe407018be259e9ba4f97fcc86d55fe7a82101d8eb11bfb73791e1e7bd936` |
| 2 | `def` | [xyzChromaticityDenominator](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzchromaticitydenominator--5540d0d717c78b44258f943d.md) | 57 | `declaration-track:5540d0d717c78b44258f943db92448ba6a2e5d7ce4cb6cef6bff8538a118f10c` |
| 3 | `def` | [xChromaticity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xchromaticity--650f1943062ea160ae7fdb7e.md) | 62 | `declaration-track:650f1943062ea160ae7fdb7ea662160f0e87ef0c23581de87329ec09c24e5310` |
| 4 | `def` | [yChromaticity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/ychromaticity--d332be5b01884b6438f2aa39.md) | 67 | `declaration-track:d332be5b01884b6438f2aa397eea2fe0f99377f0673f7ac66a2902db103cf7b3` |
| 5 | `def` | [zChromaticity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/zchromaticity--ecff05545efa40f2d095ad0b.md) | 72 | `declaration-track:ecff05545efa40f2d095ad0bc45dae435f97be9dcb34b417604ca4fe35c7d230` |
| 6 | `theorem` | [xyzChromaticity_denominator_eq_one](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzchromaticity-denominator-eq-one--027a900a292fa8e11db96fdf.md) | 76 | `result-track:027a900a292fa8e11db96fdf2ea190565bc46d00a167275663cc0e817cf206e6` |
| 7 | `theorem` | [xyzChromaticity_denominator_ne_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzchromaticity-denominator-ne-zero--147bf29c09b4eb3a0dfc5dcb.md) | 85 | `result-track:147bf29c09b4eb3a0dfc5dcb42bcf3d301efa6276b0b5c7861faff73636244d3` |
| 8 | `theorem` | [xyzChromaticity_sum_one](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzchromaticity-sum-one--a06a3f02f4d283b4a42f8869.md) | 91 | `result-track:a06a3f02f4d283b4a42f8869f6374c45698cf31eace42f345aa6c1d9c23ea423` |
| 9 | `def` | [xyzChromaticityComplex](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzchromaticitycomplex--b74a950f97d8612f0b881f7e.md) | 100 | `declaration-track:b74a950f97d8612f0b881f7ee5fc698769abf385a33f058c4bea2cfcfc255540` |
| 10 | `def` | [xyzToRiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoriemannsphere--973020c2492b9f93a6f5877d.md) | 106 | `declaration-track:973020c2492b9f93a6f5877d7b84ebbc1eb90df0c378a3a65e7e35de4b8028eb` |
| 11 | `def` | [xyzToAxisSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoaxissphere--d917bd674bd1f06a00547858.md) | 112 | `declaration-track:d917bd674bd1f06a0054785835b65436e26786fff79b47584eccbae32387f1dd` |
| 12 | `theorem` | [xyzToRiemannSphere_is_finite](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoriemannsphere-is-finite--1125173bc45f3af858df945a.md) | 116 | `result-track:1125173bc45f3af858df945a8876db93080ad576b63631e6a046c540d44e8e04` |
| 13 | `theorem` | [xyzToRiemannSphere_finite_witness](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoriemannsphere-finite-witness--21cf2982a989ed2188bb5b14.md) | 133 | `result-track:21cf2982a989ed2188bb5b144d841d1ad22302f14f786958206c566aa01e5e7c` |
| 14 | `theorem` | [xyzToAxisSphere_mem_sphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoaxissphere-mem-sphere--1fbe5df8864743be9d6e84d5.md) | 138 | `result-track:1fbe5df8864743be9d6e84d56a616e7bdb32cfd4538474f89d34cde30f2a5613` |
| 15 | `theorem` | [xyzToAxisSphere_components](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoaxissphere-components--b4e5c30a6a4fe44adac39dff.md) | 146 | `result-track:b4e5c30a6a4fe44adac39dffbf175d48c26966e9bbc0fafded3eeccf04154b06` |
| 16 | `def` | [xyzRealVector](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzrealvector--e7a03030963e0f94110f9abb.md) | 164 | `declaration-track:e7a03030963e0f94110f9abb97ce39adad53ecfa00c52a0284bb8dd8810769e7` |
| 17 | `theorem` | [xyzRealVector_coordinate_sum](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzrealvector-coordinate-sum--a2447e99a981d085f5d187c7.md) | 171 | `result-track:a2447e99a981d085f5d187c76ccb3069d45a6f291a229f2d1d5dcbdf9cbad629` |
| 18 | `theorem` | [xyzRealVector_ne_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyzrealvector-ne-zero--5cb5763b07bfa7e0ac573831.md) | 182 | `result-track:5cb5763b07bfa7e0ac573831680937fd9b42b4bfff2541998288390856135566` |
| 19 | `def` | [xyzToUnitSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztounitsphere--1ab3b6628c8feb722b4dc406.md) | 195 | `declaration-track:1ab3b6628c8feb722b4dc406002802e6b17de5e064d6a83c2d080f507c2f52aa` |
| 20 | `theorem` | [xyzToUnitSphere_mem_sphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztounitsphere-mem-sphere--e8477c5058aa6a1b8dd0f234.md) | 203 | `result-track:e8477c5058aa6a1b8dd0f234e271544938ef249d1b1432eb2d955519cd881b68` |
| 21 | `structure` | [RiemannDerivedMap](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/riemannderivedmap--15850fb7d4c4147690d351e1.md) | 213 | `declaration-track:15850fb7d4c4147690d351e123da6b7ac5e3ae9e30835a202a0169cd97606e52` |
| 22 | `def` | [RiemannDerivedMap.postcomp](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/riemannderivedmap-postcomp--c9a83045cc64e9f781d8494e.md) | 221 | `declaration-track:c9a83045cc64e9f781d8494eabeaabfaf7c081e0b876e0c7bda18d35d9a2deb1` |
| 23 | `def` | [RiemannDerivedMap.identity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/riemannderivedmap-identity--e5137999c515dc7518e2b476.md) | 233 | `declaration-track:e5137999c515dc7518e2b4760cf47ba8a5281cf1898d062481fac75cf8b8b54d` |
| 24 | `def` | [xyzToDerivedTopology](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoderivedtopology--03157691bea24c729f06172e.md) | 241 | `declaration-track:03157691bea24c729f06172e43bd39e351c704385c5c81c2f4c21b4a6e99cade` |
| 25 | `theorem` | [xyzToDerivedTopology_comp](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoderivedtopology-comp--46ad49d016dab1cd38119b52.md) | 248 | `result-track:46ad49d016dab1cd38119b5202bab784a7b053fd5b08cfcc71699c3fa7fe11db` |
| 26 | `theorem` | [xyzToDerivedTopology_identity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoderivedtopology-identity--cb60a8202b937dd150364208.md) | 260 | `result-track:cb60a8202b937dd150364208021dcceb3fc80d60e174e2496c5447fa873c691d` |
| 27 | `abbrev` | [PositiveXYZRealDomain](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/positivexyzrealdomain--9c53f343714e69aaae3199a8.md) | 270 | `declaration-track:9c53f343714e69aaae3199a8e731b1333c50f57eb2b4e0b3f867f665723f1c9e` |
| 28 | `def` | [positiveXYZChromaticityComplex](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/positivexyzchromaticitycomplex--a6e3b763e9d0054e3acf1ddb.md) | 275 | `declaration-track:a6e3b763e9d0054e3acf1ddb1116d079b9bf292577941dbba2c35788f3efd3b4` |
| 29 | `def` | [positiveXYZToRiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/positivexyztoriemannsphere--959c31bc5295d38afa0bb09e.md) | 282 | `declaration-track:959c31bc5295d38afa0bb09efa2509483830b3a2e264778a1103ba71e8cb76bf` |
| 30 | `theorem` | [continuous_positiveXYZChromaticityComplex](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/continuous-positivexyzchromaticitycomplex--399f3df90128e54d8a23db9c.md) | 286 | `result-track:399f3df90128e54d8a23db9cfca478ae4256abf5b759f8902536925903ec1bd0` |
| 31 | `theorem` | [continuous_positiveXYZToRiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/continuous-positivexyztoriemannsphere--8309c2bc720e5d034b01f58d.md) | 307 | `result-track:8309c2bc720e5d034b01f58d7ed0623750cd3a209e85d28c9adca80c3ece27ec` |
| 32 | `theorem` | [continuous_positiveXYZToDerivedTopology](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/continuous-positivexyztoderivedtopology--f74a8af9a41132d01f589514.md) | 313 | `result-track:f74a8af9a41132d01f58951497ccb088a3668661a737e75adf73a167a4654afa` |
| 33 | `abbrev` | [FlatColorTorus](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/flatcolortorus--924750c99934c1f69e6f89e0.md) | 323 | `declaration-track:924750c99934c1f69e6f89e05dc1385acba847cb7734d5b28a492c7bf0d00709` |
| 34 | `def` | [xyzToFlatColorTorus](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/declarations/xyztoflatcolortorus--a8cb9a33720fd96cf631ccaa.md) | 327 | `declaration-track:a8cb9a33720fd96cf631ccaa3a36f39f4f036fd87bace7be8a9f5c62a74d6977` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
