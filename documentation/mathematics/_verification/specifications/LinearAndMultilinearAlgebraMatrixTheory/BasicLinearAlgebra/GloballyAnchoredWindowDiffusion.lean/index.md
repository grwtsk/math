# Verification target: Globally Anchored Window Diffusion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d637a1d37deb6062ae114c55c2a4f3f5b7045301",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d637a1d37deb6062ae114c55c2a4f3f5b7045301`.

Source path: `GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.WindowCover` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.InvolutiveConvolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WindowLinearOperators](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/windowlinearoperators.md) | 26 | `declaration-track:6102a90aed4ba487f00b718194bf1539d579b35700ba4db64374634ef403541b` |
| 2 | `structure` | [AnchoredWindowFusion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/anchoredwindowfusion.md) | 45 | `declaration-track:577631728c8a6781e2786b48b5924ebb159410ae04189b0ae8ba1857b9075bcc` |
| 3 | `def` | [ofCores](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/ofcores.md) | 62 | `declaration-track:14eb6e0e4862d73680c0f1994db2ff3670902305d10577f46628575deb123656` |
| 4 | `def` | [localOperators](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/localoperators.md) | 72 | `declaration-track:54f13397a59df952f1aad085492174292f62b6c4e2321fd7d5d396e81d375108` |
| 5 | `theorem` | [localOperator_apply_twice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/localoperator-apply-twice.md) | 82 | `result-track:68135e7b02e1d225c85f7cb69885b6a79b91cbc22e3c826817d23d3c4fd2d475` |
| 6 | `def` | [fusedWindowNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/fusedwindownumerator.md) | 96 | `declaration-track:5297a39c13583fa627ceea79a404779034836eb8e1293bb8a828c94194d7170c` |
| 7 | `def` | [fusedWindowOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/fusedwindowoperator.md) | 110 | `declaration-track:47d0d73270e29031f09162e6de9e8ded682ac8ff0adf4eb8335a2bff3ea6de4c` |
| 8 | `def` | [fusedWindowLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/fusedwindowlinear.md) | 120 | `declaration-track:1a18929323c60f4635717341ea2d641057288dd5a86fda7ee44fdbcbbca727fb` |
| 9 | `def` | [operator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/operator.md) | 183 | `declaration-track:8d8d3e4566940f5693e782b8b8a778f4ce1da6c70fcc3f3ec00e194e9e14ba30` |
| 10 | `theorem` | [operator_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/operator-apply.md) | 189 | `result-track:a44897b3ae16dc71fc7b5b0dcdfafa0cf615296fa3c3a60be6d57a27623ed1ce` |
| 11 | `theorem` | [operator_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/operator-add.md) | 199 | `result-track:bb8ef9d3e9c5e3cc7940c98fec43a0fdcb4547dbb2a12c78e9bb98bdee8efad3` |
| 12 | `theorem` | [operator_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/operator-smul.md) | 207 | `result-track:ca0537ebc1e3784d2689ece9e9ef10a11daeeea1b833a9f64aaf8821ce3791ef` |
| 13 | `def` | [query](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/query.md) | 215 | `declaration-track:6096a6a5bfbc46b67ff8186204efd2d5385eb57446de0685bb4fa3043c8b9add` |
| 14 | `theorem` | [query_eq_restriction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/query-eq-restriction.md) | 222 | `result-track:6be6c6c0716ccc2f374f472a313c85c92b546b323a8c3eefead1b2c715a07c31` |
| 15 | `def` | [orderedWindowInput](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/orderedwindowinput.md) | 245 | `declaration-track:bc402f40dd552acb6b6efd4e9ec23909c0739078be9d33e52e742c21c719b888` |
| 16 | `theorem` | [orderedWindowInput_eq_snapshot_restriction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/orderedwindowinput-eq-snapshot-restriction.md) | 252 | `result-track:8eb2d3edbe572829d93926f35740bff7efba6e33c7ccfbd9dfc51e471c295e69` |
| 17 | `def` | [orderedWindowNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/orderedwindownumerator.md) | 261 | `declaration-track:f3b3c7389f7f187ce888a72fcd3287efd9a4826ba20d0ede42a47363f428f48e` |
| 18 | `theorem` | [orderedWindowNumerator_eq_fused](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/orderedwindownumerator-eq-fused.md) | 277 | `result-track:bb6d224f31517c1fe9e81dc0e34549b531c1ea98866007e3d22a6a0bb6209c39` |
| 19 | `def` | [orderedTimestep](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/orderedtimestep.md) | 292 | `declaration-track:78f901bf72f25f50bd7371852dda9f4b780dcc00368a6ed52aa1fd33cb4bba4e` |
| 20 | `theorem` | [orderedTimestep_eq_operator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/orderedtimestep-eq-operator.md) | 300 | `result-track:809b9bd08148fc92f806a0a7f1fb406bdda1a4107f0769af785fa57fdc98f71e` |
| 21 | `theorem` | [orderedTimestep_order_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/orderedtimestep-order-independent.md) | 310 | `result-track:baf955c4f7b3a0917b8727853835fe4e22c290507e586dfbb4fd4742b5d42877` |
| 22 | `structure` | [WindowTimestepSchedule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/windowtimestepschedule.md) | 329 | `declaration-track:6b58351a2d59b61584fd39bab2396a3179371c22bc7ece0d8019d2b10ce63453` |
| 23 | `theorem` | [window_input_eq_prior_snapshot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/window-input-eq-prior-snapshot.md) | 352 | `result-track:6dbabb7302c0645b37969fff74ceeb6f482354027e241379ccd04e3f50198860` |
| 24 | `theorem` | [state_succ_eq_operator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/state-succ-eq-operator.md) | 363 | `result-track:0edaf251827e6eade20901b78718ea7e145dd48d7c3103fef9175bc41a3d400e` |
| 25 | `theorem` | [alternative_order_eq_next_state](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/alternative-order-eq-next-state.md) | 371 | `result-track:3707be0871dd0e28a8d15d6976c669f5093b71933ae29197d374a71a4abfc24e` |
| 26 | `theorem` | [fusedWindowLinear_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/fusedwindowlinear-apply.md) | 383 | `result-track:30b9c1c2afb73a23a4e7c76fc12c21e1640e6a69d8dabcfd7c6b6a4282a3b42d` |
| 27 | `def` | [fusedWindowQuery](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/fusedwindowquery.md) | 394 | `declaration-track:5b38965005f033408140860aea94483511d235290857e6cf2aca8721ded84cbc` |
| 28 | `theorem` | [fusedWindowQuery_eq_restriction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/fusedwindowquery-eq-restriction.md) | 405 | `result-track:f121ecf2c90dcb05d2866de3e05ab5e9bd3b79008fa9680f5bc61f2aabcc5f9e` |
| 29 | `structure` | [GlobalWindowInvolutionCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/globalwindowinvolutioncertificate.md) | 417 | `declaration-track:bf76f1b2ad54330c683121222e37c1fd22d6f0d7cced371a209e0deebf56378e` |
| 30 | `theorem` | [apply_twice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/declarations/apply-twice.md) | 429 | `result-track:42977ad48b17bedd8d40d5de917e8b2863421c1911d136c764acf7f2929eeb63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f45673b8d3bf2173137a054c731e082314d565507df951b5b5136a1623e3cfe4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean","GRWTSK/_verification/specifications/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
