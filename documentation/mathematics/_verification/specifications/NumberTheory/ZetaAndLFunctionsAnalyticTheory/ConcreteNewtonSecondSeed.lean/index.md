# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b26b1962c0046f5dc70e918519e7d31bf8789578",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b26b1962c0046f5dc70e918519e7d31bf8789578`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstEndpoint`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFirstEndpoint.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lambdaTwo](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/lambdatwo.md) | 31 | `declaration-track:0d6550fe6d813d858414f895bdd3c49963aa34450f8e01fe58259d7d75e6a989` |
| 2 | `def` | [etaTwo](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/etatwo.md) | 33 | `declaration-track:ef0f4261020810e7fcf5f57b92d8cf70bab0e49d28b962a87617e773bf81dba4` |
| 3 | `theorem` | [second_log_data](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-log-data.md) | 36 | `result-track:e5a165ac8f223597c7a80a2274b100bf87b346cabcd6a27cf768a1a9809b3ecd` |
| 4 | `def` | [secondArgument](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/secondargument.md) | 45 | `declaration-track:f6155973b0741f7955fe92d8861714fa381a14fd788f30b47b995f52dbe2aad8` |
| 5 | `def` | [secondRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/secondradius.md) | 49 | `declaration-track:6a3053a25553baae64aa8c2a21ec0cf670384b16d14482ff3543c150932da8d9` |
| 6 | `def` | [secondDisplacement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/seconddisplacement.md) | 52 | `declaration-track:f9e518a4cbd2ce4d90d8face1fb81e715888f31fadaa1ed4b5abd63e6e407bf7` |
| 7 | `def` | [secondSeed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/secondseed.md) | 56 | `declaration-track:3cf617f4c2e617eeb4f26518ebe711a6131a8fa9aacf34f06227b7e0e59f3553` |
| 8 | `def` | [secondSeedError](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/secondseederror.md) | 59 | `declaration-track:f0b6981e13413ad95fca3edb7bb8ffab736ae6c87e180d4ebe59e022e7acaffb` |
| 9 | `theorem` | [second_argument](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-argument.md) | 63 | `result-track:4ecc8e927bc337a0cc635024ef0df5a723dcf769d596b9c9f4299bed755bcc36` |
| 10 | `theorem` | [second_radius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-radius.md) | 70 | `result-track:b9a21dc7e5fc34b4da8f62ac6ff783274c54dfdbf2af4f7aa3bd703db6b02e6b` |
| 11 | `theorem` | [second_displacement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-displacement.md) | 77 | `result-track:1229bf4b0b093ff12707daf25cdedbf7bdcc3847cbe4bee13339d21d3459ca59` |
| 12 | `theorem` | [second_seed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-seed.md) | 84 | `result-track:b32cf3d4ee90810e4f0b3e961138813d503abe6fec850512bb10884de89d19c8` |
| 13 | `theorem` | [second_seed_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-seed-error.md) | 89 | `result-track:bb17478983c08edae6b90d669a28f991ef44b2987dbfcc1fdd25456319f0b3e0` |
| 14 | `theorem` | [second_admissible](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-admissible.md) | 95 | `result-track:ad4c83a968b4f661b4a0d0f9e4e65da3fd38f89efd15880cfb24ed5b463219a5` |
| 15 | `def` | [secondStart](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/secondstart.md) | 106 | `declaration-track:fddda1a0e3de1c21a99105c9ee4e8d234afaaacf73b2593836987e074f858269` |
| 16 | `theorem` | [second_seed_real_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-seed-real-window.md) | 108 | `result-track:e1015bfec1e961ea95c24e8b8905af3184b03c883f59ef331ab94d5b12c7304e` |
| 17 | `theorem` | [second_seed_imag_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-seed-imag-window.md) | 115 | `result-track:a0199c1285de669f3a68a19f070aad90a1d487e870c9d6316ba71a43e070f53d` |
| 18 | `theorem` | [second_seed_error_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-seed-error-window.md) | 123 | `result-track:87dab8f1d953adc783c26e881b1a9a15d1aa414abaf8de8144476bb6bc31bcf0` |
| 19 | `theorem` | [second_seed_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondSeed.lean/declarations/second-seed-valid.md) | 133 | `result-track:596a85f7abaa34b5adb76efe0b824641a1ccf26224a0ad2a89774a73538b3ed8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33e3d9f6977dbf3c248a7e5e831c4c092d01a5117aad7cf02c1ce758c6045f6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondSeed.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondSeed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
