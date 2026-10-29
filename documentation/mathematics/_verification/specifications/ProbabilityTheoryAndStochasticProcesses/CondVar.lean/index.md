# Verification target: Cond Var

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a729724e505ef4b59de55221fd18c6fd8fc04fb8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a729724e505ef4b59de55221fd18c6fd8fc04fb8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.Variance` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condVar](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar.md) | 35 | `declaration-track:f1ba342312fb0e2a9c519789fe5a9f7c660aec7a951534622e1f1015f2d0502f` |
| 2 | `lemma` | [condVar_of_not_le](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-of-not-le.md) | 46 | `result-track:c6e947df443e041966e9f6673baa8c1cbefc5955c374cfdd4971887cb9a7388b` |
| 3 | `lemma` | [condVar_of_not_sigmaFinite](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-of-not-sigmafinite.md) | 48 | `result-track:8c2e69c67d4af4903843dcfcbbf904f37488c4f3ed5da142046ea20fd8219926` |
| 4 | `lemma` | [condVar_of_sigmaFinite](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-of-sigmafinite.md) | 52 | `result-track:2003adb2c058c1022868789f6e80cabcc7fbf3f72b3baf540ab18a62fdb9ed0b` |
| 5 | `lemma` | [condVar_of_stronglyMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-of-stronglymeasurable.md) | 60 | `result-track:d51f7c7a0833492a21247a5f132575c0ce7434200f111e5b4b43f872b64c3efa` |
| 6 | `lemma` | [condVar_of_not_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-of-not-integrable.md) | 65 | `result-track:c958ae69e29dd1396cd2afb91c6c71497dd36a162e0bab0d82c928f2ef35d3f2` |
| 7 | `lemma` | [condVar_zero](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-zero.md) | 68 | `result-track:d411ebaf9bf9214f4639f0eba800dc83471fc17472c846ab5f9fe53d7fc9ffe5` |
| 8 | `lemma` | [condVar_const](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-const.md) | 71 | `result-track:bb34d7dbcdb88f4d1685d1b64a7ac2f6ee217008e7e3cd6f5369d08769cca717` |
| 9 | `lemma` | [stronglyMeasurable_condVar](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/stronglymeasurable-condvar.md) | 79 | `result-track:56e98849ec949f4a9734d2cd2871cdb647aaab999e98df8a931ff30701809f6e` |
| 10 | `lemma` | [condVar_congr_ae](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-congr-ae.md) | 82 | `result-track:6e4c095ba4fe9012080dc8407a06c78a8a9d874aa2fad7f6a304b378784d724f` |
| 11 | `lemma` | [condVar_of_aestronglyMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-of-aestronglymeasurable.md) | 85 | `result-track:0b2b6870d42c94ef9cfb88a9bffb7a2307f645ff2de542777c1826f5d1a7d645` |
| 12 | `lemma` | [integrable_condVar](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/integrable-condvar.md) | 91 | `result-track:13f8efe34299473aacd5525feec458634fedb74bee1024b278c3875cc46e297f` |
| 13 | `lemma` | [setIntegral_condVar](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/setintegral-condvar.md) | 95 | `result-track:59a7ffe4e08a4e22d9e9eb4f8126757ab8fac863d8f2a41d6b68c9ae9b2f1faf` |
| 14 | `lemma` | [condVar_ae_eq_condExp_sq_sub_sq_condExp](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-ae-eq-condexp-sq-sub-sq-condexp.md) | 103 | `result-track:bb43439043f1f103973a7f1ae48810181d59201af037fb0822c04fbcdac38db1` |
| 15 | `lemma` | [condVar_ae_le_condExp_sq](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-ae-le-condexp-sq.md) | 123 | `result-track:76828a4097a8afcc8ad6cc6d6eb27d971ac7e86f844447ad82684a0bc4681990` |
| 16 | `lemma` | [integral_condVar_add_variance_condExp](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/integral-condvar-add-variance-condexp.md) | 130 | `result-track:4fa87692cbf642b374526668114f73b1bd2328e402fa427f6c3741320bab8c2f` |
| 17 | `lemma` | [condVar_bot'](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-bot-source-edition-2.md) | 143 | `result-track:5814e05889944d15b93d879b2a01565e201b8ebcc3be2e09a2021eccb699633e` |
| 18 | `lemma` | [condVar_bot_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-bot-ae-eq.md) | 147 | `result-track:145f5b47b396edf6d428f2da2e1428eb450cbcefa065ac2c6b769b024ebd2930` |
| 19 | `lemma` | [condVar_bot](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-bot.md) | 154 | `result-track:29ff17d5f577220f288c7aa1ac06bef1ceb14145d4b8edfa8e3a3f5b623914f2` |
| 20 | `lemma` | [condVar_smul](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-smul.md) | 158 | `result-track:79489570dc0a730340edf89a92309da85fee48e754851f964b4fc390575583bb` |
| 21 | `lemma` | [condVar_neg](../../../../ProbabilityTheoryAndStochasticProcesses/CondVar.lean/declarations/condvar-neg.md) | 168 | `result-track:96ac5d1d609700485cbe42f2bc4da3c38815643f2be89b07a9898688f73627d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=546d98de679baf6f236601551cc64e22a9878825e2b08c1f57be7bbd7b01c46a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
