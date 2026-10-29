# Verification target: Complete Finite Grouping Preserves The Root And Lowers Compressed Energy Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4748fca5144df3132a877ecc72f4ec51d6701596",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4748fca5144df3132a877ecc72f4ec51d6701596`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedHodge` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.NativeHaarEnergy` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fiberTotal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/fibertotal.md) | 26 | `declaration-track:80ec11866050955dfdb8453c36c8214698ba4fcd8de343a4d2f2e4e0e65b50f0` |
| 2 | `def` | [groupedEnergy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/groupedenergy.md) | 35 | `declaration-track:07cef7c8836051e37a80b0856fbef531b98c3f6e0d190327774f3830b3a83b6a` |
| 3 | `theorem` | [complete_grouping_retains_total](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/complete-grouping-retains-total.md) | 39 | `result-track:7e39c0c64bea38358fa44034e56b646185ea154c00b1cb8819c620b880367de2` |
| 4 | `theorem` | [fiber_energy_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/fiber-energy-le.md) | 47 | `result-track:f502ee343f97b1c9e876cd7d4a6684270f9d952fc9cbd7d54dfbb2a4f870ba1f` |
| 5 | `theorem` | [complete_grouping_lowers_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/complete-grouping-lowers-energy.md) | 62 | `result-track:c83865e5206c20b9bda775c49e33129068cb525dfdd10ed2e2cf44194497b553` |
| 6 | `theorem` | [composed_grouping_retains_fibers](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/composed-grouping-retains-fibers.md) | 71 | `result-track:864ebc2a9860f52ffe05cb1672df4bacfdd148e3e1703bd954c507efeb5ed970` |
| 7 | `theorem` | [surjective_grouping_positive_width](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/surjective-grouping-positive-width.md) | 87 | `result-track:e8b3098388f30219252ef0031cfcca31e3f411e8c2d2b26d5a54035e7dd7bcb6` |
| 8 | `theorem` | [every_declared_refinement_pays_coarse_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/every-declared-refinement-pays-coarse-energy.md) | 97 | `result-track:3d64340dab72e89501b894478c7220afc2c7c5b5fcb7a83e64303137b8cc87d2` |
| 9 | `theorem` | [actual_native_grouping_lowers_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/actual-native-grouping-lowers-energy.md) | 106 | `result-track:cfd112c2ea7a49956c4ffa0f18c8a6ac1400ed26f084d38182c57294944b2c42` |
| 10 | `theorem` | [actual_native_grouping_retains_primitive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteGroupingPreservesTheRootAndLowersCompressedEnergyEdition1.lean/declarations/actual-native-grouping-retains-primitive.md) | 123 | `result-track:abe9a530e5552a9d41f9f56de85ff5709758df947abf0c581bbc3d4cd64c0f50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ba6d2f5ff6f7854db0bbedab2bb5fe1cb963d59f80b89809bd5e12f83868ec7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
