# Verification target: Source Prime Square Tail Work Namespaced Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89aaca6d9acdfa812e9ff27f6bffe5c6eee2370d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant047882fb3350b664c7cc84b1fe94e2578f3394cf18f61d419e51e1fd85cbbf3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89aaca6d9acdfa812e9ff27f6bffe5c6eee2370d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant047882fb3350b664c7cc84b1fe94e2578f3394cf18f61d419e51e1fd85cbbf3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant047882fb3350b664c7cc84b1fe94e2578f3394cf18f61d419e51e1fd85cbbf3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefixcoefficient.md) | 35 | `declaration-track:2187ac7dacfb8ef2b48fb9625b7788163091a2610d179b4637c4ba52f9e17367` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefixcoefficient-eq-slice.md) | 38 | `result-track:ef9f5ea15b4ff6f7ece5fbbbce3ea833704db1b23bf3404f9537d76f023049ba` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefixcoefficient-summable.md) | 51 | `result-track:f60d1428c57dbbd12cecefd75065e998d8cc711445c3e260f2ab6956a611a747` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefixcoefficient-pos.md) | 59 | `result-track:759625210f0fe30cfb567de73b3df9ea7e67b881b20156ed199d13c10a224f73` |
| 5 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefixbaseline.md) | 65 | `declaration-track:35d4f233bbab0427547f62befb31ab879aeb7838c58d4742d68e785991345fa0` |
| 6 | `def` | [squarePrefix](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefix.md) | 68 | `declaration-track:694d5ea809721442cfc39e362a80fef6da433c43eeda4c41b9d00b3855b5080f` |
| 7 | `def` | [squareTail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretail.md) | 72 | `declaration-track:7128ef9b9ea9752dff1ef805c203389f7f9119ca42d4ea33dbd9d16f33cb37e4` |
| 8 | `def` | [squareTailWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretailwork.md) | 75 | `declaration-track:151f45526c7d8455d8b9462396a8e2eb019ecb359164c71aec50113d1891efe6` |
| 9 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretailnegativemean.md) | 79 | `declaration-track:76213244ae721c355e787c4db150fe3e50a8627d7c987b34410a0705cf08e2f9` |
| 10 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretailpairedwork.md) | 83 | `declaration-track:88ee8ebd4d0cf799287e0b1f8ed8a58da31aea8a4ab2343cc03cce759d6c744d` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefixbaseline-nonneg.md) | 87 | `result-track:bd79e289857a9d3c4dbd914773b24e5b81ff17267ef0829612019465ca70803e` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefixbaseline-pos.md) | 90 | `result-track:6dca7dcc54b26156b3eba7bc542a8b3612e3f039e42a57019f138f061420a7a3` |
| 13 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefix-eq-steps.md) | 96 | `result-track:2601817d0ecb742b42b79bf80cf8c093bbfc8e7b3960d1a896f264b675c38f34` |
| 14 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 110 | `result-track:42e5c3b4ecf5925b9306ef9a3d00a6ef89f593ffec3c92beb1121c1d9a866f02` |
| 15 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 132 | `result-track:ab95470e8c8f80ea7fb1b4e40a2c4c9de2eb9d46351aeda4046a68fd26f57a17` |
| 16 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareprefix-source-work.md) | 141 | `result-track:b58898367761782a41bcd6d688bb2125d045f7e0528c038bd6de574c735cc426` |
| 17 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretailwork-eq.md) | 173 | `result-track:dbee0f2a9799144289f0f541c00a53585948947c2b1e6b09bee0438165a43900` |
| 18 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretail-intervalintegrable.md) | 189 | `result-track:1a0c3506097cab8c310255f5cd3657dde455a336d040443b7325506a68c07171` |
| 19 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 196 | `result-track:440d69faf303dcdceb38d64d92ef3a38a2d10bd6f061b8d3e7658a4b20992975` |
| 20 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareremovedpairedwork.md) | 218 | `declaration-track:3b67bc86a9403d1d5acc73b41b499d6c297d8671d0ff4f0fa3cfcd9df528c9f1` |
| 21 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareremovedremainder.md) | 224 | `declaration-track:9c3a2ca88026880f5f963fb9f7e5938abd691105b354bbcdd072b5c2c61588f6` |
| 22 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/squareremovedpairedwork-eq.md) | 229 | `result-track:b158aa7133fa022df3fabd55bef331d897822cef18eddecc6d598694c0ce2d4c` |
| 23 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition4.lean/declarations/mertensresidual-eq-squareremoved.md) | 246 | `result-track:980e564e5c9edba76d8dd349d63231ec73eb7429bd1c5f881d158b26f7f79cd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=574461886c2d7e3cc4107d9068bffdc4cbda3d8fcdd594b9007711aa988b1f79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant047882fb3350b664c7cc84b1fe94e2578f3394cf18f61d419e51e1fd85cbbf3a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant047882fb3350b664c7cc84b1fe94e2578f3394cf18f61d419e51e1fd85cbbf3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
