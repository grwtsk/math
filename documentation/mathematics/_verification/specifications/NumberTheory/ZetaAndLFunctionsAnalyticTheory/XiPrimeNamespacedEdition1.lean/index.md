# Verification target: Xi Prime Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8685efb594e7c635f31f90f7c2ad5a98b83b23ad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant58738412586645c2f000aa5ce54bd86e3a1408ec8117ed90b2042e516be8d3a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8685efb594e7c635f31f90f7c2ad5a98b83b23ad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant58738412586645c2f000aa5ce54bd86e3a1408ec8117ed90b2042e516be8d3a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant58738412586645c2f000aa5ce54bd86e3a1408ec8117ed90b2042e516be8d3a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ChallengeDeps.XiPrime` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.ZeroFree` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Final` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xiPrime_zeros_in_open_critical_strip](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/declarations/xiprime-zeros-in-open-critical-strip.md) | 21 | `result-track:bcd62225d4a9f790e5bb6b188fd4c0f74d2215206b4c99d87420bc8309ce50cd` |
| 2 | `theorem` | [xiPrime_over_xi_re_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/declarations/xiprime-over-xi-re-pos.md) | 26 | `result-track:e362ba832f7e10e703600a04251d50d58a3acfe117b491173e46a9dbc0c129c3` |
| 3 | `theorem` | [xiPrime_simple_zeros_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/declarations/xiprime-simple-zeros-on-critical-line.md) | 33 | `result-track:6758a8f10f877c3cab73ac5c8d483c352f6eacd5e1da32e269da5122d954cf43` |
| 4 | `theorem` | [xiPrime_simple_zeros_on_critical_line_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/declarations/xiprime-simple-zeros-on-critical-line-cumulative.md) | 40 | `result-track:312a384cff8eca7a0a1fb011edd13ca3750760dc277a52864b2e797e791bac1f` |
| 5 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic.md) | 48 | `result-track:b5adf12b4ebc7e5342244c90737ef3c013b83b64cdad1654757de18f3efd2be4` |
| 6 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition1.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic-cumulative.md) | 56 | `result-track:d04b4f1c4e5a122e51c792714c1fa6b8308cde316523beeba936119c72f7d319` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d538f4c86ad0a6cc29176e685054eb2038b2516e9071cac44ae9b405c887553 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant58738412586645c2f000aa5ce54bd86e3a1408ec8117ed90b2042e516be8d3a5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant58738412586645c2f000aa5ce54bd86e3a1408ec8117ed90b2042e516be8d3a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
