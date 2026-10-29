# Verification target: Symplectic Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2314db3cf665be627014849ca498b9395b10916",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2314db3cf665be627014849ca498b9395b10916`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [J](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/j.md) | 43 | `declaration-track:ee55d392c00f75d4b86f0d0968bb3a6058a3428513b3ca142b294c141035f8f9` |
| 2 | `theorem` | [J_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/j-transpose.md) | 47 | `result-track:efd0f44a9bc9bfc9dc57ac5d29429b6a6b64b2048bf0e920f6ef1d3fccc68abe` |
| 3 | `theorem` | [J_squared](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/j-squared.md) | 54 | `result-track:31ae2c4d450b5b9852c4b3551ad640b134d2b1fa45cba100bb9cd9657aa9ca3c` |
| 4 | `theorem` | [J_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/j-inv.md) | 59 | `result-track:c7c7b4ee309591835aa34b58a747528ad4b0b391cc1a41168b12105714498fce` |
| 5 | `theorem` | [J_det_mul_J_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/j-det-mul-j-det.md) | 64 | `result-track:a2d9a1637978c20802bd28af24b9d5654b6328963767dddfbf3935c91c7fe854` |
| 6 | `theorem` | [isUnit_det_J](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/isunit-det-j.md) | 70 | `result-track:9d7752c38342c0ec872a462696a421f416ef75f5a6ce5e297599e20fa9d683bf` |
| 7 | `def` | [symplecticGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/symplecticgroup.md) | 78 | `declaration-track:e15ddf455b026c1b1504efd223ed8e3e23a96ac3c7ee82b488fd9f3b08d847b6` |
| 8 | `theorem` | [mem_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/mem-iff-source-edition-2.md) | 94 | `result-track:d13bdd0ec53a46cbf9669327359c3a5b0c9b3ec8b513b2c965c49a94ec38bd69` |
| 9 | `instance` | [coeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/coematrix.md) | 97 | `declaration-track:a2c4e74bac4332bd204cccd6d1c7b64a78686489b7e09767a1961e5bfcc37fdd` |
| 10 | `theorem` | [J_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/j-mem.md) | 104 | `result-track:fabb01a950c13a3ea9a0d00a2a1ea574e4f4b1c701adca766d7695b22715799e` |
| 11 | `def` | [symJ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/symj.md) | 109 | `declaration-track:b67c951307a489102bf169aa130c56f8c08ce145bc6ab7d5df2b472485173ba5` |
| 12 | `theorem` | [coe_J](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/coe-j.md) | 115 | `result-track:76c346ad4143923792983ee869e254d18af35dc5068068f6aa36a6e5f137fb63` |
| 13 | `theorem` | [neg_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/neg-mem.md) | 121 | `result-track:d7140a3eaffc9a614df1ba1370fdff12005b2ae564a39c8815e6d5d08a1053c2` |
| 14 | `theorem` | [symplectic_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/symplectic-det.md) | 125 | `result-track:1f5617c942c321acb1520c5fb38b0d6fcbe300d5493e11e7236cb992c3212170` |
| 15 | `theorem` | [transpose_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/transpose-mem.md) | 136 | `result-track:54f57c91cdcac3c690c95ae0f0b1d85f478c160813f49be81d72e550ea047c94` |
| 16 | `theorem` | [transpose_mem_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/transpose-mem-iff.md) | 155 | `result-track:0ba88ae1a7910d6177cdf62df4de346d7c351bed84a022b82c1e2b27cbe0d28e` |
| 17 | `theorem` | [mem_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/mem-iff.md) | 158 | `result-track:6fb823b1533b11689ec02b176a7c9aae1bc78f2049d33f2e359612c48f5b6816` |
| 18 | `instance` | [hasInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/hasinv.md) | 161 | `declaration-track:5276fc5317edd0e93f6c0f60a3f8af1fbbf33666790debfaba2a0e33ba641092` |
| 19 | `theorem` | [coe_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/coe-inv-source-edition-2.md) | 165 | `result-track:3aa25646c7450ba2603c5cb295f53e423cb076e42bfc1f1713f7a646e468d60e` |
| 20 | `theorem` | [inv_left_mul_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/inv-left-mul-aux.md) | 167 | `result-track:62d6539f5b9fd49bb75cd7225b1ee829e43ed5a7b12175e7de38c145c6040689` |
| 21 | `theorem` | [coe_inv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/coe-inv.md) | 178 | `result-track:0ed71ae2c9b450502e912b9d1120708d45ca22b0ea81475dfe2ed57d8b49a69b` |
| 22 | `theorem` | [inv_eq_symplectic_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/inv-eq-symplectic-inv.md) | 182 | `result-track:1a030bcc1617ca65235a1a3bc0dfac1f0537b3d041e1cc7e66870634abb8376a` |
| 23 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymplecticGroupNamespaced.lean/declarations/instance.md) | 186 | `declaration-track:aa83ae856fec432f4b44f7bd21c3c4920e28bf50e735c7b792bea65510991f30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4a6b55aa17a28a8a15df18f373870a7c0d2783eb4989a667172510e19abecdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
