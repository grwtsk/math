# Verification target: Supported

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "427aed843e47526ffaf6c1949d7c34a093493109",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `427aed843e47526ffaf6c1949d7c34a093493109`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Variables` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [supported](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported.md) | 36 | `declaration-track:71020ba9f906a3fe20c8b8879d90433b80567d7b11123ff7e579da42c40da1b7` |
| 2 | `theorem` | [supported_eq_range_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-eq-range-rename.md) | 41 | `result-track:30118099bb5562e148c34a3230c5316bd2429b733a6191ce8a7bbd53db39e17b` |
| 3 | `def` | [supportedEquivMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supportedequivmvpolynomial.md) | 47 | `declaration-track:e87d738a8714a6141e013f7e4cc1d15ea591cbd2bd89518ae7483f133053bd59` |
| 4 | `theorem` | [supportedEquivMvPolynomial_symm_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supportedequivmvpolynomial-symm-c.md) | 52 | `result-track:a2264c7892dbd44e513369696c953cc4860717c651d530a512c3bef099aa1c44` |
| 5 | `theorem` | [supportedEquivMvPolynomial_symm_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supportedequivmvpolynomial-symm-x.md) | 58 | `result-track:a450234c8dc50adca4715e8f18efeee8f8e6569e6a8399bfb02dfa05849406b0` |
| 6 | `theorem` | [mem_supported](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/mem-supported.md) | 64 | `result-track:eddddb0e8cbd65371788766b6e39c014154f83266156cf19d7bb00239e14c550` |
| 7 | `theorem` | [supported_eq_vars_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-eq-vars-subset.md) | 74 | `result-track:3a481406cfe48300ba7644b1e457d4557dd3370c76ff861f43bd323edfbab719` |
| 8 | `theorem` | [mem_supported_vars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/mem-supported-vars.md) | 78 | `result-track:d3e63642e98858e291f01153133ca17591083ab19dea13154991b1fb3b33a290` |
| 9 | `theorem` | [supported_eq_adjoin_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-eq-adjoin-x.md) | 83 | `result-track:4f57a382156f07f928e6eca5eab5d8c2e887ee019f646640639ebf5394145e4d` |
| 10 | `theorem` | [supported_univ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-univ.md) | 86 | `result-track:64526cbcddc61619f908f82d8f96659ca1aaceeabaf582835de370f41e2e528d` |
| 11 | `theorem` | [supported_empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-empty.md) | 90 | `result-track:87b9960d714439ae3de2f528c5c1186b39056f6d97f8a22e3ac76717cf2dda9f` |
| 12 | `theorem` | [supported_mono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-mono.md) | 94 | `result-track:f48d7185a3b6cc794f16dd807163d758a8810025bd4419270fbc99675ee64fce` |
| 13 | `theorem` | [X_mem_supported](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/x-mem-supported.md) | 98 | `result-track:11539534b81ea328f26c95746f1295b1be3637093ee42d82d4ac3a87a1363ba4` |
| 14 | `theorem` | [supported_le_supported_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-le-supported-iff.md) | 102 | `result-track:d045fa0b42111fe5b9d0d328d2e15f235481ce7ec0d22314632bf8361747e475` |
| 15 | `theorem` | [supported_strictMono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/supported-strictmono.md) | 108 | `result-track:44ff2f31d080d60c645bb73e94c199da1eeed42a64f108bbbfe6a512dfa3d7c7` |
| 16 | `theorem` | [exists_restrict_to_vars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Supported.lean/declarations/exists-restrict-to-vars.md) | 112 | `result-track:9fb5b6ad88296bc32912bf336370baf2c3601ff00bd71c1488b6adae1d3ff03b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a72f96ee38902cf1573ae5b9a949e025eeb1de5f6c82b5691e2c2e375f572f2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
