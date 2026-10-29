# Verification target: Actual Mangoldt Laplace Attempt03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e83a870a63b0ece734f3d645bf687a6c7f6e02ba",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e83a870a63b0ece734f3d645bf687a6c7f6e02ba`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/mangoldtweight.md) | 19 | `declaration-track:012ad5e363e890de8ec17573e237fea611ddcec044b2e8f42a6a8e8a73f248da` |
| 2 | `def` | [laplaceAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/laplaceatom.md) | 22 | `declaration-track:6b62f4077233e1b331c9d9936b4fc7938b0cafb168d89e3ef2aea6d30da1627b` |
| 3 | `theorem` | [onset_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/onset-pos.md) | 26 | `result-track:12e0ee2d0329ca3e12d86e9f4e7abdfa131e7e83ce3ff2615b4f0aa8ce732ee3` |
| 4 | `theorem` | [weight_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/weight-nonneg.md) | 29 | `result-track:80af05bb3244e44a1b40a2f36d98fb6660f3f8ca131b6d1c89c38f15b099b65c` |
| 5 | `theorem` | [atom_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atom-nonneg.md) | 33 | `result-track:59da9e7260cf71a4c61f66fa1a5a3ddf44df165981f8100c622154da1244b190` |
| 6 | `theorem` | [atom_measurable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atom-measurable.md) | 36 | `result-track:487a3d3add0f8b31bd917434c3c605fd5ed2d4a5d50555b7cb661dd725f04110` |
| 7 | `theorem` | [atom_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atom-integrable.md) | 42 | `result-track:87e420195cc0f34406f9ec550f28497469571766d131a175cab59e4522dce26a` |
| 8 | `theorem` | [atom_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atom-integral.md) | 49 | `result-track:c04e237c07e068b1475b85d3d5c3433255cb2ee5737294052dfb5cc647a19ef7` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/weighted-exp-eq-norm-term.md) | 57 | `result-track:5bd693daca359c746917f122a7f0fb4479c6577a8f2de14d8477713627815851` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atom-norm-integrals-summable.md) | 70 | `result-track:bd718802ccea11af914bbbd305be280659a25e82b4a3deebc4d689a2c831407e` |
| 11 | `theorem` | [onset_closed_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/onset-closed-iff.md) | 83 | `result-track:a517babc67f9222cacd6a0b15664b88090377ad577eb235bdef3ea6f3e06fa44` |
| 12 | `theorem` | [atom_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atom-zero-outside.md) | 88 | `result-track:4e952dbc4d36ac90717117c077cbd33eeb1bc017d48abacdd05db19b658fdb8f` |
| 13 | `theorem` | [atoms_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atoms-summable.md) | 97 | `result-track:5a32eb8f53230f503af23f9240da294e27dded8d87c73ad83456a237b9ea4c21` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt03.lean/declarations/atoms-tsum-eq-actual.md) | 100 | `result-track:c5d48c682bc05602b2c35b4e287fe2de378197ac58d8e01faccbeb24a3afd079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e838d914631e64060c66e0dfbd900dae40e07a0e070fecceed615ac37dbfa810 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Varianta2e799126cf275a418413f9af8c1ac79c94e2be1091f1cd811071a1d402648c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
