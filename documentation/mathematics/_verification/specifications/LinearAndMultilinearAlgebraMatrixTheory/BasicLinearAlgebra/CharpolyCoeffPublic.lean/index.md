# Verification target: Charpoly Coeff Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean.json)

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
| 1 | `theorem` | [charmatrix_apply_natDegree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charmatrix-apply-natdegree.md) | 56 | `result-track:72ebae4c48342feb340d291dd772cc9af2518262f9d8b003c80c91347dc91c50` |
| 2 | `theorem` | [charmatrix_apply_natDegree_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charmatrix-apply-natdegree-le.md) | 60 | `result-track:89763c21aa8cab67ff3d275a4568e20810bc6bfdc370d01f762886d2cd18dd06` |
| 3 | `theorem` | [charpoly_sub_diagonal_degree_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-sub-diagonal-degree-lt.md) | 66 | `result-track:9a4c79d76c6519d8511d1b2aa33eb307c80c1b5ee5e07022b7136f0d4afbd062` |
| 4 | `theorem` | [charpoly_coeff_eq_prod_coeff_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-coeff-eq-prod-coeff-of-le.md) | 85 | `result-track:5e74e393374db35d10746df9312442148b48491a7fceaa4d52343fb5fc7dc74f` |
| 5 | `theorem` | [charpoly_degree_eq_dim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-degree-eq-dim.md) | 93 | `result-track:f4930c207e8a4045943de95b48ae0b874901fcb0583208d8c56a90d05c681c34` |
| 6 | `theorem` | [charpoly_natDegree_eq_dim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-natdegree-eq-dim.md) | 116 | `result-track:673b653e9481924a775116a4949918dd40be246f25d94b37b12797984d872b96` |
| 7 | `theorem` | [charpoly_monic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-monic.md) | 120 | `result-track:c98492e0b5327dba2f69807df429bdb241ef1c6f0040850cbf4ba8105f23abd9` |
| 8 | `theorem` | [trace_eq_neg_charpoly_coeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/trace-eq-neg-charpoly-coeff.md) | 139 | `result-track:62d0a6466a8b9190f11e61c584be89d4fe02cbc0ffd646b86b2ac60bbc49c89e` |
| 9 | `theorem` | [trace_eq_neg_charpoly_nextCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/trace-eq-neg-charpoly-nextcoeff.md) | 145 | `result-track:398a3a1ee3396393be0da0d1872479be7cb39882d7440fe92a043527cbb16bdf` |
| 10 | `theorem` | [det_eq_sign_charpoly_coeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/det-eq-sign-charpoly-coeff.md) | 151 | `result-track:2d77cbb86227d7939bd085a5f4033d2390f57c096c58fca042b4b0b9d01c6dc3` |
| 11 | `lemma` | [derivative_det_one_add_X_smul_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/derivative-det-one-add-x-smul-aux.md) | 156 | `result-track:06f429c41940da89798bc0c7830aa7a5acc0ca3f75ab2837d572547df2803719` |
| 12 | `lemma` | [derivative_det_one_add_X_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/derivative-det-one-add-x-smul.md) | 183 | `result-track:41326e05573627b338cc87f20979b469cc2479826b93909b7e3d4448f1ce7197` |
| 13 | `lemma` | [coeff_det_one_add_X_smul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/coeff-det-one-add-x-smul-one.md) | 193 | `result-track:fe95cadc66f0e7945fc4b71b21c49ebcdf8f2c74aed354cc08ae76f282bc4f3d` |
| 14 | `lemma` | [det_one_add_X_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/det-one-add-x-smul.md) | 198 | `result-track:3661f7cf11dc03f01521e54281be1f0b8000cbc431e04dde816f4719c1e6df1f` |
| 15 | `lemma` | [det_one_add_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/det-one-add-smul.md) | 208 | `result-track:b02d5aa7cc46a9263d1ba5377ffb606e36c87d5135035901218181463d978512` |
| 16 | `lemma` | [charpoly_of_card_eq_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-of-card-eq-two.md) | 213 | `result-track:94d96d97fa926454ae910205fbb48d3465d9607dc9ff4b341cadcb4be19df1f2` |
| 17 | `lemma` | [charpoly_fin_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-fin-two.md) | 229 | `result-track:017b1f4933da5da14c097448e119f9685d7190fc6d44dc51400137e0fb945a4e` |
| 18 | `theorem` | [matPolyEquiv_eq_X_pow_sub_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/matpolyequiv-eq-x-pow-sub-c.md) | 235 | `result-track:d325132bf2b1433a58898de76125f72bcca687a60fd917638f38431755f51264` |
| 19 | `theorem` | [aeval_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/aeval-eq-aeval-mod-charpoly.md) | 251 | `result-track:c873d5800a200c496c7a5823061bd9923a50051f5a74efaa4d5ca6bdf055be4f` |
| 20 | `theorem` | [pow_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/pow-eq-aeval-mod-charpoly.md) | 258 | `result-track:67cb003cbd7b4e9db1c186e934464517e74c737ee512f246a273424d791384b6` |
| 21 | `theorem` | [coeff_charpoly_mem_ideal_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/coeff-charpoly-mem-ideal-pow.md) | 263 | `result-track:4595ebc6e44eabfd20413269e4736774002918be1c6521bab0725a2720421e4f` |
| 22 | `def` | [charpolyRev](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpolyrev.md) | 291 | `declaration-track:0e0c7107b2c078f3fd5d1f44897993bdffd7c4cb11ffda90af7f73b6d656b8c7` |
| 23 | `lemma` | [reverse_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/reverse-charpoly.md) | 293 | `result-track:3ecf93195993e5dec66a74bf6ece75f5dc1854394647d69316fb122f7a917149` |
| 24 | `theorem` | [charpoly_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-inv.md) | 314 | `result-track:a9668bd8c61c4297e4343c2ab3e7a79d575b115e1a98a3a10999058da37a45c5` |
| 25 | `lemma` | [eval_charpolyRev](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/eval-charpolyrev.md) | 328 | `result-track:a5ab4b1b94052ac4b7b908e8f10d9b2ff9e1f68094f2d762a55e548c198878f8` |
| 26 | `lemma` | [coeff_charpolyRev_eq_neg_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/coeff-charpolyrev-eq-neg-trace.md) | 335 | `result-track:956c078ddfdcd04507623448c24a08673a16dd924bb9ef19c796d0b1c67827bf` |
| 27 | `lemma` | [isUnit_charpolyRev_of_isNilpotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/isunit-charpolyrev-of-isnilpotent.md) | 342 | `result-track:90d1b252a99e4b32aea5f8b97d1d8a909fa769ecf9ae4d5b80c3add31d914cd6` |
| 28 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/isnilpotent-trace-of-isnilpotent.md) | 352 | `result-track:9233735ae9389b69f536abaef2d0b16a5cc69cf56d4c93a9b557017bc0551f01` |
| 29 | `lemma` | [isNilpotent_charpoly_sub_pow_of_isNilpotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/isnilpotent-charpoly-sub-pow-of-isnilpotent.md) | 360 | `result-track:922b57c28e5a78ed1ad01657a9026472293c479f4b6bd3d58319d5fb0e813040` |
| 30 | `lemma` | [det_piecewise_one_eq_submatrix_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/det-piecewise-one-eq-submatrix-det.md) | 376 | `result-track:6d9a4f48212e068a6f11a123f679317a22ef508f181463daff0c5d7392a24ad1` |
| 31 | `theorem` | [coeff_det_one_add_X_smul_eq_sum_minors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/coeff-det-one-add-x-smul-eq-sum-minors.md) | 399 | `result-track:805ff76443773f46a8a56c0dd53102b1a4b9ae57a6dca0b74937048703b7092d` |
| 32 | `theorem` | [charpoly_coeff_eq_sum_minors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/declarations/charpoly-coeff-eq-sum-minors.md) | 457 | `result-track:9e34a323190bf1bc955a7f3c0781577d1482dc6c0881897d45eac8c3f56c043f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a5e40c72f0ceda1759787c891df46b4ea673acee672a110ec7b4d8b8fe3d17b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
