# Verification target: NNRat Floor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f17ca0e9c938a04766a86111475713cbae6899f3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f17ca0e9c938a04766a86111475713cbae6899f3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semiring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/instance.md) | 28 | `declaration-track:8da9aafd5c4b153b06b167e582f107754a6917ee905dee7105da6062adb39418` |
| 2 | `theorem` | [floor_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/floor-coe.md) | 36 | `result-track:eccbd8911f85e5331753afab3cab8c39e806bed756b54f16ebb37043bc8584ee` |
| 3 | `theorem` | [ceil_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/ceil-coe.md) | 39 | `result-track:05cd189c680a695d7f4c3f96a332575b9b6cc80d4d962c353e536770e24e6f03` |
| 4 | `theorem` | [coe_floor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/coe-floor.md) | 42 | `result-track:e1b96c15b996adf6adfe064f95d583b154729548eb24f86b7cc59100c00aaf64` |
| 5 | `theorem` | [coe_ceil](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/coe-ceil.md) | 45 | `result-track:678611c7c966a78c31d06bb0478913a806e91557d42ed13887f95c9c02b6e470` |
| 6 | `theorem` | [floor_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/floor-def.md) | 47 | `result-track:f1d91b7b8a72583b6410f98b5514f438da4767c73a0b7d894df70d989303428f` |
| 7 | `theorem` | [floor_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/floor-cast.md) | 55 | `result-track:1e8011cda27c07e3fabc113d9677f04a3fa18088b22dd39c0b8f6ce6a418ab60` |
| 8 | `theorem` | [ceil_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/ceil-cast.md) | 59 | `result-track:7f3827faa7d5cd2c1025c5b23bced4ea84d31754bc1a0bbbbc846b302934a17d` |
| 9 | `theorem` | [intFloor_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/intfloor-cast.md) | 71 | `result-track:6672afec7ef486598da9dcf9393a1cb8a7547fbf8bef79f527060d78e4cb33fc` |
| 10 | `theorem` | [intCeil_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/intceil-cast.md) | 78 | `result-track:a2a4a403c6d246e81411d53e867592e7a808d2cc4fafed8902f009330588b14a` |
| 11 | `theorem` | [floor_natCast_div_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatFloor.lean/declarations/floor-natcast-div-natcast.md) | 91 | `result-track:ca52976577f69bd18a1864ad586a64e5a6d711767be2326d4d30578addc143c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a52a9a8d590f0168f09e0af6d21e0c95e0b7bd51e10ad8977788c1108bab4cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
