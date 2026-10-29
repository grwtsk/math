# Verification target: Filtration Mem PLimit Process Of Snorm Bdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d56f65c1c3d6a2f363858e7ab2b8b7da2fe3ea28",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d56f65c1c3d6a2f363858e7ab2b8b7da2fe3ea28`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/filtration.md) | 43 | `declaration-track:bc534d5fec498d93fb010ff3825fde620c7e2d2b633bcc7a498013a6521d40b4` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-9.md) | 53 | `declaration-track:ccdb6e804331748798740fad8923775451d996e219584c9ce47ed7fa2e796c47` |
| 3 | `theorem` | [mono](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/mono.md) | 60 | `result-track:9a2baa126b5ac9aa7008d9db7e7ed161b509d3b9c8ad7492e529ebfcad2d7ce5` |
| 4 | `theorem` | [le](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/le.md) | 64 | `result-track:8602dabec58e482435235965936f3def3c4ecbb5f0b3428ec9297bd4d45feb2b` |
| 5 | `theorem` | [ext](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/ext.md) | 69 | `result-track:9b37a05052312d89cdad6a2553173ae9d76812ce9fc7b3febb09f26639098d15` |
| 6 | `def` | [const](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/const.md) | 76 | `declaration-track:9cbae9e27d26ecb25c074da8d10acc26dc3e7d58a584c660f19d5df217cb665a` |
| 7 | `theorem` | [const_apply](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/const-apply.md) | 83 | `result-track:080f3df364077187173bf5d6af359b1decdbb9f1822f75099d9c12bfc49a77da` |
| 8 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-5.md) | 87 | `declaration-track:751848f14d57bc65c7a5f3ae420e5c947dab32880ede73ab337d164dfe329de5` |
| 9 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-6.md) | 90 | `declaration-track:8884af3c7c06a18194fdfedf36b15e017765a3358df7ef035768392eedfa2d1a` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:2955560ef2eb683331cd9cb5123f40730b23e5a37439e419abbbfd37f3c93429` |
| 11 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-8.md) | 96 | `declaration-track:b0d2b8dc8256df0b6bf5ee17570ffe668785ae3558d2915c117532999d6e7718` |
| 12 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-10.md) | 99 | `declaration-track:ee9504cb71121ba90db90abc83714429c4f3e415abdbd072378a9929f766cf1c` |
| 13 | `theorem` | [coeFn_sup](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/coefn-sup.md) | 107 | `result-track:3f4aebb9c1b0ae320da9b44acddbd85ca2dd92ddae8babd49387ae47fe75e450` |
| 14 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-4.md) | 111 | `declaration-track:6d269d9f880418ffdc27ca43f29bb73ab967875316b5cefb1188dd0b4b67dd68` |
| 15 | `theorem` | [coeFn_inf](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/coefn-inf.md) | 119 | `result-track:3af1f85d63d3c75e7179cacd708fb0cf42be95736336b84ce3df6cfaa88b2303` |
| 16 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-3.md) | 123 | `declaration-track:4bb8c90ca9710d07da01a8134b73872623d98805f707d817737125920e8f5353` |
| 17 | `theorem` | [sSup_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/ssup-def.md) | 141 | `result-track:8a74f0bd5714a9790d89367baeac785afafda6beed35d008041c122eae8f570b` |
| 18 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance.md) | 146 | `declaration-track:14e8c2e2a06d6f12bf61d024487c085c938e98b16fe600ea46771cad06b37cb5` |
| 19 | `theorem` | [sInf_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/sinf-def.md) | 164 | `result-track:9495eafdad950ba8d28a4db3dc91c379016d038f29a023ef6e6ae1e422a71f48` |
| 20 | `instance` | [instCompleteLattice](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instcompletelattice.md) | 169 | `declaration-track:4d63ffa6ee7d606a7dfa3efbd599faa15ce72a458414089ba5c984207b2ef3da` |
| 21 | `theorem` | [measurableSet_of_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/measurableset-of-filtration.md) | 207 | `result-track:e0e4db7ac13bdc2e00b1aa9a795b09b1fb4505893545bb5e2d4cd6b7c2e2bcd8` |
| 22 | `class` | [SigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/sigmafinitefiltration.md) | 214 | `declaration-track:f470dd5fc6837af1610fdc9e449935478f4bd92b2364cbdefc42cca7b6c55767` |
| 23 | `instance` | [sigmaFinite_of_sigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/sigmafinite-of-sigmafinitefiltration.md) | 218 | `declaration-track:a26ebdabebecc77396a9295f9435eb99177409066085852625d595272c174f9c` |
| 24 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-7.md) | 223 | `declaration-track:917d2085e6d5036dbf969c313d5903b2daaa412f712fd0ed568fa06ee75de10c` |
| 25 | `theorem` | [Integrable.uniformIntegrable_condexp_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/integrable-uniformintegrable-condexp-filtration.md) | 230 | `result-track:602fe5f7fc3421893d11651e8c28f1426c738cecf11bdb8442a799c0c2850a6f` |
| 26 | `def` | [filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/filtrationofset.md) | 242 | `declaration-track:6766ec4858a6f0736718b1f1c738d72981f55d5d76b9e203f36a4c6c36eda0d8` |
| 27 | `theorem` | [measurableSet_filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/measurableset-filtrationofset-source-edition-2.md) | 248 | `result-track:fccf2ad058f3065683090b752f37e23cf1da379a6efe8ad98a3936b4694d3530` |
| 28 | `theorem` | [measurableSet_filtrationOfSet'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/measurableset-filtrationofset.md) | 253 | `result-track:148609ab9ce99c20ee480e1e7995169377ab599586e1848fa930e37e27d974f2` |
| 29 | `def` | [natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/natural.md) | 268 | `declaration-track:2ef5844d1f661ecd63b455c5e2976cbdb9fd14247485fc0d186a32c26b8a13a2` |
| 30 | `theorem` | [filtrationOfSet_eq_natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/filtrationofset-eq-natural.md) | 281 | `result-track:4a55ebd0bdaea5f25578ae2c6f402f804db9c1d863b4cf9f89026ff80b7fb66c` |
| 31 | `def` | [limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/limitprocess.md) | 321 | `declaration-track:c5d04d29e6e27f08e5bc0c901a2e2f3454daf07feb5c907fd09ddf4592007017` |
| 32 | `theorem` | [stronglyMeasurable_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/stronglymeasurable-limitprocess.md) | 328 | `result-track:73617c1d5eef85fcc1a41329daf8dbe1d857c07dafbe1f726f1a64d3476049df` |
| 33 | `theorem` | [stronglyMeasurable_limit_process'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/stronglymeasurable-limit-process.md) | 334 | `result-track:ae6f25833bbf54bf3d9e042d4bae6c018becc015338faa181e604d057a711331` |
| 34 | `theorem` | [memℒp_limitProcess_of_snorm_bdd](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemPLimitProcessOfSnormBdd.lean/declarations/mem-p-limitprocess-of-snorm-bdd.md) | 338 | `result-track:5bbf7dd9900aa18ac0987d44a9e1dfbd74b2ad16f5122f5208ccfd0de0dc5b09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ef7b90566073446ca1e7065678592a0e553462c3a4e2a12c9478876be7e8170 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
