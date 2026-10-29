# Verification target: Globally Anchored Window Diffusion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc692a531dff62465f8691cd98c74c86d7cf188f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc692a531dff62465f8691cd98c74c86d7cf188f`.

Source path: `GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.WindowCover` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.InvolutiveConvolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WindowLinearOperators](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/windowlinearoperators.md) | 34 | `declaration-track:195b329cffe80cfe5ab20c6c41dbc302842917f536a14693fab3045997aea194` |
| 2 | `structure` | [AnchoredWindowFusion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/anchoredwindowfusion.md) | 53 | `declaration-track:24476f285be9457af5e70b2747ea56455d583b2d82b517b1b64dfa2eedb459cd` |
| 3 | `def` | [ofCores](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/ofcores.md) | 70 | `declaration-track:cd348be3adf677fb09116a203a81b6b10d0ec026a3ffbd366db5c7ab4204a556` |
| 4 | `def` | [localOperators](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/localoperators.md) | 80 | `declaration-track:274f8ff808bf133cb75f07b4d7ac69ee14e3d1fa67159d9badeca1aa9422ceb0` |
| 5 | `theorem` | [localOperator_apply_twice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/localoperator-apply-twice.md) | 90 | `result-track:12fdff6115135d010b2bd954911df90eddf77a0b4d935c6a01299bb95317ce8f` |
| 6 | `def` | [fusedWindowNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/fusedwindownumerator.md) | 104 | `declaration-track:edaf4238e6713bf8b11220393b6d65515ef913d7bad9ce92506350c6ebe67e0b` |
| 7 | `def` | [fusedWindowOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/fusedwindowoperator.md) | 118 | `declaration-track:007bc2a2bd15deb2cc9c6530e34966951a057378af98c8254264bd9fdad25e9e` |
| 8 | `def` | [fusedWindowLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/fusedwindowlinear.md) | 128 | `declaration-track:fce1ae8c08a4bcb428037425c4b8ae285529b4589a37515f444f45da56d4d673` |
| 9 | `def` | [operator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/operator.md) | 191 | `declaration-track:0cf9572161f117ab91d9a3a70332697a8241456d5f2d172772eee962cb713143` |
| 10 | `theorem` | [operator_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/operator-apply.md) | 197 | `result-track:810f20fd5d1251884e42034bfe53d92ac963085d4431f6d2ba9503ef3c896a8f` |
| 11 | `theorem` | [operator_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/operator-add.md) | 207 | `result-track:e843d7f165af68b0cf1aa3901a2dc9788b1ac550e91103ffb3b2aa8a1b96e5f0` |
| 12 | `theorem` | [operator_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/operator-smul.md) | 215 | `result-track:3631e852cdc9ee6f8ef5aa0d65a20f6e8afc5261d62e249393530e8320c9647c` |
| 13 | `def` | [query](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/query.md) | 223 | `declaration-track:e33a6f446ff5940c8934f7f158787a7769abef083a4389ae66203a132ca73f1a` |
| 14 | `theorem` | [query_eq_restriction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/query-eq-restriction.md) | 230 | `result-track:90d528d763ac6332a6f2b7ddae651dd9413826481ba2a6ec32448f3372407462` |
| 15 | `def` | [orderedWindowInput](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/orderedwindowinput.md) | 253 | `declaration-track:48e1acea8ef1568e01e016676e2a603233266d3fbc6806c5eb5bcc8267186824` |
| 16 | `theorem` | [orderedWindowInput_eq_snapshot_restriction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/orderedwindowinput-eq-snapshot-restriction.md) | 260 | `result-track:5768779dd513bcd62e57848409535a2ea3683f4c751259fac70b1fe907f31bba` |
| 17 | `def` | [orderedWindowNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/orderedwindownumerator.md) | 269 | `declaration-track:6ba673e355d4268c38d43bf80ddd24e499857624f6922f355137a5622cab79be` |
| 18 | `theorem` | [orderedWindowNumerator_eq_fused](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/orderedwindownumerator-eq-fused.md) | 285 | `result-track:5f53b1b9660006cbb887021d5191556f2a49f267ed21f224b4e44c54ed390c79` |
| 19 | `def` | [orderedTimestep](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/orderedtimestep.md) | 300 | `declaration-track:4501e00a6b7cbb7f204639f2f0c51a2d02b2caec4c12814880088bd084ec8d47` |
| 20 | `theorem` | [orderedTimestep_eq_operator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/orderedtimestep-eq-operator.md) | 308 | `result-track:c35ebb646c79e894d41c68fb70604a032afaf7bcc9b8627b016d577510b90bc9` |
| 21 | `theorem` | [orderedTimestep_order_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/orderedtimestep-order-independent.md) | 318 | `result-track:d4765b045b70b56f694de7308f790b3bd0c1cf385f470dca7e36879ed4e02831` |
| 22 | `structure` | [WindowTimestepSchedule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/windowtimestepschedule.md) | 337 | `declaration-track:0f59d7bc7625e56ebc93f2e3d5c95152d39e6c3ec546083b19721c6e0d7e5f78` |
| 23 | `theorem` | [window_input_eq_prior_snapshot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/window-input-eq-prior-snapshot.md) | 360 | `result-track:63ed29f6ca46d495084dfed1e73d303a899484c5f8b05b2feb470fa12ed31add` |
| 24 | `theorem` | [state_succ_eq_operator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/state-succ-eq-operator.md) | 371 | `result-track:b9173b7c03771f6a5aa4d8ae1512927e48aff144671c1d107617cd2f84c52944` |
| 25 | `theorem` | [alternative_order_eq_next_state](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/alternative-order-eq-next-state.md) | 379 | `result-track:69ef793141b63a8ccc6a6dc05426c5be3385e94c0cbaddc202817ff2fc56725a` |
| 26 | `theorem` | [fusedWindowLinear_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/fusedwindowlinear-apply.md) | 391 | `result-track:a1b93af5d78b0916147c2ba586ccc8e25f9bf2790e3c82e2a90ad1b8675a6f40` |
| 27 | `def` | [fusedWindowQuery](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/fusedwindowquery.md) | 402 | `declaration-track:0616ce08caa28f0694f13ce76ab0d3a43f322b82d9d840e5cbe8fc1b4bc8bf0d` |
| 28 | `theorem` | [fusedWindowQuery_eq_restriction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/fusedwindowquery-eq-restriction.md) | 413 | `result-track:2991ddf4dc79b947f88adce3edb348023dc9d00739bc083f549af5e963258d9c` |
| 29 | `structure` | [GlobalWindowInvolutionCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/globalwindowinvolutioncertificate.md) | 425 | `declaration-track:e706076c4d29fb87612065673641e4daed9a19c1515e263c9ccb0a7669073e99` |
| 30 | `theorem` | [apply_twice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusionNamespaced.lean/declarations/apply-twice.md) | 437 | `result-track:9f191b08ecebdd584115b1a9b43df6b3b9438c7ee16c7a5c8a5e3ade7e8f32a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9af9adf86744d36a700f93507803a719f591c56793fe01c443d5ebf97db73e49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean","GRWTSK/_verification/specifications/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
