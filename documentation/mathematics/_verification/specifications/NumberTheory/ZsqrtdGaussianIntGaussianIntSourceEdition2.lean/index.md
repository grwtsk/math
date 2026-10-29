# Verification target: Zsqrtd Gaussian Int Gaussian Int Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07f66b68e8c907a28d6492c227690af0dfd2841",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussianInt/Variant892263de680b98b97f6d3727f392e506285e13ca48cbdec85e98490819f42bf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07f66b68e8c907a28d6492c227690af0dfd2841`.

Source path: `GRWTSK/NumberTheory/GaussianInt/Variant892263de680b98b97f6d3727f392e506285e13ca48cbdec85e98490819f42bf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussianInt/Variant892263de680b98b97f6d3727f392e506285e13ca48cbdec85e98490819f42bf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GaussianInt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/gaussianint.md) | 46 | `declaration-track:6de02897559f3ad61367869947c24f445fecc374f17b7bddff24ee3fbe920fc3` |
| 2 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/instance-source-edition-4.md) | 53 | `declaration-track:e473b836619383e8b527971f1d41550e8c18752411e031b1c4878391d957b21a` |
| 3 | `instance` | [instCommRing](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/instcommring.md) | 56 | `declaration-track:1404ede92d2fb07a1afa6e1721a18c1b4fd3b4e54bb4eacc49f49bacb4c8fda5` |
| 4 | `def` | [toComplex](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex.md) | 64 | `declaration-track:0eeaf8a3ff37cfbcb427876501c87d1a5c0536e81bb37d601ff6659f8811063b` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:61c0da64d2b3f6bed3b048b689dae8b20f4b3d257308acd2acac93c4ceaaf57d` |
| 6 | `theorem` | [toComplex_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-def-source-edition-3.md) | 72 | `result-track:c6ee5a451f9f64ca6c6c20753a46a105481b220514ebff1dbb127f30c1118ebc` |
| 7 | `theorem` | [toComplex_def'](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-def-source-edition-2.md) | 75 | `result-track:4dc9ad5012ef24a22cd154814f5d342d66160f143500b3335f2cd633a3d8dd3d` |
| 8 | `theorem` | [toComplex_def₂](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-def.md) | 77 | `result-track:2a9ac53247c46cda68571f8a2d6551e7972fd04e10d87515a1bf15212f98e753` |
| 9 | `theorem` | [to_real_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/to-real-re.md) | 81 | `result-track:838659e8f82c8620475509221410f2b115a2636f466a7c7f1641d1fe3f0ef8bd` |
| 10 | `theorem` | [to_real_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/to-real-im.md) | 84 | `result-track:7a82218980548f0f5445d11370a69c19b67b09949f5a6261a7a2e369c19885a8` |
| 11 | `theorem` | [toComplex_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-re.md) | 87 | `result-track:22f0cbecec6bcfd3fb92f853d04f94ce335b9c02757f36e208ad4d8797cb0f33` |
| 12 | `theorem` | [toComplex_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-im.md) | 90 | `result-track:a45f0f5a9f1e716a54a91ec53792a3b138763d556dba4ca53b7c08065b35da7e` |
| 13 | `theorem` | [toComplex_add](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-add.md) | 92 | `result-track:7b73d4ab170c52c835603f5af002bdb62199b594a3ee31456aa943aa0474b08d` |
| 14 | `theorem` | [toComplex_mul](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-mul.md) | 95 | `result-track:cfe8669f905de196e0b7101012260a2947e5187472544de3c57251d4b2c8734e` |
| 15 | `theorem` | [toComplex_one](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-one.md) | 98 | `result-track:e45ad77b14c3b8d428271caec6a2fc011cc78b243eb2b7d719c78d0a7e9f4420` |
| 16 | `theorem` | [toComplex_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-zero.md) | 101 | `result-track:5abb49f5df071dd58d8bbb6450245aa8d8d330173815394dafbfc17473327a13` |
| 17 | `theorem` | [toComplex_neg](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-neg.md) | 104 | `result-track:9b845ab3403e368d779343be18839eb943ae0e01f972624367085a000e9a6f1d` |
| 18 | `theorem` | [toComplex_sub](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-sub.md) | 107 | `result-track:6b0e24691d6820ed65b4278d0108380518ff88ea58cd68265d489efaf7173b08` |
| 19 | `theorem` | [toComplex_star](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-star.md) | 111 | `result-track:8f328b8cb40cf37962e4bf8707baafb4f324bd9288c119bdb9e188e2a40def4b` |
| 20 | `theorem` | [toComplex_inj](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-inj.md) | 116 | `result-track:4b067691da2ede195ea9547b348c5d18f8db72ae9dd7d7a0d1f8acd22b1750d7` |
| 21 | `lemma` | [toComplex_injective](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-injective.md) | 119 | `result-track:03510085c4b2e03a4434ae80f39b4899bacc14c965e668ea3193b48af1b83c99` |
| 22 | `theorem` | [toComplex_eq_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-eq-zero.md) | 123 | `result-track:b1a167a3965027ea389267ae6de0c3450c5c1b73a61449f63e259881a16ff5db` |
| 23 | `theorem` | [intCast_real_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/intcast-real-norm.md) | 127 | `result-track:546ee99f5121e40fb9d6830773d6ef49532cb0869aed75e10543f88d57b46ed2` |
| 24 | `theorem` | [intCast_complex_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/intcast-complex-norm.md) | 131 | `result-track:0eed80d30a76438b468685bd5b888e3957a0249bdf96bc81240976aad0031d17` |
| 25 | `theorem` | [norm_nonneg](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/norm-nonneg.md) | 134 | `result-track:5d30d2eaac426a3c1b974ce5f8ceed8760ac7ae52352dba3fe268f779521f8c8` |
| 26 | `theorem` | [norm_eq_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/norm-eq-zero.md) | 138 | `result-track:0f463cd81f5ead07bbd72df5e385a93e6362a58eb520e5f002283c11f1b188ee` |
| 27 | `theorem` | [norm_pos](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/norm-pos.md) | 140 | `result-track:869df76242a26738545d811769b96a95ef21e194ffe956dc61fdd4a7a2adf9a5` |
| 28 | `theorem` | [abs_natCast_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/abs-natcast-norm.md) | 143 | `result-track:f8a1ca68a935030c03829e1c6df10abc30b624a211837bc9eba54707300d2c79` |
| 29 | `theorem` | [natCast_natAbs_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/natcast-natabs-norm.md) | 147 | `result-track:485e2d9d1bd00d64961df0bd107faa767d266c1688d4f0ec1fca14edb6934ed9` |
| 30 | `theorem` | [natAbs_norm_eq](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/natabs-norm-eq.md) | 151 | `result-track:b33272c04c77bea512d8a1823c58376c7d5750705c43dbb0d7a5f24922224f80` |
| 31 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/instance.md) | 155 | `declaration-track:531eb5dd52b927b6489e71f98a187df8396de60fd5937415f081d6a89fedd3c1` |
| 32 | `theorem` | [div_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/div-def.md) | 161 | `result-track:ce53866a5bcd0c9bc31519f066be8e71be92f064fffe3a89c7de7ea900132877` |
| 33 | `theorem` | [toComplex_div_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-div-re.md) | 165 | `result-track:117a196317dda341374d80b07863fd58eff9ca13ff18502a87aa14a97484c691` |
| 34 | `theorem` | [toComplex_div_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/tocomplex-div-im.md) | 169 | `result-track:e9d09469e4741b623476ff68ef1990eec7496ad9f4e8e85065b77b9cf73a3d0e` |
| 35 | `theorem` | [normSq_le_normSq_of_re_le_of_im_le](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/normsq-le-normsq-of-re-le-of-im-le.md) | 173 | `result-track:5d682a41199c0b783f3ab2831adeb42c4eff25b443d9199bc2e1ed3225c34a6b` |
| 36 | `theorem` | [normSq_div_sub_div_lt_one](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/normsq-div-sub-div-lt-one.md) | 181 | `result-track:f5fa85d970bb671836ec3207f9770e0c8c21d5f07887978ae7735fa86a13529a` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/instance-source-edition-5.md) | 196 | `declaration-track:f5c9823c448fe0c6ac14ab85a93b947cce0a6a3b414fa5e359c9aff281852701` |
| 38 | `theorem` | [mod_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/mod-def.md) | 199 | `result-track:9a220a594dba6a474153c6dff0bd90c0f8c1d02a5dfe0ac003ab7c1a8bc574d8` |
| 39 | `theorem` | [norm_mod_lt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/norm-mod-lt.md) | 202 | `result-track:51fb2e0e25f394a5bf86df0f764976b0605de65bc1ea472a02ed1f37350381c1` |
| 40 | `theorem` | [natAbs_norm_mod_lt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/natabs-norm-mod-lt.md) | 213 | `result-track:5961183ca46c75662a1b73e4d69d1bc6a6b918c096cc13a33931865b0522b704` |
| 41 | `theorem` | [norm_le_norm_mul_left](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/norm-le-norm-mul-left.md) | 217 | `result-track:148caff7a89fb995b138c8019fa81db4672575164c3d7695a37255eab99e591a` |
| 42 | `instance` | [instNontrivial](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/instnontrivial.md) | 224 | `declaration-track:9eb05b52960cc43f3cff78fd5ee8c83c2472941218e04e81871cfad9ba0664e4` |
| 43 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/instance-source-edition-3.md) | 227 | `declaration-track:8892aaa68d4c3f735085c846f3bb66b211abf3f27ab53c127574d5a9121ca0cc` |
| 44 | `theorem` | [sq_add_sq_of_nat_prime_of_not_irreducible](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntSourceEdition2.lean/declarations/sq-add-sq-of-nat-prime-of-not-irreducible.md) | 241 | `result-track:da5e8af325b568f2ec6d514d6ced42a54e55845764125efd7f2ed53c0ada5c9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f616fce7956e53d1ef4577a41e85db26f16cac65499f3ed4bdb3ece70943f8d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/GaussianInt/Variant892263de680b98b97f6d3727f392e506285e13ca48cbdec85e98490819f42bf4.lean","GRWTSK/_verification/specifications/NumberTheory/GaussianInt/Variant892263de680b98b97f6d3727f392e506285e13ca48cbdec85e98490819f42bf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
