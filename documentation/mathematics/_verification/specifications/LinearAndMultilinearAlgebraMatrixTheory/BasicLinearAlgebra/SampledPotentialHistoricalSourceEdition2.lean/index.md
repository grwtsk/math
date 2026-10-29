# Verification target: GRWTSK.Algebra.LinearAlgebra.Schrodinger.SampledPotential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57cb5cfe99168d654f8ee2bba20f131d7af9b5d8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Schrodinger/SampledPotential.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotentialHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotentialHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57cb5cfe99168d654f8ee2bba20f131d7af9b5d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Schrodinger/SampledPotential.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Schrodinger/SampledPotential.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampledPotential](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotentialHistoricalSourceEdition2.lean/declarations/sampledpotential.md) | 18 | `declaration-track:0cce848000a548d2486b8416e97ed94ff340c0ef8fed212c55322a688ad0575f` |
| 2 | `def` | [transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotentialHistoricalSourceEdition2.lean/declarations/transfer.md) | 20 | `declaration-track:1bb2213dca63779a811d1696790c3212fd7a834e12be043f58c244c8e18aa2e8` |
| 3 | `theorem` | [transfer_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotentialHistoricalSourceEdition2.lean/declarations/transfer-det.md) | 22 | `result-track:8a550fcb80b6a4f12dd4c9895b581c9ecbb5050ba1d69466c51b654f88295c41` |
| 4 | `theorem` | [transfer_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotentialHistoricalSourceEdition2.lean/declarations/transfer-trace.md) | 24 | `result-track:766591f90b0b396bd2d92abe80d9b654f878aaa592c38c8048ae0a27225b5eba` |
| 5 | `theorem` | [transfer_unbounded_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotentialHistoricalSourceEdition2.lean/declarations/transfer-unbounded-trace.md) | 26 | `result-track:48718c8a6599e58853269a50186216e9ec492542066446f96094ced121391fb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=679e3561a4d827d6f65354e92d994e4a2c9885887bf478aeec1e616a7251bfe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Schrodinger/SampledPotential.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrencea628ae17c4d6668c923dfe27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
