# Verification target: Xi Prime Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcc09b2f41f32bd2adc0fd7cad673b4e0c926dcf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant4fd9dd4de8a0a0ab0394b0c731a9d969e36ef6a30e5779ea18fad04cecce1555.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcc09b2f41f32bd2adc0fd7cad673b4e0c926dcf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant4fd9dd4de8a0a0ab0394b0c731a9d969e36ef6a30e5779ea18fad04cecce1555.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant4fd9dd4de8a0a0ab0394b0c731a9d969e36ef6a30e5779ea18fad04cecce1555.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ChallengeDeps.XiPrime` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xiPrime_zeros_in_open_critical_strip](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/declarations/xiprime-zeros-in-open-critical-strip.md) | 23 | `result-track:f3125c54690646b46acef632e459fe72a8b6ceea4e2373baf8a0cc9af7b7ab41` |
| 2 | `theorem` | [xiPrime_over_xi_re_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/declarations/xiprime-over-xi-re-pos.md) | 28 | `result-track:c6e4bbcab3159958fd6623ec83c765473014ce3a40d058ad09750edaa9d16d75` |
| 3 | `theorem` | [xiPrime_simple_zeros_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line.md) | 35 | `result-track:679c72cd1d1d1b90c2d6f3b228a13c13c5a97ba12ad5b3fedc3418e75fb0eb4f` |
| 4 | `theorem` | [xiPrime_simple_zeros_on_critical_line_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line-cumulative.md) | 42 | `result-track:1ad26967d4df33a36b3d5b3a5c26a1872446f6bdab7a5b56077d715232dd8caa` |
| 5 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic.md) | 50 | `result-track:f3c54cc82974d0ad95ec1bdcfa5c260b744d783b6dad961c9ca654231f33fed0` |
| 6 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeNamespacedEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic-cumulative.md) | 58 | `result-track:d1cf1dda8d7ce9b1bb875e9e02c120516c31456dd714622eeefd05ed4440c27e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aacb8a50305bd009d32d012366f1e54658d1ff03f9d3fc225537ae5f8c2592ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant4fd9dd4de8a0a0ab0394b0c731a9d969e36ef6a30e5779ea18fad04cecce1555.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant4fd9dd4de8a0a0ab0394b0c731a9d969e36ef6a30e5779ea18fad04cecce1555.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
