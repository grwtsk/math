# Verification target: Uniform Limits Deriv Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/UniformLimitsDerivAligned.lean/index.md) · [Full source](../../../../RealFunctions/UniformLimitsDerivAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.IsROrC` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Curry` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniformCauchySeqOnFilter_of_fderiv](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/uniformcauchyseqonfilter-of-fderiv.md) | 112 | `result-track:2e62a860ce5e2945f8e708676c3fd9d8002428ff0d23e2dd7068868a1d371102` |
| 2 | `theorem` | [uniformCauchySeqOn_ball_of_fderiv](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/uniformcauchyseqon-ball-of-fderiv.md) | 176 | `result-track:37e49e21fb5f73c193a59622a7b0e86fc9a11a01bff10e5e443b035f3536323e` |
| 3 | `theorem` | [cauchy_map_of_uniformCauchySeqOn_fderiv](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/cauchy-map-of-uniformcauchyseqon-fderiv.md) | 228 | `result-track:ad2cab82c52833723b7ecb98a49acedee0e218ee586bf83b520b26d670dcf08a` |
| 4 | `theorem` | [difference_quotients_converge_uniformly](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/difference-quotients-converge-uniformly.md) | 259 | `result-track:13a1f9456204dddbd0b8dbd4d45a179c77092f4135635ce0556809a44bb1dbae` |
| 5 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOnFilter](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasfderivat-of-tendstouniformlyonfilter.md) | 309 | `result-track:b54cd94d9aa8b00ada6780ad9a75022b1cb5909ff3d162090b0b9f4dffacc4ab` |
| 6 | `theorem` | [hasFDerivAt_of_tendstoLocallyUniformlyOn](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasfderivat-of-tendstolocallyuniformlyon.md) | 398 | `result-track:64d82cfa3e7c6ea204f5aa67c8d6a9f3824644d92650037593da8696e6ad8cd8` |
| 7 | `theorem` | [hasFDerivAt_of_tendsto_locally_uniformly_on'](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasfderivat-of-tendsto-locally-uniformly-on.md) | 413 | `result-track:fa7e5d3d4cdf654056ac7bdda76a623bd6acf83e27cfec196e0b3d461b8075ee` |
| 8 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOn](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasfderivat-of-tendstouniformlyon.md) | 423 | `result-track:2f7d8c6610b54769b548a06318bafb3a99d0c37515ecdb10c3b049236c7f9e89` |
| 9 | `theorem` | [hasFDerivAt_of_tendstoUniformly](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasfderivat-of-tendstouniformly.md) | 433 | `result-track:43f40b4e724513a64e0f77e3e11a333b23b0215c6aad0ecf12b9c0e69c3a744f` |
| 10 | `theorem` | [UniformCauchySeqOnFilter.one_smulRight](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/uniformcauchyseqonfilter-one-smulright.md) | 457 | `result-track:11bae08822026163490fda8ec84739fa74aadb24c43930797bd5aba3bca19f6e` |
| 11 | `theorem` | [uniformCauchySeqOnFilter_of_deriv](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/uniformcauchyseqonfilter-of-deriv.md) | 479 | `result-track:9172eb9334fb7fdf300ff4d57d595e040e4545e9da0c76300a17a9b0fe2960c0` |
| 12 | `theorem` | [uniformCauchySeqOn_ball_of_deriv](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/uniformcauchyseqon-ball-of-deriv.md) | 486 | `result-track:368bbd104d460eaf1c4e559896393b8af6b0f20578022d08072a2312989fbf8a` |
| 13 | `theorem` | [hasDerivAt_of_tendstoUniformlyOnFilter](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasderivat-of-tendstouniformlyonfilter.md) | 499 | `result-track:4ec9a0b3c3214574682bf201a23a7d9775f82dbf17cad6b468f35005bd0c6bba` |
| 14 | `theorem` | [hasDerivAt_of_tendstoLocallyUniformlyOn](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasderivat-of-tendstolocallyuniformlyon.md) | 528 | `result-track:be5c22a84fd25db567f8e4cea90089a5f8e7753448aff86edf2b5205cae07b51` |
| 15 | `theorem` | [hasDerivAt_of_tendsto_locally_uniformly_on'](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasderivat-of-tendsto-locally-uniformly-on.md) | 542 | `result-track:7136799f9eed0be6312b3a71e14dd24e13eb28b7a4027292e7bdd69ca637010d` |
| 16 | `theorem` | [hasDerivAt_of_tendstoUniformlyOn](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasderivat-of-tendstouniformlyon.md) | 550 | `result-track:08b40131896c255e8ceeda5e2d1ed9fadc424225f53fa1c6bb5b3d72fb32b787` |
| 17 | `theorem` | [hasDerivAt_of_tendstoUniformly](../../../../RealFunctions/UniformLimitsDerivAligned.lean/declarations/hasderivat-of-tendstouniformly.md) | 558 | `result-track:149dd511228bdce9bc62b007f9b4a842f6a8c7fd7a5d4bf20886b3f811a93686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6478bb798304127773c49c055a84da7ac84591d5936519a1d37ba8603458dd5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
