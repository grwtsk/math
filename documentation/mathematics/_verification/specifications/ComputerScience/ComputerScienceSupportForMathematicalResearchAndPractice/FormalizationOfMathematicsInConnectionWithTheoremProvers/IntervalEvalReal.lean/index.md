# Verification target: Interval Eval Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9fa3a8f17715b3de17331d875fa5600fc699909",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9fa3a8f17715b3de17331d875fa5600fc699909`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRealEndpoints` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExprSupportedExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprsupportedext.md) | 42 | `declaration-track:a30f53af195f36d0dea704f40c077dd94aa13ddec06ed7cea3421cc2d8ecb741` |
| 2 | `theorem` | [ExprSupported.toExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprsupported-toext.md) | 60 | `result-track:b285d5edd86c04729b817798654b3d5c91ee6f280dc858b74870e1adeede9f84` |
| 3 | `abbrev` | [IntervalRealEnv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/intervalrealenv.md) | 74 | `declaration-track:7897857fb72a6461e77707d2b191e53149b2627ce20807bd25416f19e3cf5d47` |
| 4 | `def` | [evalIntervalReal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/evalintervalreal.md) | 84 | `declaration-track:355367e6162114dcc11d29598cd97ed0fd4abd3198a645b2035ec3fb7d2a5404` |
| 5 | `def` | [envMemReal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/envmemreal.md) | 108 | `declaration-track:b799c6a7fe4e98fa07798ed3c55eb00c3f4f9890a5d8c5bef280cf276b7332d5` |
| 6 | `theorem` | [IntervalReal.mem_singleton'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/intervalreal-mem-singleton.md) | 114 | `result-track:897ba34d303bb9a92ed6509afbbfa72a0ed13a94b43e0bf31e7ebe0accb66012` |
| 7 | `theorem` | [IntervalReal.mem_singleton_rat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/intervalreal-mem-singleton-rat.md) | 119 | `result-track:ae9fbf178c64470ae786848218561a07b8d505a4ba7425865a03385c9713acce` |
| 8 | `theorem` | [mul_mem_endpoints_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/mul-mem-endpoints-left.md) | 124 | `result-track:7129b7e37d36b6553f1220b0f73945620cee8335ae15d3ae961dfd4429612e0e` |
| 9 | `theorem` | [mul_mem_endpoints_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/mul-mem-endpoints-right.md) | 141 | `result-track:27274f124a77af74e8676d9fc112e78cd73d97fa23f9c601294d6c19c47da3d7` |
| 10 | `theorem` | [mul_lower_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/mul-lower-bound.md) | 158 | `result-track:34cd15d6c41e7abc0641d37da03e607f8e6919b7708d74a26f22723963c7c437` |
| 11 | `theorem` | [mul_upper_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/mul-upper-bound.md) | 177 | `result-track:1d45525145784d9b38a05d2a810a2292dcc5677bbe18c30cb104ff8ac6547737` |
| 12 | `theorem` | [IntervalReal.mem_mul'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/intervalreal-mem-mul.md) | 196 | `result-track:c87a0d8bf7adb4448e625ce1f7fc121d0065f67314375056737c745479040e12` |
| 13 | `theorem` | [evalIntervalReal_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/evalintervalreal-correct.md) | 210 | `result-track:4b8ec8ed45f759f3050f44ed86f81a3b2a61d3f976aaf36f29085fe79ce67038` |
| 14 | `def` | [evalIntervalReal1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/evalintervalreal1.md) | 257 | `declaration-track:01149e8fc9f5b487de4494b37ca80bbbd67613ad522b7242a7bb3bd427fcc38f` |
| 15 | `theorem` | [evalIntervalReal1_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/evalintervalreal1-correct.md) | 261 | `result-track:75eb98c3edf1574fb5c97ba19ff60d99058b01db397cb16352b6d15b1b7b4ca3` |
| 16 | `def` | [toIntervalRealEnv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/tointervalrealenv.md) | 269 | `declaration-track:75106a129105a2563b1e74c4045c309e6de6b70f8393dce85c3f9861ba179703` |
| 17 | `theorem` | [mem_toIntervalRealEnv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/mem-tointervalrealenv.md) | 273 | `result-track:c1f805135719f8200a73fd776194070d1bde4704517f1384eefcbe9cd62f67b9` |
| 18 | `theorem` | [exprExt_le_of_interval_hi](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprext-le-of-interval-hi.md) | 281 | `result-track:5e10318e9ebd75642fa9cbcfac17701c2bd8a12da501282a50a15beb84548aa7` |
| 19 | `theorem` | [exprExt_ge_of_interval_lo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprext-ge-of-interval-lo.md) | 291 | `result-track:b4f77a29e71dad7bbfc8fe640d875cc0acbce4bdd0b187429531e538441fd237` |
| 20 | `theorem` | [exprExt_lt_of_interval_hi_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprext-lt-of-interval-hi-lt.md) | 301 | `result-track:039f05751c6f1f4c105142369ed3601fbc7e1972d071c2eecab5b305657197cc` |
| 21 | `theorem` | [exprExt_gt_of_interval_lo_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprext-gt-of-interval-lo-gt.md) | 311 | `result-track:73ce850665f66c918689d3d9d659de176c41a2701278458187ed1e3bcb722250` |
| 22 | `theorem` | [exprExt_le_of_mem_interval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprext-le-of-mem-interval.md) | 320 | `result-track:133b7f05e37cb80cf5f5ff94d2b0cf3f677ce124e6d4e38e307052bfa909395a` |
| 23 | `theorem` | [exprExt_ge_of_mem_interval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalReal.lean/declarations/exprext-ge-of-mem-interval.md) | 327 | `result-track:f80d36a0c65f757c5ca029d8cdb4128b996ab2020db361bc26a34c8cfe7fe429` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d2869075b24c78e63963093f494734760660c4685882e717d33bc6c893b5304 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variant68d4f5832de183b915bb6d84a7aa9ee1ed8b097e17e90261059bf1e6181594d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
