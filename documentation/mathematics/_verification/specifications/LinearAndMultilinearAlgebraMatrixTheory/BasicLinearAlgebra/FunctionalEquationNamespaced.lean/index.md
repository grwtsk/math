# Verification target: Functional Equation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "088c6c73364713d12ee81d87daea1821b5bd49db",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf5e3592abef9d5f7f9b2618c30b988eea539d5dd90e32d05ef1e151127103405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `088c6c73364713d12ee81d87daea1821b5bd49db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf5e3592abef9d5f7f9b2618c30b988eea539d5dd90e32d05ef1e151127103405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf5e3592abef9d5f7f9b2618c30b988eea539d5dd90e32d05ef1e151127103405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.GammaSpindle` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterSheetFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/charactersheetflip.md) | 38 | `declaration-track:91c21c66e4251d34f1b4e1d51ec5f3b7f653f67eef2bb09f60191af8f58f74a1` |
| 2 | `theorem` | [characterSheetFlip_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/charactersheetflip-involutive.md) | 41 | `result-track:a1eb4bd3d283e241c823ac4b47d6d31cc807a6b4de3f3f445b66966854fcc28f` |
| 3 | `def` | [spindleSpinSign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/spindlespinsign.md) | 46 | `declaration-track:0f94d4ac35e5b929ffbf9ff75aa3ba20c97e992c11a4d01a04be9da20c7bf1f1` |
| 4 | `theorem` | [spindleSpinSign_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/spindlespinsign-norm.md) | 50 | `result-track:479f967bd538727fe86647551828332b20b96f75dc95bb13cd8f164215f39aaa` |
| 5 | `theorem` | [spindleSpinSign_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/spindlespinsign-conj.md) | 55 | `result-track:1b36271b08f807e60254961ef787449f75f7aa31b7ba13473316bd877ed6e528` |
| 6 | `theorem` | [spindleSpinSign_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/spindlespinsign-sq.md) | 60 | `result-track:9debb84586f95bf6ce6261fba773f04f0e2b1237448ce306ed48cb77b64c1e83` |
| 7 | `structure` | [FunctionalEquationDatum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationdatum.md) | 65 | `declaration-track:6ace5e212060841f325b26ca6ed66998c9216334222e9b87cf6a216f43174d52` |
| 8 | `abbrev` | [OrbitHilbert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/orbithilbert.md) | 80 | `declaration-track:1482d7b35bae0e37868cbc85e7dba17f157f05c85b24dd8a202076d92b70bfcd` |
| 9 | `def` | [coordinateReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/coordinatereflection.md) | 84 | `declaration-track:7e7827291aa5ca37f2dc0dbf98df918bd4eab0873d9f3eb98c8edfdd3de4af16` |
| 10 | `theorem` | [coordinateReflection_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/coordinatereflection-apply.md) | 91 | `result-track:f11320b67c5323905c635a95e61ab42c6cf0726f0e6b2d039cc563121feb5582` |
| 11 | `theorem` | [coordinateReflection_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/coordinatereflection-involutive.md) | 101 | `result-track:61af39842022892b3811de577986b336dc66555a0d4697f737736fc7de73cd6b` |
| 12 | `theorem` | [rootNumber_mul_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/rootnumber-mul-conj.md) | 109 | `result-track:0f917b51141b0d012750b797147c4d071ca499393dfa4114830881b99891fb17` |
| 13 | `def` | [functionalEquationRealStructure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure.md) | 120 | `declaration-track:f08a893a4903b1992ff40452797bc64b0db785ee128a6676675183cb263fb31a` |
| 14 | `theorem` | [functionalEquationRealStructure_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure-apply.md) | 128 | `result-track:d1f68abc5d4597b6d82c9f0685f6d2ffbbfaba97454752227c81dbdf4cdccdaa` |
| 15 | `theorem` | [functionalEquationRealStructure_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure-add.md) | 137 | `result-track:977428fa8de2c8f41291f0a9ffa200b314f1158d2356eba5b8edb989917cb76c` |
| 16 | `theorem` | [functionalEquationRealStructure_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure-smul.md) | 146 | `result-track:0f7393ff57ce3b5f956ce7da141a6b066e4e2570fee022fde4282c018759adf3` |
| 17 | `theorem` | [functionalEquationRealStructure_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure-norm.md) | 155 | `result-track:e62353204e73dcd5650ed1a426b2a809185584e48dade5696076fed19e79e369` |
| 18 | `theorem` | [functionalEquationRealStructure_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure-involutive.md) | 170 | `result-track:4cc46b8fdcf4e406850466860fdbd1d9f70ddc055a2f8a76f55ddb7a0db9be5a` |
| 19 | `structure` | [IsFiniteAntiunitary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/isfiniteantiunitary.md) | 185 | `declaration-track:14a15a06acde1ff05c35b4db89555d39267dafa8bb08db421c3ebdff0b4a3256` |
| 20 | `theorem` | [functionalEquationRealStructure_antiunitary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure-antiunitary.md) | 194 | `result-track:a4d8fd8c21ad01bf0eedc3cbec1ea9f47e6081528c9297af008514123f23b7b6` |
| 21 | `def` | [orbitGammaAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/orbitgammaaction.md) | 205 | `declaration-track:8ea82fe3da51525da7299b24851d4a6a1ff2ec842e58846c490b663dda615879` |
| 22 | `theorem` | [functionalEquationRealStructure_intertwines](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FunctionalEquationNamespaced.lean/declarations/functionalequationrealstructure-intertwines.md) | 216 | `result-track:2f4819054d4da547a29cb5bd5780f278278300100478ba6980ebb4e2576cf528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de6b28a86b4cda9b7e42b716960916dc3cf051dd883224db38c295c1d8420feb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf5e3592abef9d5f7f9b2618c30b988eea539d5dd90e32d05ef1e151127103405.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf5e3592abef9d5f7f9b2618c30b988eea539d5dd90e32d05ef1e151127103405.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
