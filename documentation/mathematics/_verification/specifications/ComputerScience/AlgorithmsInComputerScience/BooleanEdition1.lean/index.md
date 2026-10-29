# Verification target: Boolean Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "802ea3e8de001208475c11e745d09568e54eaa86",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant0689f5e386340a7379130300140ddfcf0117c3a1aa6f5862c8df55cbad1352bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `802ea3e8de001208475c11e745d09568e54eaa86`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant0689f5e386340a7379130300140ddfcf0117c3a1aa6f5862c8df55cbad1352bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant0689f5e386340a7379130300140ddfcf0117c3a1aa6f5862c8df55cbad1352bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Bridge` — import line 1; external provider; requires a separately pinned dependency.
- `Number.Mobius` — import line 2; external provider; requires a separately pinned dependency.
- `Boolean.Cube.SpectralDeterminantBoundary` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanShadowPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/booleanshadowpayload.md) | 29 | `declaration-track:b94075666d6b4582fa36a5a19e8555e5b349225ce3bd8d10ef7f6d17347b83a6` |
| 2 | `def` | [BooleanShadowPayload.toArithmeticPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/booleanshadowpayload-toarithmeticpayload.md) | 39 | `declaration-track:f4ff23e57a3729d93e23752d0172d05fae72edda3095b60af969c70e1d4fa54b` |
| 3 | `theorem` | [toArithmeticPayload_weight](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/toarithmeticpayload-weight.md) | 50 | `result-track:ba7fd7083c647980a2d2241282166e5d4807713578fd3003d9ba047f269f827f` |
| 4 | `theorem` | [toArithmeticPayload_support](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/toarithmeticpayload-support.md) | 55 | `result-track:4d95d8c2af64738ee8be2a6022eee73f25d758c69b6f7e44d0523923b541f771` |
| 5 | `theorem` | [toArithmeticPayload_finiteSound](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/toarithmeticpayload-finitesound.md) | 60 | `result-track:587139118ee6c26a4a3acaf928e0be04c49b42c4ebfd95a400c2ce09fe0c6abe` |
| 6 | `def` | [ofBoundaryReport](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/ofboundaryreport.md) | 71 | `declaration-track:049f2b09735b39e1ffe91861a83ed607f18684850650531978515296646dd887` |
| 7 | `structure` | [BooleanToNumberBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/booleantonumberbridge.md) | 83 | `declaration-track:b44a097ee356b1761b5aab3fd432f2c32ceeb4c8d10cecc571cdd536311a7eb2` |
| 8 | `def` | [BooleanToNumberBridge.canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/booleantonumberbridge-canonical.md) | 92 | `declaration-track:a3a9c45553c3202f1362e93ad5c6ea263b7ce4270927a8478fdb5ecac23ee576` |
| 9 | `theorem` | [boolean_to_number_interpretation_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/boolean-to-number-interpretation-sound.md) | 101 | `result-track:005ec46808beb6d857af8f2270c69d95d4b9e38ffa4875bfd79148637556013e` |
| 10 | `theorem` | [boolean_to_number_finite_data_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/boolean-to-number-finite-data-preserved.md) | 106 | `result-track:309fc3c565e36f8be0025c80826bacdd661f56f086384c5d71c96f0b9643ff3d` |
| 11 | `def` | [BooleanShadowOwnsArithmeticSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/booleanshadowownsarithmeticsemantics.md) | 112 | `declaration-track:672bddbf874beda0974d5a3c97f9f760dbe358fb883d1e2ffb40fc5a0ec624ac` |
| 12 | `def` | [BooleanShadowOwnsAnalyticNumberAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/booleanshadowownsanalyticnumberauthority.md) | 117 | `declaration-track:7a539cac6c50aaba33712b2626c6ca8b1799b9154bc12d40f0292a1e0ed67c57` |
| 13 | `theorem` | [boolean_shadow_not_arithmetic_semantics](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/boolean-shadow-not-arithmetic-semantics.md) | 121 | `result-track:eb969024023639e4becfa7126c7a018363cacaf184514b8d2388e77e41db425e` |
| 14 | `theorem` | [boolean_shadow_not_analytic_number_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/boolean-shadow-not-analytic-number-authority.md) | 127 | `result-track:41d9a11fa3f65c426ae8199c5557afd9de157ed0262eb70dac75b7647fb31942` |
| 15 | `theorem` | [boolean_to_number_boundary_summary](../../../../../ComputerScience/AlgorithmsInComputerScience/BooleanEdition1.lean/declarations/boolean-to-number-boundary-summary.md) | 139 | `result-track:72a83f421095dcbef4d686e4d40d1f353d3a664ef9e08446f1da24a5ca898488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff9eed83fb049f8a79f97f326eb4c1961682e4f2c9fcfbea2aa2494370fc8c15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant0689f5e386340a7379130300140ddfcf0117c3a1aa6f5862c8df55cbad1352bc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant0689f5e386340a7379130300140ddfcf0117c3a1aa6f5862c8df55cbad1352bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
