# Verification target: Robbins Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b744ae4d8e99bb45d3f5d1a930887aed56b9af6",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RobbinsPublic.lean/index.md) · [Full source](../../../../Combinatorics/RobbinsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b744ae4d8e99bb45d3f5d1a930887aed56b9af6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean.json)

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
| 1 | `class` | [RobbinsAlgebra](../../../../Combinatorics/RobbinsPublic.lean/declarations/robbinsalgebra.md) | 45 | `declaration-track:fe796c1ab663cabc68ba720ad6d4dffbc68103e2acabdbad349135e62f9700e8` |
| 2 | `def` | [BooleanAlgebra.robbinsAlgebra](../../../../Combinatorics/RobbinsPublic.lean/declarations/booleanalgebra-robbinsalgebra.md) | 53 | `declaration-track:aaebd783fa3e22e8011acfa7ad93f4488ac2e7e55d8a07fd363365595b0e6573` |
| 3 | `instance` | [(anonymous)](../../../../Combinatorics/RobbinsPublic.lean/declarations/instance-source-edition-5.md) | 67 | `declaration-track:c945cef46026aa7ef1b1304cd1b58aee07dae991ecbb45c034fc480a600a2afe` |
| 4 | `def` | [smul](../../../../Combinatorics/RobbinsPublic.lean/declarations/smul.md) | 71 | `declaration-track:47383d9ff3531e02b9fbf9cd8dade9f5a0f8a5ab60e74f5c909ef895b9875c2b` |
| 5 | `instance` | [(anonymous)](../../../../Combinatorics/RobbinsPublic.lean/declarations/instance-source-edition-4.md) | 76 | `declaration-track:65adad219cc660445020bf2fecf93bf10a0168e3c46531f7171dfc6ec4c7bda3` |
| 6 | `lemma` | [smul1](../../../../Combinatorics/RobbinsPublic.lean/declarations/smul1.md) | 78 | `result-track:98c3d4ee46d8cd1eab590c6606eb727aebfb6e6ac8c89946ba04f3c2425d716f` |
| 7 | `lemma` | [smul2](../../../../Combinatorics/RobbinsPublic.lean/declarations/smul2.md) | 79 | `result-track:0d545f82af68c6e2e686025fd122315253e3f50b319ae9242f86da8695b20eb6` |
| 8 | `lemma` | [smul3](../../../../Combinatorics/RobbinsPublic.lean/declarations/smul3.md) | 80 | `result-track:35a543b968cca4cff2e50be18dd15546a6c00fe7b09dd8f1c326538a557a3c69` |
| 9 | `lemma` | [smul4](../../../../Combinatorics/RobbinsPublic.lean/declarations/smul4.md) | 81 | `result-track:a995995379b9a096d34ad05be4b1155531e6aa1a5d42da79c199a926d5bdcb0c` |
| 10 | `lemma` | [smul5](../../../../Combinatorics/RobbinsPublic.lean/declarations/smul5.md) | 82 | `result-track:4b7e071858ca650d1dacf8a60b97f9306d6d06b2787f1444cef131c9abffc69c` |
| 11 | `lemma` | [smul_succ](../../../../Combinatorics/RobbinsPublic.lean/declarations/smul-succ.md) | 84 | `result-track:659d1df9edc490f10447c56fc0a483127a7795316a1e58c6c317393bf0c778bc` |
| 12 | `lemma` | [mann_44](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-44.md) | 87 | `result-track:291bc6646c123a3708cf8f6b7c8aaa8308ae7907c809f51183a7fa92af805463` |
| 13 | `lemma` | [mann_45](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-45.md) | 92 | `result-track:3f2eaab0ab7a6c9e532f1c19a38697b3c412adf879ae01d025403a852fd82c97` |
| 14 | `lemma` | [mann_46](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-46.md) | 97 | `result-track:8a475453c9b82c2d7b34b445a01fd4d850c372e1713e3ccebe55296d59b7621b` |
| 15 | `lemma` | [mann_47](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-47.md) | 102 | `result-track:2f79fc080371112e33b6fb675d70fe0f1f8deae56bb8f1496d8c3351353871ce` |
| 16 | `lemma` | [mann_48](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-48.md) | 108 | `result-track:0b08e96142fc4e87069216f623411baeed126d03b4bf306ab8b9945257dcfa8c` |
| 17 | `lemma` | [mann_49](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-49.md) | 114 | `result-track:46268092bb1068a4f442525d1925489d6b14748b4b9177cfaa084a9416d3dbcc` |
| 18 | `def` | [q](../../../../Combinatorics/RobbinsPublic.lean/declarations/q.md) | 122 | `declaration-track:fb02cb0c189abd7d065f71fb78d9598a7cfdb09bc88a8f453751ec81275ef6e2` |
| 19 | `lemma` | [mann_50](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-50.md) | 124 | `result-track:8f06abab8c3c7abcdb2a6a52610cff6b6e91732876ea390c9de541aae613802f` |
| 20 | `lemma` | [mann_51](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-51.md) | 145 | `result-track:9f125602a316ec06eb1413b56f7a0ef4246da229a963f4325c3fb55cde50acb6` |
| 21 | `lemma` | [mann_52](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-52.md) | 154 | `result-track:a29892a3115bc9d3d27a0e4f1bba11ed6342bacfa03d1eb89b57934fa3d5d6f4` |
| 22 | `lemma` | [mann_53](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-53.md) | 162 | `result-track:50d63733e249980fd7469bb1e5205582cadf84039a9fc3b3e50c0ce0decf34e4` |
| 23 | `lemma` | [mann_54](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-54.md) | 176 | `result-track:3462f111a1a906a96977820bf02b26943a0b0a9713d66d592c0db5b7d22d9fdb` |
| 24 | `theorem` | [winker](../../../../Combinatorics/RobbinsPublic.lean/declarations/winker.md) | 182 | `result-track:8bd0a22cc3944beae6ccb780e9a226eec4487fea4ac8f502c83198894068defc` |
| 25 | `lemma` | [mann_33](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-33.md) | 192 | `result-track:2d261ac887338f1b782785cee4760e59b528daeaef989e64509f2744f2a4f801` |
| 26 | `lemma` | [mann_34](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-34.md) | 195 | `result-track:bede368413d94bb304d53db52b6529645d7954626bfff30f2b7d5f12bca078e8` |
| 27 | `lemma` | [mann_35](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-35.md) | 198 | `result-track:4683e7975426eb86d665e56eeb10170acc28d4259dd9e172f3ef62e9e9ca555f` |
| 28 | `lemma` | [mann_36](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-36.md) | 201 | `result-track:dd1489a6ece70ec6bdd44fd23b71dcea0a764320ec76574eb1c369c148990111` |
| 29 | `lemma` | [mann_37](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-37.md) | 213 | `result-track:76d5624e045150c91b4885c1636559de8d62052f4f82c864d0a78e23800b2dae` |
| 30 | `lemma` | [mann_38](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-38.md) | 221 | `result-track:f122c08becc5174db225b21b1a7acc05c40df652c7995ee553d39e02c5ec7265` |
| 31 | `lemma` | [mann_39](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-39.md) | 226 | `result-track:c86a5527660d46c1c6017b4aeeea87761307ba3713aa6812b3437986ec88034a` |
| 32 | `lemma` | [mann_40](../../../../Combinatorics/RobbinsPublic.lean/declarations/mann-40.md) | 239 | `result-track:ded06b226c07a28ef65b3adfe60850b50f4d20cbc930a22a0ee26cf8e23dab5f` |
| 33 | `theorem` | [exists_idempotent](../../../../Combinatorics/RobbinsPublic.lean/declarations/exists-idempotent.md) | 249 | `result-track:9b41dc854256b211c60d54e44b589c3a3616b19e84378838ef6cfeeaeb9c309c` |
| 34 | `theorem` | [exists_zero](../../../../Combinatorics/RobbinsPublic.lean/declarations/exists-zero.md) | 286 | `result-track:7ae573a6567067100500e1485d60ac34e8b021b64ecbbe592353b1f18aa1d546` |
| 35 | `theorem` | [neg_neg](../../../../Combinatorics/RobbinsPublic.lean/declarations/neg-neg.md) | 311 | `result-track:8722c1615d7b8f514748bc8c3dadd190b4dbe27e5b36111bff6b836553799e6c` |
| 36 | `theorem` | [huntington](../../../../Combinatorics/RobbinsPublic.lean/declarations/huntington.md) | 320 | `result-track:5702de924d5cafe7f53d0a8605e62a04cfca30a7ad5d853531f267a0f6f4ed33` |
| 37 | `instance` | [(anonymous)](../../../../Combinatorics/RobbinsPublic.lean/declarations/instance-source-edition-2.md) | 323 | `declaration-track:15436da8642c625d5303610f0caf0af1a86c38b6de79b6d291690fce21af668a` |
| 38 | `instance` | [(anonymous)](../../../../Combinatorics/RobbinsPublic.lean/declarations/instance-source-edition-3.md) | 324 | `declaration-track:2b02a5af7a74374eaf5e1c88feb5c01357dc67203711afc631296dce584799b0` |
| 39 | `lemma` | [add_neg_self_const](../../../../Combinatorics/RobbinsPublic.lean/declarations/add-neg-self-const.md) | 326 | `result-track:2386deb81caf80fc30331f38d57cd7b2f9080b2e056125ff0f1c88c4da659684` |
| 40 | `lemma` | [neg_zero](../../../../Combinatorics/RobbinsPublic.lean/declarations/neg-zero.md) | 331 | `result-track:0b7c40fd0f27c4b89c6e77d77c62339c0f12fd57a870d2e3625bc65a015defe2` |
| 41 | `lemma` | [neg_one](../../../../Combinatorics/RobbinsPublic.lean/declarations/neg-one.md) | 332 | `result-track:9e237c3f6473a3d8e6efbaf7ded2e8054ed78799f9b97bc8df2a69d357815466` |
| 42 | `lemma` | [add_neg_self](../../../../Combinatorics/RobbinsPublic.lean/declarations/add-neg-self.md) | 333 | `result-track:6206ddb5fe7b4a9875dd1076c4e79a0c45043123539c6b2dd54d58cf5f5f25da` |
| 43 | `lemma` | [add_zero](../../../../Combinatorics/RobbinsPublic.lean/declarations/add-zero.md) | 335 | `result-track:602d67bc96496c202ca8cc0197a51ddc9c2d455fc66be5718b57382752ff07b5` |
| 44 | `lemma` | [add_self](../../../../Combinatorics/RobbinsPublic.lean/declarations/add-self.md) | 346 | `result-track:5fb9bbc5969ef9676ab8b90b15bb22205bdea3cab0be6cb223d38701365d2d78` |
| 45 | `lemma` | [min_add_left](../../../../Combinatorics/RobbinsPublic.lean/declarations/min-add-left.md) | 350 | `result-track:61617a686b128793dbff65a9a83195b71f7c0bd794bdce65d5abcc97c33dc95f` |
| 46 | `lemma` | [min_add_distrib](../../../../Combinatorics/RobbinsPublic.lean/declarations/min-add-distrib.md) | 354 | `result-track:89b4a6f1298bf30f029b72c81ac15ed79727df1db1a4ad79f88f7cadfa2a34e8` |
| 47 | `lemma` | [add_min_distrib](../../../../Combinatorics/RobbinsPublic.lean/declarations/add-min-distrib.md) | 367 | `result-track:b5294110de81f52244517ea2c07d3a8240ea4ae6b90ce10da8052958186999aa` |
| 48 | `instance` | [(anonymous)](../../../../Combinatorics/RobbinsPublic.lean/declarations/instance-source-edition-6.md) | 370 | `declaration-track:ed0e219637ab318ba0e6da7c933356195b7e0cd3b200488a27c148b63fbbb05f` |
| 49 | `instance` | [(anonymous)](../../../../Combinatorics/RobbinsPublic.lean/declarations/instance.md) | 385 | `declaration-track:113de8bc4bdb9212607b368749ffefa692915eefa02784f272d3f673474f53c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=530b9b605d6111d70b8779a5532724798c1d35f5f685f45fb54954e35ebfb471 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
