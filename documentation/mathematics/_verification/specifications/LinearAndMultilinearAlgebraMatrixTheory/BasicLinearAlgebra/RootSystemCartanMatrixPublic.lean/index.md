# Verification target: Root System Cartan Matrix Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da82dc9672408e339b8367625b07676813aa79b9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da82dc9672408e339b8367625b07676813aa79b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrixIn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrixin.md) | 56 | `declaration-track:ac04ee796b04b05bba9a4a209c6a5896337c58150cc8c1f82453fb23df7510fc` |
| 2 | `lemma` | [cartanMatrixIn_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrixin-def.md) | 60 | `result-track:a488e3e82256104f379d861c49a6ec79f60b849870b0c5d0a19d38175a8e37a1` |
| 3 | `lemma` | [algebraMap_cartanMatrixIn_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/algebramap-cartanmatrixin-apply.md) | 65 | `result-track:bb4109514ea32ab5fff4cd4e30b03c9c52a2a97e41745e3efd2122617b2b4ac5` |
| 4 | `lemma` | [cartanMatrixIn_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrixin-apply-same.md) | 70 | `result-track:896d7d236fecd9b4ea8a759c22226e41a78e6c796fcec0057ac52daf93e0e8d5` |
| 5 | `lemma` | [cartanMatrixIn_mul_diagonal_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrixin-mul-diagonal-eq.md) | 80 | `result-track:5572530afcabd29ef0c92eb853e91af3fb35cff696f30930193101508dc1f41d` |
| 6 | `lemma` | [cartanMatrixIn_nondegenerate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrixin-nondegenerate.md) | 88 | `result-track:2da8e9aed4f3acde2ed2ca19a082bc5a7ec8cdc8729954c7c9caa87192c5925b` |
| 7 | `abbrev` | [cartanMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix.md) | 110 | `declaration-track:3f91f5ea4c8dafbb8e0033ddb3f1678fa09af5a79cfb25212798673b8e1eebf1` |
| 8 | `lemma` | [cartanMatrix_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-apply-same.md) | 116 | `result-track:3c6a3928743d7c46943ed474b06d429d97ae8603d83f4980fa28b709fc6d1936` |
| 9 | `lemma` | [cartanMatrix_apply_eq_zero_iff_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-apply-eq-zero-iff-pairing.md) | 120 | `result-track:747c6f5d2261d4d619a1d1fb10481475465db3c3fd453f7b1ac3a3bec82c352f` |
| 10 | `lemma` | [cartanMatrix_apply_eq_zero_iff_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-apply-eq-zero-iff-symm.md) | 127 | `result-track:848e7398e5d42f47bf8583975b6244774f0b90325772b82a1c4ff8b3e9c28244` |
| 11 | `lemma` | [cartanMatrix_le_zero_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-le-zero-of-ne.md) | 134 | `result-track:ddfa84d5572ca60ca358aa33663edafafb68178684b77b1d21434c53d84ccadc` |
| 12 | `lemma` | [cartanMatrix_mem_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-mem-of-ne.md) | 139 | `result-track:d827b3c6176914d92aab87f8a4fa0ec007af308bffb40dee68b5600ef9d9863e` |
| 13 | `lemma` | [cartanMatrix_eq_neg_chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-eq-neg-chaintopcoeff.md) | 154 | `result-track:c4a07969186afd92b7d1adabc3966e62878a0e16660de9f048e7d1e13c3b2e72` |
| 14 | `lemma` | [cartanMatrix_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-apply-eq-zero-iff.md) | 158 | `result-track:bfea8b23e828ac4d4067d468a4d8257a2c178b29cd6c190b1b86c787917b667c` |
| 15 | `lemma` | [abs_cartanMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/abs-cartanmatrix-apply.md) | 165 | `result-track:a1dc5f37428ee90c475a2e77374cf2cd8cd8ebb15bfff6d392c737f2800b2e06` |
| 16 | `lemma` | [cartanMatrix_map_abs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-map-abs.md) | 172 | `result-track:e96cfe3fa9fcf8e5dc463064aa6543ea15badb6d1bac0d55f61161d2207a330c` |
| 17 | `lemma` | [cartanMatrix_nondegenerate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-nondegenerate.md) | 176 | `result-track:f99fa1ea2101a24f5c6be5ca0b3172acd2b6bd22f231adc5610b4d6908b0fc08` |
| 18 | `lemma` | [cartanMatrix_mul_diagonal_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-mul-diagonal-eq.md) | 183 | `result-track:cf1a047f8513fb2dec6c90a33364d3647c541458f13058f5c1e7ad178e1f2f84` |
| 19 | `lemma` | [exists_cartanMatrix_mul_diagaonal_posDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/exists-cartanmatrix-mul-diagaonal-posdef.md) | 194 | `result-track:f79855c91c17a2fafc070c0573a06d9897359da1a02075b5f428007f07e03164` |
| 20 | `lemma` | [exists_cartanMatrix_diagaonal_mul_posDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/exists-cartanmatrix-diagaonal-mul-posdef.md) | 208 | `result-track:f1108f9c9e69605d782e4cca251c0d008103ae470db7955d2a4f1099fb9d6433` |
| 21 | `lemma` | [det_four_sub_cartanMatrix_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/det-four-sub-cartanmatrix-ne-zero.md) | 216 | `result-track:35525635ffb27391532bcfd6251f74a4281fbaee5f64088f6ae9767aba65e050` |
| 22 | `lemma` | [induction_on_cartanMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/induction-on-cartanmatrix.md) | 231 | `result-track:3ec9ecc158cf5e0bbc3cb2db2ec4a81511d6d393eea1aae9b2321fdcc7efd4a5` |
| 23 | `lemma` | [injective_pairingIn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/injective-pairingin.md) | 270 | `result-track:1a434cc74b87d0ec3acf3d33a55311282e3a0270940704a49e98f745c4858191` |
| 24 | `lemma` | [exists_mem_span_pairingIn_ne_zero_and_pairwise_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/exists-mem-span-pairingin-ne-zero-and-pairwise-ne.md) | 304 | `result-track:b046808940452f3fc5d726f3520f4a5b607a3fe9c2ae7b53f2d69fa3d5b4a977` |
| 25 | `lemma` | [apply_mem_range_root_of_cartanMatrixEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/apply-mem-range-root-of-cartanmatrixeq.md) | 335 | `result-track:c2ba591a3b482b4a02f01b97591f52352310729f273fcfa9aa644b69fac7337c` |
| 26 | `def` | [equivOfCartanMatrixEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/equivofcartanmatrixeq.md) | 359 | `declaration-track:68c499239511f920bf8b371d54628b23327ba28eef3587683f0eba86f741c6d7` |
| 27 | `lemma` | [map_equiv_cartanMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/map-equiv-cartanmatrix.md) | 381 | `result-track:41347d38afddbb383cdc0b30a02b73797f285f45303b8dfcb1a2188aa466dc58` |
| 28 | `lemma` | [cartanMatrix_isIndecomposable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-isindecomposable.md) | 395 | `result-track:729190d3bb8b50dd0b37713a6befaad91b84fd9c5980420605c4184ca4930ab1` |
| 29 | `lemma` | [cartanMatrix_isFiniteCartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemCartanMatrixPublic.lean/declarations/cartanmatrix-isfinitecartan.md) | 412 | `result-track:e6c91112f1e57c6ad3ee686394ecdc249e3ff22762e4500a167a3d66023a68c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79b1bb6d4edb0928fe89e88d3965cf2c94a5ad2035fe4e47c03a9a4690c5e024 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
