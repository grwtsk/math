# Verification target: Tuple Take

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56346dbf9bff523b4b4dccb6cb322a6fda7d3849",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant7d9aa244d585f5e06f2dce4b15d21e87a8ffad77c0259d7fa1df6feb7cb14e81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56346dbf9bff523b4b4dccb6cb322a6fda7d3849`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant7d9aa244d585f5e06f2dce4b15d21e87a8ffad77c0259d7fa1df6feb7cb14e81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant7d9aa244d585f5e06f2dce4b15d21e87a8ffad77c0259d7fa1df6feb7cb14e81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take.md) | 26 | `declaration-track:ca99746368e58b34ef4d4da92ab0cc1ebe815c00cf103d74685cfb9d2140b540` |
| 2 | `theorem` | [take_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-apply.md) | 30 | `result-track:0c094e4092d89187bcccf4255f2524a6d06c8a3f9290ce2d5545f786ff6d3ce9` |
| 3 | `theorem` | [take_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-zero.md) | 34 | `result-track:9ba0cac21d26a801121973cdf3ff3291b7f05e425fa9146c0e2c502fb8083f48` |
| 4 | `theorem` | [take_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-one.md) | 38 | `result-track:c40f70faec2d112093e767e654ad258221d51c02af96b94079c75e65af45c6f6` |
| 5 | `theorem` | [take_eq_init](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-eq-init.md) | 44 | `result-track:c93717e42338465d87dc1a180d8f1c1c2fd71e1cf341798a5bb314c8218cbd6e` |
| 6 | `theorem` | [take_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-eq-self.md) | 51 | `result-track:359e7cb3318170eabb9059943a4428258ccb8555b7f0c97b25e1892918e2e0c2` |
| 7 | `theorem` | [take_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-take.md) | 56 | `result-track:0192b904d5de92fb88902cccfcd6ad47a710cb79565d779300f6ae8a0ed1eaf5` |
| 8 | `theorem` | [take_init](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-init.md) | 63 | `result-track:07febb2c645ebd8d0d3adb17d95abd410987d5d695d7a7f756649d88b9f35afc` |
| 9 | `theorem` | [take_repeat](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-repeat.md) | 69 | `result-track:610e89dca6527856add794456073bc1c5334a7055a59f9e048532b7c07661eb6` |
| 10 | `theorem` | [take_succ_eq_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-succ-eq-snoc.md) | 75 | `result-track:5c3aee2ae545014680e7219f75bb98c6c979d0b0c5eaf9ef77fbfa8826bb3233` |
| 11 | `theorem` | [take_update_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-update-of-lt.md) | 90 | `result-track:0f82a420d5c6f70d6450659f5515984dec49a75df48b511a7a685eb2412d8de4` |
| 12 | `theorem` | [take_update_of_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-update-of-ge.md) | 101 | `result-track:53d2da1f864580ee641d68879ccc895a2aa887f3e3e2404cb6fdf05cace86be3` |
| 13 | `theorem` | [take_addCases_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-addcases-left.md) | 112 | `result-track:2329fe1e6545d6c6a7d9e8df372e82d9574665de6e788c0445a3e2e9f7771d79` |
| 14 | `theorem` | [take_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-append-left.md) | 121 | `result-track:c510bf7ae783918629f39ab74e135a83760d8da345ac516cc371a132a0a68b7a` |
| 15 | `theorem` | [take_addCases_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-addcases-right.md) | 127 | `result-track:a06fbb3d4b169b5e78c12be2abf6e0a1a3a00d2f9a3baab9668ab06286463ce5` |
| 16 | `theorem` | [take_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/take-append-right.md) | 138 | `result-track:cefe9b59c25924595ba1d9ee8f943c8e33f46e574cc98ad0b10b1233a4b2619b` |
| 17 | `theorem` | [ofFn_take_eq_take_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/offn-take-eq-take-offn.md) | 144 | `result-track:ece69ed4bf2fb91aafa7936b7f88873e7b63ae8ce1548ba8bf88365d29fdbb33` |
| 18 | `theorem` | [ofFn_take_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/offn-take-get.md) | 149 | `result-track:4c190ef594e7215c295dacc33d24938c82f98abce8da01c656d4e8c2b900f995` |
| 19 | `theorem` | [get_take_eq_take_get_comp_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/get-take-eq-take-get-comp-cast.md) | 154 | `result-track:70520660e03092221ff494522dd34d690ae7abc1784efcf7f39ee8ddb6e1c952` |
| 20 | `theorem` | [get_take_ofFn_eq_take_comp_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTake.lean/declarations/get-take-offn-eq-take-comp-cast.md) | 160 | `result-track:91eda7aab7299deaf4263831f703b58dcfb195adab06ca86227364c7d5b947e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6ab8e105c03de75d3047cc83858798e88310aceef0d5a0d70bff70a67b37fbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant7d9aa244d585f5e06f2dce4b15d21e87a8ffad77c0259d7fa1df6feb7cb14e81.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant7d9aa244d585f5e06f2dce4b15d21e87a8ffad77c0259d7fa1df6feb7cb14e81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
