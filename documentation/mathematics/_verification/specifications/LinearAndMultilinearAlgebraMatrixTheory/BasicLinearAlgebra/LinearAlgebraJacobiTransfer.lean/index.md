# Verification target: GRWTSK.LinearAlgebra.JacobiTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "355e6fe28df83abc7f46c574a7f7575552fadb1d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/JacobiTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `355e6fe28df83abc7f46c574a7f7575552fadb1d`.

Source path: `GRWTSK/LinearAlgebra/JacobiTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/JacobiTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 13; external provider; requires a separately pinned dependency.
- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/index.md) — import line 14; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/rawjacobitransfer.md) | 42 | `declaration-track:2f683daa848313a8cc52e76684a6fa7bcf8397acf97ea0fa55a22f25e150d6c1` |
| 2 | `def` | [jacobiRecurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/jacobirecurrence.md) | 49 | `declaration-track:77dd39ec908842f83b6274e72f93014cb8f8944ce2c0c477d7b84f256203f928` |
| 3 | `theorem` | [jacobi_recurrence_iff_solved](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/jacobi-recurrence-iff-solved.md) | 56 | `result-track:0de1cd58f7ef19ce42a2cdf14a57fa6cd28240283bd2587610d534611a9ac94e` |
| 4 | `theorem` | [jacobi_recurrence_iff_raw_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/jacobi-recurrence-iff-raw-transfer.md) | 75 | `result-track:e2c57fe1e1b8a0134a5ac48b40e32dda770175d3c90d84af54554f8b9f9e295d` |
| 5 | `theorem` | [det_rawJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/det-rawjacobitransfer.md) | 99 | `result-track:f058eb1b8d0217645f97c2a7f3dddde30d9ab91776354193e43812fc48b9c01b` |
| 6 | `def` | [weightedState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/weightedstate.md) | 106 | `declaration-track:e428c825630709ee226ea310902f99fc3e46dde4c22ac74e46c492d23922f6ec` |
| 7 | `def` | [weightedJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/weightedjacobitransfer.md) | 112 | `declaration-track:c1442d50a8ae1dd26081489f741a3166e07880766424078ac7cbfacf3ef1a2f7` |
| 8 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/jacobi-recurrence-iff-weighted-transfer.md) | 119 | `result-track:c31bb119a5b222ae8521ad8776c7e76ac10ae65d7c3b0ca59419ad357de846c0` |
| 9 | `theorem` | [det_weightedJacobiTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/det-weightedjacobitransfer.md) | 144 | `result-track:8d777ad4c38d171f4639b35c35eb6823ac1b9f0b33bc2265dce34aded41da859` |
| 10 | `def` | [weightedJacobiSL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/weightedjacobisl.md) | 152 | `declaration-track:6723f54b7e4a9fcd9389a97999c45f7af505096ea7648e7e9149cd5216a6767d` |
| 11 | `theorem` | [weightedJacobiTransfer_schrodinger](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/weightedjacobitransfer-schrodinger.md) | 159 | `result-track:e025e21ab1044f1d5daccda8ad7808bca4c3266d95165c605a632a79c5fe1549` |
| 12 | `theorem` | [rawJacobiTransfer_schrodinger](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/rawjacobitransfer-schrodinger.md) | 166 | `result-track:fe060337895fdccd1056f3393ed9db4c956f542116fc360ba4622bef29509c93` |
| 13 | `def` | [stateWeightingMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/stateweightingmatrix.md) | 173 | `declaration-track:46667c14b773bb57dcf8fc0cddb9a07088d7200eee66d45931149371a7fcaf70` |
| 14 | `theorem` | [stateWeightingMatrix_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/stateweightingmatrix-mulvec.md) | 179 | `result-track:d6ccadb720e80f76528a121d73a0039ae1034fea451a868781ac5603769d625c` |
| 15 | `theorem` | [weighted_raw_intertwining](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/weighted-raw-intertwining.md) | 190 | `result-track:a114669e11f5120f144bcddabb44f90792a08dcc0ef6262ce0add3065a8340ca` |
| 16 | `def` | [rawSequenceState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/rawsequencestate.md) | 203 | `declaration-track:c4f5e3ae77a8434a942411ed69d3fc54706d987a6036416cbbad7ceb442e0988` |
| 17 | `def` | [weightedSequenceState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/weightedsequencestate.md) | 209 | `declaration-track:ac89ad0c83f0873256cf63460e1b1a6b83fd0f9bb8a791d36c6afbc427890e61` |
| 18 | `theorem` | [schrodinger_sequence_iff_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/schrodinger-sequence-iff-transfer.md) | 215 | `result-track:6b9b8089467df3dded7a130e077b4d52ade4e4182b2fd8d6046c7dc9dd134525` |
| 19 | `theorem` | [jacobi_sequence_iff_raw_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/jacobi-sequence-iff-raw-transfer.md) | 226 | `result-track:5214ed84ad0bfd7e0d3dd3af8d9c686dfed12dacf3d31d51ff952071c27637ab` |
| 20 | `theorem` | [jacobi_sequence_iff_weighted_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/jacobi-sequence-iff-weighted-transfer.md) | 239 | `result-track:42aae5f8d543ef4e1baac97b5ee2769d67d13270c7d056fd86f7ccc6124b9010` |
| 21 | `theorem` | [rawJacobiTransfer_not_det_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/rawjacobitransfer-not-det-one.md) | 251 | `result-track:47bf61e6dda086895fcd05a9c1751ae60359196e9a039719754ba63fde39b331` |
| 22 | `def` | [twoSiteJacobi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/twositejacobi.md) | 259 | `declaration-track:b6207d361b6ea507bf87472aec934007cdc80b7cadb325ef732e12c9a836930f` |
| 23 | `theorem` | [twoSiteJacobi_cyclic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/twositejacobi-cyclic.md) | 264 | `result-track:270f5e1d74ad686dca554fe1ffc5f36783955eede1b5e25f4e1dfea783c61df0` |
| 24 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/cyclic-coefficient-zero-without-zero-eigenvector.md) | 273 | `result-track:8688c4b087c6c661f23b60521a35abb5f8cdc9c8ce18dbdce8d1105b102d9237` |
| 25 | `theorem` | [twoSiteJacobi_first_three_moments_match](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/twositejacobi-first-three-moments-match.md) | 291 | `result-track:803ca62281d7c6446f4092483a04e83384f1882ea8968330f7a9061c89965dd7` |
| 26 | `theorem` | [twoSiteJacobi_not_conjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/declarations/twositejacobi-not-conjugate.md) | 302 | `result-track:7887801c04436bd91a823062ed6c75dd2c2bd4acdc71f60ffd7317387fb1812c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03a61d92edfd777c4d54a502853d58523a812065741d3261da3e5889df8b752e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/JacobiTransfer.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
