# Verification target: Finite Mobius Controller Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29fb0dfdcf99076708edfa62259ee9697b87631e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant2bd395b76e191f5318f907795d2c22e933565db7d0f820fc28b625b5c2dd6c89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29fb0dfdcf99076708edfa62259ee9697b87631e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant2bd395b76e191f5318f907795d2c22e933565db7d0f820fc28b625b5c2dd6c89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant2bd395b76e191f5318f907795d2c22e933565db7d0f820fc28b625b5c2dd6c89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [causalShift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/causalshift.md) | 29 | `declaration-track:9c7293d320e904491c6c71861bda545c54242eba04ae7638586a93e1728cdbe5` |
| 2 | `theorem` | [causalShift_ae](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/causalshift-ae.md) | 33 | `result-track:1288953a85569480b1ce4f54d69d621d07f70b5d0e351193b27f3dd605c58c72` |
| 3 | `theorem` | [causalShift_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/causalshift-norm-le.md) | 44 | `result-track:cea2a7e0ebf2dc3924718a7afc4a69db224ba7e0fc6a792d17743ca388885990` |
| 4 | `theorem` | [causalShift_exponential_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/causalshift-exponential-inner.md) | 49 | `result-track:2ee19e61eb383bcce4bbdf953121d147936d5fb0f83089684a376e83f078f5bc` |
| 5 | `def` | [mobiusReciprocalSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/mobiusreciprocalsum.md) | 58 | `declaration-track:4f0aa27b3ea27d243fb75aa4e7c6c520294cf14906a5118e45d9abe563688b92` |
| 6 | `def` | [finiteMobiusController](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/finitemobiuscontroller.md) | 62 | `declaration-track:a1cf46a4b60c6d395f3329b1aadf8563ad8ddf66ba2693a0424b6b2eb923c939` |
| 7 | `theorem` | [causalShift_half_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/causalshift-half-inner.md) | 70 | `result-track:86948182dfa91ac5166d5efc1a1dfc3bd5c479b99cc392100575f05c3c70fd03` |
| 8 | `theorem` | [finiteMobiusController_half_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/finitemobiuscontroller-half-inner.md) | 87 | `result-track:357c0f852201cd9a183d60d2114b608e0793ee2d23c6f230093e6e74d4cbe241` |
| 9 | `theorem` | [finiteMobiusController_residual_sq_ge](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/finitemobiuscontroller-residual-sq-ge.md) | 125 | `result-track:fb3bda08d6b47038f0404c1a91827ccea81d02bddbcc3cd4e618bef0d8c21501` |
| 10 | `theorem` | [finiteMobiusController_full_energy_ge](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/finitemobiuscontroller-full-energy-ge.md) | 130 | `result-track:7f3db0fb5daa381d2d56954d849d10b918b37651dcb3017dd9d931df80e45072` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-9.md) | 151 | `declaration-track:9e09bab72c066ab62b508dd2451304484216d52f473c69644c0871598045086b` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 153 | `declaration-track:453bdd56b97e08adf0f8a7fdeb993feef83fcdbcb5e387458e689cd3a53c99ea` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 155 | `declaration-track:27085abcadbd9c25276f018c677fab031fc31d8428ecbaeca023fbb89444d55b` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-12.md) | 161 | `declaration-track:f4ed50dd349720d139ec373af2a27aca31abfea65a4a4350013deffadbac8e55` |
| 15 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-11.md) | 165 | `declaration-track:d23b1d0bb37811455599a2a5d40b5a1666a2d2d236336a346d30079ff2fd721b` |
| 16 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-8.md) | 167 | `declaration-track:9b099a4cdd1d2eaeb154663364ba6f7c8f4f8b7e73ba4137fd5ff1af58771d74` |
| 17 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-7.md) | 172 | `declaration-track:9160eeea8154de54bb94cb60c7782f5f19eaa927963cd95a691c108594a60017` |
| 18 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example.md) | 177 | `declaration-track:0e6d2dd6b543f124e2e70643c065abdc437efb59ebb5134bc244cee4863f4253` |
| 19 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-10.md) | 180 | `declaration-track:c604222fecb0f3ef08f52c38fb6275e739a1e6dacda00e41483623fa3c57f3d4` |
| 20 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-6.md) | 183 | `declaration-track:6744e2a4681855e7a9451719c0cb398fb7e1757b75943cbe7e700c196f2545ed` |
| 21 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 188 | `declaration-track:3ea38948577f28f50b0ea18ad2f42213f37565c24a8353615ac20aba7060f652` |
| 22 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMobiusControllerStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 190 | `declaration-track:124650024e9861a1aca3938abc46d67e2d393d7a1eae127b9010c1b02c04bb91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c57c4c1b5b9e710331bb3ae5e3825bd4b059a88c789dea4ae1bc479ae7dbf027 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant2bd395b76e191f5318f907795d2c22e933565db7d0f820fc28b625b5c2dd6c89.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerStatements/Variant2bd395b76e191f5318f907795d2c22e933565db7d0f820fc28b625b5c2dd6c89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
