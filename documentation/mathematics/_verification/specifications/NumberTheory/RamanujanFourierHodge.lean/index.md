# Verification target: GRWTSK.NumberTheory.Farey.RamanujanFourierHodge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "037aff7a049b39fbaf60ca5de44b716e11004d8e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/RamanujanFourierHodge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/RamanujanFourierHodge.lean/index.md) · [Full source](../../../../NumberTheory/RamanujanFourierHodge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `037aff7a049b39fbaf60ca5de44b716e11004d8e`.

Source path: `GRWTSK/NumberTheory/Farey/RamanujanFourierHodge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/RamanujanFourierHodge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.CyclicResidueHodge`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicResidueHodge.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [additiveMode](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/additivemode.md) | 38 | `declaration-track:50e849d5d28024e63c077590957ac790635b322f1ac49eaa6347f1cd4b0a67af` |
| 2 | `theorem` | [additiveMode_shift](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/additivemode-shift.md) | 43 | `result-track:61e5eb28c533cce97d23b87b50ff46626009008b5d33ab318faee479421044f8` |
| 3 | `theorem` | [additiveMode_shift_back](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/additivemode-shift-back.md) | 52 | `result-track:ff4d9056cba2e14f5a7ca125fe2c03bd5d95ae4964468872d568879dd97f4583` |
| 4 | `def` | [cyclicDifference](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/cyclicdifference.md) | 61 | `declaration-track:2bf18438d7933dcb408332b1dc6938ae154ba2cf9d862f6606fa2e1757694d3e` |
| 5 | `def` | [cyclicDifferenceStar](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/cyclicdifferencestar.md) | 66 | `declaration-track:04c9eecbf5582d2eeb6264b6a35df1ed862cc7d85736af68dc454b8f45ab92e5` |
| 6 | `def` | [cyclicComplexLaplacian](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/cycliccomplexlaplacian.md) | 71 | `declaration-track:d87f267487acdbc6e9e27c9561ccd4a38fe04bf1016a79db0255ee754a777935` |
| 7 | `theorem` | [cyclicDifferenceStar_difference_eq_laplacian](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/cyclicdifferencestar-difference-eq-laplacian.md) | 76 | `result-track:3ef1aeeede247786447ca6b6e65d0be3619f80231e628e1fd25a67b8385f8437` |
| 8 | `theorem` | [additiveMode_laplacian_eigen](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/additivemode-laplacian-eigen.md) | 87 | `result-track:21646a13a4ff0cad85e083eb3e615cc77e7a6ea0b92df5e3d93ac186afbe5406` |
| 9 | `def` | [primitiveRamanujanSum](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/primitiveramanujansum.md) | 97 | `declaration-track:0feaffed9aa5428b7ad3fd00b9498750fc8e5a5195e8471c202069f60e56cd6a` |
| 10 | `def` | [nonprimitiveFrequencySum](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/nonprimitivefrequencysum.md) | 104 | `declaration-track:2a5735b4b853427b5f0281750b9fcc624cd6ffb25946da55d48e9bed66494951` |
| 11 | `theorem` | [fullFrequency_eq_primitive_add_nonprimitive](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/fullfrequency-eq-primitive-add-nonprimitive.md) | 112 | `result-track:6639b2ea72438addcbf6565a1a35d211d11d75207f0d7b0e78a849e825e9a7af` |
| 12 | `theorem` | [characterAverage_primitive_nonprimitive](../../../../NumberTheory/RamanujanFourierHodge.lean/declarations/characteraverage-primitive-nonprimitive.md) | 125 | `result-track:01c97c245d6af9c0c35b47dbb372919d5601ad3c51eb8b709bb21c2646e9e3e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4218f9feb24f0304e62516db0c13f270ffbee0287b29b42bd606b58a2e0ae3d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Farey/RamanujanFourierHodge.lean","GRWTSK/_verification/specifications/NumberTheory/Farey/RamanujanFourierHodge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
