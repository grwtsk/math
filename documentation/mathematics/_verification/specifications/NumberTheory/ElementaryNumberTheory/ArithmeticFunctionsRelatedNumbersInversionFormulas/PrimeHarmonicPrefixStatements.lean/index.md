# Verification target: Prime Harmonic Prefix Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d3d9ecafe3b7823a078f3a09368ac9a4f96097d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d3d9ecafe3b7823a078f3a09368ac9a4f96097d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeHarmonicPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeharmonicprefix.md) | 13 | `declaration-track:9350aa4907fea73c96cd7f9a1f32e122cb75e5c840ef07aec5c1696ff36ad4a4` |
| 2 | `theorem` | [primeHarmonicPrefix_eq_log_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeharmonicprefix-eq-log-sum.md) | 18 | `result-track:e23041fdaf5b4f02b301bdd0dcfcf38f4e7be9792d4cba0ee0ea7a89cb85a104` |
| 3 | `theorem` | [primeHarmonicPrefix_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeharmonicprefix-zero.md) | 28 | `result-track:b43b148ff100262459488e7a3c02dd40e3a00242a5e177d9f915182c981bc2df` |
| 4 | `theorem` | [primeHarmonicPrefix_log_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeharmonicprefix-log-two.md) | 32 | `result-track:ce4db1f9a15421d71eb61e424de5c9695a8925b38788e54f58ed0daa9138be28` |
| 5 | `theorem` | [thetaLogError_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/thetalogerror-zero.md) | 37 | `result-track:f19109ce9ca6529e112811f26d629cd8898a5a6947d7ae00ae84477d2fc48c16` |
| 6 | `def` | [primeWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeweight.md) | 40 | `declaration-track:8f4ca387c20c3ac79a858e399547d0325477bc843f9290cd418f6697867476b4` |
| 7 | `theorem` | [primeWeight_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeweight-prefix.md) | 42 | `result-track:dd57ca1dd8699060ab44128be4ef09e89df12325e7d8eb22ff3c0c65d5be93ff` |
| 8 | `theorem` | [primeHarmonicPrefix_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeharmonicprefix-eq.md) | 47 | `result-track:f800933e824601c48282a66112a827690cf5f81618fec84c2adc1e0144605b97` |
| 9 | `theorem` | [theta_div_sq_integrableOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/theta-div-sq-integrableon.md) | 77 | `result-track:17788a3c8b72332d01f8929c1b5e5a604715f2a75788fb3418407f91a77638c0` |
| 10 | `theorem` | [primeHarmonicPrefix_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeharmonicprefix-abel.md) | 92 | `result-track:10a8531f88ab6f6325aa4935efb859821765194658ec69fd57750f82578f6555` |
| 11 | `theorem` | [thetaLogError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/thetalogerror-intervalintegrable.md) | 123 | `result-track:78b7648da5405a36bb53a48c469211fb894f01f42c3d125bf3b58a9028f11e75` |
| 12 | `theorem` | [theta_div_sq_log_substitution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/theta-div-sq-log-substitution.md) | 143 | `result-track:08c76338a75ad852d7bd9e52cd5df73d9d8d009c32137f179de5ca99f0374e73` |
| 13 | `theorem` | [primeHarmonicPrefix_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/primeharmonicprefix-formula.md) | 160 | `result-track:d4d61154f210bf2982c98cbc619e927cf20a154cb9f232afd72414720f4e9b10` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-6.md) | 179 | `declaration-track:90de508a4e62db1f00a65e977e55bc0f7391ad8922c4baa47d6d26c92a82bed5` |
| 15 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-9.md) | 183 | `declaration-track:ff8e276946fe5f661a8171b1cf100734206081a746681852a19e2c7be922332c` |
| 16 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-2.md) | 189 | `declaration-track:6a159f68cfa194713a5fe1f339696ed49dfc58dba089e13355fec5c6cb28fcb0` |
| 17 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-7.md) | 192 | `declaration-track:dc199666aba7fc46260fe714da49766b91b1bd36e768bb319fd0e021d8e92ce2` |
| 18 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-8.md) | 195 | `declaration-track:f847a1cf8e4c102159da96d2495b3f91760d427f12c018e691dacf61799bd3e4` |
| 19 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-5.md) | 198 | `declaration-track:8f49442aefb64fedbaf0fc8bf9641b7e4ad8e2d82def29063b414a4c7bfee255` |
| 20 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-3.md) | 202 | `declaration-track:71ebe63e2ddfaaddcb38d3a0e2ac0efc85ee7b01a68498cc8c352db3969a87ca` |
| 21 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-10.md) | 208 | `declaration-track:ffaf3dc6b30aa1d6bd51389931e5fc1b3f3c3ac5e1e8229b029db87ce34f3cdd` |
| 22 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example.md) | 212 | `declaration-track:2fc8f76d41b5bfbfdd4b1e226469b98229d42240971f0bdfb981755e1d7a0d2b` |
| 23 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeHarmonicPrefixStatements.lean/declarations/example-source-edition-4.md) | 217 | `declaration-track:7a59be8ff52e591bdf658ef4442dd0d4528ffea2b4782db4a20ecd146400e2d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=222335d6f1494256edc01842e6ac9d15b4506c98dcc3eecdfb500f0a0df767bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
