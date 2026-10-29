# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPowerEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c7bbd1a488401e200d07c7d346acea81e4f5124",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c7bbd1a488401e200d07c7d346acea81e4f5124`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.GaussianRationalArithmetic`](../../../../../FunctionsOfAComplexVariable/GaussianRationalArithmetic.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripPowerTaylor.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logTaylorQ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/logtaylorq.md) | 24 | `declaration-track:ed4f42ee3b04de282b21b90cea9858024deccc6588c48efa175f2316aa9ca211` |
| 2 | `def` | [ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/ratio.md) | 26 | `declaration-track:b84c31e06ceaca4a5e44ade49c4f6d252e1a4918bf45a961c4d8d32dc876fb83` |
| 3 | `def` | [logCenter](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/logcenter.md) | 27 | `declaration-track:4bd4cbc7fb7fcba34b6e99d5db478ce85b60481d0c45eb0503cdb6b0dc698704` |
| 4 | `def` | [logRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/logradius.md) | 29 | `declaration-track:536c2fe54b6b00814329c2de0b29d278ea6a27bfc63d6cc56c235291a2397c52` |
| 5 | `def` | [argument](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/argument.md) | 32 | `declaration-track:48461ac1de1a1b12701c28e9c428d4acf62e31c5f83ef0657cb64bd651c4dffe` |
| 6 | `def` | [argumentBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/argumentbound.md) | 34 | `declaration-track:088eb40f853ff5b622e7f4846037e3ac6c21122c465650f82b62f5eff473cd6f` |
| 7 | `def` | [truncationRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/truncationradius.md) | 35 | `declaration-track:b33dfdef2a0d7f2cc2440ec8a0eef80f98c0726031baccdeef956dc306704029` |
| 8 | `def` | [rawCenter](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/rawcenter.md) | 37 | `declaration-track:951de17e4dafa6de4d41252816f6691240d3d5d1446333c5de27acf85fb8a8cf` |
| 9 | `def` | [analyticRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/analyticradius.md) | 39 | `declaration-track:011ab771cd4c902f97a5ae5138c58a1f6655e34e8b1162f7042e375895f7b73e` |
| 10 | `structure` | [Proposal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/proposal.md) | 42 | `declaration-track:013ce199751ae2ef8d66db84c01da85f5214945c6daf43a9a417d5e764c9a653` |
| 11 | `def` | [cost](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/cost.md) | 51 | `declaration-track:8c93a45fbff3c369872366fab7786dfdbbed93e1cb1aab93a458d4bd785177d9` |
| 12 | `def` | [Guard](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/guard.md) | 55 | `declaration-track:57193d02f9f762d027d28377afe3a6289acc8bb5cbf4eefdbac3d76fb00b4523` |
| 13 | `def` | [check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/check.md) | 61 | `declaration-track:9936cd26a38fe3d140296704aecb5db112be53a7e56e52d7c09a53e839656b8d` |
| 14 | `lemma` | [check_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/check-iff.md) | 62 | `result-track:a543f9221e59f421368ef4700ed125879f9c4c957496a16a58756454f03d483a` |
| 15 | `def` | [rawProposal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/rawproposal.md) | 68 | `declaration-track:2f46c159678f8a62203d15af7c47019b698a5862416b5ba877cfa08772507915` |
| 16 | `lemma` | [logTaylorQ_cast](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/logtaylorq-cast.md) | 71 | `result-track:7bea7fa6f8b35d06ffa042d2d71f4dd6f583785247fcefd96d49733c0fc56503` |
| 17 | `lemma` | [logCenter_cast](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/logcenter-cast.md) | 76 | `result-track:3ca064bae6b1cbeb87085ea9740a8a4d616f1522f251fc470a059f9bdba504ef` |
| 18 | `lemma` | [logRadius_cast](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/logradius-cast.md) | 84 | `result-track:00b99d9003dc88358b072f7d0a15c6246d8098f927f5d5aa9942d42661baa68c` |
| 19 | `def` | [logRecord](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/logrecord.md) | 90 | `declaration-track:e40bdecb3d74e9fbefdb4922a2ea47423827996172c796fca339807a4a725b4c` |
| 20 | `lemma` | [rawCenter_value](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/rawcenter-value.md) | 104 | `result-track:8704a9b639594ccfe44d5edfc6b2d8c6d71f9e51cc0d60f61e41b869f94efc5c` |
| 21 | `theorem` | [Proposal.encloses](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalPowerEvaluation.lean/declarations/proposal-encloses.md) | 114 | `result-track:96200ba1427e5b377822e135554374f5044c37e0547bddbca2509b80b449f879` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ad5b15d0ee8fec2d31a08b198f7b6ac18181ae2f5b440e0de11378a340340bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
