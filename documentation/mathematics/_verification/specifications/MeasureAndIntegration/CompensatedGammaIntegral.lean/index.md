# Verification target: Compensated Gamma Integral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c70e08db4799cc29734ccf60b10bdf6bd0704ff7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c70e08db4799cc29734ccf60b10bdf6bd0704ff7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/divideddifference.md) | 21 | `declaration-track:0b1646760a78eca971b8c355388252c16eaed3800a012561314324deaa1939f0` |
| 2 | `theorem` | [dividedDifference_bound](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/divideddifference-bound.md) | 24 | `result-track:44babd0dfe9a412dba1240cc55eeb878f29c2ddc78435df47078e96afa80a521` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/divideddifference-integrable.md) | 44 | `result-track:03d9ac8697a0cff15f5533c08f90b4ccf4f6809ec8162fc9f537793d435ee7c6` |
| 4 | `theorem` | [dividedDifference_integral](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/divideddifference-integral.md) | 55 | `result-track:ff6842862e72ad662a6a392b377f92137edad7315261b07b346b4f57c4c9b1a2` |
| 5 | `def` | [physicalRate](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/physicalrate.md) | 67 | `declaration-track:4155f3c44c1317cfd14b4d8b527597f5703ff5754ffb6088bd9af3021cec9683` |
| 6 | `def` | [compensatedTerm](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm.md) | 69 | `declaration-track:01601f327b05456dd2d5639d5bd199b8be613419bbbe268ffe45d3d754fe108c` |
| 7 | `theorem` | [physicalRate_pos](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/physicalrate-pos.md) | 72 | `result-track:b87186a75ed490b73b5bf2d7208c58e714d6dc1d9d37786d10d96a33f8125804` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/shifted-physicalrate-pos.md) | 74 | `result-track:a85db7511f51e6905b071a99a45536640aa497c962304cc989754adeea0fe891` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-nonneg.md) | 79 | `result-track:1a439cc521de4e2687dca9db9243bf6595f5b8b58b18513925c2a7c22cd919cd` |
| 10 | `theorem` | [compensatedTerm_split](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-split.md) | 85 | `result-track:a1d97afa51c0db84baf64589d2353080d3a095e92629a3cec055491e698e8e59` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-integrable.md) | 97 | `result-track:9e6bb11aeb40be178de54d2e5f806029d9229f4ba7e06218237dbeb97ce81e2b` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-integral.md) | 106 | `result-track:1aeaf27038d707f865ba515f297cbbd69c36f5e0b91ef6148d5f6bf3493b9b95` |
| 13 | `def` | [compensatedIntegrand](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedintegrand.md) | 133 | `declaration-track:94909cdd77274d0a0eed08681d19abf6fe485862295f9e7f594ca796ecf91842` |
| 14 | `theorem` | [exponential_kernel_hasSum](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/exponential-kernel-hassum.md) | 136 | `result-track:b4fc4819c1f403632cd69783c47a2b5d1280a2671d53757915c971b2485157de` |
| 15 | `theorem` | [compensatedTerm_hasSum](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-hassum.md) | 159 | `result-track:379cc98292fbd5b5d5487e505b23b3fc6509d236fc7e4d9df69896c79c4d7159` |
| 16 | `theorem` | [compensatedIntegrand_nonneg](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedintegrand-nonneg.md) | 169 | `result-track:d9be64744aa1a1dc93affe1b2c6e71ddc48b49114b7ba56fa5d8d47843e74171` |
| 17 | `theorem` | [compensatedIntegrand_continuousOn](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedintegrand-continuouson.md) | 174 | `result-track:1e5c1cc592c34ab27356be64f0db3b8efb9ac9d7b6ad916b78fb84f1868b7e12` |
| 18 | `theorem` | [compensatedTerm_integral_norm](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-integral-norm.md) | 183 | `result-track:82e3496cb7b12cd55238bda9800f983b210c614ac12e846614cca5e6527773cb` |
| 19 | `theorem` | [compensatedTerm_integral_norm_summable](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-integral-norm-summable.md) | 192 | `result-track:57a4828d6079067dc0a8d5c4a5ef7eda054b187a7d86de722d40b63c721c832e` |
| 20 | `theorem` | [compensatedTerm_lintegral_enorm_tsum_lt_top](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedterm-lintegral-enorm-tsum-lt-top.md) | 201 | `result-track:d2120cac359990da48f92dd205d1c778167210fb076aa9566f1ed00012993729` |
| 21 | `theorem` | [compensatedIntegrand_integrable](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedintegrand-integrable.md) | 215 | `result-track:1f4f15b5cdf80194db4e32b9af304155875eeba23fd0bc48cd69ea83ebc05326` |
| 22 | `theorem` | [actualGamma_eq_compensatedIntegral](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/actualgamma-eq-compensatedintegral.md) | 229 | `result-track:bddadd3ae51fc3c169e6b6a01a656140fc7a1b34c98eda840bcb087793127477` |
| 23 | `theorem` | [compensatedIntegrand_zero](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/compensatedintegrand-zero.md) | 243 | `result-track:2cf5ea47d61f614575df96dcc9b739324e54bdb32dd71f7f52b26862844d2d7b` |
| 24 | `theorem` | [actualGamma_compensatedIntegral](../../../../MeasureAndIntegration/CompensatedGammaIntegral.lean/declarations/actualgamma-compensatedintegral.md) | 248 | `result-track:10f9873652a202a01981f0bf880a1b390d5bb09a5fed21af8626416d9e075a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23d87d629337e0c7f0b10130d87d091eb8e1b5825c01b0ba7f6799fcd8ac9900 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
