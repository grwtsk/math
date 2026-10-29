# Verification target: Data Polynomial Derivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbf660a76a393947aa69c8343243d3d817fb5941",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbf660a76a393947aa69c8343243d3d817fb5941`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Iterate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative.md) | 39 | `declaration-track:f676ad385a79be8bc3a7025baf2958a5cb3927e14e0dfd5fba7c1548c8c1b024` |
| 2 | `theorem` | [derivative_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-apply.md) | 52 | `result-track:53048e1a493ba172a1a2ed8ea05d514fa56fd034db0fe0b9a0d1aae3acf7dbac` |
| 3 | `theorem` | [coeff_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/coeff-derivative.md) | 56 | `result-track:5f7d70ef48deec7985a2a563fd908b6e0fbb4d16786531967d7749560be3e8c3` |
| 4 | `theorem` | [derivative_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-zero.md) | 76 | `result-track:0e0b6915bd7f554fd9acbbf9c9f39d0acfc0967771f724147a6ed49876a15e3e` |
| 5 | `theorem` | [iterate_derivative_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-zero.md) | 81 | `result-track:9b6e4598556b7d68859b1e2cc52325adda1a53bd7c2098be464db8a44a042975` |
| 6 | `theorem` | [derivative_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-monomial.md) | 88 | `result-track:0c39401e8c3b4f916ba63205a7d8354e2cc6e40ed5f0443dda79beedfcf2178a` |
| 7 | `theorem` | [derivative_C_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-c-mul-x.md) | 94 | `result-track:7cfc53e9e5682a7fa64247bb524b5c5f759af964b2dd0c3804d4c3d26ee79b23` |
| 8 | `theorem` | [derivative_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-c-mul-x-pow.md) | 99 | `result-track:2c12b52e0db58328c7a0e7a99401c2914465b2e3e2d2c0227a1c8147c722bcab` |
| 9 | `theorem` | [derivative_C_mul_X_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-c-mul-x-sq.md) | 105 | `result-track:793b0683bacde3ce8359e29054c7592f9c265f5200f31d79368f046108f966ab` |
| 10 | `theorem` | [derivative_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-pow.md) | 111 | `result-track:def84aaa80bb831fa24db9cd760fa5716fe19450a1509953fcdaadc9f56ed75c` |
| 11 | `theorem` | [derivative_X_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-sq.md) | 117 | `result-track:92859cf3834357a2750f2247e820470ae9c4d8bf5fc1912e2290fc63c8e0dfba` |
| 12 | `theorem` | [derivative_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-c.md) | 123 | `result-track:2a7267bd94f27ecddebea95749985b8379501a9f6cfbbaf847a207a17350b57d` |
| 13 | `theorem` | [derivative_of_natDegree_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-of-natdegree-zero.md) | 127 | `result-track:3c1a359eb0d182cd5e7d827f87c862852339175cdf0e74a7170a33186cf85507` |
| 14 | `theorem` | [derivative_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x.md) | 132 | `result-track:d00f533758ecea3b8ca68614824eeda17bdb6702a22a3fefcf0fbfa29136ebca` |
| 15 | `theorem` | [derivative_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-one.md) | 138 | `result-track:a09de978b452f87d7ed9cbda1a9b8a3ea12a103fc3a5009264038fdc2b55b3a1` |
| 16 | `theorem` | [derivative_bit0](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-bit0.md) | 144 | `result-track:3bb936ed4ec2aa1e6d4ff7d57e095324885c8f58af549e9a43608c991a8d1fa6` |
| 17 | `theorem` | [derivative_bit1](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-bit1.md) | 149 | `result-track:978b079f534755b173afe6ba1c07048205856f3c344cf639bf94c3efab179dcc` |
| 18 | `theorem` | [derivative_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-add.md) | 153 | `result-track:cbdd197f09eb2d1cbbf9cee1e15bb3e23fed7080cc54009e483d4ed3896c54b9` |
| 19 | `theorem` | [derivative_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-add-c.md) | 158 | `result-track:eb7873c7afdc8eaf2b4bc2592aba8f37a306c866cc609e3e6bbdbbda5964f7cd` |
| 20 | `theorem` | [derivative_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-sum.md) | 164 | `result-track:e5935bd96af81574aff274216ee7c7efa52f8ed62198568b8a25769d65fd7736` |
| 21 | `theorem` | [derivative_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-smul.md) | 170 | `result-track:9b7619d369322e1e761718648ad3f00d9e61b1d8bad92c39678cd9e8f9b280ad` |
| 22 | `theorem` | [iterate_derivative_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-smul.md) | 176 | `result-track:bb97f825ff3501003a19de391df2600a8dab5dcab0e3f2d982cc3e5495f7869c` |
| 23 | `theorem` | [iterate_derivative_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-c-mul.md) | 184 | `result-track:0ac3546e9ce01becb3d140b6e315877e76a0c5ce3306f7994dd773017524d57b` |
| 24 | `theorem` | [of_mem_support_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/of-mem-support-derivative.md) | 190 | `result-track:5b974f890ee2612c727382d4a2ebd4368a83c3dcb22b456718455ccda0de9be6` |
| 25 | `theorem` | [degree_derivative_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/degree-derivative-lt.md) | 196 | `result-track:1cc9415e972b485ca249271836557ab8d39233ceb4971aebc55e4defaf548024` |
| 26 | `theorem` | [degree_derivative_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/degree-derivative-le.md) | 202 | `result-track:6c2c94954148c826ca66e33b4145182b999594cb333d64883393514bc156f6da` |
| 27 | `theorem` | [natDegree_derivative_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/natdegree-derivative-lt.md) | 206 | `result-track:0a0836469bfe9118281089523348ea6cb4812eff672ef2db0d79c62d17ff23f6` |
| 28 | `theorem` | [natDegree_derivative_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/natdegree-derivative-le.md) | 215 | `result-track:c92554ba8962c1022d21c0755f7a209bd2d095e6cae6addb1edda0b3b8bca43a` |
| 29 | `theorem` | [derivative_nat_cast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-nat-cast.md) | 222 | `result-track:7e01d3d046fa2ad2981c478ff3b02d8531c488b50dd35f8bf3a5cefbf6f05eb6` |
| 30 | `theorem` | [derivative_ofNat](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-ofnat.md) | 229 | `result-track:36f2acb1eb3af156480295181c9b407c49216061260d5b71a7357600296e4a43` |
| 31 | `theorem` | [iterate_derivative_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-eq-zero.md) | 233 | `result-track:cac825dfda6deddbfd99f94511086db461be2997ce6c8a837ec205c52ddd46a0` |
| 32 | `theorem` | [iterate_derivative_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-c.md) | 246 | `result-track:8527052d8e8fe80c0724c16098172bf22ab67f7b5a4aa6244e3644137736aa66` |
| 33 | `theorem` | [iterate_derivative_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-one.md) | 252 | `result-track:c5a92d0ec544e55571240b8777a7be9b188b8527d1fa87fe15d9b8ecf2ffa03e` |
| 34 | `theorem` | [iterate_derivative_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-x.md) | 257 | `result-track:695f37bb8ce9ed3b5d4d3487f0c1a9f5da483bf057a6653af2a94bd89fe66e4b` |
| 35 | `theorem` | [natDegree_eq_zero_of_derivative_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/natdegree-eq-zero-of-derivative-eq-zero.md) | 262 | `result-track:1f4b5e941dd99feece86b555ffd6024b007948cd415c1a990a182a71d095e0fd` |
| 36 | `theorem` | [eq_C_of_derivative_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/eq-c-of-derivative-eq-zero.md) | 279 | `result-track:1e42a6a8d94047046ad32c40ffe4108c5102e45eec7fae48e774a9d78c72a773` |
| 37 | `theorem` | [derivative_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-mul.md) | 286 | `result-track:4b84c91c3c6e502251673e3e0d72b26f54a6c3031f51cdcbb3f45b887e906f7e` |
| 38 | `theorem` | [derivative_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-eval.md) | 322 | `result-track:22cbded01b1a5b9e66ef0abc8b026e0a191157619cf47a604dff2029c14e8176` |
| 39 | `theorem` | [derivative_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-map.md) | 328 | `result-track:404ca6307edf997102ae1bb278878b8a3da7e980dccb573e60790abfaca52db5` |
| 40 | `theorem` | [iterate_derivative_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-map.md) | 340 | `result-track:bd7383a70b52a2509a275d2cf75e52d2117073ba0f7510b208532e7693769db6` |
| 41 | `theorem` | [derivative_nat_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-nat-cast-mul.md) | 347 | `result-track:9c0a9d22d89afc18f9c22e4d2ec90cb2ffd85f8c81a40606c33029e2ed731638` |
| 42 | `theorem` | [iterate_derivative_nat_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-nat-cast-mul.md) | 353 | `result-track:cc1dad31c7a89f4576e7fd61f3761b9ef4b534130332b0e08e03044004df81b5` |
| 43 | `theorem` | [mem_support_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/mem-support-derivative.md) | 358 | `result-track:d5391a08608c963e4c495f9a95ebd2c7b19e6931fd9ddc28ed31630bdade9124` |
| 44 | `theorem` | [degree_derivative_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/degree-derivative-eq.md) | 367 | `result-track:2cd30cfeea8473d1e2e9d204bfec104ab9a9df60db14c84f963d45de0b7c3ce4` |
| 45 | `theorem` | [coeff_iterate_derivative_as_prod_Ico](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/coeff-iterate-derivative-as-prod-ico.md) | 386 | `result-track:c861febaf4ed4255454021bee2491738967c07a49ba4b1dc96f98cd8c2e83bec` |
| 46 | `theorem` | [coeff_iterate_derivative_as_prod_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/coeff-iterate-derivative-as-prod-range.md) | 405 | `result-track:069e2f1357684ae9c7dc4e6a8f20e9d9fd03f3fca4ea999b3b45fb74ff2c5fec` |
| 47 | `theorem` | [iterate_derivative_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-mul.md) | 420 | `result-track:a7ac748e624e672dbde0e7451b845edc222c8f6cc0765ed04647ca1d0fff3a35` |
| 48 | `theorem` | [derivative_pow_succ](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-pow-succ.md) | 469 | `result-track:90a80c34f10c5038500789a8ef8ee9110e5faef6230149b70be50eca5cb62bb7` |
| 49 | `theorem` | [derivative_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-pow.md) | 476 | `result-track:6502de9a77cdba8fe71831f6bbd23afd95a694a12f881a38db92e95a76a53eaf` |
| 50 | `theorem` | [derivative_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-sq.md) | 482 | `result-track:1d4462cd2d08c734b52d65dbe38190461833b2a37511a49020d8fefdf930554e` |
| 51 | `theorem` | [dvd_iterate_derivative_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/dvd-iterate-derivative-pow.md) | 486 | `result-track:f72261d0ef82661c748696a3ca1053d1b27f6548032c676bd5a6150894d455b5` |
| 52 | `theorem` | [iterate_derivative_X_pow_eq_nat_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-x-pow-eq-nat-cast-mul.md) | 494 | `result-track:17c503d3a8eefa2d234943912cb666840ceb8e58da44aa2c6c1fa8d8d1bf4cd8` |
| 53 | `theorem` | [iterate_derivative_X_pow_eq_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-x-pow-eq-c-mul.md) | 504 | `result-track:c484377ff8cd5a98ed371b515757d0be6ab12432cbadfab2dab736107863267b` |
| 54 | `theorem` | [iterate_derivative_X_pow_eq_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-x-pow-eq-smul.md) | 510 | `result-track:a663cdffc9d9a4fe7c7515ad4f7cb158217670e50b3f4bfb1f65f8115f84fdf5` |
| 55 | `theorem` | [derivative_X_add_C_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-add-c-pow.md) | 516 | `result-track:b04e4ebd8859e4a5f624e197593de85d36c62e97d7fe1588f35759065abbfd31` |
| 56 | `theorem` | [derivative_X_add_C_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-add-c-sq.md) | 522 | `result-track:3c38111fae47412bc336ecebdd7c24d71db9186cb0b686d487633d45f89e3e35` |
| 57 | `theorem` | [iterate_derivative_X_add_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-x-add-pow.md) | 527 | `result-track:76e20e9e95ed52748c890008782ceb8c88ebddad36462abcd14c0c27dd34884c` |
| 58 | `theorem` | [derivative_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-comp.md) | 538 | `result-track:e25f452478abd86faf796db6e62b805b9996824bac443ff37880ba7086bf2440` |
| 59 | `theorem` | [derivative_eval₂_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-eval-c.md) | 548 | `result-track:a16753d3c590f4f8952831b2f80a664e6b0f6c576162ab4a071d80fdd0781ee7` |
| 60 | `theorem` | [derivative_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-prod.md) | 559 | `result-track:a23d4b5187af59852e10bc69ef617c0ce0674c562bcc2d0c8935c98c71a934f3` |
| 61 | `theorem` | [derivative_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-neg.md) | 583 | `result-track:a42a4dd49d956780ca29e25b18bb7665588a50e752bd526efc99c844f65917c0` |
| 62 | `theorem` | [iterate_derivative_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-neg.md) | 588 | `result-track:f3d17d196b6e7da9a18abf3dcd96f03f7bb0991b772788a4370b8bc0adb77fae` |
| 63 | `theorem` | [derivative_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-sub.md) | 593 | `result-track:ba01dedf7581d027a279603e1dec6ada3dc0faaef4afaace78242e22b3de2bae` |
| 64 | `theorem` | [derivative_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-sub-c.md) | 598 | `result-track:106ab80e95cc7eeee3dc66c1a871b303e0f489ce696d7bfff53fcddf07a33007` |
| 65 | `theorem` | [iterate_derivative_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-sub.md) | 604 | `result-track:2cfef739426753617a23b4b47a34cc62e8e6f0dc269a46b70f50ffc01a09ce06` |
| 66 | `theorem` | [derivative_int_cast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-int-cast.md) | 610 | `result-track:f81da87f0ff119a24dedc7fa0ec320f27d1fcce99ee4033ab01e0845ada44eb4` |
| 67 | `theorem` | [derivative_int_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-int-cast-mul.md) | 615 | `result-track:8b67a42ffc071e9955867b2bc9a5fda13303022d9204818a8fe793753dec30d7` |
| 68 | `theorem` | [iterate_derivative_int_cast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-int-cast-mul.md) | 621 | `result-track:9325fd27231f0d3920b302758b96db065c67f379e690712c3d9452e336c2994a` |
| 69 | `theorem` | [derivative_comp_one_sub_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-comp-one-sub-x.md) | 632 | `result-track:988f0d9eec3ca6c43cb9d8f22a7194b8921e092e43862fd1f68a3386e836987c` |
| 70 | `theorem` | [iterate_derivative_comp_one_sub_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-comp-one-sub-x.md) | 638 | `result-track:2217ff89a9e65cbd237aa11f79732200f1931e972c1dc33b1456cafe300762ef` |
| 71 | `theorem` | [eval_multiset_prod_X_sub_C_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/eval-multiset-prod-x-sub-c-derivative.md) | 646 | `result-track:f5f20f2ec22aace27bab49584b82d48041949579924db6459a343dd61c4ee3d2` |
| 72 | `theorem` | [derivative_X_sub_C_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-sub-c-pow.md) | 655 | `result-track:8aa6137f34ff989a4031284cd0ce3fcba48e84ce5a645be62a98a998a4063ae3` |
| 73 | `theorem` | [derivative_X_sub_C_sq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/derivative-x-sub-c-sq.md) | 661 | `result-track:a9392a92e05572f8d629a9fa862c17f005797c92f2d38a6c8d194c5d48fe4d6b` |
| 74 | `theorem` | [iterate_derivative_X_sub_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/declarations/iterate-derivative-x-sub-pow.md) | 666 | `result-track:49422e00df4a5bb7724f709440db5484467d659bd2f5e4935d49778dd02006cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90c3d3001a61dd91f6068d018ea389bf4674285fc8e6a1f52c64940a035b2b2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
