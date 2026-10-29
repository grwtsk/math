# Verification target: Source Prime Square Tail Work Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0a9724cd2b205c16598736ae9f32b59a5bd5f23",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant0b092a6f174524a2cffc1d7515dc760cfc77cc32a957b46bf6b4877799f8b1ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0a9724cd2b205c16598736ae9f32b59a5bd5f23`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant0b092a6f174524a2cffc1d7515dc760cfc77cc32a957b46bf6b4877799f8b1ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant0b092a6f174524a2cffc1d7515dc760cfc77cc32a957b46bf6b4877799f8b1ce.lean.json)

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
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefixcoefficient.md) | 35 | `declaration-track:eef7c68b8c12c0f752733bc77640d118f290950d12b20324f26595e5110a92e8` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefixcoefficient-eq-slice.md) | 38 | `result-track:1c177c33b7159e2abc1e117e2298585679f1f9c78d6b91669eefedf05fe1520d` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefixcoefficient-summable.md) | 51 | `result-track:c2f284582cd59a517f5a86292b9cb19a40c8d390e64229075d2fc01a710e204c` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefixcoefficient-pos.md) | 59 | `result-track:d3c30cdb9e1406845727c1b22e1178f0e59318cf84c0fdca89dc9e89366745bb` |
| 5 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefixbaseline.md) | 65 | `declaration-track:ee1f361b2455d9cc09be86b8ad015f6a34063444df4a3f278c977b39a1672d7b` |
| 6 | `def` | [squarePrefix](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefix.md) | 68 | `declaration-track:0b6c47399d7b1f91ccbb90a192c6872c7e0e1cc5df774891fb65fa8ba6c721fd` |
| 7 | `def` | [squareTail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretail.md) | 72 | `declaration-track:b769376c8eae20cf86060a37ef9b6665ef2e96abe5085d0007ac6ae16391cb83` |
| 8 | `def` | [squareTailWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretailwork.md) | 75 | `declaration-track:3caa3b1438dd13396f0f0613ea41ff40cac1618ba4a50298c175548ca2cde1b7` |
| 9 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretailnegativemean.md) | 79 | `declaration-track:687709da25c51603b65bcaad4067ddf5870087ccc48c1ec671d4962eb04052e4` |
| 10 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretailpairedwork.md) | 83 | `declaration-track:0f3a4a0f3cf0f726127f2123921275008e7c4ce07b4134b8ea99e1a10714fc82` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefixbaseline-nonneg.md) | 87 | `result-track:554c0816b4fc4a89a0025d5cd7e9f4e622998443bfe5647295d379ae3812fef4` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefixbaseline-pos.md) | 90 | `result-track:77f73fb5699d75ab0ff091db121f21de1a6ea0dd33d222b9e776639e2aa9cf7c` |
| 13 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefix-eq-steps.md) | 96 | `result-track:30e678856757b01eb0943af7563d102dc10a43322de78f47b0b379713b3760a4` |
| 14 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 110 | `result-track:a0ca6fe441050111f5bf1824a0a141c34bd4f16a2068e15f5e10dbd102c4f41f` |
| 15 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 133 | `result-track:226525745c7815bab77fa7b566ff9fe3513684626a74d3db85d5f9ce793c9894` |
| 16 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareprefix-source-work.md) | 142 | `result-track:627f333d2eb5423fe7bda8dc2a9a7cdac8f01a2bab9bf1c8561574d238eeba8a` |
| 17 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretailwork-eq.md) | 175 | `result-track:8701ea6a964dcd473b1e07d04c57b67addb82e96d0314b05fc082e1023492354` |
| 18 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretail-intervalintegrable.md) | 191 | `result-track:88792154ccbec35396b68d43d20e01719bfbef53ac21e8d849aef14a5f5aa486` |
| 19 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 198 | `result-track:fd7937b2ec85d81e6df884d3b71668f03d01f1577a9dbb7b795479591b58fd4a` |
| 20 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareremovedpairedwork.md) | 221 | `declaration-track:89fa0371bc7ccf7827ccb6fe0c07132e962d8138be036bd84178aa3ce1b22066` |
| 21 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareremovedremainder.md) | 227 | `declaration-track:3bf77372a3519e85de436eadde1727767e1d2708fc611a7ec3718f3d9c67281c` |
| 22 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/squareremovedpairedwork-eq.md) | 232 | `result-track:8a62186b061fa3e1599136d68b4b352995dd2a9fac11ef98371692b3d18d2c17` |
| 23 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkNamespacedEdition2.lean/declarations/mertensresidual-eq-squareremoved.md) | 249 | `result-track:b02a7381d9960f4c75b99d97e167f7b2d63f14fbc48d1df70b186fadf196a788` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f99bcc06ea731206b4f456afe52ee5da178ada173784b3e52a6b1969a3d855f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant0b092a6f174524a2cffc1d7515dc760cfc77cc32a957b46bf6b4877799f8b1ce.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant0b092a6f174524a2cffc1d7515dc760cfc77cc32a957b46bf6b4877799f8b1ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
