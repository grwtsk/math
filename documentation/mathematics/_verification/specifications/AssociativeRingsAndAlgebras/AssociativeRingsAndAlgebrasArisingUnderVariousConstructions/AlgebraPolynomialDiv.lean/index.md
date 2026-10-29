# Verification target: Algebra Polynomial Div

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e15cd3fb523371c524168aed531903cafdbbce8",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e15cd3fb523371c524168aed531903cafdbbce8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.IsField` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Inductions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [X_dvd_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/x-dvd-iff.md) | 37 | `result-track:3beacd463aea477bd95e594ef605eda0ac31e41a0d6dece829b7244cab5d5961` |
| 2 | `theorem` | [X_pow_dvd_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/x-pow-dvd-iff.md) | 41 | `result-track:43256362ef4965ad11b34d2d1ff9afbf285a38da5795e1ee090b4b791f755e37` |
| 3 | `theorem` | [finiteMultiplicity_of_degree_pos_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/finitemultiplicity-of-degree-pos-of-monic.md) | 57 | `result-track:553c9ba888d7af5146151edfea5f74e3a25802e151cd52964269d9649779c061` |
| 4 | `theorem` | [div_wf_lemma](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/div-wf-lemma.md) | 89 | `result-track:9bd30430a9251c956f61416cb9ecf6d1c2604c42413cb22520740cd31e1c6a6d` |
| 5 | `def` | [divModByMonicAux](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/divmodbymonicaux.md) | 103 | `declaration-track:db84f5c2218b5d8b5a4c5d9e3d7399a3d35ba121afac02f7d654e7ccf2bc8c0b` |
| 6 | `def` | [divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/divbymonic.md) | 115 | `declaration-track:c2657ea09c5c6d05dbeb93374ac8f4d7cce9c17188b1314333693f236ce41573` |
| 7 | `def` | [modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic.md) | 120 | `declaration-track:8ff20b35aae5542153e4128e61734b5bf115f202fafd2a1cb536552cc676bdb6` |
| 8 | `theorem` | [degree_modByMonic_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/degree-modbymonic-lt.md) | 130 | `result-track:0be01244803281b48f8848850d021d39048f4f4e2fed6b12e9aa8f22cb7b18dd` |
| 9 | `theorem` | [natDegree_modByMonic_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/natdegree-modbymonic-lt.md) | 159 | `result-track:59a63c563064d6768de99036d575360522e9776520d4e0fb1561b9e4bb62c7bd` |
| 10 | `theorem` | [zero_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/zero-modbymonic.md) | 169 | `result-track:d1706fae62ca581238e3bc994b6aa61040ef0092ec3c73a8fb5b22774b9db4fe` |
| 11 | `theorem` | [zero_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/zero-divbymonic.md) | 178 | `result-track:eb39483dc4c8ad110c409a7b2c1e90064ee9b6ccc2a0d8c3d2f5915e31def008` |
| 12 | `theorem` | [modByMonic_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-zero.md) | 187 | `result-track:b42d117a00b7cc74365f3a5fbe5b77dc854eb72db416e3a8a9dfe373f7cd6e71` |
| 13 | `theorem` | [divByMonic_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/divbymonic-zero.md) | 195 | `result-track:e40699999df24e06261195ef939400512d9afac35951b0e25ef49c9fc161947a` |
| 14 | `theorem` | [divByMonic_eq_of_not_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/divbymonic-eq-of-not-monic.md) | 202 | `result-track:f66e2d61a08dad883a5188d2a766a9c9986717a042093d2d3dbb00a7fa298d5a` |
| 15 | `theorem` | [modByMonic_eq_of_not_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-eq-of-not-monic.md) | 205 | `result-track:44fe7b77d447e7816786e6d448a5285aa565c288d0e5a1faa5e0d4ead9b331f9` |
| 16 | `theorem` | [modByMonic_eq_self_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-eq-self-iff.md) | 208 | `result-track:2a1d611927d9c6c1a911f557c5a30316ece2aae3b32a49e517bcad76d892809a` |
| 17 | `theorem` | [degree_modByMonic_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/degree-modbymonic-le.md) | 214 | `result-track:72a815fc2c05c87ca6df2535b59ac416971230e57420902b92c3573a9b1b827d` |
| 18 | `theorem` | [degree_modByMonic_le_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/degree-modbymonic-le-left.md) | 218 | `result-track:a6dffb2209210e8bcde3cb70cf536e295c8694f1926ee2f8443ae91f97943026` |
| 19 | `theorem` | [natDegree_modByMonic_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/natdegree-modbymonic-le.md) | 226 | `result-track:a3065df500d85da1647c8436c90a151d98d0d056598c9ce6cf87090a79ab209a` |
| 20 | `theorem` | [natDegree_modByMonic_le_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/natdegree-modbymonic-le-left.md) | 230 | `result-track:8dd5a45dc4a2c087a2c0d8a86ad9897a0f663cebe9be717763350dd777fefdca` |
| 21 | `theorem` | [X_dvd_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/x-dvd-sub-c.md) | 233 | `result-track:27d60afa4efc6f2816c81eaedc80fd5d3769840836d7bf0eec480374d5915ade` |
| 22 | `theorem` | [modByMonic_eq_sub_mul_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-eq-sub-mul-div.md) | 236 | `result-track:5a9a6402ac133f0764d29691194c6786ae9335339a809c4fdc9415b78ed4b187` |
| 23 | `theorem` | [modByMonic_add_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-add-div.md) | 257 | `result-track:dba8b9b2be6bbfe8710a0aa5f580e2ffece459b084ee0b7e3c99632083b1b410` |
| 24 | `theorem` | [divByMonic_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/divbymonic-eq-zero-iff.md) | 260 | `result-track:bc2b77043ce8978d5643b2170a0f33be14478bc9d0c91464a88a18158449b374` |
| 25 | `theorem` | [degree_add_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/degree-add-divbymonic.md) | 269 | `result-track:eec98ff22fefa865f09342c4c891ca4d4c83e6cc6247e2f9a313d138110ee93a` |
| 26 | `theorem` | [degree_divByMonic_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/degree-divbymonic-le.md) | 287 | `result-track:5c3555b89d6b7643f7d8ae8e44fa132705b866c65051e68f7be3f54bd3244ccb` |
| 27 | `theorem` | [degree_divByMonic_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/degree-divbymonic-lt.md) | 302 | `result-track:3d83e87f2d3907d1068415926b1aa0419ce3317a91d98475197ac555aff77aac` |
| 28 | `theorem` | [natDegree_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/natdegree-divbymonic.md) | 317 | `result-track:20149b76614763237a5b3a8ace7b28538fcf8ef88d7406dac79770b70275e700` |
| 29 | `theorem` | [div_modByMonic_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/div-modbymonic-unique.md) | 336 | `result-track:64e3ae2b9bc1a9077110505ab8fa4bf7c066c61170246e79965292aa290264cd` |
| 30 | `theorem` | [map_mod_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/map-mod-divbymonic.md) | 360 | `result-track:03fbe738698a9c6d0f7ad5f590fbacb1122f2da10f7ae2cd94242baa231c54ff` |
| 31 | `theorem` | [map_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/map-divbymonic.md) | 376 | `result-track:7bede641a83c3da7175a9963eb7d3c04855a9be0cbba6cbe2f1d5c2b5a566e61` |
| 32 | `theorem` | [map_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/map-modbymonic.md) | 380 | `result-track:c49f522ad3aca03b2665f1e341e915a2c107d51afb0179a7b40e15cc6be9e431` |
| 33 | `theorem` | [modByMonic_eq_zero_iff_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-eq-zero-iff-dvd.md) | 384 | `result-track:6ba8f7ad8d5e05dbe1cbe279ebce2c0a1c125b6f7ab387ecffd47ac758557b10` |
| 34 | `lemma` | [self_mul_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/self-mul-modbymonic.md) | 404 | `result-track:9064740120f352bdb76561071ea24c32e3831949856446603fc24297ec99de35` |
| 35 | `theorem` | [map_dvd_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/map-dvd-map.md) | 408 | `result-track:d8279abe8ebecfb851899e5b91ecab58fcc65c885a7e9dc413dad0b84c106512` |
| 36 | `theorem` | [modByMonic_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-one.md) | 417 | `result-track:c5644bef452690de846d10395eee1cfc61caf8da0d2651907a9d766534c59f7d` |
| 37 | `theorem` | [divByMonic_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/divbymonic-one.md) | 421 | `result-track:64ed55b116929bacdc57e62154e6e65e02c97c4f3df052db0efbb09ba11077cb` |
| 38 | `theorem` | [sum_modByMonic_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/sum-modbymonic-coeff.md) | 424 | `result-track:ff2a888b5107ad1a1ebb8332422d1f3794d1b2487f6b71f672004104d04282e1` |
| 39 | `theorem` | [mul_divByMonic_cancel_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/mul-divbymonic-cancel-left.md) | 431 | `result-track:ae8473b977fd9119c2dd021cbb309308119542db5ff661589e08e73cb11b005d` |
| 40 | `lemma` | [coeff_divByMonic_X_sub_C_rec](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/coeff-divbymonic-x-sub-c-rec.md) | 438 | `result-track:dc482a78d2350fa0fd3133f1a88eed30f3e73535d23ca8b71c156788b061d9f6` |
| 41 | `theorem` | [coeff_divByMonic_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/coeff-divbymonic-x-sub-c.md) | 448 | `result-track:26c85b81766791f7495fd0183e70f74c59d968f8ca8deba41ba35b0e8d7014e7` |
| 42 | `theorem` | [not_isField](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/not-isfield.md) | 470 | `result-track:14763773111c2662354d36721724c5397753d805f0683ea05c6efe14bddf6e65` |
| 43 | `def` | [decidableDvdMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/decidabledvdmonic.md) | 482 | `declaration-track:b3cae313d04c08037eeda5af4be5124e444a98a8a107ad56b5945f0447b317cc` |
| 44 | `theorem` | [finiteMultiplicity_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/finitemultiplicity-x-sub-c.md) | 485 | `result-track:83f280fe81a49b2ac0a482da71ef3c3ff45142cff3697d99822ecec0ed320933` |
| 45 | `def` | [rootMultiplicity](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity.md) | 499 | `declaration-track:1c4ccb5b9a8f00bc81f5f7d65f3a881928cd96d699fddb98f40c28166a2600cd` |
| 46 | `theorem` | [rootMultiplicity_eq_nat_find_of_nonzero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-eq-nat-find-of-nonzero.md) | 511 | `result-track:57839859f7c1010815d3af428d43f9927e75d1a204936204f131e6445d139c74` |
| 47 | `theorem` | [rootMultiplicity_eq_multiplicity](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-eq-multiplicity.md) | 520 | `result-track:c67e5bad0c91e4f9bec47e8b1d662b0526788a5d580f1dc5035b0ce7ff1579d7` |
| 48 | `theorem` | [rootMultiplicity_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-zero.md) | 533 | `result-track:86a5f38facddcb254c9bda4cb751957173f36aae705c23fc411fe50549877eb4` |
| 49 | `theorem` | [rootMultiplicity_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-c.md) | 537 | `result-track:a0f8fe407f7bc9877110d8f3bfc182ef66f86f55da2fee9a91e1eb722c4324cd` |
| 50 | `theorem` | [pow_rootMultiplicity_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/pow-rootmultiplicity-dvd.md) | 547 | `result-track:fda1fe3704067661b86a3102cdebeb518be66e8fd1acff90d691e790ff0bdcee` |
| 51 | `theorem` | [pow_mul_divByMonic_rootMultiplicity_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/pow-mul-divbymonic-rootmultiplicity-eq.md) | 554 | `result-track:7c6218a0000670d790ae18b91caf43d967bcfcb39628dabe954f9d4dac3dd134` |
| 52 | `theorem` | [exists_eq_pow_rootMultiplicity_mul_and_not_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/exists-eq-pow-rootmultiplicity-mul-and-not-dvd.md) | 562 | `result-track:839e9edb29f3b82a1c5aa1314b235bf327d449054106984688fcb556b739bcfc` |
| 53 | `theorem` | [modByMonic_X_sub_C_eq_C_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-x-sub-c-eq-c-eval.md) | 577 | `result-track:b831ea677c262ecba1d15289cb7f5290a03a02855a16bdeae0af64ee23c14c9d` |
| 54 | `theorem` | [mul_divByMonic_eq_iff_isRoot](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/mul-divbymonic-eq-iff-isroot.md) | 592 | `result-track:60cf1f4cf94d0a343d14b3e321ce39dc0eb51ff74d33fb280a6d8b4b00db4dc5` |
| 55 | `theorem` | [dvd_iff_isRoot](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/dvd-iff-isroot.md) | 601 | `result-track:d363af478358acab2e8ff1d1231f4e3d2d34eaa0bb166a6b72db0f5cf9004c9e` |
| 56 | `theorem` | [X_sub_C_dvd_sub_C_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/x-sub-c-dvd-sub-c-eval.md) | 607 | `result-track:2fc79769fc5805053b338b04d1ef84452e705de0056da9e7e87a7ffadf103041` |
| 57 | `theorem` | [modByMonic_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-x.md) | 611 | `result-track:936e40d45314ff4bf5c49da77fd3ee6f5ad14529fee791bef9c95eecacf90e3a` |
| 58 | `theorem` | [eval₂_modByMonic_eq_self_of_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/eval-modbymonic-eq-self-of-root.md) | 614 | `result-track:308b99ffae083ca9f55d11f2d27ab409fb3ad25bff07dd038ef84509dce71b68` |
| 59 | `theorem` | [sub_dvd_eval_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/sub-dvd-eval-sub.md) | 618 | `result-track:ee3df1dfcc3ac95f77c13472caffeda373a1d426f75504e930aa21f00dfa7177` |
| 60 | `theorem` | [rootMultiplicity_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-eq-zero-iff.md) | 624 | `result-track:ea6875f21c4afd9bcc3ebff5de868c808c1370ec63363a2d0747cb15f80df7f6` |
| 61 | `theorem` | [rootMultiplicity_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-eq-zero.md) | 630 | `result-track:30f977a64b9a62cc5dc4a65defa65665b9245e55bdc248849a11a6e399bac0b9` |
| 62 | `theorem` | [rootMultiplicity_pos'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-pos-source-edition-2.md) | 634 | `result-track:749d2d5b2a0fcef1c30807a146dfa760091466b7e0f373c8f274cc55306650a0` |
| 63 | `theorem` | [rootMultiplicity_pos](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-pos.md) | 638 | `result-track:1736dafe3dffeb4e2ca6d694d722fe0f57025d2515aefe9263377b327845fa18` |
| 64 | `theorem` | [eval_divByMonic_pow_rootMultiplicity_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/eval-divbymonic-pow-rootmultiplicity-ne-zero.md) | 642 | `result-track:917f367f6263b3c16903b7b814e3ca78025450cc6ceb317d1657da339a844fda` |
| 65 | `lemma` | [mul_self_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/mul-self-modbymonic.md) | 659 | `result-track:dbfffff48e17a22079644fcc92e85047b8d8493d0a65a160e1c386366f12d730` |
| 66 | `lemma` | [modByMonic_eq_of_dvd_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/modbymonic-eq-of-dvd-sub.md) | 663 | `result-track:1bb0c22db39ba193677a7df779fca8766ad7079d27bfe1d565fa908a07492d0a` |
| 67 | `lemma` | [add_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/add-modbymonic.md) | 669 | `result-track:0ff154738f47ea34f6f64b4270f2ded3a828ac8e55f7b6ac0683e311ee18d5da` |
| 68 | `lemma` | [neg_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/neg-modbymonic.md) | 682 | `result-track:12d77990e23848e2d0c55c046d8f1fddefcf49709efbf40606b62d436cb77b4a` |
| 69 | `lemma` | [sub_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/sub-modbymonic.md) | 685 | `result-track:e87d2e092719ffcffa5bd56990baf03cae825cb47ad721d0f9cc2a407f045ee8` |
| 70 | `lemma` | [eval_divByMonic_eq_trailingCoeff_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/eval-divbymonic-eq-trailingcoeff-comp.md) | 688 | `result-track:7fbea9d1ef8615bf10c3d9c82ccc19b64252347aa0e4e859c9c3fe5cc7e32ec5` |
| 71 | `lemma` | [le_rootMultiplicity_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/le-rootmultiplicity-iff.md) | 710 | `result-track:153384fedad4eed565b7f9a03b8a5fba4ad20ab06a2e1c391f7f462db5651a64` |
| 72 | `lemma` | [rootMultiplicity_le_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-le-iff.md) | 721 | `result-track:ca78afa55856d7a30160d39da09648830460aace8228a4d4fb64766f7d793398` |
| 73 | `lemma` | [rootMultiplicity_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-add.md) | 726 | `result-track:f30350f22d849650ebe53d439f34afd6d90304fd77db9e803406af59bc7254f4` |
| 74 | `lemma` | [le_rootMultiplicity_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/le-rootmultiplicity-mul.md) | 731 | `result-track:b1be8ed21af2803c5ddcd55d7897f74a4acf073406270ee1624ffd4dc3604fa5` |
| 75 | `lemma` | [pow_rootMultiplicity_not_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/pow-rootmultiplicity-not-dvd.md) | 736 | `result-track:2570dad09c3deaadf4a9d6819bbc92ff4d60ddd356fb5b8938b99eba28e78d8b` |
| 76 | `lemma` | [rootMultiplicity_eq_natTrailingDegree'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/rootmultiplicity-eq-nattrailingdegree.md) | 740 | `result-track:04c8c4474ef8e62cc2fab7d65a339711664ee4bc37fe78bc5a586a9883220402` |
| 77 | `lemma` | [leadingCoeff_divByMonic_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/leadingcoeff-divbymonic-of-monic.md) | 751 | `result-track:eebeb4eacd65efb193c874cb91548192a17a1a1f80b8e3e18b710db06ea7b0af` |
| 78 | `lemma` | [degree_eq_one_of_irreducible_of_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/degree-eq-one-of-irreducible-of-root.md) | 764 | `result-track:fb6beafd75fe32be35ef927712c3b9dfd8b804190c0a48f2c539775e95b03622` |
| 79 | `lemma` | [leadingCoeff_divByMonic_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/leadingcoeff-divbymonic-x-sub-c.md) | 775 | `result-track:75c0e8d7dd66856ee1a06cf373b150f0515f2b81c683fba2ced1e4d7aaad429e` |
| 80 | `lemma` | [eq_of_dvd_of_natDegree_le_of_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/eq-of-dvd-of-natdegree-le-of-leadingcoeff.md) | 783 | `result-track:00bbb1bcb817262a916e170938bfd656ac27b048eb4220bd46b322c81d836f9d` |
| 81 | `lemma` | [associated_of_dvd_of_natDegree_le_of_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/associated-of-dvd-of-natdegree-le-of-leadingcoeff.md) | 796 | `result-track:f53d5e9f155004344f00bee2f50154908f9e3eab4488f666145809085e232bc8` |
| 82 | `lemma` | [associated_of_dvd_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/associated-of-dvd-of-natdegree-le.md) | 804 | `result-track:7a1800326c30842bd0949adcb146c00e704306ff655b875d39f1aef636b63308` |
| 83 | `lemma` | [associated_of_dvd_of_degree_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/associated-of-dvd-of-degree-eq.md) | 809 | `result-track:0e4c4fc52fbad736c98457c02ab81c9b71f79f38f21f31c8eec534cd0d802d68` |
| 84 | `lemma` | [eq_leadingCoeff_mul_of_monic_of_dvd_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/eq-leadingcoeff-mul-of-monic-of-dvd-of-natdegree-le.md) | 814 | `result-track:25d0d32432ce02fd604d92dee04e9403ba7dee69806aa8b00282ff4a68a6f804` |
| 85 | `lemma` | [eq_of_monic_of_dvd_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDiv.lean/declarations/eq-of-monic-of-dvd-of-natdegree-le.md) | 829 | `result-track:48d7769b3bd45e6e049da6726f31e5dac02e9f90cca7b3f1beca4854135f9618` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fad2de0e7d1a0410c27a2fad264409d0670753449aeaa2618ae78a6c7c15def -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
