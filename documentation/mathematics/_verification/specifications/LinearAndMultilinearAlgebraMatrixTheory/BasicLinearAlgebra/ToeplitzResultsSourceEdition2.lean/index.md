# Verification target: Toeplitz Results Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deb51776fafd3f5f4f9044be909e298cdfd025a4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deb51776fafd3f5f4f9044be909e298cdfd025a4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.FiniteOrder` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [precomposeEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/precomposeequiv.md) | 18 | `declaration-track:c4fb2cef16dc7662185991a2b31a19829d1a1f2678a3470cc82663b6286c0c1d` |
| 2 | `theorem` | [det_rectangular_expansion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/det-rectangular-expansion.md) | 26 | `result-track:971895e9d105bc702dd5053b54391e85180ae147a88f9823ad4b27b128b2df8b` |
| 3 | `theorem` | [cauchyBinet_all_functions](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/cauchybinet-all-functions.md) | 43 | `result-track:f55f9472270503f3987c931820df45c176a83baf4f634ea5a746c6a390dc99ba` |
| 4 | `theorem` | [intermediate_product_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/intermediate-product-nonnegative.md) | 85 | `result-track:86ba9f218db799b69b3508e150b992dda532edc2c3be48f866680edf152518ad` |
| 5 | `theorem` | [nonnegativeThrough_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/nonnegativethrough-mul.md) | 110 | `result-track:8173a9ae707a8a62d410cecb4d360f332a7916f4a5455876f71f4f24172d7a26` |
| 6 | `def` | [convolution](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/convolution.md) | 133 | `declaration-track:f8eafec37cffded86f8cfff5e04abba5d7ffb76cc6d04d4ea415a88adb652aa4` |
| 7 | `theorem` | [block_convolution](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/block-convolution.md) | 137 | `result-track:1771afc7b208036f709acf9b26af0b858d56d229a24f941363cea394a71b42c6` |
| 8 | `theorem` | [PFOrder.convolution](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzResultsSourceEdition2.lean/declarations/pforder-convolution.md) | 194 | `result-track:8a325bfacac5a56fc349f7ddd1c5fefd2bc191545b60f42808d87c03989d7cd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e919d178ce091915cefa4cf761fb630b76a93ab36c2b08ca732c8bc0afba6a3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
