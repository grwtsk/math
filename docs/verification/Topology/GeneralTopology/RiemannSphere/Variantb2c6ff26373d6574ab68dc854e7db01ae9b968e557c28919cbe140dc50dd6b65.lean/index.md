# Verification target: GRWTSK.Topology.GeneralTopology.RiemannSphere.Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "583606b8698fbd1d87bbdf97ead5c08a98845262",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `583606b8698fbd1d87bbdf97ead5c08a98845262`.

Source path: `GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ambient](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/ambient--b5f8720d2551682b7930df12.md) | 71 | `declaration-track:b5f8720d2551682b7930df12c00b41df291e672d734e77ad68c47d89b8f9500f` |
| 2 | `abbrev` | [AxisSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/axissphere--ef512848c44acf76386605ef.md) | 74 | `declaration-track:ef512848c44acf76386605efac7018a118b3b457fa3a867f35612ba930142446` |
| 3 | `abbrev` | [RiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannsphere--0d9485a73e2bdcc6dbc3861a.md) | 77 | `declaration-track:0d9485a73e2bdcc6dbc3861a0f57193bf94904d1f93a7de1c8cc0383c6d2e207` |
| 4 | `def` | [infinity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/infinity--408639fb6e4436afec2796a1.md) | 80 | `declaration-track:408639fb6e4436afec2796a1b357fc63815c1a4f6f5a66537722d73cc655c044` |
| 5 | `theorem` | [isOpen_iff_alexandroff](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/isopen-iff-alexandroff--4df176d50a722278609e8d93.md) | 89 | `result-track:4df176d50a722278609e8d93c31ddbdfa5ca392916c18b85626e81faf27a1995` |
| 6 | `theorem` | [nhds_infinity_eq](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/nhds-infinity-eq--021e5d882a90553c001edd91.md) | 100 | `result-track:021e5d882a90553c001edd917e2d820475f4fd6ee1d0993b5b4ddbef3e151abf` |
| 7 | `theorem` | [hasBasis_nhds_infinity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/hasbasis-nhds-infinity--9f6ea3717a6fefea41335772.md) | 111 | `result-track:9f6ea3717a6fefea413357728752e6e75c8215c61f7952f726cff383645782c9` |
| 8 | `theorem` | [finiteChart_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/finitechart-isopenembedding--b08948f29f798c0c8cf2afb8.md) | 119 | `result-track:b08948f29f798c0c8cf2afb893bc20d818f307927a55e14acc9f7dca685d6fed` |
| 9 | `theorem` | [finiteChart_denseRange](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/finitechart-denserange--b2e62f2de412a5d469fd4734.md) | 126 | `result-track:b2e62f2de412a5d469fd47341488e458fd6d127277528d59332ab774b2767ace` |
| 10 | `theorem` | [finiteChart_isDenseEmbedding](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/finitechart-isdenseembedding--4014e6e2af3603ecda51cfb1.md) | 132 | `result-track:4014e6e2af3603ecda51cfb1fbf398b3257a4b61dfa7470147fb454837c8e2a8` |
| 11 | `theorem` | [continuous_onePointMap_iff_isProperMap](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/continuous-onepointmap-iff-ispropermap--1595b6fbadca5b831211033b.md) | 148 | `result-track:1595b6fbadca5b831211033b756a93c2af535e3b6c0899116e0024e0bff150e6` |
| 12 | `def` | [north](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/north--1aaa7e977a99ba450a93a6f5.md) | 156 | `declaration-track:1aaa7e977a99ba450a93a6f533d14d8a04b519db39ce9b711daae0c10273f757` |
| 13 | `theorem` | [norm_north](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/norm-north--eb1d52bdba4ffca2dc761279.md) | 159 | `result-track:eb1d52bdba4ffca2dc761279281d379c37b2d4a7d26ab9e01a47b1cd2c1dba8d` |
| 14 | `def` | [south](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/south--26d3d4f325da43d41a5abb66.md) | 163 | `declaration-track:26d3d4f325da43d41a5abb6657f509ed57d83245457d53b733eaa30f56005f6a` |
| 15 | `theorem` | [norm_south](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/norm-south--985bed0e40743ad40bc304dc.md) | 166 | `result-track:985bed0e40743ad40bc304dc41dd89438058a26adbae32af60847fcd29c817c4` |
| 16 | `abbrev` | [EquatorPlane](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/equatorplane--1564fcca13c83cf6637ebb8f.md) | 170 | `declaration-track:1564fcca13c83cf6637ebb8f6eddcd38a4d82ce8c79ecc70a599af50d736ddae` |
| 17 | `def` | [planePoint](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/planepoint--b8d81d2397bc40491ef201cf.md) | 174 | `declaration-track:b8d81d2397bc40491ef201cf9e21bd9ed3d888beee3a5a6607aad036d2cfd328` |
| 18 | `def` | [tangentPlanePoint](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/tangentplanepoint--1e8bcc87487ae1c51b1654f6.md) | 182 | `declaration-track:1e8bcc87487ae1c51b1654f6657b36fd6d9eb9166bfca870606b99866eafe162` |
| 19 | `theorem` | [tangentPlanePoint_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/tangentplanepoint-zero--30ea6537b898d47367181031.md) | 187 | `result-track:30ea6537b898d47367181031bf69c1f85f278fb6a4a973d415bf00a851523767` |
| 20 | `theorem` | [tangentPlanePoint_components](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/tangentplanepoint-components--36b8fb7f9c5f8d569ef30e1e.md) | 194 | `result-track:36b8fb7f9c5f8d569ef30e1e0ec840794f62f54d6bdf21dd553faa84ac1ec409` |
| 21 | `theorem` | [tangentPlanePoint_inner_north](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/tangentplanepoint-inner-north--6f2ff41d2cb2475c63b796a0.md) | 203 | `result-track:6f2ff41d2cb2475c63b796a0a9f5a30c1404c29cf060f5c2e329a41c418fe2ae` |
| 22 | `theorem` | [equator_second_eq_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/equator-second-eq-zero--93c9ec8924a9cf576c6bd0aa.md) | 210 | `result-track:93c9ec8924a9cf576c6bd0aa0cdc154bb8cf44d0c7796e7873fa9e214b279512` |
| 23 | `def` | [complexEquatorLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/complexequatorlinearequiv--c9a034e6e58a812b67b0f965.md) | 215 | `declaration-track:c9a034e6e58a812b67b0f9653e258d1ec79c73410786380eb81b5ddd6c35ba7c` |
| 24 | `def` | [complexEquatorHomeomorph](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/complexequatorhomeomorph--5742d612dec5841bfc0011ef.md) | 245 | `declaration-track:5742d612dec5841bfc0011ef16360364cc63e8f14c7b27be8043f6fa0aa9bd86` |
| 25 | `def` | [riemannSphereHomeomorph](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph--89959bc1db1dad7b2ec7ec72.md) | 250 | `declaration-track:89959bc1db1dad7b2ec7ec72df1be615de3e729d95a2be7e3c437601ed915118` |
| 26 | `theorem` | [riemannSphereHomeomorph_infinity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph-infinity--be57865ea98bdb2b99609e8b.md) | 255 | `result-track:be57865ea98bdb2b99609e8b180bb0eff4d07f7c1efeeb64d52b3a2f8b79138f` |
| 27 | `theorem` | [riemannSphereHomeomorph_bijective](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph-bijective--d4082c57d5e601f70208b166.md) | 260 | `result-track:d4082c57d5e601f70208b1661b1011faf2773d80c03b4d51f33734caacaf0ebf` |
| 28 | `theorem` | [riemannSphereHomeomorph_coe](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph-coe--0fcc2362387c9a5f403dc5bd.md) | 267 | `result-track:0fcc2362387c9a5f403dc5bd76d4d9db78c1ad1f217fe62d13a2f223a81ff4ee` |
| 29 | `def` | [stereographicDenominator](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/stereographicdenominator--aec9562179c6b2f4e832e63b.md) | 273 | `declaration-track:aec9562179c6b2f4e832e63b8c43ca86fc38d076f8253a992a74a9a89679fb34` |
| 30 | `theorem` | [stereographicDenominator_pos](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/stereographicdenominator-pos--b3e614960191e842c5857ef6.md) | 277 | `result-track:b3e614960191e842c5857ef68f9282f3fe5fbf2f81d2aeaf0d5df4ffbb3eb346` |
| 31 | `theorem` | [planePoint_norm_sq](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/planepoint-norm-sq--8ae3f8a5d3b312fc3e1db6b0.md) | 282 | `result-track:8ae3f8a5d3b312fc3e1db6b0998c6973c4faa14ac9b83bf09147e8c51e1dfb4b` |
| 32 | `theorem` | [riemannSphereHomeomorph_coe_value](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph-coe-value--e733bba6159131abd6e1b60f.md) | 295 | `result-track:e733bba6159131abd6e1b60fe9435f9032019e01bc45bfd64ee5f5c044963fd5` |
| 33 | `theorem` | [riemannSphereHomeomorph_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph-zero--feb953ed02602791063e02f8.md) | 324 | `result-track:feb953ed02602791063e02f8e79fbb5899e71c8230aa921a0f3136bf94c774d8` |
| 34 | `theorem` | [riemannSphereHomeomorph_coe_ray](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph-coe-ray--2e6e94f0ce561ddfbc2af781.md) | 337 | `result-track:2e6e94f0ce561ddfbc2af781150e7fa79b12e59b68679cf6d3065628951b6e36` |
| 35 | `theorem` | [riemannSphereHomeomorph_components](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/riemannspherehomeomorph-components--5c72c6a5f398f83167494085.md) | 362 | `result-track:5c72c6a5f398f83167494085ec40a55afecc6d9c1b1012029fe2d83ae14f965a` |
| 36 | `theorem` | [range_finite_stereographic](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/declarations/range-finite-stereographic--3174369c0e852b6ac7528e88.md) | 379 | `result-track:3174369c0e852b6ac7528e8892afc94b54d095f5246ee5aa28e6590a242825e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
