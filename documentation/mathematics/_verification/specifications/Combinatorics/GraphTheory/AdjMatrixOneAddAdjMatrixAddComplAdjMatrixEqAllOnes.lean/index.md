# Verification target: Adj Matrix One Add Adj Matrix Add Compl Adj Matrix Eq All Ones

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aeb247706fd7f50349e37ed551a0ca14b39044d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aeb247706fd7f50349e37ed551a0ca14b39044d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.WalkCounting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/isadjmatrix.md) | 50 | `declaration-track:87b216e1a4cf0ddd700c002d3472864afcda7f43b6ba967730f34a3df9bcdee0` |
| 2 | `theorem` | [apply_diag_ne](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/apply-diag-ne.md) | 60 | `result-track:5b0ee6ebba028a916da85986d506a93feb063597ba2d688da0039b5c72672b53` |
| 3 | `theorem` | [apply_ne_one_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/apply-ne-one-iff.md) | 64 | `result-track:b280e2419b617d427974808d161e6445c6e63497752cdcf58bf8b2d3126dcce3` |
| 4 | `theorem` | [apply_ne_zero_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/apply-ne-zero-iff.md) | 68 | `result-track:f3856e87f3791182ba45b45d3647f86dd734d297b308d9f2a05fb583d13f26b8` |
| 5 | `def` | [toGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/tograph.md) | 74 | `declaration-track:cb729c6fd10b1935289206ec9d09824cca7ee85f3ef3b91929dd2a1c8856a65d` |
| 6 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/instance.md) | 79 | `declaration-track:01cfdd8b6388b74c3b08228450f15445eba45b8ee4c458bae4bba5adcab2bae6` |
| 7 | `def` | [compl](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/compl-source-edition-2.md) | 88 | `declaration-track:a510dbc49c2323f772d1eff7fa7a85f4226f347c9ffd917a7c9d7c155575e208` |
| 8 | `theorem` | [compl_apply_diag](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/compl-apply-diag.md) | 96 | `result-track:1e9f646d37482f190c8f6c1a220e4f4a9b2683888ab7cb33abb132431c7ffdc9` |
| 9 | `theorem` | [compl_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/compl-apply.md) | 99 | `result-track:744f375a4dfa7a3cf6d97571bd9c6cf870bd602b6f24e5b91bf35e8d54128c94` |
| 10 | `theorem` | [isSymm_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/issymm-compl.md) | 104 | `result-track:ba7dfeaffeefde3c071bd032612d6f3cf648fe1a43f1956a0d89f2b159c26481` |
| 11 | `theorem` | [isAdjMatrix_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/isadjmatrix-compl.md) | 109 | `result-track:9533eabca6f56c6372bfa70c4dfd7d6df82f5c8cc7515aedbf5ee6e43a9a775a` |
| 12 | `theorem` | [compl](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/compl.md) | 117 | `result-track:13ff12ba25bc134d5cc05abbc4f6729baff3505843b0f5c1627b3537b66f5b71` |
| 13 | `theorem` | [toGraph_compl_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/tograph-compl-eq.md) | 120 | `result-track:3a7c3e88ac9a944f48f41f2328726cdcc65880f90363837fc1e6e73abc85037d` |
| 14 | `def` | [adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix.md) | 140 | `declaration-track:6d42da8081c565928e7a682ffed130b22234889011e360a542e27e2e05dc1f74` |
| 15 | `theorem` | [adjMatrix_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-apply.md) | 145 | `result-track:8940041afd05c0eaa01665dcb5aebbda9e53fe19ba7a765a1ae676faa5b4e5f6` |
| 16 | `theorem` | [transpose_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/transpose-adjmatrix.md) | 150 | `result-track:b5c7a2cc054b54ce2d46080d2b8c1f96198649f97d7c4c486660b352a5c412af` |
| 17 | `theorem` | [isSymm_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/issymm-adjmatrix.md) | 155 | `result-track:c9226661903760a780b273886d2298d38a86414c9ff03c4c6e473d498d57bbdd` |
| 18 | `theorem` | [isAdjMatrix_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/isadjmatrix-adjmatrix.md) | 162 | `result-track:30a983fbd743a079c9266fbe96f38208c5de63ba17f0ed5a9b42106a1341e879` |
| 19 | `theorem` | [toGraph_adjMatrix_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/tograph-adjmatrix-eq.md) | 166 | `result-track:3a5756f988fab275d4010b37b30efc30f48c85a8d5b525c6969a9d6bc8e5af9b` |
| 20 | `theorem` | [one_add_adjMatrix_add_compl_adjMatrix_eq_allOnes](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/one-add-adjmatrix-add-compl-adjmatrix-eq-allones.md) | 175 | `result-track:63bf56ad60642e3387b453eb42e585fa09564920225349d6cc48ddfdf809d813` |
| 21 | `theorem` | [adjMatrix_dotProduct](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-dotproduct.md) | 187 | `result-track:ccca955699c95173ea36b6d03a28444e2afa42bb137b372e6dbd8b0e721a1896` |
| 22 | `theorem` | [dotProduct_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/dotproduct-adjmatrix.md) | 192 | `result-track:9fcf3181bb2024fec783fc722d1e30bbbf8006df919dbb88cf274020525b6f24` |
| 23 | `theorem` | [adjMatrix_mulVec_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-mulvec-apply.md) | 197 | `result-track:f6d73abf52c3a56e370c16b1eb693f2a5a5f6d29a884988f4c9fbdc68eaae62d` |
| 24 | `theorem` | [adjMatrix_vecMul_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-vecmul-apply.md) | 202 | `result-track:eaa658041577aba7179419bfe0e948e8c718ac8c9c08448e9d09ec0beefc2127` |
| 25 | `theorem` | [adjMatrix_mul_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-mul-apply.md) | 209 | `result-track:dcc0b49deda1179cd167d9000e7d7fa189ee7b019b2363cafacceddc165365ac` |
| 26 | `theorem` | [mul_adjMatrix_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/mul-adjmatrix-apply.md) | 214 | `result-track:c02da733cb19ceb1b5397b694359750db1cd665a1adb438670dfae164a68d319` |
| 27 | `theorem` | [trace_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/trace-adjmatrix.md) | 220 | `result-track:0a56bb80ffa594414ac0497736976ec9f6f17814da5941fe558da423ab412443` |
| 28 | `theorem` | [adjMatrix_mul_self_apply_self](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-mul-self-apply-self.md) | 223 | `result-track:0b2c5d3a467b5c02fb1f74ebe10718bbcdf7f5290048ee07cf59f0b1c3467bae` |
| 29 | `theorem` | [adjMatrix_mulVec_const_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-mulvec-const-apply.md) | 228 | `result-track:df2fa6342d26e1584792d1ca603791e7b9f29ed1e602ff6cea74a8f8bd0b2a3f` |
| 30 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-mulvec-const-apply-of-regular.md) | 231 | `result-track:9d4ff703b8b633547775f02d39171fa168c737aee3a5c69b567d4bdfbdf458b4` |
| 31 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-pow-apply-eq-card-walk.md) | 235 | `result-track:61e20987e8a4ee3adc80b33048a55a9484aac9d7b912997d0b924c985c252b34` |
| 32 | `theorem` | [dotProduct_mulVec_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/dotproduct-mulvec-adjmatrix.md) | 255 | `result-track:78dbc5b43b3ab03bfeee5fc4fd3921bb1470801327bfec26c16e71f2b8766d89` |
| 33 | `theorem` | [adjMatrix_toGraph_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixOneAddAdjMatrixAddComplAdjMatrixEqAllOnes.lean/declarations/adjmatrix-tograph-eq.md) | 269 | `result-track:0f2a02e74114c678ea3af0dc69563ae31c49e5ea682774a3206aaceb4e7321b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29d93b0139a38d5a6074a0c0802486efdb90685f1c35f63cfbd134258ff99771 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
