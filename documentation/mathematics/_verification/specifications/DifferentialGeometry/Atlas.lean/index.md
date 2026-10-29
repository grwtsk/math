# Verification target: Atlas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd0e0c104bb73b2f984f81b29685f5dc58478007",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/Atlas.lean/index.md) · [Full source](../../../../DifferentialGeometry/Atlas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd0e0c104bb73b2f984f81b29685f5dc58478007`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasMFDerivAt](../../../../DifferentialGeometry/Atlas.lean/declarations/hasmfderivat.md) | 50 | `result-track:93151a117ae2675e7bb5b64a48ee62b5c099770d354a4da292089a77ced5e5b7` |
| 2 | `theorem` | [hasMFDerivWithinAt](../../../../DifferentialGeometry/Atlas.lean/declarations/hasmfderivwithinat.md) | 53 | `result-track:349a88fb0b5134d5a260e4479eed23be457acc7c2600f96a4e9085808347e22b` |
| 3 | `theorem` | [mdifferentiableWithinAt](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiablewithinat.md) | 57 | `result-track:d85e86953501980bf7417b34485cdd66365ad330d5dce3190a0a44b0af05b274` |
| 4 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableat.md) | 60 | `result-track:5bfa2d5e35fae7f5ae443ff4f79fcb5db664fcf01bbc1e716f3773875a2a723b` |
| 5 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableon.md) | 63 | `result-track:06755ef81e4ea9cc4c935bb7a8619b3eb37f5832db308516afa106d9739d9c51` |
| 6 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiable.md) | 66 | `result-track:73fc36f0227156d18c27280c137c74273e809c9812f291a4375be81b458a75ef` |
| 7 | `theorem` | [hasMFDerivWithinAt_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/hasmfderivwithinat-symm.md) | 68 | `result-track:e2a7369566b9e5c018a3385011c92b3bcff3b359d7e951875a916d15b79a677b` |
| 8 | `theorem` | [mdifferentiableOn_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableon-symm.md) | 73 | `result-track:526ea1a0b7309a0d8bd9f7e14cc710fa0521592626581cf3a4397d3f7da3b656` |
| 9 | `theorem` | [mdifferentiableWithinAt_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiablewithinat-symm.md) | 76 | `result-track:986dec134245419e8fc6abe66caae0073efd3655e5b9fc3367c6d3ce83b6f5af` |
| 10 | `theorem` | [mdifferentiableAt_atlas](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableat-atlas.md) | 89 | `result-track:c6aee444311ca049290864c71524c151e1b8ae556553e76b5bceac8c0a9a8f36` |
| 11 | `theorem` | [mdifferentiableOn_atlas](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableon-atlas.md) | 108 | `result-track:4bfb17399f1fde8c3987f4e15f3dd92aa1db1d5b75a60080588623e5159c0bfc` |
| 12 | `theorem` | [mdifferentiableAt_atlas_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableat-atlas-symm.md) | 111 | `result-track:cdb9d8b924dde3ffa68d80d0eee512d2737a3f7774aef9f91fef13f55e7debb7` |
| 13 | `theorem` | [mdifferentiableOn_atlas_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableon-atlas-symm.md) | 129 | `result-track:4bae5c94165ba7e53e1aed8e8d807f27b4a21c8487da5836b19fc48f7b3d8730` |
| 14 | `theorem` | [mdifferentiable_of_mem_atlas](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiable-of-mem-atlas.md) | 132 | `result-track:344a3687772f17409d3592767a13b2e87662f6763c3e8ca4c0cc9aed1f60a7c9` |
| 15 | `theorem` | [mdifferentiable_chart](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiable-chart.md) | 135 | `result-track:cc9699ff6ebe21395b146220611bac9d0c8b5e5711a3c6b066b6f36b8c9b7f5b` |
| 16 | `theorem` | [symm](../../../../DifferentialGeometry/Atlas.lean/declarations/symm.md) | 146 | `result-track:178288ac766e3899fd825248c826ae3ef42eabe90ae2ef6effaedc81645661c8` |
| 17 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableat-source-edition-2.md) | 148 | `result-track:e233e22a81addd14cf7d4da86f937870408bb28aad6e77d281341f20ef330c87` |
| 18 | `theorem` | [mdifferentiableAt_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableat-symm.md) | 151 | `result-track:f9e0b12542be2c30403558c29a8179c47b4886c96c2dba00e87dec116937f193` |
| 19 | `theorem` | [symm_comp_deriv](../../../../DifferentialGeometry/Atlas.lean/declarations/symm-comp-deriv.md) | 154 | `result-track:030fab9063a244d1d1aa6ea6843b4951dced82fa1cdcf14c9b55e86710b083f1` |
| 20 | `theorem` | [comp_symm_deriv](../../../../DifferentialGeometry/Atlas.lean/declarations/comp-symm-deriv.md) | 166 | `result-track:7a6bc4d591aa3399ecb4dae2f44d67daf7feb0698380f3606f108d5a2c391511` |
| 21 | `def` | [mfderiv](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderiv.md) | 173 | `declaration-track:92c9b4e79c00d4cb48099a57b3694e7ddfb4f9f2f20571fe64e95c4314a5bd3e` |
| 22 | `theorem` | [mfderiv_bijective](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderiv-bijective.md) | 191 | `result-track:2170849a7baa2583af6b4e2bf25cb2e5e2ac8a25df962293277d41a2be7059e9` |
| 23 | `theorem` | [mfderiv_injective](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderiv-injective.md) | 194 | `result-track:a728a0df30a14d20942fde6114b30c906e961b49b4659f29fb8683450e0ae97c` |
| 24 | `theorem` | [mfderiv_surjective](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderiv-surjective.md) | 197 | `result-track:6daed0b16272db1bf92a9802ecb2a34f77d714f382df035e2ae7b51dfd44cb6e` |
| 25 | `theorem` | [ker_mfderiv_eq_bot](../../../../DifferentialGeometry/Atlas.lean/declarations/ker-mfderiv-eq-bot.md) | 200 | `result-track:114491f08c894e961318745ade7a1a97ecee915c74e3c778bae5c6223edea2e1` |
| 26 | `theorem` | [range_mfderiv_eq_top](../../../../DifferentialGeometry/Atlas.lean/declarations/range-mfderiv-eq-top.md) | 203 | `result-track:f33e31800b041212dcc26cf193fdc3f9df4af3563d95e8eda33eff0757c4431e` |
| 27 | `theorem` | [range_mfderiv_eq_univ](../../../../DifferentialGeometry/Atlas.lean/declarations/range-mfderiv-eq-univ.md) | 206 | `result-track:f2652b5fe0bdcf45e6721e2a1c1ad7e619387ecf13e650da6368fd78d857ee0e` |
| 28 | `theorem` | [trans](../../../../DifferentialGeometry/Atlas.lean/declarations/trans.md) | 209 | `result-track:d8877acbad6f12db7dbc8cc6a0f4ac434ac2b25182182d80c134c8b412ce12dc` |
| 29 | `theorem` | [hasMFDerivAt_extChartAt](../../../../DifferentialGeometry/Atlas.lean/declarations/hasmfderivat-extchartat.md) | 229 | `result-track:eb86534a8a7810db0e7b20decb87928e891d24412d095efae1a4cccab7c64428` |
| 30 | `theorem` | [hasMFDerivWithinAt_extChartAt](../../../../DifferentialGeometry/Atlas.lean/declarations/hasmfderivwithinat-extchartat.md) | 233 | `result-track:6131d3ba5fd7b05ddeccf34af3c8c48994f99b904b26eb24f5574a6abb1ab288` |
| 31 | `theorem` | [mdifferentiableAt_extChartAt](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableat-extchartat.md) | 237 | `result-track:094d97638d21bb6058bd8e378a6c3a6b1f85d67421f95cea4759fcdd836d4ae7` |
| 32 | `theorem` | [mdifferentiableOn_extChartAt](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableon-extchartat.md) | 241 | `result-track:9fdb90c53bc759ef232be5658b0d5441cc7d37fbfdc3040eb46745fd6236aec6` |
| 33 | `theorem` | [mdifferentiableWithinAt_extChartAt_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiablewithinat-extchartat-symm.md) | 245 | `result-track:060c713736787353018516d67d1c63fef2d3b819510752cf64bb66b7cba00652` |
| 34 | `theorem` | [mdifferentiableOn_extChartAt_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mdifferentiableon-extchartat-symm.md) | 255 | `result-track:0ce2572aca00f906dee0e81fc17e8f0928957344a2a8e2d32cb56dd1209b1980` |
| 35 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm-source-edition-2.md) | 263 | `result-track:5347d96246cd155bc3d652b18d84b78b18853a3cf93b964e196a1148a39ee1d0` |
| 36 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm'](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm.md) | 286 | `result-track:470bb7a685aa80be78b181a96ae1d0f522fac8030e00d08569f899683fa18983` |
| 37 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat-source-edition-2.md) | 297 | `result-track:da2e6d69e8345f0ff3851523de43939d791644c6fb3bc3435c83789c747c3f08` |
| 38 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt'](../../../../DifferentialGeometry/Atlas.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat.md) | 329 | `result-track:907b303a047f70bcb45e9bac6726dbf293a78614b6363336f72743b342bbfc24` |
| 39 | `lemma` | [isInvertible_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/Atlas.lean/declarations/isinvertible-mfderivwithin-extchartat-symm.md) | 337 | `result-track:7ebd76c56ef14165b3bfa97a188e95c7b8cd45c958881d2ddfbf607d89f8ac5f` |
| 40 | `lemma` | [isInvertible_mfderiv_extChartAt](../../../../DifferentialGeometry/Atlas.lean/declarations/isinvertible-mfderiv-extchartat.md) | 343 | `result-track:ab5bd66e14d1f7fa8e46c43a1accfff575893a7de66c0e93e910bfe767234042` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca978d2cf2876589d8555c4203c5ea59f0ebb59e8a00c5a942732be17dee3380 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
