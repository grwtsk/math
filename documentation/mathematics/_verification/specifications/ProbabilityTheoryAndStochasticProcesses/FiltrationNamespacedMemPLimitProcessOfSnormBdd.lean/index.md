# Verification target: Filtration Namespaced Mem PLimit Process Of Snorm Bdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12b50f463583af49c7953a290111372c928f4858",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12b50f463583af49c7953a290111372c928f4858`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Real` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/filtration.md) | 51 | `declaration-track:082d4b82d2de2a07e9519cc65c5479f81dc80628043723c82f030eafbf66a1aa` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-7.md) | 61 | `declaration-track:c66e1fd3c7d5bed5fa0bfcd927e01a64f8e225e84097779ed508718314eef127` |
| 3 | `theorem` | [mono](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/mono.md) | 68 | `result-track:f6461204048d324c01e7073e0661a26ad526d0849bdc8dc4adf45795db4a0a75` |
| 4 | `theorem` | [le](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/le.md) | 72 | `result-track:0700faa17acf99729697d8b632ba4c470e448dce9277e4cbd33cc73a845c1c49` |
| 5 | `theorem` | [ext](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/ext.md) | 77 | `result-track:83ea047cdfea8760927e429fc1aba66d1c2b365295222f476f07dfe45dc38a01` |
| 6 | `def` | [const](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/const.md) | 84 | `declaration-track:7d6ca1dac135bc6e496c8fa1ef0e45c920bb9d4e5d770bfd4f8a2a2011b36580` |
| 7 | `theorem` | [const_apply](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/const-apply.md) | 91 | `result-track:ea33c4f196907fb1403cc353b2a82c091a54552ee0cb02b5acd9661d01cdcdac` |
| 8 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-5.md) | 95 | `declaration-track:bb2df107915e87795d465a4968a5335c84bc012132c4e0b6d36f06706264b999` |
| 9 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-3.md) | 98 | `declaration-track:5a3a5fe0b3cb48e830b80b7284bf2b92541fd5b46dde7eb166a0d0fd23e0f3ca` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-4.md) | 101 | `declaration-track:b81c3b7311182f1ff650e27f64f8aee7fe64a2c8c1b73bcd3faa79782b1c9175` |
| 11 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-6.md) | 104 | `declaration-track:c137ab04a4952140d96724fc3c11a66c46589fcabe3af0ae89ba58a8d5c31659` |
| 12 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-10.md) | 107 | `declaration-track:dd9985ea97400d690c6b1613aa197b9c9d075a2338258d178afb89b1f2b3b642` |
| 13 | `theorem` | [coeFn_sup](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/coefn-sup.md) | 115 | `result-track:2e335ec8981e39419ba4a239b72b6091e0f9c164ed44d8b5cad8d8e06b97197f` |
| 14 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-8.md) | 119 | `declaration-track:d88ec341ec557d76ab9a9488ebd97d6b7e2f2728fc7b2c1478eca4ddc153a212` |
| 15 | `theorem` | [coeFn_inf](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/coefn-inf.md) | 127 | `result-track:4aa840d62d148c661c7f8d8b060cb27b24b922bb746d0781d85c9760aa0270c1` |
| 16 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:5243bcecf4ca0930d86b6c5088a07a1dac7e5e46b80a692ba772427d2255d420` |
| 17 | `theorem` | [sSup_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/ssup-def.md) | 149 | `result-track:8801b4a6a6e491bd4cfec2f9735534d55e5716c4dd6bcd9bd5a6243a6ce19fbc` |
| 18 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance.md) | 154 | `declaration-track:3642ccb6b0e7dcf9155a300c001d6fbbfcfd8775c5fc76e5035566c652e4ef2d` |
| 19 | `theorem` | [sInf_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/sinf-def.md) | 172 | `result-track:28854e5cdd9bd85005f96ba559b46de2dbe88e7faa1c65566a56e4d0b3adbbcc` |
| 20 | `instance` | [instCompleteLattice](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instcompletelattice.md) | 177 | `declaration-track:90056d716c0fdcbecce1ceeb53d8d1699830c814e3681c6ee3120418ff075682` |
| 21 | `theorem` | [measurableSet_of_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/measurableset-of-filtration.md) | 215 | `result-track:20a152d75030b2d7423244d5bcf440e81945e56910b65cffdb48fa0670750281` |
| 22 | `class` | [SigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/sigmafinitefiltration.md) | 222 | `declaration-track:c29114e4267bd0b6e424542b4d9f4f86085471b24d7d9ea8d04170558c213530` |
| 23 | `instance` | [sigmaFinite_of_sigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/sigmafinite-of-sigmafinitefiltration.md) | 226 | `declaration-track:942546f7c8fd90353eb5ce09e6d3c19a24da48d1d0ae0938419e17816a6ca5b5` |
| 24 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/instance-source-edition-9.md) | 231 | `declaration-track:d89fe80bf843aeaf8a26126992be0d9337ca3374fbef88d11ed3ca93698e27e2` |
| 25 | `theorem` | [Integrable.uniformIntegrable_condexp_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/integrable-uniformintegrable-condexp-filtration.md) | 238 | `result-track:8602254a7f4491c2c4bc9f50cd5268f91734e19c832f7e8f731fc7211ceb0214` |
| 26 | `def` | [filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/filtrationofset.md) | 250 | `declaration-track:b5dd572464a0cea8fd78b59024f6666027c3cecace15c58dbefe5fb538b8a16c` |
| 27 | `theorem` | [measurableSet_filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/measurableset-filtrationofset.md) | 256 | `result-track:b6c1fca546282e822851f1601addbf5b35e92a1d239495593c0497aa54f12fb5` |
| 28 | `theorem` | [measurableSet_filtrationOfSet'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/measurableset-filtrationofset-source-edition-2.md) | 261 | `result-track:f8e4685a6affa5c370e40c9fdc6d6b5103c10c3fe2bea7f3bae96d4911d882e1` |
| 29 | `def` | [natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/natural.md) | 276 | `declaration-track:d8df8e1969cc29ff89c5ebe89011bbeb1513f2fac9ba65c2922bc2e7aa2e072e` |
| 30 | `theorem` | [filtrationOfSet_eq_natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/filtrationofset-eq-natural.md) | 289 | `result-track:1e190f0fb5305bcc51191e9c5801f5221157ce0c8d4a61f2a4e071bfff10421e` |
| 31 | `def` | [limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/limitprocess.md) | 329 | `declaration-track:0317d5e57996fe76e43fe0b561518f6c619c88677270384b3967237eef49048f` |
| 32 | `theorem` | [stronglyMeasurable_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/stronglymeasurable-limitprocess.md) | 336 | `result-track:127c5012f6f2cdb4267364b4412756a5a84dc77ea247311d454ce754451659b9` |
| 33 | `theorem` | [stronglyMeasurable_limit_process'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/stronglymeasurable-limit-process.md) | 342 | `result-track:d31d4eeb234fee5714817a211fc3486b83a5d88e86fa81a3cb4373834a7e16c3` |
| 34 | `theorem` | [memℒp_limitProcess_of_snorm_bdd](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemPLimitProcessOfSnormBdd.lean/declarations/mem-p-limitprocess-of-snorm-bdd.md) | 346 | `result-track:bb8ded311ccb2edb026faaa758f1a7f838f93e22f912d03f5ee3c12fa29cd273` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1c50aa6040f5d8d81a708de7f9ed39e4c41b9783e4f90e24d2f66556516c1f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
