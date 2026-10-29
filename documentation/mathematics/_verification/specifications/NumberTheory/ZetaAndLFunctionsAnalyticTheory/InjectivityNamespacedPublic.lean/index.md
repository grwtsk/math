# Verification target: Injectivity Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69a783abfff257827ac1eac2012750893a304c41",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69a783abfff257827ac1eac2012750893a304c41`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LSeries.abscissaOfAbsConv_add_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-abscissaofabsconv-add-le.md) | 38 | `result-track:7637d23b682f87d63b34b2fd215803d4623129495732a373d212179cc1a7f4d9` |
| 2 | `lemma` | [LSeries.abscissaOfAbsConv_sub_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-abscissaofabsconv-sub-le.md) | 44 | `result-track:e25b8cce271da8bd06b6081c32a7b1a8bd4226096d6fa95e80f62f8c4cb46dc3` |
| 3 | `lemma` | [cpow_mul_div_cpow_eq_div_div_cpow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/cpow-mul-div-cpow-eq-div-div-cpow.md) | 49 | `result-track:9df5ec125a92647cf3b12a8d755344cb16a5abd27be7ff6ac175e23ac17635bd` |
| 4 | `lemma` | [LSeries.tendsto_cpow_mul_atTop](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-tendsto-cpow-mul-attop.md) | 65 | `result-track:4b2321a9216f2c2b7dfda1e4552dea37d3c22a53b90d73497844dd639830a6a7` |
| 5 | `lemma` | [LSeries.tendsto_atTop](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-tendsto-attop.md) | 132 | `result-track:7e78b060b496a25d80e42492e91a1b123b250183ffe06a46ea7bbcfa3131e22c` |
| 6 | `lemma` | [LSeries_eq_zero_of_abscissaOfAbsConv_eq_top](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-eq-zero-of-abscissaofabsconv-eq-top.md) | 142 | `result-track:dc8db0b6944d9e0138ae983ff4e057f93a7391a767395724e56f422aef554d5c` |
| 7 | `lemma` | [LSeries_eventually_eq_zero_iff'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-eventually-eq-zero-iff.md) | 151 | `result-track:ce3eb53d4ddb089b133dd77cd6b2a8d28c2f21d94875896c8e4d55ce65205b87` |
| 8 | `lemma` | [LSeries_eq_zero_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-eq-zero-iff.md) | 186 | `result-track:59042679d99e36cde3fff7640827a881759237a9e3fb29facf99d65555fc8093` |
| 9 | `lemma` | [LSeries_sub_eventuallyEq_zero_of_LSeries_eventually_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-sub-eventuallyeq-zero-of-lseries-eventually-eq.md) | 202 | `result-track:aa0abb19fdc3163cc6fb96fbc03cdd3d0a6c8121e99c0b87ff9446dae21a006d` |
| 10 | `lemma` | [LSeries.eq_of_LSeries_eventually_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-eq-of-lseries-eventually-eq.md) | 226 | `result-track:4e703cfe2a5720b7b230dc3fde4282135ae4c600dff8f91acbb1aa464008e37f` |
| 11 | `lemma` | [LSeries_eq_iff_of_abscissaOfAbsConv_lt_top](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-eq-iff-of-abscissaofabsconv-lt-top.md) | 239 | `result-track:28e0da499a6ed8c48d6bb0b6b7f8473f1b8f9913a8585d7d390ddab8d8620587` |
| 12 | `lemma` | [LSeries_injOn](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespacedPublic.lean/declarations/lseries-injon.md) | 248 | `result-track:6d692cfa3d3b7d1bdeb2356a55c881bae00e90530a1ae24d6a0dca5943dda2a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba2d908d173fbb05540e31d4e3b575eac77a0d8fd8da7849cddfe57b940cda76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
