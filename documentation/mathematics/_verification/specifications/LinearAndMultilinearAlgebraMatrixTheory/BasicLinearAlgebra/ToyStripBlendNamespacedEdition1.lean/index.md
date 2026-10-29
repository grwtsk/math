# Verification target: Toy Strip Blend Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23389fd5809611e29e06a9d7321a3dc50dae3b8e",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23389fd5809611e29e06a9d7321a3dc50dae3b8e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.EdgeRelaxation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EdgeRelaxation.Matrix2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-matrix2.md) | 39 | `declaration-track:f58df07077885447d9e47a462adf77f9d80e70be024942cf7adb2d442e7f5386` |
| 2 | `def` | [EdgeRelaxation.complexMatrixInt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-complexmatrixint.md) | 47 | `declaration-track:c321b9a5982c2791456bdb986c7cdc82db67ea46e768e93facfdbfd5f8572ece` |
| 3 | `theorem` | [EdgeRelaxation.complexMatrixInt_m00](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-complexmatrixint-m00.md) | 54 | `result-track:3334014382082b838a91dac691ba428991f823749b1ebde1c96da15f69298c99` |
| 4 | `theorem` | [EdgeRelaxation.complexMatrixInt_m01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-complexmatrixint-m01.md) | 57 | `result-track:eda03409bc32ddb9d8d8323a0dd973c2d5cf61ad48c78d6cb5d4d90bba9e4ece` |
| 5 | `theorem` | [EdgeRelaxation.complexMatrixInt_m10](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-complexmatrixint-m10.md) | 60 | `result-track:87c67113442dcf9074fefa428a22d3ccfaaa10a26b6cc29f210dc070281e0e1b` |
| 6 | `theorem` | [EdgeRelaxation.complexMatrixInt_m11](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-complexmatrixint-m11.md) | 63 | `result-track:90fbe56e94562477cd0aaae1bb2a6da60368c6da5f729e88916db86f61cb1fce` |
| 7 | `def` | [EdgeRelaxation.realPartEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-realpartembedding.md) | 67 | `declaration-track:3a39b73edb46b1f4b40495c6b03e0e54a1c8af6acb3b45d26744559c38015af1` |
| 8 | `theorem` | [EdgeRelaxation.realPartEmbedding_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-realpartembedding-eq-top.md) | 72 | `result-track:66ec6ad72c9a3676c7aa2f9fe938db51368f28d07d4e7d4e093a7079ac13ca44` |
| 9 | `def` | [EdgeRelaxation.toyBoundaryZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toyboundaryzero.md) | 78 | `declaration-track:e04250a5d34bb11b05145dc0bbd5e737045aadd3af74d9fe3cbedd5c147ad2d3` |
| 10 | `def` | [EdgeRelaxation.toyBoundaryOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toyboundaryone.md) | 82 | `declaration-track:a2a5693d63ff5fb3397fd2ceffbfb5b3ac6f42e03c5996760c077dec9dd3e134` |
| 11 | `theorem` | [EdgeRelaxation.toyBoundaryZero_eq_centeredPole](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toyboundaryzero-eq-centeredpole.md) | 85 | `result-track:75f85e8bdfacd4299844db9c7f66f6d7b4f6584fb2b5802c3a77a52a1643cdac` |
| 12 | `theorem` | [EdgeRelaxation.toyBoundaryOne_eq_boundaryShell](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toyboundaryone-eq-boundaryshell.md) | 89 | `result-track:d7b2bbd94ba4b33dea8da5eded1966c2292c9a1473490dba03898dde06a87254` |
| 13 | `def` | [EdgeRelaxation.blendByEpsilon](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-blendbyepsilon.md) | 94 | `declaration-track:05a7d4e5a742852bd742ba902bd034240b14ef717842bc2acf0856cb7c225ff5` |
| 14 | `def` | [EdgeRelaxation.toyStripBlendState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblendstate.md) | 105 | `declaration-track:dc4a3138f3628ada69b841b36eb017ca603fc1418421cec678e265cfebd29ea3` |
| 15 | `def` | [EdgeRelaxation.toyStripBlendFormula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblendformula.md) | 112 | `declaration-track:ddbf837db91938f00afe62ed80961774f03cb04c9d247d8f09452cb68621d198` |
| 16 | `theorem` | [EdgeRelaxation.toyStripBlendState_formula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblendstate-formula.md) | 119 | `result-track:9a5ef1540a08a17573194aa7841a2031a77ee3f4ec46458ddfb2fbd1e4219926` |
| 17 | `theorem` | [EdgeRelaxation.toyStripBlend_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblend-left.md) | 125 | `result-track:bbda0b72a828c95e885021ff6920fd9e5bfa6362b4828866cfe35662ae1da3ba` |
| 18 | `theorem` | [EdgeRelaxation.toyStripBlend_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblend-center.md) | 130 | `result-track:8168bb903001e53867804f2dbfaf62b7c78bd3cb3786c9e23a9bfefa7ef65005` |
| 19 | `theorem` | [EdgeRelaxation.toyStripBlend_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblend-right.md) | 135 | `result-track:ba0d42025dca2ef2c2cf3bf203e6ba8de20b6d50e4fba341d289b49a57dc3286` |
| 20 | `def` | [EdgeRelaxation.EpsilonDensity.evalAtZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-epsilondensity-evalatzero.md) | 141 | `declaration-track:91bc778ea09c4d943ef711db7845c9566dfbb2c5f4b6a88ce730292a4d003acc` |
| 21 | `def` | [EdgeRelaxation.EpsilonDensity.evalAtOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-epsilondensity-evalatone.md) | 146 | `declaration-track:9aa355b37837c556dd5ea33281db65839f4aebaf6e58f34f89ca66446d50a6e4` |
| 22 | `theorem` | [EdgeRelaxation.EpsilonDensity.oneMinusEps_not_crisp_for_toyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-epsilondensity-oneminuseps-not-crisp-for-toystripblend.md) | 151 | `result-track:d05e218c26a709743b4fd3af5b077d2b6fa4d9a89793fa4db2d7b3fb84e69a67` |
| 23 | `def` | [EdgeRelaxation.intVectorOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-intvectorofbool.md) | 157 | `declaration-track:5ef7c5e4ceeeb910b93c4e0fb541db72db8e38ef4c3e7b8261d614077bc85f85` |
| 24 | `def` | [EdgeRelaxation.evalAtZeroVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evalatzerovector.md) | 163 | `declaration-track:ad6e94b3a3909cffb2cfe1d68a43ba0f42eeaf0b44bdcdf9839f662ba406efc0` |
| 25 | `def` | [EdgeRelaxation.evalAtOneVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evalatonevector.md) | 169 | `declaration-track:f40925af66a6a34a00cb17d0e7c1270e38b3bfd5b8d744a3fd26e64cfb1fead0` |
| 26 | `theorem` | [EdgeRelaxation.toyStripBlend_atZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblend-atzero.md) | 175 | `result-track:64adac71cc85ae6b500771fb115a693ee9a673e4ce8f0682b4cf45970a452f13` |
| 27 | `theorem` | [EdgeRelaxation.toyStripBlend_atOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblend-atone.md) | 184 | `result-track:ca19b227605b727eeb1f35387190d840064d638e480989a5d85653e35416628e` |
| 28 | `structure` | [EdgeRelaxation.HalfValue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-halfvalue.md) | 193 | `declaration-track:22b9b1a6e5d1c3c1138e02f1dbffedda41e2010357bf77fc708fb86127343e10` |
| 29 | `def` | [EdgeRelaxation.HalfValue.zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-halfvalue-zero.md) | 198 | `declaration-track:32852859e05d8c561441ac5f572f8bb409cc5b779bdacc4c27245c5ae4aa7659` |
| 30 | `def` | [EdgeRelaxation.HalfValue.half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-halfvalue-half.md) | 202 | `declaration-track:f7ae3d725f529fffc7d3f27059062a07e9091f4fabbea45fdb02774382f70db1` |
| 31 | `def` | [EdgeRelaxation.HalfValue.one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-halfvalue-one.md) | 206 | `declaration-track:f555079324c21d974cd17efa7b502cd8a040f54ff89ec60cb14170c21cf80653` |
| 32 | `def` | [EdgeRelaxation.HalfValue.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-halfvalue-add.md) | 210 | `declaration-track:d5e988fd91c5277162d99b67c42385433f3b9db555c0c3405dae49160586ca27` |
| 33 | `def` | [EdgeRelaxation.HalfValue.neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-halfvalue-neg.md) | 216 | `declaration-track:cef6aab34d77b7ebadeda1004361f3a626ba9e980a00e2bcdc5f248e4df9d3ef` |
| 34 | `def` | [EdgeRelaxation.HalfValue.scaleInt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-halfvalue-scaleint.md) | 222 | `declaration-track:3ce6e0f47df7c691fd088d2c081353036e699186aae57e4ebde31c033b35008a` |
| 35 | `def` | [EdgeRelaxation.evalAtHalf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evalathalf.md) | 229 | `declaration-track:1bbe3f390fa53f3b8815be0c2d20c4d37b6e83ab0d490b8363ea4854dded15e0` |
| 36 | `theorem` | [EdgeRelaxation.evalAtHalf_eps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evalathalf-eps.md) | 234 | `result-track:26114e34995888cee38bd395c70cf27a9c1fddaac8b8fbf70ba565b46f7438f3` |
| 37 | `theorem` | [EdgeRelaxation.evalAtHalf_oneMinusEps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evalathalf-oneminuseps.md) | 240 | `result-track:9f411f8d4049681300816118422b2e148a14e68b643729c61fb2427996761e54` |
| 38 | `def` | [EdgeRelaxation.evalAtHalfVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evalathalfvector.md) | 247 | `declaration-track:6138653e3e249ef009f71a49fbcbbc76e5f909865673f50666062e932c7eafd3` |
| 39 | `def` | [EdgeRelaxation.midpointBlendState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-midpointblendstate.md) | 253 | `declaration-track:0502b2f04df57353803aff104f65c8ac8c27925e60e29134b71954bf4ad0b8fb` |
| 40 | `theorem` | [EdgeRelaxation.midpointBlend_is_balanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-midpointblend-is-balanced.md) | 258 | `result-track:eb75366a6082e96ad716b63433084e72518ff898322bc06da5f88d70ef7994e0` |
| 41 | `theorem` | [EdgeRelaxation.midpointBlend_equal_basis_weights](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-midpointblend-equal-basis-weights.md) | 266 | `result-track:a62ae45ec6fbf1f8dcced1d84418c7fef43b60fa6d05361d95fcb4e5f9eee14f` |
| 42 | `def` | [EdgeRelaxation.sumHalf3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-sumhalf3.md) | 274 | `declaration-track:4f8625ddad9ec09a1e7891be4a9325d2fcce1eb986625e27f35862e321211f5a` |
| 43 | `def` | [EdgeRelaxation.applyIntKernelToHalfVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-applyintkerneltohalfvector.md) | 281 | `declaration-track:9489981b67ded4b53f4826d4e4a2ba05f25c7c894d7ded6a1ff4fc0c017cce25` |
| 44 | `def` | [EdgeRelaxation.imaginaryRotationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-imaginaryrotationmatrix.md) | 292 | `declaration-track:8d6c913aa46d91b8279a0e4773953892fee1dd678ed2732aaa291765cdea3c7f` |
| 45 | `def` | [EdgeRelaxation.rotatedMidpointBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-rotatedmidpointblend.md) | 305 | `declaration-track:6f48af4e189af7ffb7e3e5d2d27b097db9b2512b2b7e897eca1628fcb4c14157` |
| 46 | `def` | [EdgeRelaxation.rotatedMidpointBlendFormula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-rotatedmidpointblendformula.md) | 312 | `declaration-track:a17241dad33a27e8671ff7c55c97ed9c38bd5e0a451371c25bb329b4a1b3937e` |
| 47 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_formula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-rotatedmidpointblend-formula.md) | 319 | `result-track:a3531bf515d00cc8bd05abb94ad1893ddb8c7c066d3db780eab9096000e8c337` |
| 48 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_center_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-rotatedmidpointblend-center-zero.md) | 336 | `result-track:85b130828813893afd33575c8610da3a263d3a1520ce9f68039a1a2aff91c24f` |
| 49 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_left_flux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-rotatedmidpointblend-left-flux.md) | 342 | `result-track:598c8fbce445ed0d0cdb8c296d571061bc559122969ec02f6cc78d025ec6db94` |
| 50 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_right_flux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-rotatedmidpointblend-right-flux.md) | 347 | `result-track:154aaad181d4c67118c958d6ea66c78312c27c6360244d56b82e90fe3bd11f53` |
| 51 | `def` | [EdgeRelaxation.toyStripBlendValuation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblendvaluation.md) | 352 | `declaration-track:36f186c4ad5fcc832c75be8b1e829ee45985a4b7210b0ce072e54d67af72b718` |
| 52 | `def` | [EdgeRelaxation.evalTreeAcrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evaltreeacrosstoystripblend.md) | 357 | `declaration-track:abea1ac96a5e1d3f326eae919abdf3880e53c4b0facc79c83fb7abde4d1e1c2b` |
| 53 | `def` | [EdgeRelaxation.evalStrictPolishAcrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-evalstrictpolishacrosstoystripblend.md) | 364 | `declaration-track:07555d7dcb03249e987790c1f96798116eb21ae18f42f1e31458c0cee9fc47d6` |
| 54 | `def` | [EdgeRelaxation.centerPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-centerpolish.md) | 372 | `declaration-track:480244bcb9c1f0dd7b833177cb7f302ed8697bc48717b286b9661de410d461d8` |
| 55 | `def` | [EdgeRelaxation.leftPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-leftpolish.md) | 377 | `declaration-track:faf6efa75380aab3a58f8a32c78c48531610206c1d97c954c6f199c68c444a4d` |
| 56 | `def` | [EdgeRelaxation.rightPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-rightpolish.md) | 382 | `declaration-track:0d85666eb1ac242f97584279a71a25c1af44d629b5436bc6544317ef68803701` |
| 57 | `def` | [EdgeRelaxation.boundaryAndPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-boundaryandpolish.md) | 387 | `declaration-track:d69851722a8eefb13006469fc73e25fb9e303a64debd992e08c39202c75ab97a` |
| 58 | `def` | [EdgeRelaxation.leftOrCenterPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-leftorcenterpolish.md) | 392 | `declaration-track:4275f738f67d574ca3f5f5a21ffea3e9ddb6b73d4d83448241e5c1764e675297` |
| 59 | `theorem` | [EdgeRelaxation.eval_centerPolish_acrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-eval-centerpolish-acrosstoystripblend.md) | 396 | `result-track:59f53a0819b1e8076c9dd11ed9bbd97d1ce5a5721777c91d8781fa8c6ec92ce6` |
| 60 | `theorem` | [EdgeRelaxation.eval_leftPolish_acrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-eval-leftpolish-acrosstoystripblend.md) | 404 | `result-track:aa146fce526a46f5ce39fc293efa925c5d8af41483f49ab8c1bfafbbd882b679` |
| 61 | `theorem` | [EdgeRelaxation.eval_rightPolish_acrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-eval-rightpolish-acrosstoystripblend.md) | 412 | `result-track:fc5c1196d90b290ec663166f9702817f07884a70dd365e834572108910948586` |
| 62 | `theorem` | [EdgeRelaxation.centerTree_acrossToyStripBlend_not_crisp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-centertree-acrosstoystripblend-not-crisp.md) | 421 | `result-track:1ae3a3922a0e6c63c19615d878f75ccea19d1bf320411342e190f8b33b224a43` |
| 63 | `theorem` | [EdgeRelaxation.boundaryAndPolish_acrossToyStripBlend_not_crisp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-boundaryandpolish-acrosstoystripblend-not-crisp.md) | 427 | `result-track:5e11bc235491cfdaae01fc46a89a03200620d42c5231350fc94f7e197a463c5e` |
| 64 | `theorem` | [EdgeRelaxation.toyStripBlend_embedding_summary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendNamespacedEdition1.lean/declarations/edgerelaxation-toystripblend-embedding-summary.md) | 439 | `result-track:70e5975fb8b9553bd0bf2c3904c5dbcc29ccc39045e7e0c8dca56b03d8df96a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acee384c5aab69724ee1af42109ef3cf261b2a33182e73e5ceeb37e42dbf0f89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ToyStripBlend/Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
