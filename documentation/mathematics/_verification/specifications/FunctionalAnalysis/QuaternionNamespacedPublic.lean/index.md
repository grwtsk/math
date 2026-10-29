# Verification target: Quaternion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b14be2f442df729d22b19620a3e31075592cc6c5",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b14be2f442df729d22b19620a3e31075592cc6c5`.

Source path: `GRWTSK/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 52 | `declaration-track:1c911af4a42259141900cd4a94436af6e88b8278117dccb819c324ced112ac3d` |
| 2 | `theorem` | [inner_self](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/inner-self.md) | 55 | `result-track:4bee7477fbd704bdf07133b07cc6dc77c36b35b7f57231497c07ff9c8a7d87a8` |
| 3 | `theorem` | [inner_def](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/inner-def.md) | 58 | `result-track:7a6b195ab766050749055e96e8b20e8f2483085f9678b182521dd8d7ec3a4e3f` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 61 | `declaration-track:5b377d2da06d9915ebc5560317f05d938ad5d18e63ff91f30e85516e7da85c1b` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 70 | `declaration-track:5f432063b8b7da47b385f4a74bd16336a4c057d28ae282a5277e0bf79f4711c1` |
| 6 | `theorem` | [normSq_eq_norm_mul_self](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/normsq-eq-norm-mul-self.md) | 73 | `result-track:0e5725378e6854fe759253115716aca7e80e6db769bdd9ff44b6489e60f2d29a` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 76 | `declaration-track:7a766ace6067687b1eb25c8010fc1beaccc1bcfef49153ec1c56aa0c931e3fbe` |
| 8 | `theorem` | [norm_coe](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/norm-coe.md) | 80 | `result-track:7af621ad9978863f992501f1ca01702447de405de7cd59d0831fa27964f178d7` |
| 9 | `theorem` | [nnnorm_coe](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/nnnorm-coe.md) | 84 | `result-track:d369116ab3e54513c81ac120e02cb1e3d40c1dda2c758d37bab43c4adf79f07e` |
| 10 | `theorem` | [norm_star](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/norm-star.md) | 88 | `result-track:8b6f3ee4623b11019ddee8a3b7a448a0e58d5f92bc35135cae52615ac2e446bc` |
| 11 | `theorem` | [nnnorm_star](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/nnnorm-star.md) | 92 | `result-track:ab5d701582580ac19ef9ef891950871cbfeeba55c2234f3c5c52f2a7b29c551d` |
| 12 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:1090c21a2e0ab2949af4e86eb963f212d52da1fffa920f2d47d16667a43d742d` |
| 13 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 99 | `declaration-track:fe6bcab50f96f89e07d0a1d39e4f6613f68695795e45805b4073bb320122bffd` |
| 14 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 102 | `declaration-track:6e5c0e2070745747b2c85df2fff2d7369f4ac63242cad6c2a6f9418965a0ea6a` |
| 15 | `def` | [coeComplex](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coecomplex.md) | 107 | `declaration-track:8856ee6af8e529849e1f13a1f40574df56600b5fc60f7d309d34f0d54638084a` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance.md) | 109 | `declaration-track:049d400353dc147c2e04ded30eb680d8a521ff8afcee2053f667acd8712d6026` |
| 17 | `theorem` | [re_coeComplex](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/re-coecomplex.md) | 112 | `result-track:799e0f668c5af68fb5c9766a70a2b8fbcde3c68bec525b15a653354e31264e3f` |
| 18 | `theorem` | [imI_coeComplex](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/imi-coecomplex.md) | 116 | `result-track:1bedb771522842ecec23798e04a1479f35356d6d78d7abdc8a4ac2befbd5741b` |
| 19 | `theorem` | [imJ_coeComplex](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/imj-coecomplex.md) | 120 | `result-track:f4907e131e35b656ab780a98091611b2914c7699513b76f42507dc4adaaee87b` |
| 20 | `theorem` | [imK_coeComplex](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/imk-coecomplex.md) | 124 | `result-track:235f70c899f58581e97d88c98b2905344955d312e49e72061688bbb7e9546dc9` |
| 21 | `theorem` | [coeComplex_add](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coecomplex-add.md) | 128 | `result-track:ce6f26429b3f0f913425a7226d348e62e8aeebebdaf5f07d7440ecdb73237e8b` |
| 22 | `theorem` | [coeComplex_mul](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coecomplex-mul.md) | 131 | `result-track:054f2330a5306783a7b629ace0ff96b03a9dd97245ba9aab87595ea7d046ffc7` |
| 23 | `theorem` | [coeComplex_zero](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coecomplex-zero.md) | 134 | `result-track:c5e9f0a3cfdeb0f8e17860a002a2f25bf7b468887d12fea6780d5c06cce6e756` |
| 24 | `theorem` | [coeComplex_one](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coecomplex-one.md) | 138 | `result-track:e1efb5b994175519f086d473bc54144d9842b6163bf50f70999adcbac972efb0` |
| 25 | `theorem` | [coe_real_complex_mul](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coe-real-complex-mul.md) | 142 | `result-track:48c308c71cdf33c4fd528e081575b935d6ee976ea1eefb157758395fb2b3d853` |
| 26 | `theorem` | [coeComplex_coe](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coecomplex-coe.md) | 145 | `result-track:b63d0f7d6b6beefe1f113f1aa7cfd5b0f20d321d48b09adc18ad3ebead61587c` |
| 27 | `def` | [ofComplex](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/ofcomplex.md) | 149 | `declaration-track:6fc91365c621c507c0c108a67dd5c91506a1eddb05eeea20e5e5267176d35662` |
| 28 | `theorem` | [coe_ofComplex](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/coe-ofcomplex.md) | 158 | `result-track:220b59ae7ab9b0991b50620539e5e6eefe66832e152c36f50f94bcca36fe2481` |
| 29 | `lemma` | [norm_toLp_equivTuple](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/norm-tolp-equivtuple.md) | 161 | `result-track:a2b1e7938435ef9d27fdad9ed49c83010241d07cdd1f79c442b63e9b3d0d8797` |
| 30 | `def` | [linearIsometryEquivTuple](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/linearisometryequivtuple.md) | 169 | `declaration-track:e132e727a95e405f4e892ca676a481c0270e3463cd138954868ee45db9cae1a4` |
| 31 | `theorem` | [continuous_coe](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/continuous-coe.md) | 177 | `result-track:084694c52ac50d1aa0a37bdeeac1883b408e019114995b834e8c3865abe50d09` |
| 32 | `theorem` | [continuous_normSq](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/continuous-normsq.md) | 181 | `result-track:7a2b94ed89ad762296ee17d7648a5797817271a0b7fab4064bbc55d2ce75e88d` |
| 33 | `theorem` | [continuous_re](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/continuous-re.md) | 186 | `result-track:17047c44ccf35fac4e842de2a7339379c9ab1b57cf4cd49dbdb73ea65ee7d921` |
| 34 | `theorem` | [continuous_imI](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/continuous-imi.md) | 190 | `result-track:53d43725a601744e97af5bd12576a9c92093989f3529b4c2e993e9a4184bc688` |
| 35 | `theorem` | [continuous_imJ](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/continuous-imj.md) | 194 | `result-track:95176eb3ae4da764a3ae0ccd7cacb21024dac564c059ececdbd4b5ecee1bd2ac` |
| 36 | `theorem` | [continuous_imK](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/continuous-imk.md) | 198 | `result-track:3c010e2933d22eadb56a6ef0e043c7032c2545fcbc8c0e8a727425d414879faf` |
| 37 | `theorem` | [continuous_im](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/continuous-im.md) | 202 | `result-track:0b1fbc582064c688466910d7e5b1835006c0eb352a35a7a1f7bf32714a38f0f3` |
| 38 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 205 | `declaration-track:11728f844f47e3acb5280a86a11cff2fa8e22874d2b8e61bac1c7ee3bd050e4c` |
| 39 | `theorem` | [hasSum_coe](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/hassum-coe.md) | 215 | `result-track:4a61125bb5ecf7bbf2e408e4e9bbdefd0c9e2e255605d9343cc02995a8e08c09` |
| 40 | `theorem` | [summable_coe](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/summable-coe.md) | 222 | `result-track:f34ebbb703996dc61ccd4d22296fe3401733fe3fac9e0b205b49ef33e1eff930` |
| 41 | `theorem` | [tsum_coe](../../../../FunctionalAnalysis/QuaternionNamespacedPublic.lean/declarations/tsum-coe.md) | 229 | `result-track:878c937b858469be73afcad900984582c710a4347d520fc7166ee5e6f333f7a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b72ee2f1b48b2435d06ff1c7c4fbc71dafa1dbade520ad5ef65b13f8ab933a31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
