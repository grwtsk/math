# Verification target: Xi EFAssembly Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1a259643247a992566d589c6fc03a323f3e05d0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1a259643247a992566d589c6fc03a323f3e05d0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula.ZeroFree` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.FullLine` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.JTerm` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.PrimeTermJ` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.FamilyFacts` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fullLineIdentity_holds](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/fulllineidentity-holds.md) | 42 | `result-track:e66252bc3e676236c0ad0c64a6be0b02bbb97b01dbb1010b7d0efa76989616f8` |
| 2 | `theorem` | [xiPrime_EF_lit_corr'](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/xiprime-ef-lit-corr.md) | 47 | `result-track:f8264cbf81fdf19497f45867b610105af6a3add6f7cb4417ad9d23dfbab3b0a5` |
| 3 | `def` | [xiCoeffJ'](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/xicoeffj.md) | 57 | `declaration-track:c95497da5e8d5e8e6f8237128856ee65d66839aa1f5b2aa57fe03685666ee08b` |
| 4 | `def` | [CoeffFacts](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/coefffacts.md) | 60 | `declaration-track:adaf73b158c2a1afee84a2a2f34328c4218b73eff155c26507ad4f899496bbac` |
| 5 | `structure` | [GramBridgeFacts](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/grambridgefacts.md) | 67 | `declaration-track:2577a308e76bee02271a518d02729c7cff565a345c856757937255f5de2ed3f1` |
| 6 | `def` | [TestWeightFacts](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/testweightfacts.md) | 94 | `declaration-track:257c2f6e4b628b8e07e4e0fb47ad923ef0e34ef15597a9b3117029931a520d8e` |
| 7 | `theorem` | [k_log_eq_zero](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/k-log-eq-zero.md) | 114 | `result-track:2f68c53d3f2f7e5027d450253f38236123911a17121e464912118c17961f353b` |
| 8 | `theorem` | [summable_coeff_mul_k](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/summable-coeff-mul-k.md) | 125 | `result-track:b63bab42a6b8b2c443abb6640f4d7bca5be99c047e6b9a2fb01fe8611d79705d` |
| 9 | `theorem` | [max_one_le_four_add](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/max-one-le-four-add.md) | 139 | `result-track:ad5fc43f68214532283ddc7ef42b35b7817fde93cdf44b0a410b2421d8578d1c` |
| 10 | `theorem` | [xiEF_of](../../../../MeasureAndIntegration/XiEFAssemblyNamespaced.lean/declarations/xief-of.md) | 147 | `result-track:85de5813a55b0b0486fe84ff9a69ab5b2b4c6651a85eba5dd04499db9fa1b0e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0443d6689ac3be880c3f5184bb28827767024988339bfb81f58a24cfa7b21498 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
