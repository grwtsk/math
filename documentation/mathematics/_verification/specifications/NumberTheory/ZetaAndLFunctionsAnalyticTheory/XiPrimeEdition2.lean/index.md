# Verification target: Xi Prime Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05867d8955d3db21d069c913d990f6670c08d956",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant84dd23a04ebfde95d6d48c65995c00bc7bbcb3f235eb67c91cbade81b44b3f01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05867d8955d3db21d069c913d990f6670c08d956`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant84dd23a04ebfde95d6d48c65995c00bc7bbcb3f235eb67c91cbade81b44b3f01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant84dd23a04ebfde95d6d48c65995c00bc7bbcb3f235eb67c91cbade81b44b3f01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ChallengeDeps.XiPrime` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xiPrime_zeros_in_open_critical_strip](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/declarations/xiprime-zeros-in-open-critical-strip.md) | 15 | `result-track:cd53fa5ee4f698e5064d1c7dafe9f47dd31b37eef5cd3d1652113ed2e1e7bd0a` |
| 2 | `theorem` | [xiPrime_over_xi_re_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/declarations/xiprime-over-xi-re-pos.md) | 20 | `result-track:d790ba200289e9c4ef2f920e4fb94699c034f5ca4cf36a8f68cfc0055efd31b0` |
| 3 | `theorem` | [xiPrime_simple_zeros_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line.md) | 27 | `result-track:a74c1ef45719da950385a4537147f5e9e1f2017814cb1b74b75480b58c9f48b0` |
| 4 | `theorem` | [xiPrime_simple_zeros_on_critical_line_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line-cumulative.md) | 34 | `result-track:27eb1287660735b4c6779060b69f878ef6f728b559269e45b0857c1a16a9b156` |
| 5 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic.md) | 42 | `result-track:e4c9c5e7ad787ecfe77bdbc8b37b88ff68094e4d99a33b996d953ea40036523e` |
| 6 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiPrimeEdition2.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic-cumulative.md) | 50 | `result-track:c6441b73808eeddb1a772de00a9bffbe11bf2eeb51933ac2dcff7ed8f90d2338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a6b23c53c338f2d9b91b378490f1f45630f13e90f3072d1c7a02332119e6677 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant84dd23a04ebfde95d6d48c65995c00bc7bbcb3f235eb67c91cbade81b44b3f01.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant84dd23a04ebfde95d6d48c65995c00bc7bbcb3f235eb67c91cbade81b44b3f01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
