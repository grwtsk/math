# Verification target: Source Prime Square Tail Work Namespaced Edition8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c46c600bc84ec053becdecc6c4f4b5da1921290",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant4c5aa51607c4404d89a3b706083902cdc6f855ee56547d05e19c0654e6a560de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c46c600bc84ec053becdecc6c4f4b5da1921290`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant4c5aa51607c4404d89a3b706083902cdc6f855ee56547d05e19c0654e6a560de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant4c5aa51607c4404d89a3b706083902cdc6f855ee56547d05e19c0654e6a560de.lean.json)

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
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixcoefficient.md) | 37 | `declaration-track:c544f7255cd8930816374d6423f2ff4cdc39684c7b3be232a0afef3cca11b7c2` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixcoefficient-eq-slice.md) | 40 | `result-track:050d5cd665d68c1acd4eff00b77bbc6ae7b4f5446c9f9b062d027fde47a0b264` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixcoefficient-summable.md) | 53 | `result-track:5fbc44e83a37ccbbf6618db55f23f1e6e12018b1bd34d4fbc023461f25990f85` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixcoefficient-pos.md) | 61 | `result-track:564b57e18a3ec3080c27011b5c0975e62191e936b7d08ca7ab680a19d0ff4da1` |
| 5 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixbaseline.md) | 67 | `declaration-track:de75bbca2f9b64c77c484c0eccc761178178dac525ed99111fb3b2883122936b` |
| 6 | `def` | [squarePrefix](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefix.md) | 70 | `declaration-track:17d36b29ee3a2e7a57042a9ae8e220a2665591d984327c2619abd3895f845c9e` |
| 7 | `def` | [squareTail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretail.md) | 74 | `declaration-track:70d90086001bec20658c10a0834c7644404b6d20b916f763b81109aea5c1562d` |
| 8 | `def` | [squareTailWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretailwork.md) | 77 | `declaration-track:10da01788d246dd01d8da2c091baf2c50d62631dcf4b9a70fd713c2715d65366` |
| 9 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretailnegativemean.md) | 81 | `declaration-track:e01d0efa7ee13e00664094ed9115f7f708c4c0af3c183a67557ae0ae770c2818` |
| 10 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretailpairedwork.md) | 85 | `declaration-track:7288dafbad4f1a80a33b94e40be1877f37bacd141d2624df87be44c17b2b57fc` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixbaseline-nonneg.md) | 89 | `result-track:d6f3fe045c682673e729aec33bf1cc4fd5792e9c49336cb941d02e0da4cfc9c7` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixbaseline-pos.md) | 92 | `result-track:147818de29db7082b9124b718d0819cddddeca6713e68d7ce43106a2d37aba31` |
| 13 | `theorem` | [squarePrefixBaseline_le_higherBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefixbaseline-le-higherbaseline.md) | 98 | `result-track:0e58b825a78b1abeaf03feba40f55877ba910806300d4ca2f874158535166e77` |
| 14 | `theorem` | [squarePrefix_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefix-nonneg.md) | 109 | `result-track:e765cb8b24820afaf0b81c1fcb39e1e1136fda9107985102003774f8568ae37e` |
| 15 | `theorem` | [squarePrefix_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefix-le-baseline.md) | 115 | `result-track:12d2e4804908724a0b3628870100960fafc397f8076d17a3fd74bc5bef29750b` |
| 16 | `theorem` | [squareTail_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretail-nonneg.md) | 125 | `result-track:6ef2dfa6db6c0e63ddc11e4729655db560ce8717af2be943b9ab11f2ba7e1d09` |
| 17 | `theorem` | [squareTail_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretail-le-baseline.md) | 129 | `result-track:f9dc830e8bce534fafaf3365be09ca2a68ff7042509cfe4e252e2cdcba8323c4` |
| 18 | `theorem` | [squareTail_below_first_square](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretail-below-first-square.md) | 134 | `result-track:601ff5140b67d85d6390d8d4d0eff9e7e783f5ed2c42c77684816de07db02253` |
| 19 | `theorem` | [squareTail_at_zero](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretail-at-zero.md) | 146 | `result-track:1fd082faef870eef58cffe0ca2d19deaec74f2b13f7a17d5138f9df462315c2f` |
| 20 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefix-eq-steps.md) | 152 | `result-track:d769da241d03d29535537672a606374a631191303ff19d267286e3d2b52954d3` |
| 21 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 166 | `result-track:355cc5fa14dec13276df962136d3cb0bf50f29c4fe68af8e072f218ef0064ea0` |
| 22 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 189 | `result-track:b05aca352356307b252c11ec151e77ddbceed0bceef6e14427369538dbfe75ac` |
| 23 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareprefix-source-work.md) | 198 | `result-track:d4a3f306c11b8517895e50d262026f1ad62ae8c2c2961e067773a36cc327cfc7` |
| 24 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretailwork-eq.md) | 231 | `result-track:993e47a5ea758cac74447305088695f523794f778525632c78921ddc94a8da26` |
| 25 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretail-intervalintegrable.md) | 247 | `result-track:21292a9d5b71ea3ad9875677a58a0f73e5259dcfe56688bb5ae4b876f4a884b2` |
| 26 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 254 | `result-track:b99d210aa9d9c817a574d87780d5a26f19eaf9e7a5a5d13d2b478b793bd7b90d` |
| 27 | `theorem` | [squareTailNegativeMean_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretailnegativemean-nonneg.md) | 277 | `result-track:2b33b75b6c449e351848d20445b015a4f6abbe35b5c71091cfc50da095a3bdaa` |
| 28 | `theorem` | [squareTailNegativeMean_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squaretailnegativemean-le-baseline.md) | 285 | `result-track:91db8176bcf288ad567d5b47eb26be01a7449a3963c87d39177d1942229b7ae5` |
| 29 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareremovedpairedwork.md) | 303 | `declaration-track:558b4d586bc3df16ba0c9dfb1407380a01e7a50e8c2940f0a66d2ae3715c9d41` |
| 30 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareremovedremainder.md) | 309 | `declaration-track:c12052e7e67bdceb400815412846cc38bcae479bd091d45a5f7576d964ef12b0` |
| 31 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareremovedpairedwork-eq.md) | 314 | `result-track:1480fc0585e75f0e1e53acb71f5592769683e1b8abb27e01885efb5abaa7623a` |
| 32 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/mertensresidual-eq-squareremoved.md) | 331 | `result-track:e07987867639cce213f8752bd255ab5f7ca65ea5a29aba9db82095573928369a` |
| 33 | `theorem` | [squareRemovedRemainder_uniformly_bounded](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareremovedremainder-uniformly-bounded.md) | 343 | `result-track:f8edb2c47d1a55e3fd3cec590cdb79833644937e4dd676ea6bd19e5162de6647` |
| 34 | `def` | [SquareRemovedPairedTailLowerBound](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareremovedpairedtaillowerbound.md) | 379 | `declaration-track:b2c04cc8c98f8489e367317b0179ad3a028a9680ab245770fc6f61f15167c3d3` |
| 35 | `theorem` | [squareRemoved_tail_iff_residual_tail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition8.lean/declarations/squareremoved-tail-iff-residual-tail.md) | 384 | `result-track:a334a3f57bec888e369b837710669640456940e8110a7d0205d1b311480b3cec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22da5a7d06858132806fe68f7ad3cf812efd21a8ed725f7074a7b9b69e891214 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant4c5aa51607c4404d89a3b706083902cdc6f855ee56547d05e19c0654e6a560de.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant4c5aa51607c4404d89a3b706083902cdc6f855ee56547d05e19c0654e6a560de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
