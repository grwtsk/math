# Verification target: Linear Algebra Matrix Conj Transpose Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bf3528dd1ead79a6daa08e87e4f254320941ff5",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bf3528dd1ead79a6daa08e87e4f254320941ff5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose.md) | 44 | `declaration-track:87c60f214ab3d37bd6f17161b87bec79bdc92090a7018c0910bb34f43b97c11a` |
| 2 | `lemma` | [conjTranspose_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-single.md) | 51 | `result-track:57a1a5fb72fac772dad67b1d4dbd21a24ad49ae225aefbe60656994069f76fae` |
| 3 | `theorem` | [diagonal_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/diagonal-conjtranspose.md) | 62 | `result-track:e2da5262400e1cd2e72189d60115dd0e0076f718d6eab9ae901f219b0061f3dd` |
| 4 | `theorem` | [map_diagonal_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-diagonal-star.md) | 67 | `result-track:eddbf1e12ae05f221310498300b5db330dcfccb17f7ab16a6cf01d48b9a63789` |
| 5 | `theorem` | [diag_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/diag-conjtranspose.md) | 75 | `result-track:3a576d79833fa28789e731899f3218160fafec7846a59a1640018741c45a0c8a` |
| 6 | `theorem` | [diag_map_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/diag-map-star.md) | 79 | `result-track:87b1ea961f713247ac221404d712f714923a761e87b824f3470eb3cd6df51ca4` |
| 7 | `theorem` | [star_dotProduct_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/star-dotproduct-star.md) | 91 | `result-track:60cd0b1abc8fbe5d6a57dc93f13c5436ac172c80db83106d1057f326e20d1484` |
| 8 | `theorem` | [star_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/star-dotproduct.md) | 93 | `result-track:0d5ab81287cc3c00a434acd48ac477c931ec1f7bb4f002bb0c13e1f7341af70b` |
| 9 | `theorem` | [dotProduct_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/dotproduct-star.md) | 95 | `result-track:f5dfa73c865cf85effc7fb793709754c481bef9755fb0760e0d63f50b8c450ee` |
| 10 | `theorem` | [star_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/star-mulvec.md) | 105 | `result-track:df4221c8abf819a9f4639c95f7f80e9f8aab11640fc986872d4f66eb8d0a36d1` |
| 11 | `theorem` | [star_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/star-vecmul.md) | 109 | `result-track:8d67f95aac2174e995d2dcc013938f6d31691161b94437ef716fc7e490467519` |
| 12 | `theorem` | [mulVec_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/mulvec-conjtranspose.md) | 113 | `result-track:042012fefee915a243384fbf95f6051a14e31777f0020582f48b86da5cfa80f8` |
| 13 | `theorem` | [vecMul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/vecmul-conjtranspose.md) | 117 | `result-track:685faba97971a423e8bd74cb782ccc52cb95cd91434b6779deffd5cc6e289b15` |
| 14 | `theorem` | [conjTranspose_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-vecmulvec.md) | 124 | `result-track:0c68857dab139db0b95d1c2515e333395461c42e0d64a32beb73fa02bc6d2974` |
| 15 | `theorem` | [map_vecMulVec_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-vecmulvec-star.md) | 128 | `result-track:ead1f6b0697894a077d2ac161f6b90b5030099aabdebdd6a5649580b8befa656` |
| 16 | `theorem` | [conjTranspose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-apply.md) | 141 | `result-track:64da37e7da4d9842ddf6e4685919c588935c837415a969025563623fcde3209e` |
| 17 | `theorem` | [conjTranspose_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-conjtranspose.md) | 146 | `result-track:05a3aa1fad749ba4975b99a4ec2e3421a6196ed61dfca4d5be4055e03bb144a2` |
| 18 | `theorem` | [conjTranspose_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-involutive.md) | 150 | `result-track:a7ed40ffbbe268a80a88e1bffa36ae7d0ae8e783f4dc003cd60663c156c86045` |
| 19 | `theorem` | [conjTranspose_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-transpose.md) | 154 | `result-track:4a18046306ff1e3048dbca10b5f05b82c9a52ee00e8da2bf5066bb9dea2f3a31` |
| 20 | `theorem` | [transpose_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/transpose-conjtranspose.md) | 158 | `result-track:2187a8b73c0d7c6488868b239cc2128871fe9e92774c88748e652ea0d541f35e` |
| 21 | `theorem` | [conjTranspose_transpose_eq_transpose_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-transpose-eq-transpose-conjtranspose.md) | 162 | `result-track:bb381c8ecc2a98b42eb818b7051d8a99e05632345b83ffa117c5353e1dc2c96d` |
| 22 | `theorem` | [conjTranspose_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-injective.md) | 166 | `result-track:6c908f4e4d6b9e6404099352fa8622aec23fc12d6f9e08ec23ba9757dd7af485` |
| 23 | `theorem` | [conjTranspose_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-inj.md) | 170 | `result-track:e223e5f165bfffe4581d1a6d0c91beecc1bddf01b68145d8bf612592a75bdf29` |
| 24 | `theorem` | [conjTranspose_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-eq-diagonal.md) | 174 | `result-track:566ff50a662539e5d43afe32da4d7965658e5e0fc98450ff4a797f6a719cbd17` |
| 25 | `theorem` | [map_star_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-star-eq-diagonal.md) | 179 | `result-track:5028dbf7fc3fc906dd58cac7ddc63987abcfed91a7878bc13b8bc27780e1cff6` |
| 26 | `theorem` | [conjTranspose_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-zero.md) | 184 | `result-track:7d21b35aca886e2a3b3b5d6379a901e729b4f0c88e7977baa9d38abe8429e6df` |
| 27 | `theorem` | [conjTranspose_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-eq-zero.md) | 188 | `result-track:e15978d15f5f62c81a5a21c395b798503afcf919996968bb086fc6f51c262a0b` |
| 28 | `theorem` | [map_star_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-star-eq-zero.md) | 192 | `result-track:49302e568a9e6fe9ffb419ccdcb6bab3fc79b7a227cbe484742d2d6626a4b09c` |
| 29 | `theorem` | [conjTranspose_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-one.md) | 196 | `result-track:a113b2caa749bea089099e13aea9b635cec0feab384359d50f9c3e871488bb25` |
| 30 | `theorem` | [conjTranspose_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-eq-one.md) | 201 | `result-track:f504c67cded49c0da0ed99a38ed6a39a419da165128bfebf5294b0b92c0b5612` |
| 31 | `theorem` | [map_star_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-star-eq-one.md) | 205 | `result-track:56a12274b9f180d7a60278108bd8244a6f4c008d787096b5fa260ee861c6c48b` |
| 32 | `theorem` | [conjTranspose_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-natcast.md) | 210 | `result-track:717d69667797de9a6380204576fb6e964abc73c9672ae4ac5a549c8af42c91c0` |
| 33 | `theorem` | [map_natCast_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-natcast-star.md) | 215 | `result-track:deee7144d6a195aea1c88d5a95baff011b799a121c7c169f3fcb594a3f127a86` |
| 34 | `theorem` | [conjTranspose_eq_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-eq-natcast.md) | 219 | `result-track:8ae0ff255d22700464f0521b7be5f074cf4c5177411c5c4065aa96ca5d7feeed` |
| 35 | `theorem` | [map_star_eq_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-star-eq-natcast.md) | 224 | `result-track:a9bb80cecedecc93edb39495625dd0ae62c425cb2946255a92a49f596551f244` |
| 36 | `theorem` | [conjTranspose_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-ofnat.md) | 229 | `result-track:21944fb8b5bcf6cb333571f2133bcc83137da8a7ff76894b6e23e8f58ac14281` |
| 37 | `theorem` | [map_ofNat_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-ofnat-star.md) | 233 | `result-track:66ef5987adc92626723c597091610a098ca17e216cd3ff8efed170ed30dbb9c6` |
| 38 | `theorem` | [conjTranspose_eq_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-eq-ofnat.md) | 237 | `result-track:00d71988d385c04f37cdac486ea8a3b0d857852b4a485f91096a03c1e687c41a` |
| 39 | `theorem` | [map_star_eq_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-star-eq-ofnat.md) | 242 | `result-track:378c03d66bd5c3adf34d62a93a2f01a450c9100007d2a69c2df0b2d06985e617` |
| 40 | `theorem` | [conjTranspose_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-intcast.md) | 246 | `result-track:c227f79cfd4613bdd14bcbd99576fa7f96393c3ad8578da7f06db73abe0ddd5b` |
| 41 | `theorem` | [map_intCast_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-intcast-star.md) | 250 | `result-track:baac06ff8c1230e3ac55eea40b96dbdbf15439224137727b8d56bc0e6a770bb6` |
| 42 | `theorem` | [conjTranspose_eq_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-eq-intcast.md) | 254 | `result-track:bbbc64f34fb6a6b3a31d9889794e499cb14723b562b98f55edf41298e162ee3b` |
| 43 | `theorem` | [map_star_eq_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/map-star-eq-intcast.md) | 260 | `result-track:7f26753210178927d93ca08ab6b127979cea3cf89cd0296e7a224668b348989f` |
| 44 | `theorem` | [conjTranspose_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-add.md) | 265 | `result-track:cedec71762fd35d49ecb4c959f4aea6c24a22357f4824d81d9a48708ba74662b` |
| 45 | `theorem` | [conjTranspose_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-sub.md) | 270 | `result-track:3aa1be574804f669ad8b5907058a23566bb813e685df328392a480cd3df4bc6d` |
| 46 | `theorem` | [conjTranspose_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-smul.md) | 286 | `result-track:4dc23136052b24ed5c9b4a9100aeb80187276246b5364b643a21b6b0fe76ae14` |
| 47 | `theorem` | [conjTranspose_smul_non_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-smul-non-comm.md) | 291 | `result-track:56d35cd84eacf58f2e148525d3048277b503e2f1ac0e08d90f93f4bbfcbd6b05` |
| 48 | `theorem` | [conjTranspose_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-smul-self.md) | 296 | `result-track:4afdda699054a045a5de0036f0041497eb1a04daeaae0ce3b846e532c355d861` |
| 49 | `theorem` | [conjTranspose_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-nsmul.md) | 300 | `result-track:0292283d8e7777aea29fb55cddc86581ca22c603f64f8b4b50635c2e17455320` |
| 50 | `theorem` | [conjTranspose_zsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-zsmul.md) | 304 | `result-track:0099ab9af1d5f86fdf41f9f2ee01e9815e3c48324e6721fa1a8a2abcb29ef368` |
| 51 | `theorem` | [conjTranspose_natCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-natcast-smul.md) | 309 | `result-track:189c2edaedeaebe564d9dec1d18201a77f2769f93b3506734bb1f5cb59dea65b` |
| 52 | `theorem` | [conjTranspose_ofNat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-ofnat-smul.md) | 314 | `result-track:8cfeb8b8cdfb09347dd23149abe604de4ee06f1cb3ec054c2eb91117cacb4d64` |
| 53 | `theorem` | [conjTranspose_intCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-intcast-smul.md) | 320 | `result-track:c81f3b872141238202141005b5a2851f80a2b10eec07669a7682d1510fe3c5a0` |
| 54 | `theorem` | [conjTranspose_inv_natCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-inv-natcast-smul.md) | 325 | `result-track:0b87e43d7b72c0d0c841bc7fb28bde2ebdd4d09eb6997aff8a1b4708ded672a9` |
| 55 | `theorem` | [conjTranspose_inv_ofNat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-inv-ofnat-smul.md) | 330 | `result-track:c1d97457826b853baaf18d9dd2b676ddae2ff7a68264e1b35198e2b45cafcb69` |
| 56 | `theorem` | [conjTranspose_inv_intCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-inv-intcast-smul.md) | 336 | `result-track:8e168b6fc5a0646e1fa057ee2a5ca08323d2394c2aead23e79cc6ba141f184af` |
| 57 | `theorem` | [conjTranspose_ratCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-ratcast-smul.md) | 341 | `result-track:36f13c735cbf0ba442755248d4862b55eea9f747a418b539de56a42d6b7a5bc4` |
| 58 | `theorem` | [conjTranspose_rat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-rat-smul.md) | 345 | `result-track:d45de8a6b8f9bf2274ecc3b9bae0d1f9bc8e7c4dac0a8c2932ec31c1406627fa` |
| 59 | `theorem` | [conjTranspose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-mul.md) | 350 | `result-track:0b3bb483761a55cdc75b63de2807ea83b9e254bae3c6a91b88348da2c4a1afda` |
| 60 | `theorem` | [conjTranspose_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-neg.md) | 355 | `result-track:6121368dc95f3d6ac88c6eab8d94e52fd4ba4768fd577c53d6fcbc4e38eaa717` |
| 61 | `theorem` | [conjTranspose_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-map.md) | 358 | `result-track:7ed84e8be6109fcc14e20dcc086a870210c8a8a818dec7c0d75b07e3ead2f1f3` |
| 62 | `theorem` | [conjTranspose_eq_transpose_of_trivial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-eq-transpose-of-trivial.md) | 365 | `result-track:2156a8886a2dec24566d6d024cb470c5aefccf59c23ef2feab8d1bd3d2cf07e3` |
| 63 | `def` | [conjTransposeAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtransposeaddequiv.md) | 372 | `declaration-track:3f23bd3797fed46b329086b62b104e80bc6b9b046f1d44ef037a850725ea12f9` |
| 64 | `theorem` | [conjTransposeAddEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtransposeaddequiv-symm.md) | 380 | `result-track:12289928d62201aaabc097466332550c35199fad2d26a90f5abca67f8e84de87` |
| 65 | `theorem` | [conjTranspose_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-list-sum.md) | 386 | `result-track:718fbc61d12f0b5281ba8ebd7ce15e01723cd39650d02a29362a3391effed0d1` |
| 66 | `theorem` | [conjTranspose_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-multiset-sum.md) | 390 | `result-track:a933bfde8606e545f0a09cf981c48162e1da44a1031a84555ef9b00aefcae89e` |
| 67 | `theorem` | [conjTranspose_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-sum.md) | 394 | `result-track:f825fcb1d94c815ce0cdf1b70e00ce452cfa273d1eda3768c80c17a3ad5f402b` |
| 68 | `def` | [conjTransposeLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtransposelinearequiv.md) | 402 | `declaration-track:e0352914613e9ebc79fd7d1799fa40f18a457fd758f0b4a5682eec22b29ebccf` |
| 69 | `theorem` | [conjTransposeLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtransposelinearequiv-symm.md) | 408 | `result-track:4e530a293c2a28c77d1f3640810b0505f51b916ae68925eb9ac9f8bf07796e8f` |
| 70 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 419 | `declaration-track:edaaca27b7ddcf8cf0d9a6ecc9831b3d8c7ad036d0acad79bf2773fb8c81e2b3` |
| 71 | `theorem` | [star_eq_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/star-eq-conjtranspose.md) | 421 | `result-track:eb6a6806320aafe07ceb2e898589812e14d8e8f6725f6503fdd439a7ce1e425e` |
| 72 | `theorem` | [star_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/star-apply.md) | 425 | `result-track:ad9885fec32e42576addee0f0690639e7dea5755bf40af594a0a8f168dfd28b3` |
| 73 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 428 | `declaration-track:c51c935d0761312477ac61123c006d2583ea5d1b82f97936738755ba2be9d2c7` |
| 74 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 432 | `declaration-track:828a6ae3f0b7c72aeb20758ee0b2bce6becf968f09b2b2d5065002ed476b2163` |
| 75 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 435 | `declaration-track:5324f2f8f3fa3be5e85da3c9bd36bb6e68dc0951bb0f2e1c15f9893b35af691d` |
| 76 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/instance.md) | 439 | `declaration-track:1ca448f2860922d4df1d4624baa7a0f9ea64e5c1ec525f769710d64c6a74e32e` |
| 77 | `theorem` | [conjTranspose_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-submatrix.md) | 448 | `result-track:8e230ead7046527879520dd5b0c7f66875410d2811b6c6609c618fb6c1ff16c8` |
| 78 | `theorem` | [conjTranspose_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-reindex.md) | 452 | `result-track:24c58c150474f31b9e13859d1138f1bd61ceaa1cafa53db6f76309c322260a0f` |
| 79 | `def` | [conjTransposeRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtransposeringequiv.md) | 459 | `declaration-track:e4200f14efe3692111d889c6ae2f791e285666aabbaf9bccf7de28303f787fac` |
| 80 | `theorem` | [conjTranspose_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-pow.md) | 466 | `result-track:b9b7765b51401356e4dc5a72173089ee7fa5db0613b8e71f3c87c2d98fbfd64e` |
| 81 | `theorem` | [conjTranspose_list_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtranspose-list-prod.md) | 470 | `result-track:70e38def618b81de5edc903b9d237068576e7e17f1aa0036f73e3ce307eeb219` |
| 82 | `def` | [conjTransposeAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/declarations/conjtransposealgequiv.md) | 477 | `declaration-track:b64963253d2873c624d50d5ced5ed223ebb7b2ff8db4741db31feba674080e6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b0c0cd2e8a55c3d02f64c9a8d578f5165371c65cca8dfe7e30797b888c80443 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
