# Verification target: Symmetric Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cbcd5d0aaee287907f65b243727c2527ce16222",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantec8bde84c05bfafcc74af70be0c654cfe71e2eff1c7a6de80fd4652f87206a9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cbcd5d0aaee287907f65b243727c2527ce16222`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantec8bde84c05bfafcc74af70be0c654cfe71e2eff1c7a6de80fd4652f87206a9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Defs/Variantec8bde84c05bfafcc74af70be0c654cfe71e2eff1c7a6de80fd4652f87206a9e.lean.json)

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
| 1 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm.md) | 78 | `declaration-track:86a0cc9513280ff5926c15ebd319626d8160e98eb5eb6777bd9dd2af7f8391c8` |
| 2 | `lemma` | [esymm_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-zero-source-edition-2.md) | 81 | `result-track:e726db44716e8d8911a5dfb7bccfab84948279c17cb87ed59109bc2683fdcfa0` |
| 3 | `lemma` | [esymm_of_card_lt](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-of-card-lt.md) | 85 | `result-track:f9c0a71e7599a59769232a57fe647791e7ecd2d5107d3b07695ff4a0528ef6bb` |
| 4 | `theorem` | [Symmetric Defs Namespaced Public](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-map-val.md) | 89 | `result-track:b30033cc7079133750f74cb46522cbd7d497839e291985352050afdbb3feb9c7` |
| 5 | `lemma` | [pow_smul_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/pow-smul-esymm.md) | 94 | `result-track:49c6f659bd73b0d3a67d2cb4f7417c6aad9b29e4e03e737134a5c44a6e52a0e1` |
| 6 | `lemma` | [esymm_pair_one](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-pair-one.md) | 104 | `result-track:86dbc9e6952d3b5db002d617ecf8c3268530e2947ab3b018780ff3ef97f57056` |
| 7 | `lemma` | [esymm_pair_two](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-pair-two.md) | 108 | `result-track:92de0463eea9998891bc69255e20d7799530ab3ca5c18526b3e08527876e427e` |
| 8 | `def` | [IsSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/issymmetric.md) | 120 | `declaration-track:9f0fb29a7c2c89f0ba5a3a32e07417609624369679d677f86f4d66718c0b1a67` |
| 9 | `def` | [symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/symmetricsubalgebra.md) | 124 | `declaration-track:74d1fa155d41db871ba6cd6b07e641479e45c2d8ed80b01a2bfbb3b422989851` |
| 10 | `theorem` | [mem_symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/mem-symmetricsubalgebra.md) | 131 | `result-track:08dca759f0793489447dc08b4aa13c94ca2fbb6201fa33b3f633edb840f340f8` |
| 11 | `theorem` | [C](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/c.md) | 142 | `result-track:11c52c34ae88e78227c73843231db42020b064d3e6c967cd08b6cc4ad504d96e` |
| 12 | `theorem` | [zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/zero.md) | 146 | `result-track:5cc5ab6e1509b31df93742513de43712adc3ea72b022c9cd2cf162b046bf6c88` |
| 13 | `theorem` | [one](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/one.md) | 150 | `result-track:68fda0982c1274cb2e9d093b9d058b5b25cb6113da37d911e843f5ef11022aa5` |
| 14 | `theorem` | [add](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/add.md) | 153 | `result-track:27ef2a61ce648f28fea27da8b17593ceea14e8d30d96b232608b17fc90105c0b` |
| 15 | `theorem` | [mul](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/mul.md) | 156 | `result-track:3acd0e47c936fddb896a375a175d7a1b48429720aec78b97e71bcf274ff62eca` |
| 16 | `theorem` | [smul](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/smul.md) | 159 | `result-track:d063b89c6fb4409b3357fb9753296decaaa60f6017e7256c81a462eacc9a32ef` |
| 17 | `theorem` | [map](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/map.md) | 163 | `result-track:bb8421e30b3c5af9dcc0082cbd5247d92adcf754f7fad025ab3c464219bdfd47` |
| 18 | `theorem` | [rename](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/rename.md) | 166 | `result-track:9279e46830c6aa8e5de468d4dfa9ead0a9005daa85d16b24a44d33f771384928` |
| 19 | `theorem` | [Symmetric Defs Namespaced Public](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/issymmetric-rename.md) | 172 | `result-track:d18ad5459817bf6990d487ad2f42f9969843a76510ea7ac1785eee54120b7b53` |
| 20 | `theorem` | [neg](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/neg.md) | 182 | `result-track:47e224c82955ae47c06c4ee505fcfebd91c1a8a599fd310a5e97d7f2e616aabb` |
| 21 | `theorem` | [sub](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/sub.md) | 185 | `result-track:0cd87e7e1691e5506a95e4ca0a7d0a7b6877ba437c0ed32851479c2e20778ac3` |
| 22 | `def` | [renameSymmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/renamesymmetricsubalgebra.md) | 195 | `declaration-track:05ed5b0eb1e2488b415a634be27256aced602557b9fb57f45cffab1d8aca57c7` |
| 23 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-source-edition-2.md) | 211 | `declaration-track:d4313b9726704aa8a3a1d1f1ac9cda57c9171ac406577abda8d32d82345dfed4` |
| 24 | `def` | [esymmPart](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymmpart.md) | 218 | `declaration-track:d4a0e3028dbf91c2f0b1274547a9162e049c4a02b04ded7b625dcd6dcf990aa0` |
| 25 | `theorem` | [esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-eq-multiset-esymm.md) | 222 | `result-track:db0d198b2b5b2d87784a6debdf4dc2e8b6721e5dd9ddd849123981ecb9b34087` |
| 26 | `theorem` | [aeval_esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/aeval-esymm-eq-multiset-esymm.md) | 225 | `result-track:4d36e4982df880af2ec1fac27ebdd20970b67acc8bd32ff6b8e97bc159e313a5` |
| 27 | `theorem` | [esymm_eq_sum_subtype](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-eq-sum-subtype.md) | 230 | `result-track:4894907b0e4c4c69147b69703b7220025f61e5da2bc0c5195ad61b02eab3daab` |
| 28 | `theorem` | [esymm_eq_sum_monomial](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-eq-sum-monomial.md) | 235 | `result-track:3cd5ab4b29ff10dc3d90601e0d5b63cccf8d8e2e26e1bd3b1176c3814e326671` |
| 29 | `theorem` | [esymm_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-zero.md) | 240 | `result-track:3da8e80580ae7469d9e8b619d223e7d7b842118cf062e0b3358c51142394a230` |
| 30 | `theorem` | [esymm_one](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-one.md) | 244 | `result-track:b66175cb3a2fcef8bea33fea499b89aac0a8543f23d1c1f6792a6ff61f234d8d` |
| 31 | `theorem` | [esymmPart_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymmpart-zero.md) | 246 | `result-track:84b13dbf13297dd36e7dca21cb28b498b230d6889c18c27f158df6382edfe182` |
| 32 | `theorem` | [esymmPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymmpart-indiscrete.md) | 249 | `result-track:ca69e44d55cd0275acf33c1e3dda2bc723dba9d3abad81b438259a235c7b8381` |
| 33 | `theorem` | [map_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/map-esymm.md) | 252 | `result-track:85d34d8ba46d9d05547642cf46241b3e2f5872dd03e6f4d2958f72a4c12644c0` |
| 34 | `theorem` | [rename_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/rename-esymm.md) | 255 | `result-track:952349b77ced57f14ffeb841841eaf2cf0ef1d507046efd6bcb967b294d46e3a` |
| 35 | `theorem` | [esymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/esymm-issymmetric.md) | 263 | `result-track:f26a31040c1da32137baf930d3af37f5e2b31be586b3e80fe0ff6287d6ce1d86` |
| 36 | `theorem` | [support_esymm''](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/support-esymm-source-edition-3.md) | 267 | `result-track:fd992e53ce1d76a6d7b7e94052cd7281cf0a45e4176d3e04fe9435cf84a185ee` |
| 37 | `theorem` | [support_esymm'](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/support-esymm-source-edition-2.md) | 284 | `result-track:e71185b601f3967476c6f5bf3ae55bd74bbbb7e86969eec3541a4d90b5ecf02b` |
| 38 | `theorem` | [support_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/support-esymm.md) | 291 | `result-track:618086176e940efb0b68c4a31fbf48f296bfb9d4a9d82daad37ea2a16411c035` |
| 39 | `theorem` | [degrees_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/degrees-esymm.md) | 296 | `result-track:fd5c20b5cd39930055ebab827ac21a7cc15322d7064d73a6d203825e440f9051` |
| 40 | `def` | [hsymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/hsymm.md) | 321 | `declaration-track:a6735dcc4dd8ff883784e130102a82a78f7ccf8af1f9699a250733b29b171dfb` |
| 41 | `def` | [hsymmPart](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/hsymmpart.md) | 325 | `declaration-track:d11831674b6c48ca0fb2f4f54b54814b92d850f07a2b86af6cb2d67169ed3906` |
| 42 | `theorem` | [hsymm_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/hsymm-zero.md) | 328 | `result-track:d4a409c5b521467a63b1e8976aa097be6ac6fb7a01def725e52abd4797d71a77` |
| 43 | `theorem` | [hsymm_one](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/hsymm-one.md) | 331 | `result-track:04d49ef3d8d768a45089f41ac9bd32219c50ac1b83ee3a45b4381ea773c0fc9e` |
| 44 | `theorem` | [hsymmPart_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/hsymmpart-zero.md) | 336 | `result-track:0c49091e964c88427f1fbe66f7c4821b0073a0bcdbcf74e802d0faea8e5e3ae0` |
| 45 | `theorem` | [hsymmPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/hsymmpart-indiscrete.md) | 339 | `result-track:31e2368632f3f7c5b3ef35d12b12b20366f31b020f7034f3710ff6b6e3c76873` |
| 46 | `theorem` | [map_hsymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/map-hsymm.md) | 342 | `result-track:13bf58d6183075d4d44a1a106e2cf8036f485075d8076cf9384a3a9a46793afe` |
| 47 | `theorem` | [rename_hsymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/rename-hsymm.md) | 345 | `result-track:e7b3950d69d7fe8d8ee55b3d131e1dadf4bb0d98e223764b4e763675804d1ffd` |
| 48 | `theorem` | [hsymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/hsymm-issymmetric.md) | 350 | `result-track:90821e9368dbbe57de379b7c5cc415c08ba38e17212d5335be26c21a3c2b473e` |
| 49 | `def` | [psum](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/psum.md) | 360 | `declaration-track:4ddc869d237b7d0cef165317f675e4faede6d9de304d2fa03e41eeb90c6ae187` |
| 50 | `def` | [psumPart](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/psumpart.md) | 364 | `declaration-track:c034824a27418ca751ab0bf2bf34592833a6041276247510823f9328f5f29862` |
| 51 | `theorem` | [psum_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/psum-zero.md) | 367 | `result-track:f142a066313d93180831096b2704e932b55b70cda8c74fcc5d3290f82b5a2dad` |
| 52 | `theorem` | [psum_one](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/psum-one.md) | 370 | `result-track:4af8022e2bd6a3ff63a169bd3a275ff88274d0f7cbf8878f4f9f4bdbdfb27b8a` |
| 53 | `theorem` | [psumPart_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/psumpart-zero.md) | 373 | `result-track:5c3b20e9e163053facc5bf4ecf6907f6832b2bf64a85d235d1b7fb6f9fd24a19` |
| 54 | `theorem` | [psumPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/psumpart-indiscrete.md) | 376 | `result-track:d9d5dc6916e842f939db44b3a7caacc7ed4e47b405260d25b7d8087f94bf8f9d` |
| 55 | `theorem` | [rename_psum](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/rename-psum.md) | 380 | `result-track:aecee5b52dc924a390f8b67f32298245c8b191eee9e31fc588299e5f216b1dde` |
| 56 | `theorem` | [psum_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/psum-issymmetric.md) | 383 | `result-track:c76aa0fb12c698950fc70b98f4135ecc99993cab7173b9c0f166a82d97661334` |
| 57 | `def` | [msymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/msymm.md) | 394 | `declaration-track:9cec3686b1c6e11819283003423c777da390993e2552d96dd484ba185a49cc9c` |
| 58 | `theorem` | [msymm_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/msymm-zero.md) | 398 | `result-track:9ad61b1f1fc24c4050e543a77da7e5c969ef3099818d0bd9ea1d01052997a2f2` |
| 59 | `theorem` | [msymm_one](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/msymm-one.md) | 403 | `result-track:a0cb262589217365879909b49db6a4520f46e52b71c12b379728a57da1e81949` |
| 60 | `theorem` | [rename_msymm](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/rename-msymm.md) | 418 | `result-track:971ddecbe24eb3bca32067e831d6ec3b7139cd3a8c3c0080fa0785246a6a172d` |
| 61 | `theorem` | [msymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespacedPublic.lean/declarations/msymm-issymmetric.md) | 426 | `result-track:2c134724ce9e1d86c4a40a6de2f2c67d2cb4aaf99d1fd91b83fbeb4e8e677bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d19357803a22911fcd3b82189d8c236ac9758cd7e430bad54db4a76a74954730 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantec8bde84c05bfafcc74af70be0c654cfe71e2eff1c7a6de80fd4652f87206a9e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Defs/Variantec8bde84c05bfafcc74af70be0c654cfe71e2eff1c7a6de80fd4652f87206a9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
