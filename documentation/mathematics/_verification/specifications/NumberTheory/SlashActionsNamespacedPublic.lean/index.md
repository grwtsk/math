# Verification target: Slash Actions Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfeaac323c9245e88190e81b5e54bffc0102789f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfeaac323c9245e88190e81b5e54bffc0102789f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SlashAction](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slashaction.md) | 44 | `declaration-track:80fcc7ddbce3c247bc8bbc9abcd66110c0bcc45306cc456f90c121154e971022` |
| 2 | `theorem` | [SlashAction.neg_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slashaction-neg-slash.md) | 56 | `result-track:70ed9f175804ea8acea07f63cf7261a55a57951c21eaaf486f756cc9b02d5822` |
| 3 | `lemma` | [SlashAction.sum_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slashaction-sum-slash.md) | 63 | `result-track:cc535418c9b5d29184a535a9af4e06fc923d1132b7eefa89bc2948c5365f6be0` |
| 4 | `def` | [monoidHomSlashAction](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/monoidhomslashaction.md) | 73 | `declaration-track:1cadcff6feded9413c0a0661f93e93255e90998e75794d5ed4c7f6b5f6af835e` |
| 5 | `lemma` | [SlashAction.slash_eq_zero_iff](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slashaction-slash-eq-zero-iff.md) | 82 | `result-track:a2db60d0ec9549388f3a0f6e1859c64b867a3d50aa49064e5ea1b0f63cefb8d2` |
| 6 | `def` | [privateSlash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/privateslash.md) | 99 | `declaration-track:8006bea04f6c9fd1bcf3f03abed53500a59afdabc52323dbd2961be2c22b1357` |
| 7 | `theorem` | [slash_mul](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slash-mul.md) | 107 | `result-track:b6cc8940a5718bdafbe24c3a829e81d55747a066af932891913035ecb60e3af6` |
| 8 | `theorem` | [add_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/add-slash.md) | 122 | `result-track:bc8fe96a71ddff40b96a780fbd702b2a0f868b095b6e9252e33de7cef2a1515e` |
| 9 | `theorem` | [slash_one](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slash-one.md) | 128 | `result-track:1da90bd9eb51f17a91e1ebabc302fe337b74f972518298810ae31ab97bc8e649` |
| 10 | `theorem` | [zero_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/zero-slash.md) | 132 | `result-track:95fecd36e21869ca74eae31a3d28cd6e768c56ac4771ecc8bd57fbe8e51e8793` |
| 11 | `instance` | [(anonymous)](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/instance.md) | 138 | `declaration-track:e126710dcfb994165c7d6d210524a5eac9527a8edf1302e06933ce3a3c88c247` |
| 12 | `theorem` | [slash_def](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slash-def.md) | 147 | `result-track:29ccbd657d2f1abeca7790b733a00277ce0dcd2229cf6775243a92f27cbbb966` |
| 13 | `theorem` | [slash_apply](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slash-apply.md) | 151 | `result-track:7537f12dcffca7cd2366286219c6f048a703359f899f0de0950b0cb9af558e79` |
| 14 | `theorem` | [smul_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/smul-slash.md) | 155 | `result-track:5809050c1de473974554fb79e69177973afca69cbe4248c3164a474012d030bb` |
| 15 | `instance` | [SLAction](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slaction.md) | 160 | `declaration-track:13af43a953efcda72774851485e9b232d915bca0b8b06c7d6aa29be179384377` |
| 16 | `theorem` | [SL_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/sl-slash.md) | 163 | `result-track:24b224f4e7a9453c7821d5932db62eb33215dbac07eb53d23373d67c8bbb875f` |
| 17 | `theorem` | [SL_slash_def](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/sl-slash-def.md) | 166 | `result-track:460466a5f60ebb2f9cb932238664049a21d668984a6778216c1517b5a883e320` |
| 18 | `theorem` | [SL_slash_apply](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/sl-slash-apply.md) | 170 | `result-track:d91fad0bb7f9e4c5ed78e0dc3e9b2f6dae0450306e32285e9c112567d7e8bf3a` |
| 19 | `theorem` | [SL_smul_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/sl-smul-slash.md) | 175 | `result-track:3888f89e87a03b49c1a9ea4ff36b8222a4c7d041f29be59eed559f9cc5e4aa7b` |
| 20 | `theorem` | [is_invariant_const](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/is-invariant-const.md) | 181 | `result-track:608630456a79b02918980602c40188a8a794106f71d0d70105c72e89ec1692c2` |
| 21 | `theorem` | [is_invariant_one](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/is-invariant-one-source-line-187-occurrence-2.md) | 187 | `result-track:80da8774cdde9c4f30981b5e7e4acefebcadfbff8db1b85a58be7e5ab326af9e` |
| 22 | `theorem` | [is_invariant_one'](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/is-invariant-one.md) | 192 | `result-track:432d42c6bab8aff01e4f6a553396cb8b8d0c7aa8721477f1a33c9393d374d435` |
| 23 | `theorem` | [slash_action_eq'_iff](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/slash-action-eq-iff.md) | 198 | `result-track:53b9e37defbe0d32fae8b4d9f08aebcfe6865878578ff26ae30f79a2c0950fdf` |
| 24 | `theorem` | [mul_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/mul-slash.md) | 206 | `result-track:74c34fece5ef32818f410326d7957d2b39f46b673ffe59548972436bc7cd91d4` |
| 25 | `theorem` | [mul_slash_SL2](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/mul-slash-sl2.md) | 219 | `result-track:680f0bcd7f130cd015d2f738b7521f727372d03125bc1f264c67ecdf7c62358b` |
| 26 | `theorem` | [div_slash_SL2](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/div-slash-sl2.md) | 223 | `result-track:483c7b0a6f5f42cb3074911b1dfeda03d0a2b8b850cebabe91922ef8f7656e84` |
| 27 | `lemma` | [prod_slash_sum_weights](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/prod-slash-sum-weights.md) | 231 | `result-track:14228aec51799b55e52a8d705f0d45a4060656fef89f0da7ca5ea1baa9b3d2be` |
| 28 | `lemma` | [prod_slash](../../../../NumberTheory/SlashActionsNamespacedPublic.lean/declarations/prod-slash.md) | 253 | `result-track:3a2c4a46a5827e7bddef23a6c4ad27ea5447ee756347e62ebd6a32f6c2c3fcf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b928e832ea3d13d09f661b928ff3204cc166cbdffbf39ce8499dc96a81424540 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
