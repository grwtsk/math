# Verification target: GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f078084b847240554202d16fee68d2fe0986411",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/TensorProduct/FourPairedShuffle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f078084b847240554202d16fee68d2fe0986411`.

Source path: `GRWTSK/LinearAlgebra/TensorProduct/FourPairedShuffle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/TensorProduct/FourPairedShuffle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/pair.md) | 17 | `declaration-track:87b9dc6bddfdbb03caaa8ddbd77bb308bb99ec56dfba9c406e2044fe0db72edf` |
| 2 | `abbrev` | [Two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/two.md) | 18 | `declaration-track:5a9cfcf1302f48b32389588a22a01d60c0b8115f56e436567b6bd5467247236f` |
| 3 | `abbrev` | [Three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/three.md) | 19 | `declaration-track:f5ba025d0da18042431d95951cf986c0d8e9525bf0a455594fb587597321fa2c` |
| 4 | `abbrev` | [Four](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/four.md) | 20 | `declaration-track:b71c2182603c45072482f967c214cf70c6c8d0272c280e5ba54151f195d65b77` |
| 5 | `abbrev` | [TwoEntries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/twoentries.md) | 22 | `declaration-track:f2aa9b30b6271f7be9cdafd6457aabbefad1655dcdc2fb54103bc5f58ecfc974` |
| 6 | `abbrev` | [ThreeEntries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/threeentries.md) | 23 | `declaration-track:5f087d38eb0fe8988c70c3c955937fcd700411b40cc79bf9c78f81cef82685f6` |
| 7 | `abbrev` | [FourEntries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/fourentries.md) | 24 | `declaration-track:ec18c038bb8befcaca6ffd563a2d20b54069eed60aa72bd791e038ecf91852f3` |
| 8 | `def` | [shuffleTwo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/shuffletwo.md) | 27 | `declaration-track:0850550a30f0eec200b91dee6540ba3ddd5c82a62cf9af5523af5c2cace6ce78` |
| 9 | `def` | [shuffleThree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/shufflethree.md) | 32 | `declaration-track:8f2e1cc9dd41e58123550295464f908a3778ec8b624f0fa8e896639a69757806` |
| 10 | `def` | [shuffleFour](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/shufflefour.md) | 41 | `declaration-track:cf20992018257582626569d050c58f6810000dfe52038596bca1ceef57d3d455` |
| 11 | `def` | [pairedPure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/pairedpure.md) | 48 | `declaration-track:7b3a7560d3d851eb3780e9b2104fa1707f3e48ff5a6ae797c87acce8400b40e3` |
| 12 | `def` | [separatedPure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/separatedpure.md) | 52 | `declaration-track:97dbe4254610ee1d41548c831904ed808bd6a2b1eef9551c99244c249bca0da4` |
| 13 | `theorem` | [shuffleFour_pairedPure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/shufflefour-pairedpure.md) | 58 | `result-track:cedbe556c435d6abc79acd2a6630ab7d77b90a4810a4b0d740acbbad60c4b0bd` |
| 14 | `theorem` | [shuffleFour_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FourPairedShuffle.lean/declarations/shufflefour-unique.md) | 66 | `result-track:13abb47a62b131f5e64ba8b12a72aec4cf2835606e6f00ce907919664e8a5435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c156d6c5c95e4f992bc3e57a320705868354374b7555a7c2152e2bfb237a9cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/TensorProduct/FourPairedShuffle.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
