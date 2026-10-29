# Verification target: Jacobi Transfer Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "724dce41da89e50f002a8c96c9cbbca462be8018",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `724dce41da89e50f002a8c96c9cbbca462be8018`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schrodingerTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/schrodingertransfer.md) | 39 | `declaration-track:931d464a16c537e797f85eeca3acb7460c0da07d74bdc0f355bb37954357ec17` |
| 2 | `def` | [rawState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/rawstate.md) | 43 | `declaration-track:205cf3a9afd622952ef9ffdf1d2182ea10e55753e827e62960fd56b53683c2dd` |
| 3 | `theorem` | [schrodinger_recurrence_iff_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/schrodinger-recurrence-iff-transfer.md) | 47 | `result-track:233f914ebfd177cb719dc26c4c45ab14b357567443ff2e94aa91d1ab189c4fce` |
| 4 | `theorem` | [det_schrodingerTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/det-schrodingertransfer.md) | 70 | `result-track:e947cb4f19630ce79696de4c58913fb287298b40c7432c605f2df370aceb833e` |
| 5 | `def` | [schrodingerSL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/schrodingersl.md) | 75 | `declaration-track:b89e7154132327350119370cd6610dc0f71ab018e3fdfbd4c219db93d06d9257` |
| 6 | `def` | [rawJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/rawjacobitransfer.md) | 80 | `declaration-track:2cceb71174c645329f2617d275d891c1ed22c784fc455ffe67c0a92c0f3d8103` |
| 7 | `def` | [jacobiRecurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/jacobirecurrence.md) | 85 | `declaration-track:1f5091b679da249e082901f222aecc93bec6e0e0a3e0c07e2637775e8471baf1` |
| 8 | `theorem` | [jacobi_recurrence_iff_solved](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/jacobi-recurrence-iff-solved.md) | 90 | `result-track:f4b0303fc8c7ef9763981a9e384f53c5488e9301a1820a906b48769da8550e38` |
| 9 | `theorem` | [jacobi_recurrence_iff_raw_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/jacobi-recurrence-iff-raw-transfer.md) | 107 | `result-track:d8195bfa86c0eb09dbf782ccf3293917d5e9c3fa43e10781a40f280aba324fba` |
| 10 | `theorem` | [det_rawJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/det-rawjacobitransfer.md) | 129 | `result-track:fff9535849858e89c9e3ecf107978853d737d23fdb0697b083c79deca828bb14` |
| 11 | `def` | [weightedState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/weightedstate.md) | 134 | `declaration-track:7e44d1cac2a94fa7096f6fb2ef0d54ed37f18b6e2afae9314ffddf5511f0c3bc` |
| 12 | `def` | [weightedJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/weightedjacobitransfer.md) | 138 | `declaration-track:aced4f814178b07e0e2c40098902f7cd2b563912ed39f8abcc2e74769fe95f74` |
| 13 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/jacobi-recurrence-iff-weighted-transfer.md) | 143 | `result-track:e4386d8ca35bf22dbfbb501e869b955fac3b9287f0a28f74783c3f059f75fa24` |
| 14 | `theorem` | [det_weightedJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/det-weightedjacobitransfer.md) | 166 | `result-track:b58cb2dedd9102965d53c3d98382ddb19acd0f3a459d4049518c3b823b887d1d` |
| 15 | `def` | [weightedJacobiSL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/weightedjacobisl.md) | 172 | `declaration-track:d87009c570842eaf52c33b16bd96925dab4699b7057df3c41c7767a8f77f1d81` |
| 16 | `theorem` | [weightedJacobiTransfer_schrodinger](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/weightedjacobitransfer-schrodinger.md) | 177 | `result-track:0b1aafc1ca51a5c02e76444fd6fd37e3785485d1c2b49cfce9925bdfc7a88749` |
| 17 | `theorem` | [rawJacobiTransfer_schrodinger](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/rawjacobitransfer-schrodinger.md) | 182 | `result-track:4937e9f9d488f75c9fb831c4723089eebf655b73effc83b14c04c0b8da90c1d8` |
| 18 | `def` | [stateWeightingMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/stateweightingmatrix.md) | 187 | `declaration-track:be735ad33125f517051301dedbdae3c03e0a247b0f189bbaea999aecdb87f830` |
| 19 | `theorem` | [stateWeightingMatrix_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/stateweightingmatrix-mulvec.md) | 191 | `result-track:aadee4e626b79d2cadd7be15258c00570d122ee34ed61f27eeaf76a47c42dc38` |
| 20 | `theorem` | [weighted_raw_intertwining](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/weighted-raw-intertwining.md) | 200 | `result-track:4a65c9edfa4ecde6a90d09c3f08a52638d9ab90c8c981ed97610acf1bf9d3c21` |
| 21 | `def` | [rawSequenceState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/rawsequencestate.md) | 211 | `declaration-track:fac56fb61e803c42f6559a26aebe7dcbbdce28a073e4caadcdaf8def9adb8005` |
| 22 | `def` | [weightedSequenceState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/weightedsequencestate.md) | 215 | `declaration-track:d1f286128891ae3d297568fbaf2abc1f2bf98878f26a1d9ff69f37171ee9bfbf` |
| 23 | `theorem` | [schrodinger_sequence_iff_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/schrodinger-sequence-iff-transfer.md) | 219 | `result-track:320d5c3d032c7ee9b714333dfa9e394d4d573d2f9d858dc868da5ea54774310b` |
| 24 | `theorem` | [jacobi_sequence_iff_raw_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/jacobi-sequence-iff-raw-transfer.md) | 228 | `result-track:bb900bf7e74ea6acfdd9d7a60f25c519ccd07c4d46c7bc7578908c220beae32c` |
| 25 | `theorem` | [jacobi_sequence_iff_weighted_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/jacobi-sequence-iff-weighted-transfer.md) | 239 | `result-track:32a7abe3c7a35ed475f1d403489213f1b4251ce6e3e033daf8058215b626c518` |
| 26 | `theorem` | [rawJacobiTransfer_not_det_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/rawjacobitransfer-not-det-one.md) | 249 | `result-track:05d85fe24be108285f77f79b76b6fb2a3a2730865c1f406ab00d6258b2f22bd5` |
| 27 | `theorem` | [schrodinger_same_SL_syntax_not_equal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/schrodinger-same-sl-syntax-not-equal.md) | 255 | `result-track:a30d98d90f4851984482cd76e08f5a08c8eec723cef551fb93ecbb40f5b7f699` |
| 28 | `def` | [twoSiteJacobi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/twositejacobi.md) | 263 | `declaration-track:76ddcebeaee37f3d032b507067de82dc15b5ccfa38a14c730d5e425e494fd6fa` |
| 29 | `theorem` | [twoSiteJacobi_cyclic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/twositejacobi-cyclic.md) | 266 | `result-track:88aebdb95b109c2a0c77f942958926078098b04579fba54ec1ea6563104d853c` |
| 30 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/cyclic-coefficient-zero-without-zero-eigenvector.md) | 273 | `result-track:98c6bf9495898e78e31b91523f1a0748a9cbb0a18c8148f167b8a8077a50dcff` |
| 31 | `theorem` | [twoSiteJacobi_first_three_moments_match](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/twositejacobi-first-three-moments-match.md) | 289 | `result-track:04e2c610c0d2cd037dafd267feffb47257099d98c54155646da22d435bcabbf7` |
| 32 | `theorem` | [twoSiteJacobi_not_conjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/declarations/twositejacobi-not-conjugate.md) | 298 | `result-track:4f64c1fdc946e30a768a2d1c996742a4d6b663a10cf84e756c4122559dc5fb4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c538a9f39f493ef4523951cad5b8713362ac8eff087dcfdea320154fb755a279 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
