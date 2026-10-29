# Verification target: Data Polynomial Algebra Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad77ac2de76769e5d07c802ee0d75491401807e4",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad77ac2de76769e5d07c802ee0d75491401807e4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [algebraOfAlgebra](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/algebraofalgebra.md) | 49 | `declaration-track:f2381c41115b164172391763d8134ed6cc077783e8bb5a04dad10f1e74143863` |
| 2 | `theorem` | [algebraMap_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/algebramap-apply.md) | 64 | `result-track:868935f3d886005e74579f72365b83dc83b035d258a21c0de9fc3c26cf9be76c` |
| 3 | `theorem` | [toFinsupp_algebraMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/tofinsupp-algebramap.md) | 69 | `result-track:df742749ceed7a05b223fdba5e54f3767ff0dde79c0c7cc02e70b4e1a0966da0` |
| 4 | `theorem` | [ofFinsupp_algebraMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/offinsupp-algebramap.md) | 75 | `result-track:8c6856ae9d446c0342a1ddccb95cf06465fd887072234f9bc7ebe569666d26ac` |
| 5 | `theorem` | [C_eq_algebraMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/c-eq-algebramap.md) | 84 | `result-track:ad486a993d0a0eefef29d7d90212f6fe2656f3385a4db025cfce997aae4ccffe` |
| 6 | `theorem` | [algHom_ext'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/alghom-ext-source-edition-2.md) | 94 | `result-track:5c0049721e8776c5c53f45ced0dfbb018b4474ec34288696999bd0373b2fb7ca` |
| 7 | `def` | [toFinsuppIsoAlg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/tofinsuppisoalg.md) | 105 | `declaration-track:ebca03a11de7ddcc9e346315906d696f772e87069a25e5bcf2daece82d40aa0d` |
| 8 | `instance` | [subalgebraNontrivial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/subalgebranontrivial.md) | 114 | `declaration-track:94b7d93bd99c4f5765918c457dafe4686b31f19bec22c7edae304141e745c050` |
| 9 | `theorem` | [algHom_eval₂_algebraMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/alghom-eval-algebramap.md) | 126 | `result-track:61bf82bae2d1e5f42d4eebafa4f1b09bd5ddd4a09d6d7c80348196096faed4f6` |
| 10 | `theorem` | [eval₂_algebraMap_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/eval-algebramap-x.md) | 134 | `result-track:5741532932d9148a3e567214157221baf380869ac24d01d91f80058e253b6859` |
| 11 | `theorem` | [ringHom_eval₂_cast_int_ringHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/ringhom-eval-cast-int-ringhom.md) | 145 | `result-track:4e20e427404196310915a131d14081b1461521933cd8f6bf7fcae3f092ff7f3c` |
| 12 | `theorem` | [eval₂_int_castRingHom_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/eval-int-castringhom-x.md) | 151 | `result-track:11302d13145b04ce988379576704fd67821baa578759c73bc58e571ba37ab52f` |
| 13 | `def` | [aeval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval.md) | 173 | `declaration-track:9f659f933b28767be917da031bde551a7ef97931230b2b19e7f01746864484a6` |
| 14 | `theorem` | [adjoin_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/adjoin-x.md) | 181 | `result-track:35ef8382d58776c901e2a937eff2bd70533d04c80d78a9847fe8980b56dbd1dc` |
| 15 | `theorem` | [algHom_ext](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/alghom-ext.md) | 190 | `result-track:3f97dbf9a0564768fd6fecd8a4f11a4967fb158ebc0530d78363cbdd18af6f11` |
| 16 | `theorem` | [aeval_def](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-def.md) | 194 | `result-track:fd2bd96fe5d349fcde4ac5b390d177f2631d613ea86da59c3cfef4cc26372a9b` |
| 17 | `theorem` | [aeval_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-zero.md) | 199 | `result-track:c39577b38833322f6bd48fb7a75ce6234db4fdb179a1de35ccb050d9d74e78cf` |
| 18 | `theorem` | [aeval_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-x.md) | 204 | `result-track:171c3dfe637633938cdb84cb20ff88506925b26b06cb2bc8e4045c6ca4676af1` |
| 19 | `theorem` | [aeval_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-c.md) | 210 | `result-track:4d4db367db6bfbf5004d4e1357454b186394e3b1528e22b621635e68334628c5` |
| 20 | `theorem` | [aeval_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-monomial.md) | 216 | `result-track:7e6646eeddc884c6b5c3b073ca42322d3f7751ed32753407a43a53f27aa6cca7` |
| 21 | `theorem` | [aeval_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-x-pow.md) | 221 | `result-track:329b1467904321ee5a6de18564c96e9cf829290c2d569d7e90048583c673a8b4` |
| 22 | `theorem` | [aeval_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-add.md) | 227 | `result-track:95f9c0e75c3f3855118870f312a8c148870a467215db95c81c1ca03cd3758fc0` |
| 23 | `theorem` | [aeval_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-one.md) | 232 | `result-track:09df8737de0f68b434b5e76c482195e3e7662b771b67566bbcacbc7369545f61` |
| 24 | `theorem` | [aeval_bit0](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-bit0.md) | 241 | `result-track:1c029237aa573ff065a132a62d654564298bb6c4d3ca3b24afa5dfbb03ca996d` |
| 25 | `theorem` | [aeval_bit1](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-bit1.md) | 247 | `result-track:5cab3d76a74a1811c9d9d34f01091b990c512fe050ed0747518ba19765a7ee48` |
| 26 | `theorem` | [aeval_nat_cast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-nat-cast.md) | 254 | `result-track:17335b26c638b61ca43c0342e87b6ce6cd091c045f1d046cc6a6789a0c2ee47a` |
| 27 | `theorem` | [aeval_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-mul.md) | 258 | `result-track:18657d0595022f59d815e73e89bd1fc5bf575b1524887e0cb8dcdfdcb582f691` |
| 28 | `theorem` | [aeval_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-comp.md) | 262 | `result-track:2699e969f1a8ea8d938997b05e34955a46549a9ab5b21ffbfc385c6ca227d93c` |
| 29 | `theorem` | [aeval_algHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-alghom.md) | 267 | `result-track:c934c088cb5bdfa341de56a0111b21540ef5e0377ed3fbb394e1fa9c50686726` |
| 30 | `theorem` | [aeval_X_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-x-left.md) | 272 | `result-track:8998a0ee1ace3d2eea29aa171e0bf32545e67f2fccebb0546fb01e26c9c5a128` |
| 31 | `theorem` | [aeval_X_left_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-x-left-apply.md) | 277 | `result-track:842f299342a688b31af5d37b656d464dbb9de706af9b5820a1c1644d9d561859` |
| 32 | `theorem` | [eval_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/eval-unique.md) | 282 | `result-track:7d3e49dd6a49993c2b28e10f3e975dff88757cf0e09bed7f7595caf66f184249` |
| 33 | `theorem` | [aeval_algHom_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-alghom-apply.md) | 286 | `result-track:df3f8f6bc430b7e27e4dcbfee8e7241ba91b663c5fd817ebc473211e347adc65` |
| 34 | `theorem` | [aeval_algEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-algequiv.md) | 293 | `result-track:db9e2bc4d4b2a845fd292e7cda4f658288680fb52a5a42a43d8db0d51b28d943` |
| 35 | `theorem` | [aeval_algebraMap_apply_eq_algebraMap_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-algebramap-apply-eq-algebramap-eval.md) | 297 | `result-track:071214e265bff931ae347369ea34ee351eb6eda667afd5ce9749d68a7f3d46b6` |
| 36 | `theorem` | [coe_aeval_eq_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/coe-aeval-eq-eval.md) | 303 | `result-track:f1c5401f20d77379587d3f4d3960de0fade1321f30ed111e4e581abbcefe13b7` |
| 37 | `theorem` | [coe_aeval_eq_evalRingHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/coe-aeval-eq-evalringhom.md) | 308 | `result-track:ee6a6b4bdc08541cbcef6db7824b30d4f575d9ad2870130764639398e9b37abb` |
| 38 | `theorem` | [aeval_fn_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-fn-apply.md) | 314 | `result-track:c5662622b82834489519f9d888e58a44d70e31b79584d6a855b4ff2c1b7600eb` |
| 39 | `theorem` | [aeval_subalgebra_coe](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-subalgebra-coe.md) | 320 | `result-track:934a89b003b269787f34b7bd7bb1d2a45584c3d04d14db7be705af273c538a95` |
| 40 | `theorem` | [coeff_zero_eq_aeval_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/coeff-zero-eq-aeval-zero.md) | 325 | `result-track:053c1b9478d0bdea102d0ef81e403ba79a1b770774a0c57dddde9c30bde6c593` |
| 41 | `theorem` | [coeff_zero_eq_aeval_zero'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/coeff-zero-eq-aeval-zero-source-edition-2.md) | 329 | `result-track:05abd79dab5f9dcfcc9cf0451f9981c243ee50731012f5bbe6aa4acd8eaa192c` |
| 42 | `theorem` | [map_aeval_eq_aeval_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/map-aeval-eq-aeval-map.md) | 333 | `result-track:89ee37da09911f2ffdd67e241862f664634b6c3f9d5789be99c4f449b446ec48` |
| 43 | `theorem` | [aeval_eq_zero_of_dvd_aeval_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-eq-zero-of-dvd-aeval-eq-zero.md) | 341 | `result-track:f66b1ac503587706736b55c1551d5b45b3ede7ab438c41434f2ec5725bb852dc` |
| 44 | `theorem` | [Data Polynomial Algebra Map Namespaced](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/adjoin-singleton-eq-range-aeval.md) | 349 | `result-track:9f86cae48241c49357bc61accc8de50ebd8c7feeea5e630a0331c72e65583cbc` |
| 45 | `theorem` | [aeval_eq_sum_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-eq-sum-range.md) | 360 | `result-track:20746266074dd1a4e8b42fdbdbaa5a139a52ef2184fadc2ad97446358bede306` |
| 46 | `theorem` | [aeval_eq_sum_range'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-eq-sum-range-source-edition-2.md) | 366 | `result-track:815910bf9a81b10f459cd98535b4f38f2733aabf26eb9ee6b94a99d412e1f21e` |
| 47 | `theorem` | [isRoot_of_eval₂_map_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/isroot-of-eval-map-eq-zero.md) | 372 | `result-track:8d38b5c89deeb6de468362465498eb0d47788657c4aedcaa587583033ead05c1` |
| 48 | `theorem` | [isRoot_of_aeval_algebraMap_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/isroot-of-aeval-algebramap-eq-zero.md) | 379 | `result-track:59226ff74307492bd3f56e86c32509ca45a3f9dde1707cd5ac4f06182b5ec48f` |
| 49 | `def` | [aevalTower](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower.md) | 395 | `declaration-track:ae8f0d50711935ad849803100c3fb7dcf6e4fa9df643de9c19fbe11a5faa04f4` |
| 50 | `theorem` | [aevalTower_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-x.md) | 402 | `result-track:43f011a3151ae0c34d0b670eb4772f0ee1c7b1a31f4779336f8961e3c4bd7976` |
| 51 | `theorem` | [aevalTower_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-c.md) | 408 | `result-track:a524b8e93ffd3307e8ea145ee3f001a4f4f7470bc9598a69d051bf0acffcd1ff` |
| 52 | `theorem` | [aevalTower_comp_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-comp-c.md) | 414 | `result-track:77aa8bc9c507f5ccd517393084e42ba6e384329e761ef82d5fa8fc6573f7c98f` |
| 53 | `theorem` | [aevalTower_algebraMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-algebramap.md) | 420 | `result-track:fcfbd88336a579ad5c4bf39a16e66cc8002d38bb71ce630f5ab054ad69f97b60` |
| 54 | `theorem` | [aevalTower_comp_algebraMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-comp-algebramap.md) | 425 | `result-track:5662bc2eefa9106d6f28c984df16c06c2bd46c2f1a04993fb8541eb807a762ba` |
| 55 | `theorem` | [aevalTower_toAlgHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-toalghom.md) | 429 | `result-track:94e57bdabf7187c41a2340bcf7f6f316a8bbae76c4705f5216c2bbc8e9feaeeb` |
| 56 | `theorem` | [aevalTower_comp_toAlgHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-comp-toalghom.md) | 434 | `result-track:7bc15c10a5165563cc5edb4e828bc48069d69199592d18a4c1de1df86266b360` |
| 57 | `theorem` | [aevalTower_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-id.md) | 439 | `result-track:8add226929e6dc44352b57f035c9334d85d258c299409698f933b5c4c08d3b3b` |
| 58 | `theorem` | [aevalTower_ofId](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aevaltower-ofid.md) | 445 | `result-track:03befbfa5a6b54a9b0686f8fca382eb129ce8988ff244ffedd02544fa9e1e069` |
| 59 | `theorem` | [dvd_term_of_dvd_eval_of_dvd_terms](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/dvd-term-of-dvd-eval-of-dvd-terms.md) | 458 | `result-track:fb34b6be85f3a23f0861b504b83ecdf0d49a612c061266a82a9c2bf6d4060f42` |
| 60 | `theorem` | [dvd_term_of_isRoot_of_dvd_terms](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/dvd-term-of-isroot-of-dvd-terms.md) | 472 | `result-track:747c02dc50fcea7461962c01f7cdd0bf58f9e1eb3ec94e409a6eea529d483e3a` |
| 61 | `theorem` | [eval_mul_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/eval-mul-x-sub-c.md) | 491 | `result-track:3a8af8d332df4a5c61fd9752f4e4a183c3a553ad212f956d4efed554100c1548` |
| 62 | `theorem` | [not_isUnit_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/not-isunit-x-sub-c.md) | 511 | `result-track:071cc3095ae81c8ce786e01f88e445725ee1ea49950b6381fa0b05fe174c6cda` |
| 63 | `theorem` | [aeval_endomorphism](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialAlgebraMapNamespaced.lean/declarations/aeval-endomorphism.md) | 518 | `result-track:3440b3499879a38207bca7af9bb3a7874b8e561c747830710dbda9510fb3f383` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdc1e377a08ec881572709d5622e26ece7d7ef4a81fdd7fc7cb7bd8f21da8233 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
