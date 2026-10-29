# Verification target: Source Prime Square Tail Work Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ee95b6f52f7be3499eb98919282c86420a8bcd",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7a88280909861a7abde4df702f68d188fe620b2c983552ec03f3c951457552b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ee95b6f52f7be3499eb98919282c86420a8bcd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7a88280909861a7abde4df702f68d188fe620b2c983552ec03f3c951457552b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7a88280909861a7abde4df702f68d188fe620b2c983552ec03f3c951457552b9.lean.json)

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
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefixcoefficient.md) | 27 | `declaration-track:1bd510469ab07fe683da8cd567a3141bcabb1e27745351880509570d1b8b4f76` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefixcoefficient-eq-slice.md) | 30 | `result-track:d42b345b03ab3617813d496db502addf8bc674040864a6498b70616ebccc84a5` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefixcoefficient-summable.md) | 43 | `result-track:a3398d660da688796adf6bccf5e8a428b5dc5f0b3ec8b617643f493b2c8ee7f8` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefixcoefficient-pos.md) | 51 | `result-track:75412ec0b513adb15c54d23e85250335ad5ddd205835c57ac844514e37388b98` |
| 5 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefixbaseline.md) | 57 | `declaration-track:a617964619e89faf7eea09e2d0b24a972137a5d77f7078d66e1a3e2b5c649440` |
| 6 | `def` | [squarePrefix](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefix.md) | 60 | `declaration-track:a00598eb1dabc6748e12d520f62c5db874a01071f0ee6b338308750c04f8b951` |
| 7 | `def` | [squareTail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretail.md) | 64 | `declaration-track:a677abf5f772bb8989a8592ac912827b07c96f32fff3763f8aa0aba85ba46975` |
| 8 | `def` | [squareTailWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretailwork.md) | 67 | `declaration-track:1cae0534b146fc4292325548e1f858019011ac43cb641f925d85f3a7d65a8c93` |
| 9 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretailnegativemean.md) | 71 | `declaration-track:d0e58212c30bc105784d14eb57f1946191bf066860075d4a272fe45534022e47` |
| 10 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretailpairedwork.md) | 75 | `declaration-track:0c7fcb0a19927b7bd5daa7e86a901e98c524f9d3fe7f88899b02cef55040bd62` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefixbaseline-nonneg.md) | 79 | `result-track:68f490a3635107f00daba22bfaf4a3e707eb248f40e9aa2cf81339f5423e0e35` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefixbaseline-pos.md) | 82 | `result-track:587ee09fcae90327f4be4566a8e4d9bcd9bf51d0678c66299f901cf92b1adbc1` |
| 13 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefix-eq-steps.md) | 88 | `result-track:06b87e1df7097ec7b47186519e8ea38200e5c759fb37fe9aba9ee876bf1885da` |
| 14 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 102 | `result-track:810fd7f9641e1038108c0419fb627cb77a29e8d9f0d2320ca7d4eddc95328b25` |
| 15 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 124 | `result-track:c76434034e7293d0f0f3788a2c97e3b2e265e7666714b7500cf6a7044ce1791c` |
| 16 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareprefix-source-work.md) | 133 | `result-track:585c2d4c3be418d3ae5c8773250710919f6c923251b8b55fbeb7cafc459e3499` |
| 17 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretailwork-eq.md) | 165 | `result-track:49ed0e3367023d182f6b14001836ab4a7a89681ef06bee8b9917f59e9cca78d1` |
| 18 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretail-intervalintegrable.md) | 181 | `result-track:7a1cf12f008171c3192c23bffce8ab216c57a937795777061d8f5f81854db96c` |
| 19 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 188 | `result-track:b24da0928cdbe2f32a9c21aae242fbdfc02ff8c1abe7b7572dc41adcfe0acd52` |
| 20 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareremovedpairedwork.md) | 210 | `declaration-track:560005969d8f6c1137ac81219cf94f5cca89321f44231b77ce9d1c2c60cd3007` |
| 21 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareremovedremainder.md) | 216 | `declaration-track:a571bdcc86a87915bc41f7f698d260b8989512f32de7b1fc6be95954c24dcb61` |
| 22 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/squareremovedpairedwork-eq.md) | 221 | `result-track:d035e22e4061bda0211c95cb9ecd826478f02d973eca08afa3ffb16b5387b1f7` |
| 23 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition3.lean/declarations/mertensresidual-eq-squareremoved.md) | 238 | `result-track:30bd2c44a10eb2f75fe6f7f669f4dadd110b9a4151f2f6c78eb7f07ac07db76a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0714f55bb755d78757e5a5b4ebf1f14a73d0c245cf66890e5e8cad073766c343 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7a88280909861a7abde4df702f68d188fe620b2c983552ec03f3c951457552b9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7a88280909861a7abde4df702f68d188fe620b2c983552ec03f3c951457552b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
