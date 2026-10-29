# Verification target: Toy Strip Blend Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9f0ee8abbf7b85200464a50bf4343b5fb50ad0d",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9f0ee8abbf7b85200464a50bf4343b5fb50ad0d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToyStripBlend/Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.EdgeRelaxation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EdgeRelaxation.Matrix2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-matrix2.md) | 31 | `declaration-track:abd1c56786e83df7f2d67179b4cf2d1a2395dd3420277bab3cbe1cc23fd6e1fd` |
| 2 | `def` | [EdgeRelaxation.complexMatrixInt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-complexmatrixint.md) | 39 | `declaration-track:bfbc7c83d721d11879ed025f5ea2f0eae68e58d75c37e99f3f61d40d5bae1f5f` |
| 3 | `theorem` | [EdgeRelaxation.complexMatrixInt_m00](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-complexmatrixint-m00.md) | 46 | `result-track:49bc56a9c32c776422ddef86c1e1404259eb4bd6722a5ccaa081df791bbbd9cc` |
| 4 | `theorem` | [EdgeRelaxation.complexMatrixInt_m01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-complexmatrixint-m01.md) | 49 | `result-track:0a6a0a29feab4e77b60a996664984e9bd1b5c0b55f239a8fc00390e23e3bc399` |
| 5 | `theorem` | [EdgeRelaxation.complexMatrixInt_m10](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-complexmatrixint-m10.md) | 52 | `result-track:141e573ad863546173b60e683b7e86c1ca267de7e834bc8ca4abe361878b5fa6` |
| 6 | `theorem` | [EdgeRelaxation.complexMatrixInt_m11](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-complexmatrixint-m11.md) | 55 | `result-track:ae054ea5d0b607e3e1a81957897ef7a9f30751dfdc7c348c58c66bd2a16f8176` |
| 7 | `def` | [EdgeRelaxation.realPartEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-realpartembedding.md) | 59 | `declaration-track:48904263b0989efe20ab82dee359bdc5882fd57a70912a0930a7fd3bddc6d263` |
| 8 | `theorem` | [EdgeRelaxation.realPartEmbedding_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-realpartembedding-eq-top.md) | 64 | `result-track:db99896027527b0d883ebdf41b840d78275afc736c1078d52a7fb2b7c521b8bd` |
| 9 | `def` | [EdgeRelaxation.toyBoundaryZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toyboundaryzero.md) | 70 | `declaration-track:164ce8d7a60129d789c7b5320b68b24df18ea1001524fe35998aa8f07efe95ba` |
| 10 | `def` | [EdgeRelaxation.toyBoundaryOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toyboundaryone.md) | 74 | `declaration-track:c14fff620b72d9e9b324a3f0aaf9a5bbfc80a861f9c7999d2260ba61969a1567` |
| 11 | `theorem` | [EdgeRelaxation.toyBoundaryZero_eq_centeredPole](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toyboundaryzero-eq-centeredpole.md) | 77 | `result-track:911c3bcf4198022e1f7c7a00c131f3048ac8babf9638d5472ec904a175c73281` |
| 12 | `theorem` | [EdgeRelaxation.toyBoundaryOne_eq_boundaryShell](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toyboundaryone-eq-boundaryshell.md) | 81 | `result-track:0916fd0cd3f12b66fd991102f975d43e9fb7a463852129f4c50b8fa1ec2b48a4` |
| 13 | `def` | [EdgeRelaxation.blendByEpsilon](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-blendbyepsilon.md) | 86 | `declaration-track:ae4d187b1043861f7b5968abc38020dee6c50bc3e7638bd3121ba24aabd0679b` |
| 14 | `def` | [EdgeRelaxation.toyStripBlendState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblendstate.md) | 97 | `declaration-track:d0386cdef23ea1059bf4f5ec4d8cc3429908094dff123eb28ff8046052d14c3d` |
| 15 | `def` | [EdgeRelaxation.toyStripBlendFormula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblendformula.md) | 104 | `declaration-track:9d0c319ed24da678479da019941718ad2d088745d417b1c639212ac2797b6cc2` |
| 16 | `theorem` | [EdgeRelaxation.toyStripBlendState_formula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblendstate-formula.md) | 111 | `result-track:66f815317c8998ed5978ebc50f48aa16e2c1e0ad9aa14311cf0a87ce343f387b` |
| 17 | `theorem` | [EdgeRelaxation.toyStripBlend_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblend-left.md) | 117 | `result-track:76bd69d3aa854219eb22ca2b2c0509d4eb135d57fbab4151d7c1c7cdd05056bf` |
| 18 | `theorem` | [EdgeRelaxation.toyStripBlend_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblend-center.md) | 122 | `result-track:7cc94c73531e22895614e615f3d89ed5144cb26471269e65d3ca6d39b9723f7f` |
| 19 | `theorem` | [EdgeRelaxation.toyStripBlend_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblend-right.md) | 127 | `result-track:ec12c6630f4a5cb1f04eb8b5b8ff053d140940ac3d9fa490641083e9e6baed51` |
| 20 | `def` | [EdgeRelaxation.EpsilonDensity.evalAtZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-epsilondensity-evalatzero.md) | 133 | `declaration-track:124eb94ca591e6ad787c7927c7c3166136efa1ab3993acb3fc641ae29d9e4f31` |
| 21 | `def` | [EdgeRelaxation.EpsilonDensity.evalAtOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-epsilondensity-evalatone.md) | 138 | `declaration-track:4183d1f6c4ea58ed022886e08523aa83d8ec3c84ed45c4a1d158a3acffef92f2` |
| 22 | `theorem` | [EdgeRelaxation.EpsilonDensity.oneMinusEps_not_crisp_for_toyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-epsilondensity-oneminuseps-not-crisp-for-toystripblend.md) | 143 | `result-track:91ebba061a12e3529568066b94cced1d921f11e894e7d36c884bb9814829b836` |
| 23 | `def` | [EdgeRelaxation.intVectorOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-intvectorofbool.md) | 149 | `declaration-track:9e5c3f6636aaab4d143297af05a4b4b91f7ed2e4d15b4eca2b62b7da5301a8a1` |
| 24 | `def` | [EdgeRelaxation.evalAtZeroVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evalatzerovector.md) | 155 | `declaration-track:19a0db092b00392e946402fd3e5825822313d7d2571974caa5aad338e75a653a` |
| 25 | `def` | [EdgeRelaxation.evalAtOneVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evalatonevector.md) | 161 | `declaration-track:a843e34f7dc3c1bf95d3c164f184209ed86d20796ac9b8acb9b3aff506431266` |
| 26 | `theorem` | [EdgeRelaxation.toyStripBlend_atZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblend-atzero.md) | 167 | `result-track:fee1b3717e66a7b8b41c0404b39cdb28375b3212a269226004b88bb796dea16d` |
| 27 | `theorem` | [EdgeRelaxation.toyStripBlend_atOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblend-atone.md) | 176 | `result-track:f81e8d14a36c1f6a691cba84593a18462b19a702029b4c852c2e1f4f2be169a8` |
| 28 | `structure` | [EdgeRelaxation.HalfValue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-halfvalue.md) | 185 | `declaration-track:18c8e48f57581cba16539dfaba76003bb6a8a4ea8f248e693378882f61b01b4a` |
| 29 | `def` | [EdgeRelaxation.HalfValue.zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-halfvalue-zero.md) | 190 | `declaration-track:27365fb70420a3cce8eca0bd8a75d10097edbd01a8f944584c7e150385af4b82` |
| 30 | `def` | [EdgeRelaxation.HalfValue.half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-halfvalue-half.md) | 194 | `declaration-track:84aaca5ea471655835ff88ae1a47f5643d3a45437bd51eb7530769c70355568e` |
| 31 | `def` | [EdgeRelaxation.HalfValue.one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-halfvalue-one.md) | 198 | `declaration-track:4d482934b348ccfc9c2d881796dec92a10ff6d71e742b9bbcd97783087e20278` |
| 32 | `def` | [EdgeRelaxation.HalfValue.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-halfvalue-add.md) | 202 | `declaration-track:4fd13ea421f315269cf4a40bedd7d93bcd90d5e5c8272e666191f4d08a1de271` |
| 33 | `def` | [EdgeRelaxation.HalfValue.neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-halfvalue-neg.md) | 208 | `declaration-track:7782c01591a0c5913111ffc81acab0c4ef84b8ea561c56f0125384f47990b782` |
| 34 | `def` | [EdgeRelaxation.HalfValue.scaleInt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-halfvalue-scaleint.md) | 214 | `declaration-track:a638c5b4830e46ac6ceef2819f9ed09043b5ac3a08c5bf5489356b4ae042cc4b` |
| 35 | `def` | [EdgeRelaxation.evalAtHalf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evalathalf.md) | 221 | `declaration-track:406fefe3107a36f50f7e7502319838b82a51d1b97b17b20bf2e35a7f02fb7cfb` |
| 36 | `theorem` | [EdgeRelaxation.evalAtHalf_eps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evalathalf-eps.md) | 226 | `result-track:0b2596cad232d6600e3f3b7ae871d6a287867824986466b3785d295f9e4654c5` |
| 37 | `theorem` | [EdgeRelaxation.evalAtHalf_oneMinusEps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evalathalf-oneminuseps.md) | 232 | `result-track:fec1f416b58856cbb0845768be282cf9daa7bdc89bab0ddf30ccb07a93f5a177` |
| 38 | `def` | [EdgeRelaxation.evalAtHalfVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evalathalfvector.md) | 239 | `declaration-track:15954e0a69f69f02ff45ca2218bdc7479fb4808c83bebdb55f911003aeeed782` |
| 39 | `def` | [EdgeRelaxation.midpointBlendState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-midpointblendstate.md) | 245 | `declaration-track:368dc6cd004f6e92ebdf9b6a1c1eaecfecb18a5e7cf0c1f654d1ffe6f39f24be` |
| 40 | `theorem` | [EdgeRelaxation.midpointBlend_is_balanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-midpointblend-is-balanced.md) | 250 | `result-track:f8d1c8959c3e7e00192a7cf531c4746bf993f512ab2ff0dd04f023eb55269319` |
| 41 | `theorem` | [EdgeRelaxation.midpointBlend_equal_basis_weights](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-midpointblend-equal-basis-weights.md) | 258 | `result-track:49a027fbfa227bc2868944a211d46c8bb3bf775dbe44dcf91152be2725a51185` |
| 42 | `def` | [EdgeRelaxation.sumHalf3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-sumhalf3.md) | 266 | `declaration-track:3a03ac77b02bebf2ba86c40d83a8d98650e2de5a692d34131d94860cc71777a0` |
| 43 | `def` | [EdgeRelaxation.applyIntKernelToHalfVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-applyintkerneltohalfvector.md) | 273 | `declaration-track:a7d7cff8111ae717723bbb55b2098232ede7ec1361e5af8fa3ae34f4a3933a02` |
| 44 | `def` | [EdgeRelaxation.imaginaryRotationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-imaginaryrotationmatrix.md) | 284 | `declaration-track:cd7169d9cd458bde7d5c5a37a18e6bc2d470972048d709398334cea8cf36d03f` |
| 45 | `def` | [EdgeRelaxation.rotatedMidpointBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-rotatedmidpointblend.md) | 297 | `declaration-track:be0e6f63ba2a9394c64dd079d0e1275c5c62d0e2382c47c90c80da5b46ccf33a` |
| 46 | `def` | [EdgeRelaxation.rotatedMidpointBlendFormula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-rotatedmidpointblendformula.md) | 304 | `declaration-track:df2c5a79a06616b208afae6804189880ed6373143e850adaea7adb6e4c547835` |
| 47 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_formula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-rotatedmidpointblend-formula.md) | 311 | `result-track:1142efcac348dbc3a82d1c06d88d144288e487f3f5263d6414cd7e09f14ed392` |
| 48 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_center_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-rotatedmidpointblend-center-zero.md) | 328 | `result-track:031d4326bc2d914c35b411ac9ec6f29930fb0999dd19aafdef3b220e601cdde9` |
| 49 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_left_flux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-rotatedmidpointblend-left-flux.md) | 334 | `result-track:b4c96bd46388f3f9b75dcd006d495bb0de9e183925cbd1f9125df9fbeb13812d` |
| 50 | `theorem` | [EdgeRelaxation.rotatedMidpointBlend_right_flux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-rotatedmidpointblend-right-flux.md) | 339 | `result-track:fd13911358b0bdf886742edf974a2f774504c6c41c05ffd848baece5a69d6f72` |
| 51 | `def` | [EdgeRelaxation.toyStripBlendValuation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblendvaluation.md) | 344 | `declaration-track:bfd3639ee915e4d01a888cd2b56c3a8fda6b30e530a45789dfbb1bb1ece46243` |
| 52 | `def` | [EdgeRelaxation.evalTreeAcrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evaltreeacrosstoystripblend.md) | 349 | `declaration-track:fd6fe0250fb5e3beb402df3711015a5b2ec717fa15347e4e2ec2703b53ffde87` |
| 53 | `def` | [EdgeRelaxation.evalStrictPolishAcrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-evalstrictpolishacrosstoystripblend.md) | 356 | `declaration-track:63a7d5913ce7f380d8a9567fb69cfa74c82de49deadaae88bbd7b196d165a53e` |
| 54 | `def` | [EdgeRelaxation.centerPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-centerpolish.md) | 364 | `declaration-track:8fd2ec54df100acf8101fb6a1162fcbfe92c6547fc5c144d8d1420175ae1c8d8` |
| 55 | `def` | [EdgeRelaxation.leftPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-leftpolish.md) | 369 | `declaration-track:814b52b0458f4b0babca3a7067402dd78a8d1a780935a6518394736e9c4e11a2` |
| 56 | `def` | [EdgeRelaxation.rightPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-rightpolish.md) | 374 | `declaration-track:5ceb467819db112f2396458dc20133e84d7707a678ccf9e2a779ece213e811de` |
| 57 | `def` | [EdgeRelaxation.boundaryAndPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-boundaryandpolish.md) | 379 | `declaration-track:6f5acf432ea9716e255795dbaa39c93d7c93096d127fea04a32bd14e55105064` |
| 58 | `def` | [EdgeRelaxation.leftOrCenterPolish](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-leftorcenterpolish.md) | 384 | `declaration-track:6b96794dc905e2cc36f08df55b27c815aaee734b0a9d1cd08b8075d14129c837` |
| 59 | `theorem` | [EdgeRelaxation.eval_centerPolish_acrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-eval-centerpolish-acrosstoystripblend.md) | 388 | `result-track:95447ee8e673ed37800351cf098145c54f474e5de3e3b62e4c7d16e3a5882197` |
| 60 | `theorem` | [EdgeRelaxation.eval_leftPolish_acrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-eval-leftpolish-acrosstoystripblend.md) | 396 | `result-track:ec048e9c43590dadbfb1f24fc8c3f235d51e7c5a4bc1cc7ece1040c96234d791` |
| 61 | `theorem` | [EdgeRelaxation.eval_rightPolish_acrossToyStripBlend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-eval-rightpolish-acrosstoystripblend.md) | 404 | `result-track:40a9c16461eb08d621b007e1c3b74fe0fb801cca86bf9c5c8fbbad992d09aba0` |
| 62 | `theorem` | [EdgeRelaxation.centerTree_acrossToyStripBlend_not_crisp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-centertree-acrosstoystripblend-not-crisp.md) | 413 | `result-track:564f3448a0a82f4acb0de625878f4ddd9b40cbe44daa8bd215fa4faa062d7dc5` |
| 63 | `theorem` | [EdgeRelaxation.boundaryAndPolish_acrossToyStripBlend_not_crisp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-boundaryandpolish-acrosstoystripblend-not-crisp.md) | 419 | `result-track:d0cae06ff81c180f57aeb623de99baacdbc3009a421161c12cb93f34acf4261b` |
| 64 | `theorem` | [EdgeRelaxation.toyStripBlend_embedding_summary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToyStripBlendEdition2.lean/declarations/edgerelaxation-toystripblend-embedding-summary.md) | 431 | `result-track:5d47b66c0356322bbe8874671c4c325f277b739ea85dbe69a741bc3f0f5086f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fe0a5f53acefbdabb70e0a72a27e8dfd5018d5d3623a07e85f9050ae7548f37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ToyStripBlend/Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
