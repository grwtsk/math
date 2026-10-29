# Verification target: Source Cutoff One Ledger Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCutoffFlux` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffOneDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffonediagonal.md) | 33 | `declaration-track:07fb4af653b0ade3f7aec7a4f612199564938817c3b180b013cdd410fad04a96` |
| 2 | `def` | [cutoffOnePrimeDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffoneprimediagonal.md) | 37 | `declaration-track:f95d62f04b38a9eaaf75603f15243a93de33f515324ae178bde87a69548f3fef` |
| 3 | `def` | [cutoffOneSamplingError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffonesamplingerror.md) | 42 | `declaration-track:a2bb525ea1e504dde233616b8ca84b75fa7c58a2976cdb28467239c537b5aa02` |
| 4 | `def` | [cutoffOneLedgerError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffoneledgererror.md) | 46 | `declaration-track:1e46d8a56de3995022d35954d1808a8f262c11651df18843cd0a9cb9084bac4b` |
| 5 | `theorem` | [beta_one_of_one_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/beta-one-of-one-lt.md) | 50 | `result-track:499398c1f3fed51dc60d275b7963c80d4dfb021bf4240d8cf30c95f2cb803c4f` |
| 6 | `theorem` | [cutoffOneDiagonal_eq_mangoldt_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffonediagonal-eq-mangoldt-sum.md) | 56 | `result-track:467fd334ddb09fd5c6f6f3ed995391212dccec224c010dcd11111f9cfd44aafa` |
| 7 | `theorem` | [cutoffOnePrimeDiagonal_eq_window](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffoneprimediagonal-eq-window.md) | 74 | `result-track:cc1d40de402903160b752757ca0512dfe93a82d36e62795b31bf36633ca53604` |
| 8 | `theorem` | [cutoffOneDiagonal_sub_prime_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffonediagonal-sub-prime-eq.md) | 109 | `result-track:be445f5f4a8242d14700a505b7dd6b05a0768ca3f47740eaf4dd8458b4b1dead` |
| 9 | `theorem` | [cutoffOneDiagonal_sub_prime_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffonediagonal-sub-prime-abs-le.md) | 130 | `result-track:26c6af1270da04c3c1980622a26443a1ce6b8f2794b4c6f0c5972ff0b2d36849` |
| 10 | `theorem` | [cutoffOnePrimeDiagonal_main_term_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffoneprimediagonal-main-term-error.md) | 155 | `result-track:fcfc9263568560978eb6296fa394cb0361655a5c01c33311c29a8e872360fdc4` |
| 11 | `theorem` | [cutoffOneDiagonal_main_term_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffonediagonal-main-term-error.md) | 176 | `result-track:affe009bcc5a40303cd0082a0b8c062a15de5f5a0963676c3da311ce7d693317` |
| 12 | `theorem` | [cutoffOneSamplingError_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffonesamplingerror-abs-le.md) | 193 | `result-track:705ee2bb7136240bfa4a5426750fb237c2c7db36fd0bc231decc21392e5ffdb6` |
| 13 | `theorem` | [cutoffOneLedgerError_uniform_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffoneledgererror-uniform-bound.md) | 201 | `result-track:e059a77e18b6a9751e17b20608b7b9fa434702d6823ec5ea3bfad5896947dfd3` |
| 14 | `theorem` | [mainTermAt_one_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/maintermat-one-formula.md) | 210 | `result-track:6b2ed5f2cc4bb1655ca5d84b6106546fe9a490abaa8a3ec198d535a613b5ddc1` |
| 15 | `theorem` | [uncenteredOffAt_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/uncenteredoffat-one.md) | 217 | `result-track:ef223346a468747eecddffc095cb50e8562da864cdcfeb990b2cf100b18916bc` |
| 16 | `theorem` | [residual_eq_cutoffOne_rectangle](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/residual-eq-cutoffone-rectangle.md) | 229 | `result-track:359f7509275dda801b1cbd0baa1fca44cb4a3ee22cf67bd7252ed8f35d62a94d` |
| 17 | `theorem` | [residual_eq_cutoffOne_joint_add_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/residual-eq-cutoffone-joint-add-error.md) | 254 | `result-track:33fdceff8fde1e94161543d5654eb2151aaf39dd1a81b1e3a84b5b16fb3915ea` |
| 18 | `theorem` | [actual_cumulative_jointFlux_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/actual-cumulative-jointflux-eq.md) | 267 | `result-track:c94950c17bf2bab1f62da47179f9662737216cd00247732c2e39357ffb729b4b` |
| 19 | `theorem` | [actual_cumulative_jointFlux_uniform_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/actual-cumulative-jointflux-uniform-bound.md) | 277 | `result-track:58c1540b6a2b26efea87de9b5e11c7297c41040d91c1a3c819051aaac27758fc` |
| 20 | `theorem` | [cutoffOne_baseline_tail_iff_residualTail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffOneLedgerSourceEdition2.lean/declarations/cutoffone-baseline-tail-iff-residualtail.md) | 290 | `result-track:125d4c71d0b23ddf0215381905bbaadf56885ce9e91dcdca012549cc4b353fe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=612ff388c34079848907dc228fd6f60e9457aa1df5bd1a9a8d92cfba271d0fda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
