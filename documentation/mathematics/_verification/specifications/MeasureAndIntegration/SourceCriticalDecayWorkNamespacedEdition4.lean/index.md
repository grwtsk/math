# Verification target: Source Critical Decay Work Namespaced Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb929aa9d27895d3368bd48d275581d3034daf17",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant8e02cd0624a8d6f7122e22a6a694d94ba971b02a34256c3c7a1709ab65ff9cd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb929aa9d27895d3368bd48d275581d3034daf17`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant8e02cd0624a8d6f7122e22a6a694d94ba971b02a34256c3c7a1709ab65ff9cd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant8e02cd0624a8d6f7122e22a6a694d94ba971b02a34256c3c7a1709ab65ff9cd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDecay](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/criticaldecay.md) | 38 | `declaration-track:2241d149486226b2c261f0a83c46d088fc6e80f7019a2f6ba9c142ff88d6eac9` |
| 2 | `def` | [criticalDecayWork](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/criticaldecaywork.md) | 41 | `declaration-track:4e45d9d4694b50e03be052601de87fa277a183084017e48710ab6a4f0f03f4cd` |
| 3 | `def` | [criticalDecayNegativeMean](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/criticaldecaynegativemean.md) | 45 | `declaration-track:81250ef829c9df6d36d67553d24580da069e5fd6fc63a11780a112126e00ea30` |
| 4 | `def` | [squareMinusDecayPairedWork](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/squareminusdecaypairedwork.md) | 49 | `declaration-track:6058be12571af2764bd86a3968d8f3528f5a2aa670831e7d2d2830c320292103` |
| 5 | `theorem` | [criticalDecay_continuous](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/criticaldecay-continuous.md) | 54 | `result-track:e80ea6f0c731c4e9a108be202d770dd6919613737ee177e3ca97fa7c1b12c268` |
| 6 | `theorem` | [criticalDecay_times_deriv](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/criticaldecay-times-deriv.md) | 58 | `result-track:d2701a875856b256172303a9d53a0389cfee995337547dff028d0aa160040c68` |
| 7 | `theorem` | [criticalDecayWork_eq_main](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/criticaldecaywork-eq-main.md) | 66 | `result-track:24ada5d8023d76385c9a30a2cc13f1d690962271bc084022486585728a287470` |
| 8 | `theorem` | [criticalDecayNegativeMean_mem_Icc](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/criticaldecaynegativemean-mem-icc.md) | 92 | `result-track:5cca01b23c50c48a2110993b74e923adbc8d9e3a4fb48a046ca30ce64a4a6a82` |
| 9 | `theorem` | [squareMinusDecay_eq_paired_difference](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/squareminusdecay-eq-paired-difference.md) | 120 | `result-track:3a5407b15cbc8b64d995b55ae63152973b525ba1552af8b3c796d2872c7c2906` |
| 10 | `theorem` | [squareMinusDecayPairedWork_eq](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/squareminusdecaypairedwork-eq.md) | 156 | `result-track:4b3ae9efe0a3bd9a24e0a6fcd00c29a65b1a8240e7d1d15138331eea80bb1a83` |
| 11 | `theorem` | [squareMinusDecayPairedWork_uniformly_bounded](../../../../MeasureAndIntegration/SourceCriticalDecayWorkNamespacedEdition4.lean/declarations/squareminusdecaypairedwork-uniformly-bounded.md) | 165 | `result-track:ba300ed59d9e61f5c75c345e8c1cd9d5051b40810cf0c50b09b27cc4eb1c728d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5719b87d97ae4caeafa7d8fccdb392572b98c40ba99c3d38c120e6223e8465e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant8e02cd0624a8d6f7122e22a6a694d94ba971b02a34256c3c7a1709ab65ff9cd4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant8e02cd0624a8d6f7122e22a6a694d94ba971b02a34256c3c7a1709ab65ff9cd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
