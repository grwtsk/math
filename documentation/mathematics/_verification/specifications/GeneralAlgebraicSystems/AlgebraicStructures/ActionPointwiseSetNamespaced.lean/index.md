# Verification target: Action Pointwise Set Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b6cefe156ceabc4aa4b35fe3966d4968a5d9364",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b6cefe156ceabc4aa4b35fe3966d4968a5d9364`.

Source path: `GRWTSK/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Pointwise.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_pi₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-pi-source-edition-2.md) | 40 | `result-track:bde70dd11f1a35c94583310a485427d3a25e0f865ff7a770fdf4e63e2bf5450d` |
| 2 | `lemma` | [smul_set_pi₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-pi.md) | 45 | `result-track:376007c1f128f8530f379d18f5689271ee21b793205b8f243bc1c99b1e22558f` |
| 3 | `def` | [smulZeroClassSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smulzeroclassset.md) | 54 | `declaration-track:65ea967e237c242c238266b4b804a184246925644a50940cdacf490ab3802101` |
| 4 | `lemma` | [smul_zero_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-zero-subset.md) | 59 | `result-track:ba4ab79654f9c30594652747109b3627487f2c5938aa4c3ababc8c95177074a9` |
| 5 | `lemma` | [Nonempty.smul_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/nonempty-smul-zero.md) | 61 | `result-track:b21dff148db6e2509f4840bc6910f1c8f5ca73caa89d30136c3e419de3d2a717` |
| 6 | `lemma` | [zero_mem_smul_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/zero-mem-smul-set.md) | 64 | `result-track:dadd3c68d0da89a07920c30e0c5fa2babd8ec1aa4e02f668eb3ec1276c9d2faf` |
| 7 | `lemma` | [zero_mem_smul_set_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/zero-mem-smul-set-iff.md) | 68 | `result-track:2cdbd9e2c312adddc73fe58929eb76fb668fdd94cc462db6faac120d6e0ffcd8` |
| 8 | `lemma` | [zero_smul_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/zero-smul-subset.md) | 83 | `result-track:429cfa7d512a35ae7f512cb69c5ace63954ca3b640f763d23ed2b7744daf21b4` |
| 9 | `lemma` | [Nonempty.zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/nonempty-zero-smul.md) | 85 | `result-track:2839981bfacd081863b0f551c3b4fcd552424754325c2b0934ca07e7d63db131` |
| 10 | `lemma` | [zero_smul_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/zero-smul-set.md) | 89 | `result-track:d6bf7274f392ef1b325ccadd228f4971c4f4a46987146bb559f95761696a5982` |
| 11 | `lemma` | [zero_smul_set_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/zero-smul-set-subset.md) | 92 | `result-track:42b8547447efb99e506df17637bbc23398c3d4d288e8fdfa940e4d61e768e8a7` |
| 12 | `lemma` | [subsingleton_zero_smul_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/subsingleton-zero-smul-set.md) | 95 | `result-track:53e0ac598e9945b17accef4761982a5b26536cf7f7574e441cd387b6d2011fde` |
| 13 | `lemma` | [zero_mem_smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/zero-mem-smul-iff.md) | 100 | `result-track:c6dbf348af9ec96c54965a892616181e00c0658ab57011f38affece04b1907d5` |
| 14 | `def` | [distribSMulSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/distribsmulset.md) | 115 | `declaration-track:976216c7ac8f668c3f299e79133d5224f13cbb2ec37f835291d744e7e40a46ad` |
| 15 | `def` | [distribMulActionSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/distribmulactionset.md) | 123 | `declaration-track:c381f94f0b8aa1b27925fb1d25ecea86d0e5d0f9efe621eda3924236543619e3` |
| 16 | `def` | [mulDistribMulActionSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/muldistribmulactionset.md) | 129 | `declaration-track:4afb8bda473119f792728f12d33e08c99c7870251832d3e25c72a9b7f68cd0ce` |
| 17 | `instance` | [instNoZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/instnozerosmuldivisors.md) | 136 | `declaration-track:3010e6fd7f351b2f699b6d10013af9dd08a920f76604668b6772f326ab2ff98c` |
| 18 | `instance` | [noZeroSMulDivisors_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/nozerosmuldivisors-set.md) | 147 | `declaration-track:126602f8d81c53dca35af5d1fa5e8ad85bcb39259dd22da7540ab0cd36f42d49` |
| 19 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/instance.md) | 156 | `declaration-track:3557afcb5213f3fb739451ee4c1ff7d5baafb831812fdddac411018bdedb8522` |
| 20 | `lemma` | [smul_mem_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-mem-smul-set-iff.md) | 163 | `result-track:006ab686b15a8ab2a3c11ccb5528fa16970891df41440bacb6711970c6895e6e` |
| 21 | `lemma` | [mem_smul_set_iff_inv_smul_mem₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/mem-smul-set-iff-inv-smul-mem.md) | 166 | `result-track:d8d4646ccd698278a1b0048fa14313d27699b84e4c4237b3940d8b75eb64faf7` |
| 22 | `lemma` | [mem_inv_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/mem-inv-smul-set-iff.md) | 169 | `result-track:bd7fb39e351186e6bf8e8477d244c766efa7467254e0b0b2316aea1e01dcc6db` |
| 23 | `lemma` | [preimage_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/preimage-smul.md) | 172 | `result-track:ff9a4cefe0a987ae0a1bbf8357ed723f54539bc0053092920fe7ded3308d6d54` |
| 24 | `lemma` | [preimage_smul_inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/preimage-smul-inv.md) | 175 | `result-track:1bcefaada70573d270c23a2634935c90ea27b37691d40e222f7e0237d2a8ae32` |
| 25 | `lemma` | [smul_set_subset_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-subset-smul-set-iff.md) | 179 | `result-track:7dc0820b2d4a70d8b264ff7db62f0a7c90ab43782452f742967b0740ae673af6` |
| 26 | `lemma` | [smul_set_subset_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-subset-iff.md) | 185 | `result-track:9b551645ae3039ff67b8bf4d30e8a64135648a360a5adbc187de47e89abf8958` |
| 27 | `lemma` | [subset_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/subset-smul-set-iff.md) | 190 | `result-track:93eb5a5058ee2266f58e13a08295c310a0fa1153f1cabea8375037f65a15b6aa` |
| 28 | `lemma` | [smul_set_inter₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-inter.md) | 195 | `result-track:6d547907520c727574084acba00c7c1ac260323b989f1ae196f8f6ad59e29ae3` |
| 29 | `lemma` | [smul_set_sdiff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-sdiff.md) | 198 | `result-track:295a7b6d1c0079348ba3123cd91ef18ee11ce47dde896c2a0d3991c0e2f9d387` |
| 30 | `lemma` | [smul_set_symmDiff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-symmdiff.md) | 202 | `result-track:93d941a7c3a3f4131f81226a5f5702ec944ee1231a2370fb000c424c7e892879` |
| 31 | `lemma` | [smul_set_univ₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-set-univ.md) | 205 | `result-track:5aff0c992b3b732be7d00da6fa19b117f35ffb95c8f084ae64260321535c251c` |
| 32 | `lemma` | [smul_univ₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-univ-source-edition-2.md) | 208 | `result-track:20b18d043916665d8c6bf4e323791a3c74e77590af54f6d77b7db5d58dc74c83` |
| 33 | `lemma` | [smul_univ₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/smul-univ.md) | 212 | `result-track:16d84162cb483bba2c64582019cc1a91ad6330fdf3e2f1bb7148d3e04a4d6334` |
| 34 | `lemma` | [inv_smul_set_distrib₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/inv-smul-set-distrib.md) | 216 | `result-track:a4e0a4208e72726502ceca8e712bda515193de0352826ce5470cfe441523e39c` |
| 35 | `lemma` | [inv_op_smul_set_distrib₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetNamespaced.lean/declarations/inv-op-smul-set-distrib.md) | 222 | `result-track:b3243724ce9277fc1114c6449e1301d1d1a6e646cb04b475c3bc36cb58ccd77c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0481d9db433ddb415409931a75a3626acde916db6b81450a7ba8ec7c2c461372 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean","GRWTSK/_verification/specifications/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
