# Verification target: Digits Series Membership And Injectivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73bf7ff85ea5ef7877d185a6225e64ba7a121513",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/SequencesAndSeries/DesignatedCantorSeries/Variantf2a95bce9390a5c2/DigitsSeriesMembershipAndInjectivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/index.md) · [Full source](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73bf7ff85ea5ef7877d185a6225e64ba7a121513`.

Source path: `GRWTSK/Analysis/RealAnalysis/SequencesAndSeries/DesignatedCantorSeries/Variantf2a95bce9390a5c2/DigitsSeriesMembershipAndInjectivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/SequencesAndSeries/DesignatedCantorSeries/Variantf2a95bce9390a5c2/DigitsSeriesMembershipAndInjectivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.CantorSet` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [designatedTernaryExpansion](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/declarations/designatedternaryexpansion.md) | 36 | `declaration-track:9841889c8c3f5018d40f2ef4c0afba8739983290b18d3d943b368dffe5d04539` |
| 2 | `theorem` | [designatedTernaryExpansion_ne_one](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/declarations/designatedternaryexpansion-ne-one.md) | 40 | `result-track:7b808bc6dde752125f4de8a9a18c2ac5aa1c244e11af08a6f7931ba46c8c9f82` |
| 3 | `theorem` | [designatedTernaryExpansion_value](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/declarations/designatedternaryexpansion-value.md) | 46 | `result-track:6fdccbc156805ebef0ddaaace18e324561986b2425bd96971145482a9e213c3f` |
| 4 | `def` | [designatedCantorScalar](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/declarations/designatedcantorscalar.md) | 54 | `declaration-track:a93ce53e03a1e1de45929962f2db8a3fa2185621874e326582bbf1231191b221` |
| 5 | `theorem` | [designatedCantorScalar_series](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/declarations/designatedcantorscalar-series.md) | 58 | `result-track:1a64fb7ddab90f889eaddb3d82baac681a7840a5a9ba810cb519df0790d3c278` |
| 6 | `theorem` | [designatedCantorScalar_mem_cantorSet](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/declarations/designatedcantorscalar-mem-cantorset.md) | 69 | `result-track:465c44759b47c867678c54626c6ab30785beabd971b87825a36296844dea891a` |
| 7 | `theorem` | [designatedCantorScalar_injective](../../../../RealFunctions/DigitsSeriesMembershipAndInjectivity.lean/declarations/designatedcantorscalar-injective.md) | 75 | `result-track:9747e92b15aaa1721f5655bbab46dd32d5ba24d3a2b2b46d777ad6b4a2cf5bf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e994f6a2a14954a4c73fbdd6b5775bfb378349f33f7606486916c817c93adb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/SequencesAndSeries/DesignatedCantorSeries/Variantf2a95bce9390a5c2/DigitsSeriesMembershipAndInjectivity.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/SequencesAndSeries/DesignatedCantorSeries/Variantf2a95bce9390a5c2/DigitsSeriesMembershipAndInjectivity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
