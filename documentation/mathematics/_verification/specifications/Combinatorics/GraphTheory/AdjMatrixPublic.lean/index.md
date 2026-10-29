# Verification target: Adj Matrix Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cd78f0a5c115c0b1df853a0ab4e0363346ad009",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cd78f0a5c115c0b1df853a0ab4e0363346ad009`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Idempotent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.DegreeSum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/isadjmatrix.md) | 58 | `declaration-track:9a6a353897c14f8b4c50dcbc2b50a07fc84ae1d3281bcd6381c77cc22760feca` |
| 2 | `theorem` | [zero](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/zero.md) | 67 | `result-track:8f080555a18793e428fd8b027ba6d4509f741688e5675b32a52b80f08bbb1915` |
| 3 | `theorem` | [apply_diag_ne](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/apply-diag-ne.md) | 70 | `result-track:fc2ca2ba593221a6d04653183e87b8431951ce70112d370c0941333440903c5f` |
| 4 | `theorem` | [apply_ne_one_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/apply-ne-one-iff.md) | 74 | `result-track:f8b8ef6017b5463aec3180e15ae718c2b4fcaac26dcacf19548b18a2b3d2be10` |
| 5 | `theorem` | [apply_ne_zero_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/apply-ne-zero-iff.md) | 78 | `result-track:0cc9a89e5a5405ce6148e6e0243ce9ae619bceaec8ce322862aed8db564a9984` |
| 6 | `theorem` | [diag_eq_zero](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/diag-eq-zero.md) | 82 | `result-track:d969dca3f298b6511e78a4d10ad45dd966d6048c9fa963562289244c2ca88761` |
| 7 | `theorem` | [submatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/submatrix.md) | 86 | `result-track:e5f9e8d199ecd7d7fdbe7c5b8cfd863de3612b99f8b4d127815e18edaf8fe3ff` |
| 8 | `theorem` | [_root_.Matrix.isAdjMatrix_submatrix_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/root-matrix-isadjmatrix-submatrix-iff.md) | 92 | `result-track:764445f15a0076d80f799d4574e6105a7bf9f76da7790ba66030d9f5ea34a4ae` |
| 9 | `theorem` | [reindex](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/reindex.md) | 98 | `result-track:1201eaf90a7676739250a00a48a1c0009d757a2ba35f021577cd3b6666865848` |
| 10 | `theorem` | [_root_.Matrix.isAdjMatrix_reindex_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/root-matrix-isadjmatrix-reindex-iff.md) | 101 | `result-track:b238125342e97ac5a0fa138614e011970713ab60bf8f845bee52bbfe2eaba425` |
| 11 | `def` | [toGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/tograph.md) | 108 | `declaration-track:297908176054de980e02daa1dd077432b121820b5ccbe942424a31967409a81b` |
| 12 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/instance.md) | 113 | `declaration-track:cb3eeb7ca370354ac8ac72f147f7709dbded30e62a0b062e0b9c234c991bd3e4` |
| 13 | `def` | [toGraphSubmatrixHom](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/tographsubmatrixhom.md) | 122 | `declaration-track:64299f23f23b4512384f31346d7b79776ad7740744fcc4c76728f3747ff2f82f` |
| 14 | `def` | [toGraphSubmatrixEmbedding](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/tographsubmatrixembedding.md) | 130 | `declaration-track:86b70b901f46486dcf753451759fa7c01613f7955b966a99ba8fbfa1593a9587` |
| 15 | `theorem` | [toGraphSubmatrixEmbedding_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/tographsubmatrixembedding-apply.md) | 137 | `result-track:d8cbe957c3e814515eb97aebe1c259b1d98c2138af7f0afa0ec47208e6ffb99c` |
| 16 | `def` | [toGraphReindexIso](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/tographreindexiso.md) | 145 | `declaration-track:57c33254b2e037249f697228cf3af6815e6312258fe61f95df4e777ab7c69c94` |
| 17 | `theorem` | [hadamard_self](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/hadamard-self.md) | 150 | `result-track:fa46ced3b0b5c609df690d5d3e984fc8a7cebaea87d54fea920cb1b49e44e23a` |
| 18 | `theorem` | [isAdjMatrix_iff_hadamard](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/isadjmatrix-iff-hadamard.md) | 155 | `result-track:8f1ccc7c92958c9631165820dbf2740a77fb4cfcfc6c3c20825e1a31151c1e31` |
| 19 | `def` | [compl](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/compl-source-edition-2.md) | 164 | `declaration-track:bd28e948d11206559ab04d63836004df853b9606b574f6837fd60d29b251a02b` |
| 20 | `theorem` | [compl_apply_diag](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/compl-apply-diag.md) | 172 | `result-track:c9a018ec2461707c6cd339e6d2b4a1fa7e3fd645a004a694a0fbe62efb454494` |
| 21 | `theorem` | [compl_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/compl-apply.md) | 175 | `result-track:0d8687338db682a0da72c1e4925df8c90e91a33558cc459d76737074bdbd4ab2` |
| 22 | `theorem` | [isSymm_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/issymm-compl.md) | 184 | `result-track:104f0cbbed4988b3ba2217b9820d33b43c87b596e1c8cf47e0705733daa895e3` |
| 23 | `theorem` | [isAdjMatrix_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/isadjmatrix-compl.md) | 189 | `result-track:035462608b67be2d5c4f7dd34b82d052b8862f2059b91e2a35b11c02b48e68f6` |
| 24 | `theorem` | [IsAdjMatrix.compl_inj](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/isadjmatrix-compl-inj.md) | 192 | `result-track:2e0960956033c5f8055fca6ed27086900d9e1dda55b3c962d1b51953223c9d10` |
| 25 | `theorem` | [IsAdjMatrix.compl_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/isadjmatrix-compl-compl.md) | 202 | `result-track:5a74c43fa35b476df5e50b2286e9540a375fd1da4c08a045f148e7c429bfe275` |
| 26 | `theorem` | [compl](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/compl.md) | 217 | `result-track:24506109342260e3c317653687278a61757b4ea0046de4d220b648ec17f78311` |
| 27 | `theorem` | [toGraph_compl_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/tograph-compl-eq.md) | 220 | `result-track:13dc8c27061eb2b83d63d80c981ebf524f7ecfc228d71201f2324adf3672256b` |
| 28 | `def` | [adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix.md) | 238 | `declaration-track:6f1aa8dfa5b41d1d01ce053a21c09276020e54c56f6b1f61f545ab2687add9e2` |
| 29 | `theorem` | [adjMatrix_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-apply.md) | 243 | `result-track:c5b57ed36203caff7d2041b1fe6ceb9f48278e852b5a8c06be87c346f0105728` |
| 30 | `theorem` | [adjMatrix_bot](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-bot.md) | 248 | `result-track:f08dd5383ac9aac085b998a26185055a05eb9107f617cb39ac8c194a7a711608` |
| 31 | `theorem` | [adjMatrix_top](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-top.md) | 253 | `result-track:abf16c9a387bffd66ff70deffe227b3463c4906ece57c5d3f89d27c8822a3985` |
| 32 | `theorem` | [transpose_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/transpose-adjmatrix.md) | 259 | `result-track:ecb5373215e8fb61998f0f553fa3d36299046f3f42dc971e58314ed27108ccff` |
| 33 | `theorem` | [isSymm_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/issymm-adjmatrix.md) | 264 | `result-track:5bf655488a4c5e9320c4082f587c63e2f61e7f3e83325c0e5a010188c2e9621f` |
| 34 | `theorem` | [isAdjMatrix_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/isadjmatrix-adjmatrix.md) | 271 | `result-track:09cefb08b57a576b7e4a5cd1e4ba631c27926f4268378838020bc6e5276895b2` |
| 35 | `theorem` | [diag_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/diag-adjmatrix.md) | 274 | `result-track:713e02d452e7793ddcc876c84c746fc5ea7e806159ccc527f759203c67b40a54` |
| 36 | `theorem` | [toGraph_adjMatrix_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/tograph-adjmatrix-eq.md) | 279 | `result-track:43e146b1a34b715b6d1c51b9a2eeae38cfddfe2115787329310c5078bd1f561b` |
| 37 | `theorem` | [compl_adjMatrix_eq_adjMatrix_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/compl-adjmatrix-eq-adjmatrix-compl.md) | 285 | `result-track:c4a320bd06f58360fc2bca9508a6270887670b3c2e253c911ac6912c5dc8bd8a` |
| 38 | `theorem` | [Embedding.submatrix_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/embedding-submatrix-adjmatrix.md) | 290 | `result-track:f4a1d236f1b80c7c2aa5e87de0432dd49fad4dce10ae2eb6e7c7e1ff6f7d113a` |
| 39 | `theorem` | [Iso.reindex_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/iso-reindex-adjmatrix.md) | 296 | `result-track:aff55d45488c00fcb136375f306adb87c66ee29444aaf07a89b023b4c568a741` |
| 40 | `theorem` | [IsCompl.adjMatrix_add_adjMatrix_eq_adjMatrix_completeGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/iscompl-adjmatrix-add-adjmatrix-eq-adjmatrix-completegraph.md) | 301 | `result-track:633cca9b69ce60b4b62b848ec5711282311157eaa1e6db331d7c3fe35da06079` |
| 41 | `theorem` | [adjMatrix_add_compl_adjMatrix_eq_adjMatrix_completeGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-add-compl-adjmatrix-eq-adjmatrix-completegraph.md) | 307 | `result-track:78dc3ce435bf40afdc9ebcf73a95830858ca34e0034d0ace3b8df039500e7dd2` |
| 42 | `theorem` | [one_add_adjMatrix_add_compl_adjMatrix_eq_of_one](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/one-add-adjmatrix-add-compl-adjmatrix-eq-of-one.md) | 314 | `result-track:6aa4b3bcd59e7583b7cd6b1ab9a22b0b73e6ae7348494dab45a8f13eec7cae2d` |
| 43 | `theorem` | [compl_adjMatrix_completeGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/compl-adjmatrix-completegraph.md) | 320 | `result-track:e3d49d44fad1ebffe99023bd95fff8ce9df0a2199cc2f5116db4dc1fc630d652` |
| 44 | `theorem` | [_root_.Matrix.compl_zero](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/root-matrix-compl-zero.md) | 323 | `result-track:d4abc5ee899726d642f56ada10cd900e95c72cba6b7d53d9121dc848e4c85231` |
| 45 | `theorem` | [adjMatrix_completeGraph_eq_of_one_sub_one](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-completegraph-eq-of-one-sub-one.md) | 326 | `result-track:f304aac192f184950c5faed7a43f3e81f4b86c9ae434999f2bf2f5c4e280176f` |
| 46 | `theorem` | [_root_.Matrix.compl_zero_eq_of_one_sub_one](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/root-matrix-compl-zero-eq-of-one-sub-one.md) | 329 | `result-track:e20af760614cb1e29f1b4357708bba66bda434f568b16850c686454523a69d8e` |
| 47 | `theorem` | [_root_.Matrix.compl_of_one_sub_one](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/root-matrix-compl-of-one-sub-one.md) | 333 | `result-track:368eb4753c63ffffa9c8d2e8289c4131b3b7a4b7d3f54b109aef392cdbe22b94` |
| 48 | `theorem` | [adjMatrix_hadamard_self](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-hadamard-self.md) | 339 | `result-track:23b0c30d13ace0c2f19878a539306e063f323914428d9e96f7099c1302cdd724` |
| 49 | `theorem` | [adjMatrix_dotProduct](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-dotproduct.md) | 348 | `result-track:cbb1645eec3574b60760fdeb6dcbf6071555aa2b0ac77bc3cd9fc3e68ed4197c` |
| 50 | `theorem` | [dotProduct_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/dotproduct-adjmatrix.md) | 353 | `result-track:ab7707380f189e6309005f54e8a50796a91bae53a3b620a5405e058a4caf2910` |
| 51 | `theorem` | [adjMatrix_mulVec_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-mulvec-apply.md) | 358 | `result-track:6bb73ed2ee701dc65c0c235299b555bf9c51bd71d37b454ac465f98c1f76c246` |
| 52 | `theorem` | [adjMatrix_vecMul_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-vecmul-apply.md) | 363 | `result-track:960e9d29c0ff7d4fa2f7e3c14994d2d63a4a9ad91208c45285b997d55707c28f` |
| 53 | `theorem` | [adjMatrix_mul_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-mul-apply.md) | 370 | `result-track:4a77580f2fd4e4278c91f1332bec643c096f6f3840d2fc951c67af74b67a6118` |
| 54 | `theorem` | [mul_adjMatrix_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/mul-adjmatrix-apply.md) | 375 | `result-track:851cbd3dd58ac75bcf9911bfce0577ff143dc40e18b0bed62e4ee831c14bb01e` |
| 55 | `theorem` | [trace_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/trace-adjmatrix.md) | 381 | `result-track:da67d7990661a173caaaae29a248053a5f3bcda73a4b25fe9be80de7eee9a8fb` |
| 56 | `theorem` | [adjMatrix_mul_self_apply_self](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-mul-self-apply-self.md) | 384 | `result-track:e8d3f277fc84554f05bd7240851038c781501cfecc241f7cfc70bd8828014c09` |
| 57 | `theorem` | [natCast_card_dart_eq_dotProduct](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/natcast-card-dart-eq-dotproduct.md) | 390 | `result-track:0e3be912214106ebd30276f118deae47abd93f8b89883a253c178750ab39508c` |
| 58 | `theorem` | [adjMatrix_mulVec_const_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-mulvec-const-apply.md) | 396 | `result-track:f0128329336531be7f24a1027a47b4ff97abb2c80e2bcbeb42396cd149f30593` |
| 59 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-mulvec-const-apply-of-regular.md) | 399 | `result-track:05a55f23be0b5340727d9f36ca9e758efe4c435281737009f6096df41a90bb68` |
| 60 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-pow-apply-eq-card-walk.md) | 403 | `result-track:ee9fb7cbbd9e66ecd9a72418007281d1ef3e8b1df165074a90290637ce7b3561` |
| 61 | `theorem` | [dotProduct_mulVec_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/dotproduct-mulvec-adjmatrix.md) | 423 | `result-track:101249869f8233680a4b55c94095fa3b5c3f01020bca4849990cf365a2223374` |
| 62 | `theorem` | [adjMatrix_hadamard_diagonal](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-hadamard-diagonal.md) | 434 | `result-track:24971c5edd74b84a284f8fc1647a75f0f6ffb565a0e5d0c49aad3704b395e388` |
| 63 | `theorem` | [diagonal_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/diagonal-hadamard-adjmatrix.md) | 437 | `result-track:387fea2587ec567ac26b933d4ea0fe334a44fcde024dde8d8a81dc43014b9101` |
| 64 | `theorem` | [adjMatrix_hadamard_natCast](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-hadamard-natcast.md) | 440 | `result-track:7006885f4baa6ef0c62f63ef66e1d88e07acce8c506f006fb8f82fea37922a3a` |
| 65 | `theorem` | [natCast_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/natcast-hadamard-adjmatrix.md) | 443 | `result-track:d08eec9e9b0a5c3155b0373e68bc09a2507623458d9537367dfd7e87eda281d9` |
| 66 | `theorem` | [adjMatrix_hadamard_ofNat](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-hadamard-ofnat.md) | 446 | `result-track:6c0ceb48395d07143693bbf975d6fa5f97408db6cffc34f9507238c15821115b` |
| 67 | `theorem` | [ofNat_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/ofnat-hadamard-adjmatrix.md) | 449 | `result-track:b3ae8b4c8a23a326d6e32feae205a9158e0fd7814f3c97031e80ef89a0b3cbfd` |
| 68 | `theorem` | [adjMatrix_hadamard_intCast](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-hadamard-intcast.md) | 452 | `result-track:8140eba964f5204b316e2d2cb83274c418b6e06fee6fcd60a3f8d45f1e670354` |
| 69 | `theorem` | [intCast_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/intcast-hadamard-adjmatrix.md) | 455 | `result-track:e55874f527ede8c57ed3d6f9e50cf229c6ec3d5833769ebcade59ace8172b1d7` |
| 70 | `theorem` | [adjMatrix_hadamard_one](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-hadamard-one.md) | 458 | `result-track:0990ddce18683870ecd9a022487532e0bebf424d221163342e254199d6926cdd` |
| 71 | `theorem` | [one_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/one-hadamard-adjmatrix.md) | 461 | `result-track:70d6d1a4042a7b84d9b7d26e64394cb5003fdf94fd60f742851fbbbbbe046cbb` |
| 72 | `theorem` | [adjMatrix_toGraph_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixPublic.lean/declarations/adjmatrix-tograph-eq.md) | 475 | `result-track:f0b5e05698766b8fde354f108214b735dab1b069eb94c7081b7efd833e5cfd7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da5b302a168082f837de741f4fb3145b17b2e1b31826f1e6d96c007a0187c3ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
