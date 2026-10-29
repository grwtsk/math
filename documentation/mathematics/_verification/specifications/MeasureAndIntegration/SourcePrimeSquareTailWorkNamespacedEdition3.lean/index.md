# Verification target: Source Prime Square Tail Work Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a221246273566f67fe6880eef50a8f394591f58d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a221246273566f67fe6880eef50a8f394591f58d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean.json)

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
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixcoefficient.md) | 37 | `declaration-track:8ed0e19a61d54d4ab26ca28961cc074abd7fc67169ddc0e6bf29f85c4ea80494` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixcoefficient-eq-slice.md) | 40 | `result-track:b583e32133d621c7f5933f01754fd7d8ff0dfa53eb17bc2fd4c730df3a41f029` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixcoefficient-summable.md) | 53 | `result-track:9368b31ee3fc853b444e9b0dbfa8a2639b103807f28c5aa92b353788a7beb655` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixcoefficient-pos.md) | 61 | `result-track:3e2a88ebe73f29668f85151a275a034db3ec8d4df28dcf36de7f1d28ed377ff2` |
| 5 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixbaseline.md) | 67 | `declaration-track:2205f476727e8994c4a43d86cbd7d4cda28e8fedb2a57b3a02ef5fefa9bd9c5e` |
| 6 | `def` | [squarePrefix](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefix.md) | 70 | `declaration-track:f665c3285e96c8f0b37595f8499b9300aa60940c5998c4abf1bc4d92dbebde77` |
| 7 | `def` | [squareTail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretail.md) | 74 | `declaration-track:9455a7f46f5868e14082bc4a66097324c143798e4a9b4dc47d78834bfad05d98` |
| 8 | `def` | [squareTailWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretailwork.md) | 77 | `declaration-track:0c34896aab318121b2695a3bba57514d40dfcef2780faadadddfc081893c4b2c` |
| 9 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretailnegativemean.md) | 81 | `declaration-track:cc62be605358031bd61cb2a1cd7224fa681e5d2474a70f17a67108345c9668e1` |
| 10 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretailpairedwork.md) | 85 | `declaration-track:de2976ee4ba4c50e04c0c4a2602cabda40810fc3f6ba313996245983aa2f2396` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixbaseline-nonneg.md) | 89 | `result-track:804c8395e0fa96e7982f6a2e4a0a6b8f58c217dcdd626478a8ca4dc0ca204c9c` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixbaseline-pos.md) | 92 | `result-track:2e369d610d268011332c1b90501660fda1de5de11baf8d83b54663317a220a5c` |
| 13 | `theorem` | [squarePrefixBaseline_le_higherBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefixbaseline-le-higherbaseline.md) | 98 | `result-track:c3a065c97829f03c8f5ec3be3f5651c737e2cae18eb283fbb27c12de563c83a8` |
| 14 | `theorem` | [squarePrefix_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefix-nonneg.md) | 109 | `result-track:59f6dc77117c69cbfe16ecc1b65cd23ae57482a51afa3787d7d661e4b6d78bc4` |
| 15 | `theorem` | [squarePrefix_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefix-le-baseline.md) | 115 | `result-track:6bc6615e7e7b0d6ea885da37e1ebd952afaf0248ba60149c4f47c3e43b8d9bfe` |
| 16 | `theorem` | [squareTail_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretail-nonneg.md) | 123 | `result-track:c2a0f92a616c668b0c5ed1433f7508205a662ee468ae5bef288254e1da4418e1` |
| 17 | `theorem` | [squareTail_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretail-le-baseline.md) | 127 | `result-track:8add0072e413e5dbce6874a8249b8e10c7df0269087c4f6ea35c9404c7c63935` |
| 18 | `theorem` | [squareTail_below_first_square](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretail-below-first-square.md) | 132 | `result-track:d93f17840739f9a8467ac68c3fb8b11a6a166ea9a2794f66815b3673f038e304` |
| 19 | `theorem` | [squareTail_at_zero](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretail-at-zero.md) | 144 | `result-track:cefa13f76da56b7d06895acafdf2ae36f45dc1ceb517413303fbc7ee16e32405` |
| 20 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefix-eq-steps.md) | 149 | `result-track:c414a279201e34323dfaca40023f2840a72e4136fdb87417890eda83ce80a00b` |
| 21 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 163 | `result-track:04c26d63bdad5547405ac4667abb945044d1fe58934ede419d6b55e2be3a500f` |
| 22 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 186 | `result-track:9da63ac251263f08ccf173cb4e0834553aecd32f7f4195db5eebc528056d2432` |
| 23 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareprefix-source-work.md) | 195 | `result-track:bcd9bc1b079c2b3cba358df44dbfbc29ffcbf5b49a1e7761cc46644f9da67be0` |
| 24 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretailwork-eq.md) | 228 | `result-track:8bde096ccc3ad3f675e07cef498c1e64f0bf28247aed0d45b998c70e0eaf96f9` |
| 25 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretail-intervalintegrable.md) | 244 | `result-track:7402df1c586c9fe87508ebc11bab415cebf8f2ab184b3b4b3f25dcc6043a9972` |
| 26 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 251 | `result-track:116a8f0597828e0eb4d3904b901388be446ca3de5c7825f85a2ae45098ed0708` |
| 27 | `theorem` | [squareTailNegativeMean_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretailnegativemean-nonneg.md) | 274 | `result-track:18e58fa4db162b6abbc90fd0bc493365c660c7cbbd063d2e8c9502ade7b1baf9` |
| 28 | `theorem` | [squareTailNegativeMean_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squaretailnegativemean-le-baseline.md) | 282 | `result-track:33dd156f9e4f6cc4333b27df5b1cfcb49cfb8f0d6ebd0b3dee283231978d3ab6` |
| 29 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareremovedpairedwork.md) | 300 | `declaration-track:18deae233f90423bc8cedd9c271317d897ab268e5f275de50352da0b0d998d75` |
| 30 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareremovedremainder.md) | 306 | `declaration-track:4bf1743df6d368fd5a69c24d1abbd45e459d2a041e38c337c70e424bda9f0929` |
| 31 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareremovedpairedwork-eq.md) | 311 | `result-track:eaf391f3dd42204bfb633e31bfe5596cef65fa7eadd3700f55776547c2469974` |
| 32 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/mertensresidual-eq-squareremoved.md) | 328 | `result-track:665f5fd1f81fcab38b10357790d0e404006c00bf838c6476e41f20c94f98c74d` |
| 33 | `theorem` | [squareRemovedRemainder_uniformly_bounded](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition3.lean/declarations/squareremovedremainder-uniformly-bounded.md) | 340 | `result-track:005237f18231e7bbcadcf5ad1645c4169b0f8bd7fc5d57d6e4d20b9f1978be97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c7ec363891fe72ccf5ca358b559a826ef51810862a3b594772261351033e454 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
