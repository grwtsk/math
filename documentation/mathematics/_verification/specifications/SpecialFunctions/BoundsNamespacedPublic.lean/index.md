# Verification target: Bounds Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f71dadc2b2d4aee73e9e758ba506e6021af100ba",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f71dadc2b2d4aee73e9e758ba506e6021af100ba`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean.json)

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
| 1 | `theorem` | [sin_lt](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/sin-lt.md) | 51 | `result-track:b9a1773c7e16b0b57c163f45f2b0967dee18f9474414ed6cd18f1730a668a66c` |
| 2 | `lemma` | [sin_le](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/sin-le.md) | 63 | `result-track:78aac1fcb9b3735fc2e16565858bfbc5d373d2caba332a1fb99afcca8c8adee6` |
| 3 | `lemma` | [lt_sin](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/lt-sin.md) | 68 | `result-track:c09d790c90f511640d2a0270ba627e950cb20c7ce7da845cf7a5d9e641a7bc35` |
| 4 | `lemma` | [le_sin](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/le-sin.md) | 69 | `result-track:488a87d096b968ac60c0e08c196ca12e3b032737ac16add3ca039872b1bfd686` |
| 5 | `theorem` | [lt_sin_mul](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/lt-sin-mul.md) | 71 | `result-track:9b96b9969abf497323a101c05a2bc86cb09d863d4476acd32a85aaee5405e921` |
| 6 | `theorem` | [le_sin_mul](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/le-sin-mul.md) | 76 | `result-track:54863c82353fb9758d54f0a367af856a870a4287b4be35170db3d63bed9403f5` |
| 7 | `theorem` | [mul_lt_sin](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/mul-lt-sin.md) | 81 | `result-track:155aaf9d56e79cecc5a383ca596aa1bc6ccf2d1abce869aaf101aa3be8ecbf6a` |
| 8 | `theorem` | [mul_le_sin](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/mul-le-sin.md) | 91 | `result-track:8b713953e0c2743442ca2c9e459bc7363a8a65babe9abea6bd3affec24a5df10` |
| 9 | `lemma` | [sin_le_mul](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/sin-le-mul.md) | 98 | `result-track:c47c045cbd035a886a168b1c0f4226b5df7eb6bc829a5cc9a1dca9a707bb4382` |
| 10 | `lemma` | [mul_abs_le_abs_sin](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/mul-abs-le-abs-sin.md) | 102 | `result-track:f5af138304a075ca53b2c9fec8768664d96a59f9fab5008e4b051d793bdf3cd3` |
| 11 | `lemma` | [sin_sq_lt_sq](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/sin-sq-lt-sq.md) | 108 | `result-track:1f82301937cd7d7978e170860382d11a9687e229090a929e31c0a85989b200b5` |
| 12 | `lemma` | [sin_sq_le_sq](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/sin-sq-le-sq.md) | 119 | `result-track:3385a6647d98cac66470a30bbfd82fb3f104cce3fd1b995a6492c4740a9f6ec9` |
| 13 | `lemma` | [abs_sin_lt_abs](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/abs-sin-lt-abs.md) | 124 | `result-track:c0e57ef49d0c5f974c6d22801a2a53e88de12a4b2615aee1a2b50d4ab02f48c6` |
| 14 | `lemma` | [abs_sin_le_abs](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/abs-sin-le-abs.md) | 125 | `result-track:f89b1865bc02a16155ff7235d34f9305ff47e0df876a0e968d5fcc788920ac7b` |
| 15 | `lemma` | [one_sub_sq_div_two_lt_cos](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/one-sub-sq-div-two-lt-cos.md) | 127 | `result-track:b6d5ee6c7fc74cb5225cf6d1fed11239dfb1c47755040796d33e3b7127b141ce` |
| 16 | `lemma` | [one_sub_sq_div_two_le_cos](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/one-sub-sq-div-two-le-cos.md) | 132 | `result-track:f411a5369417841822f3fb4552509e33f920784eef016581a0c007b3d68bd938` |
| 17 | `lemma` | [one_sub_mul_le_cos](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/one-sub-mul-le-cos.md) | 138 | `result-track:30fa5d8581b2ed3605346b98f7e43d2ad0a01254b16b3a237aa98714fff27c04` |
| 18 | `lemma` | [one_add_mul_le_cos](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/one-add-mul-le-cos.md) | 143 | `result-track:ac6d1a69cf5d92717a4c3abe0c0b8f28a24a67d2a460d8d82cbb7bcbcf5701ab` |
| 19 | `lemma` | [cos_le_one_sub_mul_cos_sq](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/cos-le-one-sub-mul-cos-sq.md) | 146 | `result-track:8e5a901889b83619d903406c1d6d60e8b3e8d6f3b1dba8841bf13db8a1cc2ca7` |
| 20 | `theorem` | [sin_gt_sub_cube](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/sin-gt-sub-cube.md) | 158 | `result-track:9e40b81c3237339f124fa99ef8b2e33dc71faabb8a2caf0e025dc0388335ffcc` |
| 21 | `theorem` | [sin_ge_sub_cube](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/sin-ge-sub-cube.md) | 172 | `result-track:5ac2e19d622201f33f3edf71f6305100d20db926672b261244d07a2af61b87ac` |
| 22 | `theorem` | [abs_sub_sin_le](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/abs-sub-sin-le.md) | 178 | `result-track:731f0f9fec5938a22a18380a6d85d6c6f8bdd8926d81b18a867aef4df0dd52b2` |
| 23 | `theorem` | [deriv_tan_sub_id](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/deriv-tan-sub-id.md) | 184 | `result-track:e3096d538076652b114c6ffff17209e0cb6d8013d07d0013d8779315355c53e6` |
| 24 | `theorem` | [lt_tan](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/lt-tan.md) | 192 | `result-track:af9a55c8881e120f078f9fdedf8f50665304bbeeefcd78bed7a5fa5d6818a449` |
| 25 | `theorem` | [le_tan](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/le-tan.md) | 223 | `result-track:18f2607349335ab0e45473ff6f9673c005547140508da5d96057b701ccd37c37` |
| 26 | `theorem` | [arctan_lt_self](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/arctan-lt-self.md) | 232 | `result-track:3ab06846cb199d005d542e74fa81405b30cdb89164b86f08ce0373e509d0dc3c` |
| 27 | `theorem` | [arctan_le_self](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/arctan-le-self.md) | 235 | `result-track:06f4b464f41b74b93884c4de7b64d054760717560d22d295e784ca554c56f8b2` |
| 28 | `theorem` | [self_lt_arctan](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/self-lt-arctan.md) | 240 | `result-track:26b7a0f1d2db30cf3b5f1848b1ee53b5cee30fd1b2ff1d94208c2fd3f326b3b7` |
| 29 | `theorem` | [self_le_arctan](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/self-le-arctan.md) | 243 | `result-track:634f3c978195cadf37c1bcbfb9201d34dcc4f91f258e8bebc47750e1b0dfd0b0` |
| 30 | `theorem` | [abs_arctan_lt_abs](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/abs-arctan-lt-abs.md) | 246 | `result-track:920c4f60fddbdef741ced9e9abdab1c68d399dfd7461b7c221f0599e3c11820c` |
| 31 | `theorem` | [abs_arctan_le_abs](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/abs-arctan-le-abs.md) | 249 | `result-track:3a155877fd09f6d2d9a6d246cdd5815e9de01199f6fc72304b784cea5d0ab716` |
| 32 | `theorem` | [cos_lt_one_div_sqrt_sq_add_one](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/cos-lt-one-div-sqrt-sq-add-one.md) | 252 | `result-track:8fdd9349f0c104e756c3b137ddc95597ea9d82aad9773ba1f4067c144c9ba463` |
| 33 | `theorem` | [cos_le_one_div_sqrt_sq_add_one](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/cos-le-one-div-sqrt-sq-add-one.md) | 275 | `result-track:a148a42569b1e1e4e9a0454d9418c5f3ec4dca94bf292e37a89ae1395b486b9d` |
| 34 | `theorem` | [lipschitzWith_sin](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/lipschitzwith-sin.md) | 281 | `result-track:16b14555e5c6f65ac2bcad6d86dbb78915f5e1fbaef5697caf34e3fed45cf376` |
| 35 | `theorem` | [lipschitzWith_cos](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/lipschitzwith-cos.md) | 284 | `result-track:8fb9f600a27d1b4a4543fab76f599195045cd8a1e15aa25fa595ebf7ee2e55ab` |
| 36 | `theorem` | [abs_sin_sub_sin_le](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/abs-sin-sub-sin-le.md) | 287 | `result-track:2e0942760aa94a6ddc9eaf6ef107ac6d57e8aa1039ba7240d0332226593be5a2` |
| 37 | `theorem` | [abs_cos_sub_cos_le](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/abs-cos-sub-cos-le.md) | 290 | `result-track:7d48d5cd6ca294ed391ea509551f7b1f51765c2f5c087f063eb9daa1e1218ff2` |
| 38 | `theorem` | [norm_exp_I_mul_ofReal_sub_one_le](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/norm-exp-i-mul-ofreal-sub-one-le.md) | 293 | `result-track:f0a2a58ca8387dc4d4a96e4b5189c5447077803e1c54330b1e23ea97f758c8d6` |
| 39 | `theorem` | [enorm_exp_I_mul_ofReal_sub_one_le](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/enorm-exp-i-mul-ofreal-sub-one-le.md) | 300 | `result-track:3f4cd49c6825ead875afbd08edc40dd37774ea3f2bf8725445cd84af855a5a1a` |
| 40 | `theorem` | [nnnorm_exp_I_mul_ofReal_sub_one_le](../../../../SpecialFunctions/BoundsNamespacedPublic.lean/declarations/nnnorm-exp-i-mul-ofreal-sub-one-le.md) | 304 | `result-track:fddf61f092eb7e2a3082e3dec77aa5323388030363c0fa47e8ebcc03f743c668` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea0ce1830ca79c7da159f29cfe8d748a1fd4e46fa2db66285270088fa6bfb721 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
