# Verification target: Draft V2 Before Series Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "943bd30d06a783e5143ad37a77bd0ca58ed90697",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `943bd30d06a783e5143ad37a77bd0ca58ed90697`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefixcoefficient.md) | 27 | `declaration-track:6af724cfbdfdddfd3779bace060f7415c5aaef4addcd71292c89cbdf986ed1b7` |
| 2 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefixbaseline.md) | 30 | `declaration-track:8ecf23c6cac3e2e192beb1161eca59848154a42b10d1634d2c74651994d326a2` |
| 3 | `def` | [squarePrefix](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefix.md) | 33 | `declaration-track:adef87f94a90115f477b4077389d4edc37dfd5e830ec2f177807e3acd1d59999` |
| 4 | `def` | [squareTail](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretail.md) | 37 | `declaration-track:4254bb7d2e83224c485941153acc93151f33586b18bd50ecd685a5e0e9454b34` |
| 5 | `def` | [squareTailWork](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretailwork.md) | 40 | `declaration-track:17cd7d5151defa1c5a02aea3fd901aca47cbd69897b3041259a7cd05a88b182f` |
| 6 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretailnegativemean.md) | 44 | `declaration-track:1a323ef1e526424a2cbe1f5a7a240c2865c2bddd187526600319d8535cd5656a` |
| 7 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretailpairedwork.md) | 48 | `declaration-track:1d162f5bccfac756b73dcf78740bf6455b5b26d99b773b545540d75d0eef28e5` |
| 8 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefixcoefficient-eq-slice.md) | 53 | `result-track:e5148ab3bb5b237c5be6eba9043f90b7a82cc2aeea6d673716afcf14cc5ad73d` |
| 9 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefixcoefficient-summable.md) | 66 | `result-track:fd755ee3169a9fe0bd5c5058b3c15336893f88924640dafe23ce854644b2f0bc` |
| 10 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefixcoefficient-pos.md) | 74 | `result-track:fd864a6139aa9790790897747c5d7494122a6bd05fc8eea94da7d31dc9a9c888` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefixbaseline-nonneg.md) | 79 | `result-track:7af3e57f792603c6b8c90d3713de7abaccf715bf0a451234357289298c3452c3` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefixbaseline-pos.md) | 82 | `result-track:5e0d22266eb0528cf9ce2976f4e07e0ffa704c3dc51d3db6a022d4820195e4bd` |
| 13 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefix-eq-steps.md) | 88 | `result-track:da78a80b6925b39bd976e595cdcbcf92e2b25c6d5eb4236530022293346d5bbd` |
| 14 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 102 | `result-track:500f5fa6cb79001f28c14a2cb5ae4adc833899d9ad2bde27222681b8810c250f` |
| 15 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 124 | `result-track:072e18e57ba22f57641784b2e72f7d04d7acc9660946e4074ad0eb12128825fc` |
| 16 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareprefix-source-work.md) | 133 | `result-track:3ca1890e1b44e38b2a1190844fc1ebfe23b562446acfe210f7e7ffba1f0d9684` |
| 17 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretailwork-eq.md) | 165 | `result-track:96c6ce3a28abc4ab0edb57471e1ea06203f71f9b504931e2a56785e29c63ff3c` |
| 18 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretail-intervalintegrable.md) | 181 | `result-track:672059875332cfbdc28e3c6d2587f6f229bfd62ff47131b68c4a277fde8105d6` |
| 19 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 188 | `result-track:83f88b191c4a504f75c122cf266ce254b110f45b77e016961d2d344b150e5bc6` |
| 20 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareremovedpairedwork.md) | 210 | `declaration-track:0b9d486634f1a62ef534a69f20fca3605421137efcd7b3cf1959fc9e44f3c16d` |
| 21 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareremovedremainder.md) | 216 | `declaration-track:6a2e55f4691bba135a2d2c609ab7b4357ee37e0d0afbbf14616e49248a19e5c4` |
| 22 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/squareremovedpairedwork-eq.md) | 221 | `result-track:c4e7b2a54a618cc3c65150d68886d52bda5ac11513113f3282d6ab7a73603522` |
| 23 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/DraftV2BeforeSeriesOrder.lean/declarations/mertensresidual-eq-squareremoved.md) | 238 | `result-track:7e6f58f6e4b8c4fa3eebbcd8637f6bffd12fa39769ee20363d65a8a2964128b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dc53f4daad3f49ce80ef7f9d35538c1ac25901e5106a905eec3e31fa14751da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
