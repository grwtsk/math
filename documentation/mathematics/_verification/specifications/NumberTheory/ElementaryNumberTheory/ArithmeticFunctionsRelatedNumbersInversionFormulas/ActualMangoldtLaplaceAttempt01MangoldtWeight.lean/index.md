# Verification target: Actual Mangoldt Laplace Attempt01 Mangoldt Weight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ef83e182fbf018dae1b8559b08b006365b13e65",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ef83e182fbf018dae1b8559b08b006365b13e65`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean.json)

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
| 1 | `def` | [mangoldtWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/mangoldtweight.md) | 19 | `declaration-track:d6b2175904c60f2be322fde3e8eebd915484fd27cbb57e11933a673564f017e0` |
| 2 | `def` | [laplaceAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/laplaceatom.md) | 22 | `declaration-track:8ca3df390d3ce7b32ad707c569318902e932cfacd3381841674c73e9d3d647b7` |
| 3 | `theorem` | [onset_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/onset-pos.md) | 26 | `result-track:3f959a74c558ff6b445687f75012b4187d925b588a74f238b44c0789f0b09048` |
| 4 | `theorem` | [weight_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/weight-nonneg.md) | 29 | `result-track:735aebdb855702fa85984140dc8ee6995c36a1cb5d78f3cd979200534525da87` |
| 5 | `theorem` | [atom_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atom-nonneg.md) | 33 | `result-track:9d34308c6e40a0adeee5786a5ec13df12d377a758ae692b30ade5e641aa31c78` |
| 6 | `theorem` | [atom_measurable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atom-measurable.md) | 36 | `result-track:344cf3f8fb06738026bb4ce4d16744be4021a58a000c0df80a13800a4ebebc89` |
| 7 | `theorem` | [atom_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atom-integrable.md) | 42 | `result-track:b3d895a4562bd86aa6e0d719da198407c5f5f1f586d7a68c1a333b7bfb41dc2b` |
| 8 | `theorem` | [atom_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atom-integral.md) | 49 | `result-track:dfe78d17e1bb127091f481c2c7f7dd6884d54d1744a10857084e4f5231941c3b` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/weighted-exp-eq-norm-term.md) | 57 | `result-track:808ed45dfaf19a37f4f31496fcf97c442bd229c8cfaf41cc02c8586868fcfd72` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atom-norm-integrals-summable.md) | 70 | `result-track:0cff0be74c1f87a23b995296614d2aaa88560f59ecd25d6d63f7842f858118ac` |
| 11 | `theorem` | [onset_closed_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/onset-closed-iff.md) | 83 | `result-track:652f10688577ce2fe6cc4e262562ccbaa1eb8f17233d0d126266a2061cac0a45` |
| 12 | `theorem` | [atom_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atom-zero-outside.md) | 88 | `result-track:fe27d9c3dc6e897c72e4a3717b7bb1a78ecc2296daef5f7b42a6f0285e26dd8c` |
| 13 | `theorem` | [atoms_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atoms-summable.md) | 97 | `result-track:299eeed474fa7bb7a6301776dc509672993fca1d91e07e153efecbc4dad34c4d` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atoms-tsum-eq-actual.md) | 100 | `result-track:898ba46b213de000ebc99689e51128fd9aad032b424727d6e9ad77dbee2ddd5a` |
| 15 | `theorem` | [atoms_tsum_eq_indicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atoms-tsum-eq-indicator.md) | 126 | `result-track:e0011e9fdd341700e048c8e451b53adfa4b397f6eec082198ff88915d724622c` |
| 16 | `theorem` | [atoms_integrals_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atoms-integrals-summable.md) | 140 | `result-track:5e75084b63f495869c36e3e4769914c32b38c74364b3c1c716b4660307c1b128` |
| 17 | `theorem` | [atoms_lintegral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/atoms-lintegral.md) | 145 | `result-track:e71ec31ef67fdcdd2894d7b306bcef831432b6bda5eca15032902b914b3564c0` |
| 18 | `theorem` | [actual_prefix_laplace_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/actual-prefix-laplace-integrable.md) | 163 | `result-track:783acc4f5974d5f6aa5bca48774f6d467d8924222b2b53d79f32d78c537d8240` |
| 19 | `theorem` | [actual_prefix_laplace_eq_tsum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/actual-prefix-laplace-eq-tsum.md) | 173 | `result-track:828002595d5cf031958cf24cf384fdb89c072ec6363be7a16beaefb8bcb48ec7` |
| 20 | `theorem` | [weighted_exp_eq_term](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/weighted-exp-eq-term.md) | 182 | `result-track:fe8a9a1760151e7b7659002669516bd3a74d24d6703c54f61d93db3c0fe29f7f` |
| 21 | `theorem` | [actual_prefix_laplace_eq_LSeries](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01MangoldtWeight.lean/declarations/actual-prefix-laplace-eq-lseries.md) | 194 | `result-track:c6214a38a8e3fcd86089732a79304d28a516aa6d69b586de9c651126f3f30785` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7024a22417d6df2789e84879634af13c467c6ededbc4dfded0a3ba82ec54edc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
