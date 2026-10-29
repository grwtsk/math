# Verification target: Data Polynomial Derivative Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8da881b3ac25b0df10cfc4e153e7b05324c1636",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8da881b3ac25b0df10cfc4e153e7b05324c1636`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Iterate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative.md) | 47 | `declaration-track:992773cc252d2c637556b7e1a6cca5b6c1b8e7e66c8c5eb5a84b6e6bcf3cd639` |
| 2 | `theorem` | [derivative_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-apply.md) | 60 | `result-track:c9312389bd5aa0d221ef4a8de02f6c597092bf81c00a66534dcb8c5ef2cc9a4d` |
| 3 | `theorem` | [coeff_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/coeff-derivative.md) | 64 | `result-track:fa723662680e28333a8c5fc4c347735848cd560e9c6a3294400efda8d4282507` |
| 4 | `theorem` | [derivative_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-zero.md) | 84 | `result-track:c10372200603c6ef5f54109f45abecceea38aaaf931f6ed4e255151087dd85e2` |
| 5 | `theorem` | [iterate_derivative_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-zero.md) | 89 | `result-track:ca7cb13bebeb691f2b3b2ad64af807e2484ff3b7e1e97c86f6c156fdc94a8998` |
| 6 | `theorem` | [derivative_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-monomial.md) | 96 | `result-track:b16f30efd60541d922c5f5e6948d0c611e52b5b4b34a45d02d16c5c9e0e4cf43` |
| 7 | `theorem` | [derivative_C_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-c-mul-x.md) | 102 | `result-track:30a6c6a843ab2e50a3340e5116fd76a3c4d302daf463a12bc0c1ea264f6f1c0d` |
| 8 | `theorem` | [derivative_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-c-mul-x-pow.md) | 107 | `result-track:2decf7ea7b0db9dfb83ff1c324e45e9ba7f59f2a0c444f6add824d4729a71eee` |
| 9 | `theorem` | [derivative_C_mul_X_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-c-mul-x-sq.md) | 113 | `result-track:0ef6c971778c7c12fff5e8300886987c20e6acd580e8bfee0176811e9c05c54d` |
| 10 | `theorem` | [derivative_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-pow.md) | 119 | `result-track:bf7062275bc8c9d52ef2eeb2ed1cb2d582fd5d26af766d010a91d2cbc08369d4` |
| 11 | `theorem` | [derivative_X_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-sq.md) | 125 | `result-track:475b53e45bef49409fd7c426e82ea41182ac5a67134cce7b378f9e38df20e932` |
| 12 | `theorem` | [derivative_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-c.md) | 131 | `result-track:b7605832692164296b0b4fa6517676981e936cc8076f60592eba1e8b0306138a` |
| 13 | `theorem` | [derivative_of_natDegree_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-of-natdegree-zero.md) | 135 | `result-track:2f9edf90720d46e1ef8b6f6217097378f4ce837948d723d71db46d3c50d8c235` |
| 14 | `theorem` | [derivative_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x.md) | 140 | `result-track:82dc98de97e06e2b813efcf3a4cffe6e30f945600b934cbdb2de0cb1c4c03e14` |
| 15 | `theorem` | [derivative_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-one.md) | 146 | `result-track:1790eb1b33acd78d5b43017477341c6221ba7370f53f4b99e77f0b7630dbdc08` |
| 16 | `theorem` | [derivative_bit0](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-bit0.md) | 152 | `result-track:30a3e534900840d3c7eb30545b4c50037ad1df7fa7226efd84a27989eb41eb92` |
| 17 | `theorem` | [derivative_bit1](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-bit1.md) | 157 | `result-track:293d29e38c96b7db8b3c83f2201961cb7298513103b2088adf48283031c4ddf4` |
| 18 | `theorem` | [derivative_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-add.md) | 161 | `result-track:156ac58cee64f43e20d0bed6cd3ce3d8c5c641330d999cfb1bd2433827bcef56` |
| 19 | `theorem` | [derivative_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-add-c.md) | 166 | `result-track:790c57e44825823ebd8e62658fa640d96e8e31ef8fef3f23c99f6ef5a4112888` |
| 20 | `theorem` | [derivative_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-sum.md) | 172 | `result-track:9499eddb377721b150830e0ad9d8039f8f33445271d311dc01dbcd0db2ee9297` |
| 21 | `theorem` | [derivative_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-smul.md) | 178 | `result-track:c4c23db14bf8cf8feeeea132b21179853403aaabb698ce27f084fbd893c58e1d` |
| 22 | `theorem` | [iterate_derivative_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-smul.md) | 184 | `result-track:ac607fe4b43b1ff79da9ac8740fb7d2fb6b37a29c3291c8da745c6c63b63416c` |
| 23 | `theorem` | [iterate_derivative_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-c-mul.md) | 192 | `result-track:f4013c32b1b522bb169554f085f1963434e44f77eb2a3bc7e3743a34eaff9057` |
| 24 | `theorem` | [of_mem_support_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/of-mem-support-derivative.md) | 198 | `result-track:bbe4be5193ffa207ba6ff379bcc2a1dd582b82fec05f92201137969e574761d3` |
| 25 | `theorem` | [degree_derivative_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/degree-derivative-lt.md) | 204 | `result-track:1e84375edc228dec53c60a5e7b844c80a5069edd6250d614abfa199cf0089c8c` |
| 26 | `theorem` | [degree_derivative_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/degree-derivative-le.md) | 210 | `result-track:11b0abd242b961e3171fa073973025a883a2a4fc325676830349114503c605e7` |
| 27 | `theorem` | [natDegree_derivative_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/natdegree-derivative-lt.md) | 214 | `result-track:12c75da262abbbc3080dd7b3ef171a4c28f61aabd61dd103f4b4e7876f4d4fab` |
| 28 | `theorem` | [natDegree_derivative_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/natdegree-derivative-le.md) | 223 | `result-track:12bd287a226b5c4d1cd92c14c60c20380e4dde93d137e238a3e3a1970466526f` |
| 29 | `theorem` | [derivative_nat_cast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-nat-cast.md) | 230 | `result-track:02ccd32a79ab7bead2f14075d81e8545d21ffbf8ffbc2251f853b32380b7359f` |
| 30 | `theorem` | [derivative_ofNat](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-ofnat.md) | 237 | `result-track:421e78f033570b8658dc760f10a6b2936433ce9b4a67c5c560f33f163b04782b` |
| 31 | `theorem` | [iterate_derivative_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-eq-zero.md) | 241 | `result-track:cb3bc5e49b71bcdf49a46074526533b7d463490f92fc346a9c1a19f5778dc828` |
| 32 | `theorem` | [iterate_derivative_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-c.md) | 254 | `result-track:a12471865118755385501c47c07ef557812b8262be406eacafce6b12caa4e46b` |
| 33 | `theorem` | [iterate_derivative_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-one.md) | 260 | `result-track:f612fda2f11088162ca05a857697c08baca416baaccb790204225f379a126d38` |
| 34 | `theorem` | [iterate_derivative_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-x.md) | 265 | `result-track:ebb192908d8bc64418e937245478ddbaeb81a75ee70ea666c3376c234980877b` |
| 35 | `theorem` | [natDegree_eq_zero_of_derivative_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/natdegree-eq-zero-of-derivative-eq-zero.md) | 270 | `result-track:44f22b521dcaa60235ad4958c7fa0999b767bb6f8f632cf4a00c9bf692c4dc21` |
| 36 | `theorem` | [eq_C_of_derivative_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/eq-c-of-derivative-eq-zero.md) | 287 | `result-track:3b67b67910b1666b6d92f4dc5c85ed18a2c534f999947f361bd81adb09d3b68f` |
| 37 | `theorem` | [derivative_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-mul.md) | 294 | `result-track:5139284bfb72e6f7cc5a45612508e1ce7e1c01f0ce2857fa02b616756829f3fa` |
| 38 | `theorem` | [derivative_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-eval.md) | 330 | `result-track:1d9a97742a5a6e88a25e5e527b972f1f9e5faa3d9bb5b5e1bd15dce1b8e862bc` |
| 39 | `theorem` | [derivative_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-map.md) | 336 | `result-track:65715c0e64a2a32e2ed2f74fd5b9e0c1aad40c203846859d861308538dde3cf2` |
| 40 | `theorem` | [iterate_derivative_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-map.md) | 348 | `result-track:9b9643deaabf9295a8f7a2a116279f5ec7af4fbc77ebacf7e148fcc2de1839b8` |
| 41 | `theorem` | [derivative_nat_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-nat-cast-mul.md) | 355 | `result-track:1bca34f6063100aade6d72d1b2b6475a203791a708bdc3cf8db5c2a0a5b8bee7` |
| 42 | `theorem` | [iterate_derivative_nat_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-nat-cast-mul.md) | 361 | `result-track:7a336fbe76e44879a915c98a535f437be1a9371d1486b512ef1e43b59a3e4488` |
| 43 | `theorem` | [mem_support_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/mem-support-derivative.md) | 366 | `result-track:213e49622d369678c659ec6707a2161bcd30bd8e7bd35f3db0ef443f54264cea` |
| 44 | `theorem` | [degree_derivative_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/degree-derivative-eq.md) | 375 | `result-track:e4a48bfa76e81185322540c5c3cfd01dda6c0da7021e09ae0df04e31bfbe34d5` |
| 45 | `theorem` | [coeff_iterate_derivative_as_prod_Ico](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/coeff-iterate-derivative-as-prod-ico.md) | 394 | `result-track:76a42d60a86e342c4a1eeb9e1e81e3ed1d5ccf08e16ea2006e8b9193f22949c3` |
| 46 | `theorem` | [coeff_iterate_derivative_as_prod_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/coeff-iterate-derivative-as-prod-range.md) | 413 | `result-track:fa3a15d5d9c4570292b1cb8a82468126a67bc9d948aa602bc066dbe755bf2267` |
| 47 | `theorem` | [iterate_derivative_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-mul.md) | 428 | `result-track:8a82e9530a0205f5ff396c633eb08dff1c00181e5202e83a4d393310b2df7cd0` |
| 48 | `theorem` | [derivative_pow_succ](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-pow-succ.md) | 477 | `result-track:3c21893aab5cb106da85db1aa266b6015810b4ed7e2c140b72c3fa214e6807b7` |
| 49 | `theorem` | [derivative_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-pow.md) | 484 | `result-track:159f4c842a8db5cb22f58df5e4f872aba86dbd35bcef1911111b8e21a198d475` |
| 50 | `theorem` | [derivative_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-sq.md) | 490 | `result-track:836010e9632d81f8521555ef15e75c67de34bdc0a62b6aa22d2af7e468a81fd1` |
| 51 | `theorem` | [dvd_iterate_derivative_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/dvd-iterate-derivative-pow.md) | 494 | `result-track:206dcbf2b9a0da51b780bafcc569f8e584dcca7cb6c0e6254fc4d7ac2aa3af6e` |
| 52 | `theorem` | [iterate_derivative_X_pow_eq_nat_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-x-pow-eq-nat-cast-mul.md) | 502 | `result-track:c8a1d65e7f09471efb319a8b6ec44110c3e62bd11233d50c19f7559e3974c4c2` |
| 53 | `theorem` | [iterate_derivative_X_pow_eq_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-x-pow-eq-c-mul.md) | 512 | `result-track:6894b8f479cd3e0ee393c3ed5685f996fdd460e01d3cc5feca98a4265c6617b8` |
| 54 | `theorem` | [iterate_derivative_X_pow_eq_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-x-pow-eq-smul.md) | 518 | `result-track:1ef9bc3b2a898a0594280820c1de0296284537d7b57037fe3c3704666d7aae96` |
| 55 | `theorem` | [derivative_X_add_C_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-add-c-pow.md) | 524 | `result-track:dbb17038b14f89943974b194a73e2dddfc3bb2041092c3937112a8fecdf31e1c` |
| 56 | `theorem` | [derivative_X_add_C_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-add-c-sq.md) | 530 | `result-track:7dac33aacf817dc1144e5762fb6d0b2195f0f252aea323e0d12ef38ad42a2656` |
| 57 | `theorem` | [iterate_derivative_X_add_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-x-add-pow.md) | 535 | `result-track:2df84c510ec8a78a760680348374e2dd4e738866b3b0415f7271487e1e0faa4b` |
| 58 | `theorem` | [derivative_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-comp.md) | 546 | `result-track:4a7676e7d2b84d96202c688ef87b7ae28f347d89187c3a3222a786f3aa59a6a5` |
| 59 | `theorem` | [derivative_eval₂_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-eval-c.md) | 556 | `result-track:b43ba991f792dd1e889a7d9a2d453002133d8ee76aa647565a012edf3d06b996` |
| 60 | `theorem` | [derivative_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-prod.md) | 567 | `result-track:dcf936535dc53aea10c73333df3344ca0e45f4e50d13185c861572c4c039e027` |
| 61 | `theorem` | [derivative_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-neg.md) | 591 | `result-track:b7fee567e205f474b1169d2964c39d859d2237293ac84cf0f2e5b041d1bd7bb3` |
| 62 | `theorem` | [iterate_derivative_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-neg.md) | 596 | `result-track:0bd0c2edfd637b1c90991e27bcc58c969e64482cd20b434c5f013662a0a4e1c6` |
| 63 | `theorem` | [derivative_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-sub.md) | 601 | `result-track:cc4c65c53cbda9310cdf7774784da626ba70392bccf31c09b20e6eeeda7ab0b6` |
| 64 | `theorem` | [derivative_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-sub-c.md) | 606 | `result-track:cbc2a184a375c7769924f5746d54533532319feee50fea23e8d8d04fcd7c3b66` |
| 65 | `theorem` | [iterate_derivative_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-sub.md) | 612 | `result-track:048e1c0cf23a3ba9e377692093197ddccd0400704ad05594236e8758259a2466` |
| 66 | `theorem` | [derivative_int_cast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-int-cast.md) | 618 | `result-track:c858c1d8e4fa6f5f25afb726ecf94853e80edd40fa9b4aecaf9a35829345fef4` |
| 67 | `theorem` | [derivative_int_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-int-cast-mul.md) | 623 | `result-track:efab345a6234c04d1bc9ad316db3e5e1f9e9ea5f62b981328e2951e353a18f00` |
| 68 | `theorem` | [iterate_derivative_int_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-int-cast-mul.md) | 629 | `result-track:428a825464d4a18dfead2d51a74b8a51c63b3e6ed1b62693cab24daa7e6fc245` |
| 69 | `theorem` | [derivative_comp_one_sub_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-comp-one-sub-x.md) | 640 | `result-track:9188e4b1ec4406b9dc8e73568cd6526a54dd9f74a44f707d4775b5b1fc00dec9` |
| 70 | `theorem` | [iterate_derivative_comp_one_sub_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-comp-one-sub-x.md) | 646 | `result-track:a6183ba1271c3c18570340acb490dc5647f39f1c55ff1a0125cbc1aff8eb90f1` |
| 71 | `theorem` | [eval_multiset_prod_X_sub_C_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/eval-multiset-prod-x-sub-c-derivative.md) | 654 | `result-track:e293a05894758212023a6513d0a0e2e8e5e23135ab1ae5e3c75cf30c8e782000` |
| 72 | `theorem` | [derivative_X_sub_C_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-sub-c-pow.md) | 663 | `result-track:a524d1b48b9549ea7884d703a940ab947939dee179524fa7ebccde6facf340ec` |
| 73 | `theorem` | [derivative_X_sub_C_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/derivative-x-sub-c-sq.md) | 669 | `result-track:289eff41d75c0e0d87835a98e9aec8d1e45411599ec08686caee39077a6f449e` |
| 74 | `theorem` | [iterate_derivative_X_sub_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivativeNamespaced.lean/declarations/iterate-derivative-x-sub-pow.md) | 674 | `result-track:10e4c8b77a9c2fe79e9bdb105a21a3422acf800fb424fc32556071cb5c04bb13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b345a4dafa71c10da028e851ab07334cbcdf7b67e4fc50a7738d46d2b98571f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
