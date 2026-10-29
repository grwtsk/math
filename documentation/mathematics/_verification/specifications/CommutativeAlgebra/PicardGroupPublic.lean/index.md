# Verification target: Picard Group Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PicardGroupPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PicardGroupPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d`.

Source path: `GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean.json)

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
| 1 | `class` | [Invertible](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/invertible.md) | 77 | `declaration-track:4cca465ce85d892cc73ad9c88760993d1755a8d2e93e53e3811657f67babebff` |
| 2 | `def` | [linearEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequiv.md) | 83 | `declaration-track:093bf7746e9c615a4d32d054a166bc9c63e928a68ab5964c309cc49fb48ebb9f` |
| 3 | `abbrev` | [leftCancelEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/leftcancelequiv.md) | 94 | `declaration-track:d0f2efa5ce32ec2cd967d27ecf71121d9e5c974729c1083be2a2e8de79d637e5` |
| 4 | `abbrev` | [rightCancelEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rightcancelequiv.md) | 99 | `declaration-track:714990be5c215b78fb76798203ce37fcb6ee599f2f34d7aa47755d9fc0ec9d65` |
| 5 | `theorem` | [leftCancelEquiv_comp_lTensor_comp_symm](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/leftcancelequiv-comp-ltensor-comp-symm.md) | 103 | `result-track:955ad9870684b46bcf8f02d94429541888fe77ccd4d3378219471418751e6a35` |
| 6 | `theorem` | [rightCancelEquiv_comp_rTensor_comp_symm](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rightcancelequiv-comp-rtensor-comp-symm.md) | 108 | `result-track:77ba09acd433d79347c860df0484a71f3103635326e94b975c7ab38a20468e29` |
| 7 | `def` | [rTensorInv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rtensorinv.md) | 113 | `declaration-track:1668b4bbe83d4339fbe0ce9fbac9a89ce36605fc62ac335f3ffdb9ac3eda0a6a` |
| 8 | `theorem` | [rTensorInv_leftInverse](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rtensorinv-leftinverse.md) | 117 | `result-track:db611bf59a0711b74ab9822d8c10debe2292fe7e2e61985709232b45b9fe14c4` |
| 9 | `theorem` | [rTensorInv_injective](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rtensorinv-injective.md) | 123 | `result-track:53706fb789a790e785b67dfa8eaacccb122e3cb47a5e5518ae8b0a052642b93d` |
| 10 | `def` | [rTensorEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rtensorequiv.md) | 128 | `declaration-track:90695065939a2269717d7f9160230a7b095a5df193e4014503c5d193791822c8` |
| 11 | `theorem` | [bijective_curry](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/bijective-curry.md) | 137 | `result-track:db09c420970fecfc42c732372e7fdd5519e63d8288187b80e0a51c39b83de307` |
| 12 | `def` | [linearEquivDual](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequivdual.md) | 145 | `declaration-track:991919aadf1f9179b9704e1c305c2b55828b04eeee2271f57970355eae4ba93a` |
| 13 | `theorem` | [right](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/right.md) | 149 | `result-track:058ddbd799b253e4da50f6e8ea26d41a0be72b8d9194261798d260b04fed12c4` |
| 14 | `theorem` | [left](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/left.md) | 155 | `result-track:9cb1ebf06cc160643f953b27a0b4f5b9b95ad34271df4145912ca52cd3e88772` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance.md) | 157 | `declaration-track:06694ff2035485faebb233d045038ce7bb8034218f6df5548a2f95944c33a36d` |
| 16 | `theorem` | [congr](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/congr.md) | 163 | `result-track:d5e4eb617b278d8b05870722e28ae394a3205b2cdb70eee6cf09655353268b66` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-14.md) | 168 | `declaration-track:7ade809350dd696169cf790eb223ba09cf942a3793d60b883694eca30e3a6aaa` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-3.md) | 170 | `declaration-track:1c759358f63130652c60bf92202060559c8eabe2bc394f8d9b4fcf58bba85640` |
| 19 | `theorem` | [finite_projective](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/finite-projective.md) | 174 | `result-track:bb0d4700d3e2f42033795656b20845a61c893151c54a989bd30c2599998bc8e8` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-13.md) | 194 | `declaration-track:70fedbcbac50d9e986ed20ea19f52262c2720519b4dd12eb003fd3ecd4d5b4ed` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-21.md) | 195 | `declaration-track:939c6a52a05335ec903bd1c0d81b43d1dcb11ad8c283401c08fbed108930aef6` |
| 22 | `example` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/example-source-edition-3.md) | 196 | `declaration-track:cf4baa1e336cd4c365c8a6138acce8efde3469fd12f85f70c4aebe1323950cd0` |
| 23 | `theorem` | [lTensor_injective_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/ltensor-injective-iff.md) | 202 | `result-track:9798e645fd5e149efe9a1198e16ab24e3c7befb8592c60bb830e565b27ed2a37` |
| 24 | `theorem` | [rTensor_injective_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rtensor-injective-iff.md) | 208 | `result-track:0c354c2c2186fccaf8101f16fa0c5f345d1baadd4727297cdf587d57989e15c1` |
| 25 | `theorem` | [lTensor_surjective_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/ltensor-surjective-iff.md) | 212 | `result-track:53580ce6bcc5ef688687faa17e6f03d7e487fe84d652635a768ca418e945daa9` |
| 26 | `theorem` | [rTensor_surjective_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rtensor-surjective-iff.md) | 218 | `result-track:a8083da00bb17ca27b70c59a09e9d8c2c27e5daae2b9c211e81c799f1918d8b9` |
| 27 | `theorem` | [lTensor_bijective_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/ltensor-bijective-iff.md) | 222 | `result-track:5d403c7fb8f6ae91def497fc787fc12b8fa91ca449687c5eedf38685af1b6d03` |
| 28 | `theorem` | [rTensor_bijective_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rtensor-bijective-iff.md) | 226 | `result-track:65cfafcd694d50fdc3d7bca5b346dd9c90c5be941b75bd09da2db45e471b1597` |
| 29 | `theorem` | [free_iff_linearEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/free-iff-linearequiv.md) | 236 | `result-track:2fcf5fcdafee9d07d0ed48cfec79cdecd72ef2b72f30d36ab83114babecf9361` |
| 30 | `theorem` | [finrank_eq_one](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/finrank-eq-one.md) | 248 | `result-track:872c60eec8860865d38b3258c4bb1936671e143e0c49a6f546dfd3a60bc3ab23` |
| 31 | `theorem` | [rank_eq_one](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rank-eq-one.md) | 251 | `result-track:8c32c6b868ec21cd611efae67a6108084f15412a2d6fcb565f475402d90cbaea` |
| 32 | `theorem` | [toModuleEnd_bijective](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/tomoduleend-bijective.md) | 255 | `result-track:2a0a396c235e58cd4e8dbf7aee821b0bd47398e63eb8be47a60576cbf50777fc` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-18.md) | 261 | `declaration-track:8590d0b72d99e25b1afd04304457c2420c1afd5cbc2eaeb3294584c0d2535d42` |
| 34 | `theorem` | [bijective_self_of_surjective](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/bijective-self-of-surjective.md) | 265 | `result-track:b77a06c70c880d434a5fb1aaecf38d88e31d80fc98210c10b01f199c388d0a4f` |
| 35 | `theorem` | [bijective_of_surjective](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/bijective-of-surjective.md) | 276 | `result-track:9bc935969e5e61221ddcad013a3619e0b00f93539803db3c066b7426be921d70` |
| 36 | `theorem` | [rightInverse_of_leftInverse](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/rightinverse-of-leftinverse.md) | 284 | `result-track:fda1470d7eb02b94fb3680a3b29f8065222ffab3c9a50f5a18e8603587770051` |
| 37 | `theorem` | [leftInverse_of_rightInverse](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/leftinverse-of-rightinverse.md) | 289 | `result-track:2d2b7a8a49641198c8801122346657ed70b65e37905713a14f1787fee53749a2` |
| 38 | `theorem` | [leftInverse_iff_rightInverse](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/leftinverse-iff-rightinverse.md) | 294 | `result-track:1cf17c119daa4b71995c3786ee4192df86adca1630149f5af3297c6dea896029` |
| 39 | `def` | [linearEquivOfLeftInverse](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequivofleftinverse.md) | 301 | `declaration-track:be6ddb7517b0bf8d7344aa777ebe5b130288cf9def52324fafb9b863bc1614b3` |
| 40 | `lemma` | [linearEquivOfLeftInverse_apply](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequivofleftinverse-apply.md) | 304 | `result-track:2c9e379e09f3a96214aac0cdccf3383245a65850fdbd863fd7307f7403132d7a` |
| 41 | `lemma` | [linearEquivOfLeftInverse_symm_apply](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequivofleftinverse-symm-apply.md) | 307 | `result-track:5bc541a5f7f4d097ead090f21596e206ec3e7ed0d56ce8511b03a4f7bf1f1757` |
| 42 | `def` | [linearEquivOfRightInverse](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequivofrightinverse.md) | 313 | `declaration-track:cc1dedb59c568ae19a2f48c0005d974f9131b3b29b35b8cc0dae228511d9b54f` |
| 43 | `lemma` | [linearEquivOfRightInverse_apply](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequivofrightinverse-apply.md) | 316 | `result-track:c0564b4e3440c9b88b7b2468e7668319e1d88116b9d93953b68d8e4efd928414` |
| 44 | `lemma` | [linearEquivOfRightInverse_symm_apply](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/linearequivofrightinverse-symm-apply.md) | 319 | `result-track:e93f898b561a3c0f7e63b7fc0a501bda2de8da3e5272293f27a62b6909fbc934` |
| 45 | `def` | [algEquivOfRing](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/algequivofring.md) | 333 | `declaration-track:aff8c049cde1e0f780f3583fe0b4e6f93816cfe7e04ab845e635230e622d6e1f` |
| 46 | `lemma` | [algEquivOfRing_apply](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/algequivofring-apply.md) | 345 | `result-track:3459657ab89da58c3a992a0253b24d2273ba92958ff6ac1718181f4bc2decc3c` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-25.md) | 353 | `declaration-track:da65df0bf481082d03d2e29399b0625f760ff97348becb6e396852455f05c027` |
| 48 | `theorem` | [of_isLocalization](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/of-islocalization.md) | 358 | `result-track:66464e487560219db548d261d63d6bc19d1aef435d7df65a726d613d32e48f89` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-22.md) | 363 | `declaration-track:9a179b086fad882b39c7ece91217ac817c656881e7c3c7227c08fe2992e8ab21` |
| 50 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-7.md) | 366 | `declaration-track:3fa30ab9ae43ec5082259b833b96eb2bb2c4f09999a991bddd0784e14909be9b` |
| 51 | `theorem` | [exists_finset_free_localization](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/exists-finset-free-localization.md) | 378 | `result-track:8319f33883f00669aaf24a1af781b3d8fcc489798d806b1c9e0bc37035422eae` |
| 52 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-4.md) | 411 | `declaration-track:2e11ed237946d388b4dec496f6369375bb617d263c3e5398dd1c188e829d4a18` |
| 53 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-24.md) | 414 | `declaration-track:d2a5b16088bc18de3ab830fbc8fde4294a8ce17dd598d74c97a60ef45284603d` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-16.md) | 417 | `declaration-track:81760edd397c175ddab6728fe57cf7198dab57892f07d1e6c5fa4cb4cefe3bc9` |
| 55 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-9.md) | 424 | `declaration-track:49b183f6aebb3506962d243085901745f166e06df3c605ebf34d374374ae84d3` |
| 56 | `def` | [CommRing.Pic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/commring-pic.md) | 429 | `declaration-track:28db17859c0480e7e07193f77e5b1dc12a1db701025cf16e965d8f38c0a68bdf` |
| 57 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-12.md) | 434 | `declaration-track:6661445d94a186f7524ed0d53dcbe42232cd98fb9e654d35f699cd28574f359f` |
| 58 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-11.md) | 438 | `declaration-track:6234fcf3e6f016a89659f66a6cc5f41e10ddf253fca170ead1b5e9d398d865c2` |
| 59 | `abbrev` | [AsModule](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/asmodule.md) | 444 | `declaration-track:361f341418fa0881098670fa5e0cd83a7804168094ebd466dc77a091d70245b9` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-23.md) | 446 | `declaration-track:c7a4e34f94c4ceab8d82d64bc06297c756496c89fba06f238dffd598d7925e38` |
| 61 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-17.md) | 448 | `declaration-track:83417aeea3d71ed75a4e838b6dc333ca939fab9cabf826dc5e4e6d955602b590` |
| 62 | `def` | [equivShrinkLinearEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/equivshrinklinearequiv.md) | 453 | `declaration-track:6fdc2c0dfe801f11e056aa20752d369041c00fd971341a98cee86739c287eea1` |
| 63 | `def` | [mk](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk.md) | 459 | `declaration-track:b07235c6b225e612d4af5759e295dbe2bae21d6443028c4656c3f48e0f4790ee` |
| 64 | `def` | [mk.linearEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-linearequiv.md) | 468 | `declaration-track:4dcf7975dd4d05c5ecb70bc329d1c9cdd26bb67a99c24b37de6b855a6fcd1e94` |
| 65 | `theorem` | [mk_eq_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-eq-iff.md) | 474 | `result-track:f2aafd6c846cb8312d4af71c28a68e1a6ce8ee9f17e4cc1089798184932d545e` |
| 66 | `theorem` | [mk_eq_self](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-eq-self.md) | 479 | `result-track:21250a8f0636f00d1af27d3573c6abd35182ab42cf6bb27e9947cbef5ca619e0` |
| 67 | `theorem` | [ext_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/ext-iff.md) | 481 | `result-track:383312229fd84672b4ae655750442aca01ee4d73bfe061866d66788de2a48c63` |
| 68 | `theorem` | [mk_eq_mk_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-eq-mk-iff.md) | 484 | `result-track:e199abdd1895ef61be1c143661c7640aa63be080778981f8c3b75c8bb44f8fdd` |
| 69 | `theorem` | [mk_self](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-self.md) | 488 | `result-track:319c18c2182c68c05f2a4db69fd69bf0e6f54821f206202b9620ff82c27efcc0` |
| 70 | `theorem` | [mk_eq_one_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-eq-one-iff.md) | 491 | `result-track:20f08d0d59c9e05947d31cadc25455f9b4328f4bc0bd97bd8beb29029ba1010f` |
| 71 | `theorem` | [mk_eq_one_iff_free](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-eq-one-iff-free.md) | 494 | `result-track:da6803d69c6c2ba354a23b2078e6c47961691be36d5976f01a57d759d2384392` |
| 72 | `theorem` | [mk_eq_one](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-eq-one.md) | 498 | `result-track:ad5bb968c059b4ae15171daa8b88d45d73aa445776e617721f9fd37158627917` |
| 73 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-20.md) | 500 | `declaration-track:915d4d10d5cd3ab9252c4f2dd07e89a09deba2da9918e17b0c2251ec8162f357` |
| 74 | `theorem` | [mk_tensor](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-tensor.md) | 502 | `result-track:2b627b3a3ce35b45263f8235a34bf68dc6cc9b28fe0b544d1b44f826ac8b9f5b` |
| 75 | `theorem` | [mk_dual](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mk-dual.md) | 509 | `result-track:6fc0285263085dee86934561dc02bb37d2e2f9529cf910d678709f9e0a296b71` |
| 76 | `theorem` | [inv_eq_dual](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/inv-eq-dual.md) | 514 | `result-track:e1f270e64921a46265acd92d5735279f5b85639018ccd22e958e8432248e3ea0` |
| 77 | `theorem` | [mul_eq_tensor](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mul-eq-tensor.md) | 517 | `result-track:1751c8b0f3f41f520fb12d7eaedfd8b8fe73ec3ac8bdca91ef07b0bade8379ba` |
| 78 | `theorem` | [subsingleton_iffₛ](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/subsingleton-iff-source-edition-2.md) | 520 | `result-track:9dae68f6e4a157b6ca11aeaa90ff0a66e7d9e46a346f3e9417f8f3c9f429d772` |
| 79 | `theorem` | [subsingleton_iff](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/subsingleton-iff.md) | 526 | `result-track:549c9e54e1e2d8acfdab54aff93c4e9b6f04877ce668c923ee8746db0af78e5e` |
| 80 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-6.md) | 531 | `declaration-track:3f8aaaca23fe4b350ab63910418749eb4b06bc157733647aeeb0aada32c3e2aa` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-2.md) | 536 | `declaration-track:1c485e0072d914bae18a1f1baaa2aa26bb7f5f6b9fc18a4c5dcc3f1fab79c66a` |
| 82 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-10.md) | 545 | `declaration-track:4fe39cc5022aac2e1c964369bf5dca131523a804e3aef2333ee0ec1c0f0c41a6` |
| 83 | `def` | [mapAlgebra](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapalgebra.md) | 553 | `declaration-track:5d3f44cf3d7cf85933ea086581271ede76e65e97a7022341db6e73065d7e1c36` |
| 84 | `theorem` | [mapAlgebra_mapAlgebra](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapalgebra-mapalgebra.md) | 563 | `result-track:228a35b274bf6b66a416b20d8c107351bc1d633a598476e0aa05ba69572de660` |
| 85 | `theorem` | [mapAlgebra_comp_mapAlgebra](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapalgebra-comp-mapalgebra.md) | 567 | `result-track:f9c7548ec043cbfd10f8cb8f4b285355f8ac33a59831010bbe0e91063f89fcce` |
| 86 | `theorem` | [mapAlgebra_self_apply](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapalgebra-self-apply.md) | 570 | `result-track:a525818e62c859400c9920ca2ce455e9207f2d63253f1e130098aab95d73cdd6` |
| 87 | `theorem` | [mapAlgebra_self](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapalgebra-self.md) | 573 | `result-track:9a9e1ff1c9444146002e628b3a7f4bf8cd5b2f910baec68a0c4756a5c9d0ab1b` |
| 88 | `def` | [mapRingHom](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapringhom.md) | 579 | `declaration-track:24bbc6f05d26b9e905a791b2ed86dda1b8e0a954b00a6bf2dd701974fe1728d3` |
| 89 | `theorem` | [mapRingHom_algebraMap](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapringhom-algebramap.md) | 582 | `result-track:8655dae9dc973b6a02cca11e4ad90827463760b78a85033f1ad897fba775c2a5` |
| 90 | `theorem` | [mapRingHom_comp_mapRingHom](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapringhom-comp-mapringhom.md) | 587 | `result-track:2211d184517b336b3ccf4e5a84a36ec2769500435e7f899bd2bca90649186211` |
| 91 | `theorem` | [mapRingHom_mapRingHom](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapringhom-mapringhom.md) | 592 | `result-track:4ca7ce40b6d358630bf6168925d9c68a83bef5f359a479be9eccc9de9a13831a` |
| 92 | `theorem` | [mapRingHom_id](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapringhom-id.md) | 596 | `result-track:a5f03ffecab5bfdb2c3e66dde48ccb77ab973f1588710df21597c776dcc82330` |
| 93 | `theorem` | [mapRingHom_id_apply](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mapringhom-id-apply.md) | 599 | `result-track:04b40ff2dbb2715d6ea0854d0aa91504bca68da802a120ef580a23270c6fa744` |
| 94 | `def` | [functor](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/functor.md) | 604 | `declaration-track:d889ead51f043f4be31ddeba683f2c90da42c2daa503972a04cf67c990e244cb` |
| 95 | `def` | [relPic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/relpic.md) | 616 | `declaration-track:e89f62a8c67136fd0306088ba316decde8e8119780c687c2fbd7b6a3019fbdd8` |
| 96 | `theorem` | [relPic_eq_top](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/relpic-eq-top.md) | 618 | `result-track:df5237069d0591951e029563d32dbed9f5daf7908472624edb008c477723b698` |
| 97 | `theorem` | [tensorProductComm_eq_refl](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/tensorproductcomm-eq-refl.md) | 629 | `result-track:dcfd06e090e0b0d0154bea83c599fe8338ad57f8f7a8840cb0304c2ea546c99c` |
| 98 | `theorem` | [tmul_comm](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/tmul-comm.md) | 646 | `result-track:8e57bbf6b08ee5a2797777019e1fa7d7b0c13835da11e12590ae4af790e45152` |
| 99 | `theorem` | [projective_units_and_mul'_comp_lTensor_bijective](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/projective-units-and-mul-comp-ltensor-bijective.md) | 663 | `result-track:f96254c315463fc7a1b4c4f8c0a47d577bc529f0af57271e1bcfe4167adf741d` |
| 100 | `instance` | [projective_units](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/projective-units.md) | 695 | `declaration-track:e84b35ab363621f7c61c180992c03fbd92b5819d40a77b50b17032507f9d2bb9` |
| 101 | `theorem` | [projective_of_isUnit](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/projective-of-isunit.md) | 698 | `result-track:4803b0cbd2dd7612272716139d73f10b3506293c744f95260b73c689b1ff9ee6` |
| 102 | `def` | [tensorEquivMul](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/tensorequivmul.md) | 707 | `declaration-track:a89b52ea3c130932a75fcbc8aeb3caa7ba8edd7e92c39d93679fe77903e6908d` |
| 103 | `def` | [tensorInvEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/tensorinvequiv.md) | 717 | `declaration-track:cdc87257487e26b482e649714366de84b68acb16b4fbddbf5dc23f575e84cdde` |
| 104 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-15.md) | 721 | `declaration-track:7d3a046db17858fc8a65acdd3c64a74c6a8c6800e8385683523901c6936ea62c` |
| 105 | `def` | [unitsToPic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/unitstopic.md) | 728 | `declaration-track:f6b60876952e8a1b2240f779c8dcfa770e88095cb7d46654cc9a73da99165541` |
| 106 | `def` | [unitsToPicEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/unitstopicequiv.md) | 735 | `declaration-track:84661a58d87e0c0c16eb536b1d0346cfcc7e2f3723e918113b38aa26fa2768a0` |
| 107 | `theorem` | [ker_unitsToPic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/ker-unitstopic.md) | 740 | `result-track:e890fd44201505a6774685bcf2d204c2175b3f158d3ae1663cefda532b47267f` |
| 108 | `theorem` | [mulExact_unitsMap_spanSingleton_unitsToPic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/mulexact-unitsmap-spansingleton-unitstopic.md) | 761 | `result-track:21b0b033601449c4a334ec1de1bcffe2ddf0f7a5110a4b00036eae9dbeeb79db` |
| 109 | `def` | [toAlgebra](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/toalgebra.md) | 775 | `declaration-track:42586124405bacb5eac8a0ff013441bad29b3cea81bb7061035a6172b8412bf0` |
| 110 | `theorem` | [toAlgebra_injective](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/toalgebra-injective.md) | 780 | `result-track:1f29198ea4365808567ba4204b9db30e92999920a09c343b133485493dfcde44` |
| 111 | `abbrev` | [submoduleAlgebra](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/submodulealgebra.md) | 785 | `declaration-track:3954b5aa490194ec66f5a2d173b09a75cbe28d7961f485578fdb128f050fa26c` |
| 112 | `def` | [submoduleAlgebraEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/submodulealgebraequiv.md) | 789 | `declaration-track:55a5a58c25432a2b3138c18e9a66258b97a6124c71a8d97a10404ce527d946cb` |
| 113 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-8.md) | 792 | `declaration-track:405ccebbaaada0dd35e82388bc794e6f61ae281f078250cf20968592675c304a` |
| 114 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-19.md) | 794 | `declaration-track:8843fd4e3268aa1fcb58fea75e9b70d8f8e30d38e46f37c55fe0f9517c1bd753` |
| 115 | `def` | [tensorSubmoduleAlgebraEquiv](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/tensorsubmodulealgebraequiv.md) | 800 | `declaration-track:6f827c3b859448c42382187448d46b34a5f4afe11567180dc52a4dd049c92982` |
| 116 | `theorem` | [top_mul_submoduleAlgebra](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/top-mul-submodulealgebra.md) | 811 | `result-track:560b60e9aa3448c90ee329bed39f381f23cfb55dd90c38c73347b63940cdcedd` |
| 117 | `def` | [tensorSubmoduleAlgebraEquivMul](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/tensorsubmodulealgebraequivmul.md) | 819 | `declaration-track:f53812e6627278afcc5d493a55664dd00972ae02b09f3f9297e3f397bc2cdf0a` |
| 118 | `theorem` | [Submodule.range_unitsToPic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/submodule-range-unitstopic.md) | 836 | `result-track:10ad971c96bfa127a963e77a607dc8d7991b409efa084ec26312f764a120be9d` |
| 119 | `theorem` | [Submodule.mulExact_unitsToPic_mapAlgebra](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/submodule-mulexact-unitstopic-mapalgebra.md) | 857 | `result-track:850275ce96e51a788e73a0d2706935218785ee7d5a4323d18f8c2ec2086f3e2c` |
| 120 | `def` | [Submodule.unitsQuotEquivRelPic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/submodule-unitsquotequivrelpic.md) | 867 | `declaration-track:6b7b0078ec093f7cb28ae32a3675f9173756e7df9319dfbfb8c3f54d7890fac0` |
| 121 | `def` | [ClassGroup.equivPic](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/classgroup-equivpic.md) | 876 | `declaration-track:cf3cc5d401a3db8d542eb1c9abab0c9d4756e858c0d45f020be9c8c537157a91` |
| 122 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/instance-source-edition-5.md) | 884 | `declaration-track:39d1fcf1b530fb996c30b54f342331577673242d9d57f988431e4798d73882df` |
| 123 | `theorem` | [Module.Invertible.exists_linearEquiv_ideal](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/module-invertible-exists-linearequiv-ideal.md) | 898 | `result-track:b759a615118df82be82114978f5be895e15b0b2a274bfa2b711868be35826da8` |
| 124 | `example` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/example.md) | 907 | `declaration-track:13a727edc80a37fb3c246ce0902b0be2bf885ea2362effb70c197ff3907244b6` |
| 125 | `example` | [(anonymous)](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/example-source-edition-2.md) | 912 | `declaration-track:3c7fea326d758d9f82cc2ff824feedf7ff5025ed83fb1a7f91059486d29a1882` |
| 126 | `theorem` | [Ideal.eq_top_of_mk_tensor_eq_one](../../../../CommutativeAlgebra/PicardGroupPublic.lean/declarations/ideal-eq-top-of-mk-tensor-eq-one.md) | 918 | `result-track:bad71ad9830638304adb9b832597a9cd032e20f3d8d168352e33bbfa867ccf9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=825ed9042eef621af6c5a1497c6706e460a69cb5cd1e1d51d0e03aca9f5d119b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean","GRWTSK/_verification/specifications/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
