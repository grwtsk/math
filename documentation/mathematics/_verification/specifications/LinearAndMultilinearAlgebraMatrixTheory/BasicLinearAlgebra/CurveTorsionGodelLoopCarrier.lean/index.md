# Verification target: Curve Torsion Godel Loop Carrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a436d58027668c55d9743c43c4c677564914d9a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a436d58027668c55d9743c43c4c677564914d9a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.BSDAlgorithmBitMatrixCarrier` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CurveGroupModel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/curvegroupmodel.md) | 19 | `declaration-track:e3d31f0ebba547904c1753f479d3088eb710a594dfbf6bf8824f3c194fe6511d` |
| 2 | `structure` | [CurveTorsionWitness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/curvetorsionwitness.md) | 24 | `declaration-track:9e94a7b3bcc624f3df17d31e4049569bafa88abb8e8710f3747457b7e4e7279d` |
| 3 | `theorem` | [curve_torsion_witness_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/curve-torsion-witness-eq-zero.md) | 31 | `result-track:acc1602025fb703f75cc40def2f77ae107ec4c9df5182ab7654a9cc6ca2a5503` |
| 4 | `def` | [transitionIterate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/transitioniterate.md) | 38 | `declaration-track:4a01b8e6f264644641b902d81f373fcd3e467e535842dfd939c48f57ace1eb33` |
| 5 | `structure` | [ClosedFiniteOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/closedfiniteorbit.md) | 44 | `declaration-track:4ffa3b3625bfdc71dbadf2ab7fde8d1cd5333a3adf8f0aae92140e9af168974e` |
| 6 | `theorem` | [closed_finite_orbit_returns](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/closed-finite-orbit-returns.md) | 51 | `result-track:962cd2c0b1fc97e4109d7a16615c3655c23c2a47c50abbd18804bbb4f1190207` |
| 7 | `structure` | [FiniteTransitionCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/finitetransitioncarrier.md) | 58 | `declaration-track:a3b6881d40633ec6ac157dde576218e835b4708d810f9262771b0c82060d5e4d` |
| 8 | `structure` | [FiniteTransitionClosedOrbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/finitetransitionclosedorbit.md) | 62 | `declaration-track:d11b3911efd9d4ce60c69593b866ffe048d17de5c3df36e950d923b4d426328f` |
| 9 | `theorem` | [finite_transition_closed_orbit_returns](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/finite-transition-closed-orbit-returns.md) | 70 | `result-track:346bf392a75266cc1d09a3bee3052d82ca5521bf1b527dfd4920d82c3574f771` |
| 10 | `structure` | [CurveTorsionClosedLoopCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/curvetorsionclosedloopcarrier.md) | 76 | `declaration-track:4e5ef03dbd36c7249b82ccf570078207860dd56d1e81b5a190f64b32724b79ca` |
| 11 | `theorem` | [curve_torsion_closed_loop_order_eq_period](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/curve-torsion-closed-loop-order-eq-period.md) | 85 | `result-track:1148adf93387a254ae505a81848e8a79b7010baf4285227d2014a3c003c32cbb` |
| 12 | `theorem` | [curve_torsion_closed_loop_torsion_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/curve-torsion-closed-loop-torsion-eq-zero.md) | 92 | `result-track:8e985e8d3826d422e6aa4ea96ee6fcfe12e3338ba35681d5f3327321c097f3ce` |
| 13 | `theorem` | [curve_torsion_closed_loop_orbit_returns](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/curve-torsion-closed-loop-orbit-returns.md) | 99 | `result-track:a7a76a034ae90f45bc7389632309142e95b3c8acc27082ced67ef5fac9160354` |
| 14 | `structure` | [GodelStyleClosedLoopReading](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/godelstyleclosedloopreading.md) | 107 | `declaration-track:828bb2999e807a32531b5901e837bc6e1a9e29d87b2634af25296fed35a75e8b` |
| 15 | `theorem` | [godel_style_closed_loop_same_period](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/godel-style-closed-loop-same-period.md) | 115 | `result-track:0d7e5b3dd8fc56ff2c80fb0b9243e7d33971f04b08f1a8ea64321f3382917240` |
| 16 | `theorem` | [godel_style_closed_loop_same_start](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/godel-style-closed-loop-same-start.md) | 122 | `result-track:9939b7a09fbb2f05c4f59ac6a11e41bdd4280014cff9954928c0936abb3f7571` |
| 17 | `structure` | [BSDTorsionClosedLoopBitMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/bsdtorsionclosedloopbitmatrix.md) | 129 | `declaration-track:cd040b5884060dc7b08912e23361b24f741b43e0ef39712e4351218f10d84b08` |
| 18 | `theorem` | [bsd_torsion_closed_loop_row_active](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/bsd-torsion-closed-loop-row-active.md) | 136 | `result-track:7fa492864663ac939e0a88324007ca2eabbddaaa5093ee6aa6875451f304cef3` |
| 19 | `theorem` | [bsd_torsion_closed_loop_torsion_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/bsd-torsion-closed-loop-torsion-eq-zero.md) | 143 | `result-track:e0afd49c59fcad4e0528ce7a1e249a922d3d8e7a4fb66df750814b38c5aab772` |
| 20 | `theorem` | [bsd_torsion_closed_loop_orbit_returns](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean/declarations/bsd-torsion-closed-loop-orbit-returns.md) | 153 | `result-track:7ad718bca4f3e1f56e8a9a8637015c1dc96fbf6e4fd0fe3270f4f02cb42c0954` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=813dc16853777e45a25a9b8b8d6b83851d8754bb1b76369488b3e091245198e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
