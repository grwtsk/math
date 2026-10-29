# Verification target: Algebra Mv Polynomial Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac8977125a97356582d9457d2f2894f4fae51ce",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac8977125a97356582d9457d2f2894f4fae51ce`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Degrees` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Rename` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pUnitAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/punitalgequiv.md) | 71 | `declaration-track:8ae4b8e8f1bdbc4318f1de821c09d41a3b2d15d1fea4924478582469d8a2346a` |
| 2 | `theorem` | [pUnitAlgEquiv_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/punitalgequiv-monomial.md) | 94 | `result-track:90ac3dba27d264df146b134fb896d4b62fefbd37ca59c9647861b18b0b56ad54` |
| 3 | `theorem` | [pUnitAlgEquiv_symm_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/punitalgequiv-symm-monomial.md) | 99 | `result-track:29b9051dabf50cd793abd9b997042cdf52829bf8d69d7a5b900d3103c7a216f8` |
| 4 | `def` | [mapEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapequiv.md) | 110 | `declaration-track:df471a89439c7e3e62788350e30293c30d81be06165a765db2bb11ac21f8e9ed` |
| 5 | `theorem` | [mapEquiv_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapequiv-refl.md) | 119 | `result-track:a79d3f2ffcc0fc87fe974d81bed40c093e0fc9fa68a77091012ff1e4fc6f9427` |
| 6 | `theorem` | [mapEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapequiv-symm.md) | 123 | `result-track:6749dca555cc65c955d9fec9a7353a058284c3a24f5c7ab6c33919269aa92444` |
| 7 | `theorem` | [mapEquiv_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapequiv-trans.md) | 128 | `result-track:6a45e223528184778f65cfb409bebbc2f18f4249b17736c5e1ca2f7eeb39baca` |
| 8 | `def` | [mapAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapalgequiv.md) | 139 | `declaration-track:6be1c82ca898c4505f68cb69f2393ae67a0ba23aea45746d9a56d0342d08dd6b` |
| 9 | `theorem` | [mapAlgEquiv_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapalgequiv-refl.md) | 143 | `result-track:b26b485b1b844e9b1715b45b456d1ff96ef7526ceb8b135a7979fef070991f11` |
| 10 | `theorem` | [mapAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapalgequiv-symm.md) | 147 | `result-track:e64a0e9ed4ea89e4e25bd457d8d08d3cb4b98ffa113f72b879308fbbe4ba90ba` |
| 11 | `theorem` | [mapAlgEquiv_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mapalgequiv-trans.md) | 151 | `result-track:0e3670477e159c0e4d8e0547e6c9fa75cc565fca4b5f490838145cd363124a9e` |
| 12 | `theorem` | [eval₂_pUnitAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/eval-punitalgequiv-symm.md) | 163 | `result-track:9a08d51681c1b429ceb04d39d9e63ae47f56a308b9d22ff761b2e294d3bb3155` |
| 13 | `theorem` | [eval₂_const_pUnitAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/eval-const-punitalgequiv-symm.md) | 171 | `result-track:e266068d5bfdef51116c74e5d26f7fa49ddc7ad6b277712a7bd6fe62fa8f41ea` |
| 14 | `theorem` | [eval₂_pUnitAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/eval-punitalgequiv.md) | 176 | `result-track:cc1e10f81e4ba0371353354a2598a7ed9a43ad96126a6a5d95b5ef175b66e2b6` |
| 15 | `theorem` | [eval₂_const_pUnitAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/eval-const-punitalgequiv.md) | 183 | `result-track:bc872c1f584d7ce2316d4d1f8f88f4d9c01b067fef4c89bb29d21117c643cb8e` |
| 16 | `def` | [sumToIter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumtoiter.md) | 199 | `declaration-track:d0f06fb797d30b1853325f1c8ee63cbf3463c25b0e21a82c8ac2db90251025b8` |
| 17 | `theorem` | [sumToIter_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumtoiter-c.md) | 203 | `result-track:6aa98e864b98cc35d00355868399a12799afc355b176509104a469b40eaf3276` |
| 18 | `theorem` | [sumToIter_Xl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumtoiter-xl.md) | 207 | `result-track:06ab1964919043dbde9f60f62cc8a62e779df344be962d5c46a0f22fe83e4ad9` |
| 19 | `theorem` | [sumToIter_Xr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumtoiter-xr.md) | 211 | `result-track:4db1f67b03e391488c1c2f833b42abbd79a8457b952534372bd51b00e404f233` |
| 20 | `def` | [iterToSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/itertosum.md) | 220 | `declaration-track:af39f8406604dcefde68acdbb0fa63c6d9160679e8d1e9951184c43508f3e233` |
| 21 | `theorem` | [iterToSum_C_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/itertosum-c-c.md) | 224 | `result-track:c6191ac593cf17e00fefed17dbcb11a6bf1c6493aa9cedbb75a343517453fd97` |
| 22 | `theorem` | [iterToSum_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/itertosum-x.md) | 228 | `result-track:48bdd1b8d78867ca7b3a03e14fadd7a197a8781ff038fae510cf84f3c55a71fd` |
| 23 | `theorem` | [iterToSum_C_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/itertosum-c-x.md) | 232 | `result-track:4d672ec889ec072cbe410ae00628010ed9c8da2bfbb8e7e465535b42d6ea2fa6` |
| 24 | `def` | [isEmptyAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/isemptyalgequiv.md) | 242 | `declaration-track:af27ca39191669f49f5077f74b4027b8ed3eacf98f513b9b6396670173d3d8a3` |
| 25 | `lemma` | [aeval_injective_iff_of_isEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/aeval-injective-iff-of-isempty.md) | 247 | `result-track:8a25e0b03c05a51d012574572f134e3093d0bc18244e04e93ef633bc2e7da781` |
| 26 | `def` | [isEmptyRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/isemptyringequiv.md) | 260 | `declaration-track:1757cea9cb7c37ea032de179efa197d45ac149b765644b5002806b99259dfe97` |
| 27 | `lemma` | [isEmptyRingEquiv_symm_toRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/isemptyringequiv-symm-toringhom.md) | 262 | `result-track:07e858abd91629b0becaa9896953ea80d4907c8ed59da3257433fb1598fc942e` |
| 28 | `lemma` | [isEmptyRingEquiv_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/isemptyringequiv-symm-apply.md) | 263 | `result-track:4a6da84636476f492aaa6c0220733f7efdb9033be1f3636e2302e24486afc068` |
| 29 | `lemma` | [isEmptyRingEquiv_eq_coeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/isemptyringequiv-eq-coeff-zero.md) | 265 | `result-track:228ef7e479d3bdeb7dbcb24acd57db40df77c9956d02df415f381039ac44ec05` |
| 30 | `def` | [mvPolynomialEquivMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mvpolynomialequivmvpolynomial.md) | 273 | `declaration-track:f4f09d776bf19511b725bb163f7eb144c060db7e88bc038fc17721e083098780` |
| 31 | `def` | [sumRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumringequiv.md) | 288 | `declaration-track:cb59862768ba99d46d03fd246ef084c4509df548211267f3a0de1c10512846dc` |
| 32 | `def` | [sumAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumalgequiv.md) | 302 | `declaration-track:422dc250147cfa0f468539a2884c1a71f9edd036bf7f161ea64062fdedb0ce34` |
| 33 | `lemma` | [sumAlgEquiv_comp_rename_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumalgequiv-comp-rename-inr.md) | 311 | `result-track:65ec8240c615e6673e24b546ade76bfa5c3ba633ae6afbc851b26988b0348ab6` |
| 34 | `lemma` | [sumAlgEquiv_comp_rename_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/sumalgequiv-comp-rename-inl.md) | 317 | `result-track:b37c033e7e542be67c75d071b90c27db8372c589659c0ea972a5499f86d6713d` |
| 35 | `def` | [commAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/commalgequiv.md) | 331 | `declaration-track:83767f86bd6ff6c1f09a0b4e7e59c876eb7247dbfa262bc2689acff20fe0a798` |
| 36 | `lemma` | [commAlgEquiv_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/commalgequiv-c.md) | 334 | `result-track:6f714e780ec29f7346cbd900d17ee32bf6653b63f680389d3ced7e12ae139c5f` |
| 37 | `lemma` | [commAlgEquiv_C_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/commalgequiv-c-x.md) | 341 | `result-track:71b387449058117c2089494d7e8f852df9657360ac9a08f8b871c20cf2589c6a` |
| 38 | `lemma` | [commAlgEquiv_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/commalgequiv-x.md) | 343 | `result-track:7231dec1cbecdf267f3802157cfc2bfb247689073e754a20b43df2f54ee4934c` |
| 39 | `def` | [optionEquivLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivleft.md) | 356 | `declaration-track:465816760d643b7bdb890f71d32f1142135535cb0da9be51f2a6dc01873d4457` |
| 40 | `lemma` | [optionEquivLeft_X_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivleft-x-some.md) | 361 | `result-track:1b32752c0e99e2534fb64057863392406b6a3615490dbdc8085c80d9ba341628` |
| 41 | `lemma` | [optionEquivLeft_X_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivleft-x-none.md) | 364 | `result-track:143f8b833b09e97fe096bef30255427ba46de108c07851d53b4a673db1ec98c8` |
| 42 | `lemma` | [optionEquivLeft_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivleft-c.md) | 367 | `result-track:8dc54b37e7982f74232db1f24753cf5a5befcc64a4ea92bcf39ef3a6fb920c65` |
| 43 | `theorem` | [optionEquivLeft_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivleft-monomial.md) | 370 | `result-track:1e1e87ba076a8b65d5612ddb9a84070ba45db1b9eda6fd827aa2c45585e2a154` |
| 44 | `theorem` | [optionEquivLeft_coeff_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivleft-coeff-coeff.md) | 383 | `result-track:fcdf2176cafd3ae1b7ddb58d53bdf0ffd1c5262f94338f9f3b4b31dec817091b` |
| 45 | `theorem` | [optionEquivLeft_elim_eval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivleft-elim-eval.md) | 402 | `result-track:5a6835102c0dfa1a332bec2b3fb471cd509361ad44ad5a1ed9622ad0f8aacb91` |
| 46 | `lemma` | [natDegree_optionEquivLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/natdegree-optionequivleft.md) | 423 | `result-track:3f88a0e2720386c02dd8c820f460ea1b863c5dbf9cec64b32a8ddd703a7519cd` |
| 47 | `lemma` | [totalDegree_coeff_optionEquivLeft_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/totaldegree-coeff-optionequivleft-add-le.md) | 441 | `result-track:c76a4effef12c62cc41a07f202f90493f3a018a399592299c05d4c3dcdaadefa` |
| 48 | `lemma` | [totalDegree_coeff_optionEquivLeft_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/totaldegree-coeff-optionequivleft-le.md) | 453 | `result-track:72fbcaf62454cc8247b0e390f82b34c0c1088cb27173797e5542686a050c5da2` |
| 49 | `def` | [optionEquivRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivright.md) | 471 | `declaration-track:2c5d1912114a8e3be86fc3984fdd99069ea4ab84b2346386e5228afd6a80a1b6` |
| 50 | `lemma` | [optionEquivRight_X_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivright-x-some.md) | 484 | `result-track:4e834d780cd4ed9bdcf2e2a9af5fa6c8eba48582b3a4c66f8df4c76c9dc0e2b7` |
| 51 | `lemma` | [optionEquivRight_X_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivright-x-none.md) | 487 | `result-track:c7784f79b0ea71ecb3e2de5bb2710badde3069de985daee6f45697a97fb23459` |
| 52 | `lemma` | [optionEquivRight_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/optionequivright-c.md) | 490 | `result-track:fcf5708f7abc7db668e5339d455bd0ff714ef9b4a655f9b8442d834f4808f19d` |
| 53 | `def` | [finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv.md) | 498 | `declaration-track:605869c3c7edceb8c5882bbdc4c9666be9d710c745bbae205f49f100ed9e66ac` |
| 54 | `theorem` | [finSuccEquiv_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv-eq.md) | 501 | `result-track:e303f66a5a1db96be1a8bab0e55562fd940dc540e9459575b01d90372d9e0910` |
| 55 | `theorem` | [finSuccEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv-apply.md) | 511 | `result-track:a81fdbe2efc0995061beb726d8ce143db5012973c7720f7d06a12dd3d734c134` |
| 56 | `theorem` | [finSuccEquiv_comp_C_eq_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv-comp-c-eq-c.md) | 517 | `result-track:5b968e1d932200f4814f7d7c934abbaf8e15c814b3e703e4825354a6d44bc16f` |
| 57 | `theorem` | [finSuccEquiv_X_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv-x-zero.md) | 530 | `result-track:13e27d4a9ccbf6864a7b57c9d2a8d6cbca51a83f66da39e438d38835ce21f561` |
| 58 | `theorem` | [finSuccEquiv_X_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv-x-succ.md) | 532 | `result-track:5e89bb2fd6ba9bda8769499db7e6196b4f181b462d2b7b0cd89ce42cd52246f6` |
| 59 | `theorem` | [finSuccEquiv_coeff_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv-coeff-coeff.md) | 537 | `result-track:f9954003508edacfe0af6707fbdc094bf2bc02cf50cf5fe850f13ed9694b8b0d` |
| 60 | `theorem` | [eval_eq_eval_mv_eval'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/eval-eq-eval-mv-eval.md) | 560 | `result-track:3edae0041511ca0f3de2c981a0e64a710aab177770a05916fc6d9eeacc7c390d` |
| 61 | `theorem` | [coeff_eval_eq_eval_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/coeff-eval-eq-eval-coeff.md) | 583 | `result-track:05a51dd6192dfe6c881215fad0beb09772f74eecffd7da6a567a3abf2c76f583` |
| 62 | `theorem` | [support_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/support-coeff-finsuccequiv.md) | 587 | `result-track:c6e5b71344129a39644244a5cb319f9637ab390cb3faa6e6933faf49ceeca032` |
| 63 | `lemma` | [totalDegree_coeff_finSuccEquiv_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/totaldegree-coeff-finsuccequiv-add-le.md) | 599 | `result-track:7a630548bf4c3d6248f8412360cfc8dfa1ed94f6f90aa971662c747166d45953` |
| 64 | `theorem` | [support_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/support-finsuccequiv.md) | 615 | `result-track:5c9c47350675c77082fd35ed14c72d170c96b3c020852cd9165d3351f255c220` |
| 65 | `theorem` | [mem_support_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mem-support-finsuccequiv.md) | 630 | `result-track:5f2a936352bd2f0ffff23936064736f2ec95539458fb3999072475f1a231ecda` |
| 66 | `theorem` | [image_support_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/image-support-finsuccequiv.md) | 634 | `result-track:8f47984b1d7c0202150dee01dd9d7564d169205aed62d3d7fd10f02376776944` |
| 67 | `lemma` | [mem_image_support_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mem-image-support-coeff-finsuccequiv.md) | 653 | `result-track:f3c16049751895bfd046cbd9c42830f8f8a10948506a3da6ae3c1d3b7b888e6f` |
| 68 | `lemma` | [mem_support_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mem-support-coeff-finsuccequiv.md) | 658 | `result-track:8f74f2c31806388fb840f27ca240c1a1727c1e3c1c72f7bb53faa35156803be5` |
| 69 | `theorem` | [support_finSuccEquiv_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/support-finsuccequiv-nonempty.md) | 665 | `result-track:d4bd8baec32285dde5e46085bab7cf0b67b62149eaa730e5aecdfa84f430df22` |
| 70 | `theorem` | [degree_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/degree-finsuccequiv.md) | 669 | `result-track:389d9ab6a3d28487015dc63df63e343b95928bea8b2b03124a769c6da3c6457a` |
| 71 | `theorem` | [natDegree_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/natdegree-finsuccequiv.md) | 680 | `result-track:762eb7d55b9758d586031c323ba57d0735ba2383610ca938b790ea4c8583874c` |
| 72 | `theorem` | [degreeOf_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/degreeof-coeff-finsuccequiv.md) | 686 | `result-track:fe0b36d99f708e2c7360cd6edf16e353228c908c061f7e714c5d2f526ce1ebd9` |
| 73 | `lemma` | [finSuccEquiv_rename_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/finsuccequiv-rename-finsuccequiv.md) | 705 | `result-track:6a5dbf9b51d16c49b639012af5d07b12abe06037dfd55e1b13bf2d1457615946` |
| 74 | `theorem` | [rename_polynomial_aeval_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/rename-polynomial-aeval-x.md) | 719 | `result-track:a78718882709876a1b691da2583c133905ef0eb1a66918cc0e5648574f9958e0` |
| 75 | `def` | [Polynomial.toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/polynomial-tomvpolynomial.md) | 732 | `declaration-track:a472f2baa56762af97640f5bd2c5a0979377df64185a177f06d670d48e481402` |
| 76 | `lemma` | [Polynomial.toMvPolynomial_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/polynomial-tomvpolynomial-c.md) | 736 | `result-track:1fe9049ddaab124c13e1e42b9548ffb3e58c6b92c8d0ae1e371da40e7e667263` |
| 77 | `lemma` | [Polynomial.toMvPolynomial_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/polynomial-tomvpolynomial-x.md) | 740 | `result-track:c7ea9d66799ee8a8898fbd6ec565a1f9f55c9d36ea7e2da3b4c53d2d04994fd1` |
| 78 | `lemma` | [Polynomial.toMvPolynomial_eq_rename_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/polynomial-tomvpolynomial-eq-rename-comp.md) | 743 | `result-track:14776217fd8a025ec00f5d2e4199a44179660ee79c288d3b6ab29d0f7daaf944` |
| 79 | `lemma` | [Polynomial.toMvPolynomial_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/polynomial-tomvpolynomial-injective.md) | 749 | `result-track:a54db9db7d944d0c363f74105362fb09784bccae7b99f17ec10e0db10ad4579b` |
| 80 | `lemma` | [MvPolynomial.eval_comp_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mvpolynomial-eval-comp-tomvpolynomial.md) | 756 | `result-track:83cfe6e525c8edd54763fb9abe528b78d56474dcbf9952c6fa10842c807a9ea2` |
| 81 | `lemma` | [MvPolynomial.eval_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mvpolynomial-eval-tomvpolynomial.md) | 761 | `result-track:d7ae32ce9bfc277693ca413aa7ae7b72b6a0de0183462fdc4aa340f93d9c2474` |
| 82 | `lemma` | [MvPolynomial.aeval_comp_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mvpolynomial-aeval-comp-tomvpolynomial.md) | 766 | `result-track:8d47ef5b74d57bb7f8ac0ad4f3bdab9f5895be500e46842e82b7fd5c5a4a5bba` |
| 83 | `lemma` | [MvPolynomial.aeval_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mvpolynomial-aeval-tomvpolynomial.md) | 772 | `result-track:ed27e7c3c8d6c854a43a49e73144e600b5933f61feb24d3b6f2c03ce5bac954d` |
| 84 | `lemma` | [MvPolynomial.rename_comp_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mvpolynomial-rename-comp-tomvpolynomial.md) | 777 | `result-track:2c32671d2e0793338b01aac59cf71a13b2e9c3ff96ca436c2aa72c53c54b2bb0` |
| 85 | `lemma` | [MvPolynomial.rename_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivNamespaced.lean/declarations/mvpolynomial-rename-tomvpolynomial.md) | 783 | `result-track:b364891bd617b443784bfc7566787ec8a81ae5e5be677478c91f2764c3c43999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15c97ab0242667ff6b92308fe230c9aa17786674b65e207c03da2dc602938aeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Equiv/Variant170e7506c09646bca757809b4f0e7c1dbe6d047eed37ff1967767b086cf22c0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
