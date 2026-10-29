# Verification target: Hypergraph Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef1003d2ac85d44690f9c7847b79d82889c508f0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef1003d2ac85d44690f9c7847b79d82889c508f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean.json)

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
| 1 | `structure` | [Hypergraph](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/hypergraph.md) | 81 | `declaration-track:408da6e98cc6db1da474e8bcdc703a3254d9c99b111e91a01a6cde01aa501c07` |
| 2 | `lemma` | [subset_vertexSet_of_mem_edgeSet](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/subset-vertexset-of-mem-edgeset.md) | 105 | `result-track:dbd99bc72c6880abd3dd1dadfebe90b6d0131c5ba22f2175c991551c1618dc21` |
| 3 | `lemma` | [edgeSet_subset_powerset_vertexSet](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/edgeset-subset-powerset-vertexset.md) | 110 | `result-track:e482a43c16e74b2912f3acfd88ce7022566449abc6745fe6114aa15a6d7588bb` |
| 4 | `lemma` | [mem_vertexSet_of_mem_edgeSet](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/mem-vertexset-of-mem-edgeset.md) | 113 | `result-track:2fc4c5d053f2cd160d60db811860c0585d2dda71169efe5a173121bd54626a56` |
| 5 | `lemma` | [edgeSet.ext_iff](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/edgeset-ext-iff.md) | 116 | `result-track:fdde7368942469041f3584e3ace3e3129c56ca33a0269884ca840881a6667ae4` |
| 6 | `lemma` | [sUnion_edgeSet_subset_vertexSet](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/sunion-edgeset-subset-vertexset.md) | 119 | `result-track:230560e9de39dfc12accd1cc2832d066bbf436a70011352db795ee0bbb21265f` |
| 7 | `def` | [Adj](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/adj.md) | 132 | `declaration-track:bb4bb672492abb2cd05484456ab2bad3f07271dd0e70990b784153af9ce33cf7` |
| 8 | `lemma` | [Adj.symm](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/adj-symm.md) | 135 | `result-track:01ac6c8b2d7d120dbfc4ad59504fe804a7f302c9e274a34c779b186777f96a8f` |
| 9 | `lemma` | [adj_comm](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/adj-comm.md) | 137 | `result-track:d6640f4a6277aafb8964b019632b5ab1eaeb9c4846f4611470aa81b0e8c3cf1a` |
| 10 | `def` | [EAdj](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/eadj.md) | 144 | `declaration-track:75f8534589a715b2782d8a2f04275a2c7544baaf5a527d41f4d86850602d2e3b` |
| 11 | `lemma` | [EAdj.exists_vertex](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/eadj-exists-vertex.md) | 147 | `result-track:5fe478034b12354d021274ef405e3de6a94df00db41e2faef4229b9159d0c898` |
| 12 | `lemma` | [EAdj.symm](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/eadj-symm.md) | 151 | `result-track:cd33db6431dc89557f68bb3fed57d41df7b2e043641ae90b5af35478a94ac5ec` |
| 13 | `lemma` | [EAdj.inter_nonempty](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/eadj-inter-nonempty.md) | 153 | `result-track:5e1520677d99266a1cb63d435c879ad2a1d5e65f5a236652265601e4fe34e4ac` |
| 14 | `lemma` | [eAdj_comm](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/eadj-comm.md) | 156 | `result-track:ba4b678fb4ea8880cb8471e16012eb18b9aa3713e50817ce28c0df5119b1653c` |
| 15 | `def` | [image](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/image.md) | 164 | `declaration-track:7f0ac3a015f6b8ba2f001dc637ae3722bb43a0f40af603b63e41ac6e624c3115` |
| 16 | `lemma` | [mem_edgeSet_image](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/mem-edgeset-image.md) | 171 | `result-track:4421e17a7f2a77d2de3269a28c5e08ac33fc7e0b34c1d634cc2472bafa7e8e4f` |
| 17 | `lemma` | [image_mem_edgeSet_image](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/image-mem-edgeset-image.md) | 174 | `result-track:8b0b3d7fb19498eed365e4435b024053eecbad51ec7452cee9bb44c9d760698e` |
| 18 | `lemma` | [image_image](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/image-image.md) | 177 | `result-track:51aaa84e04bd0c88a4aedb68b55f84dc12b67ac88b8b0d71e860d37499076efe` |
| 19 | `def` | [IsIsolated](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isisolated.md) | 183 | `declaration-track:4d9fa10c63f86ac91c977b5a4554f6df3349c068925c48f2f73abcd1e4fa24af` |
| 20 | `lemma` | [sUnion_edgeSet_eq_vertexSet_iff_all_vertex_not_isolated](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/sunion-edgeset-eq-vertexset-iff-all-vertex-not-isolated.md) | 185 | `result-track:dde64133926fa34fa2ba38779d6b7736325f9be1239996904dc427314c2b040d` |
| 21 | `def` | [IsLoop](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isloop.md) | 191 | `declaration-track:db1e0557124a8fb175530c9a09ed9b6418b7b8b41c35c441582172bd091cd45a` |
| 22 | `lemma` | [isLoop_iff_mem_edgeSet_and_singleton](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isloop-iff-mem-edgeset-and-singleton.md) | 193 | `result-track:3b49206d38bd3dce6a08dbd51c7918416034969970a246b1cba149009cd88f2a` |
| 23 | `lemma` | [isLoop_iff_mem_and_ncard_one](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isloop-iff-mem-and-ncard-one.md) | 195 | `result-track:750b488865d1f37590800abb3a738a680b89029abd58bb8f35478a7d5146bbb3` |
| 24 | `lemma` | [IsLoop.ncard_one](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isloop-ncard-one.md) | 198 | `result-track:dbcf66f98bcd262dfb00c2b2614ee1affab63bfcd06b415760608d617f060326` |
| 25 | `def` | [IsNonempty](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isnonempty.md) | 202 | `declaration-track:142318393b196760598737ceb5dcd49f44d64c02329a55ff3071d47c75236f87` |
| 26 | `instance` | [(anonymous)](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/instance.md) | 206 | `declaration-track:8f3667442cf6fa890821958fdde6c10fe35afbd25fadad6580e28a187e924618` |
| 27 | `lemma` | [IsNonempty.of_nonempty_vertexSet](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isnonempty-of-nonempty-vertexset.md) | 212 | `result-track:4df1a4695cd9d7bcf19ee22a11bb51938c8cba68abcea0bd65a1a16ac952d503` |
| 28 | `lemma` | [IsNonempty.of_nonempty_edgeSet](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/isnonempty-of-nonempty-edgeset.md) | 216 | `result-track:263d2094cfe3ad755b7193fe91c8c22d45228362f77d601e45bd285cf1734aaf` |
| 29 | `theorem` | [ne_bot_iff](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/ne-bot-iff.md) | 220 | `result-track:87e1c7c574da900acce1379e4294a2c2bb9a5bc919b399bc60ac1005cba3d4a3` |
| 30 | `theorem` | [not_isNonempty_iff](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/not-isnonempty-iff.md) | 227 | `result-track:bfb7b8d9c5c1bde1eb21022e6c1c1d9ea75ecfa37a1819ced57bc8081de0c2c5` |
| 31 | `lemma` | [eq_bot_or_isNonempty](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/eq-bot-or-isnonempty.md) | 231 | `result-track:4291b96d3bfe952babd5a20c1f295f8ba6bde0fb2bc40f1ac0f718e3b504c16b` |
| 32 | `def` | [IsTrivial](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/istrivial.md) | 244 | `declaration-track:f46df0d52009514e376021c382464093e6a2238f133e65b5c6d51c3b45acabaa` |
| 33 | `def` | [trivialOn](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/trivialon.md) | 249 | `declaration-track:400b9bbb1a815e53e7261151f0fb95088fbfd3c220fd3dc16dbb5e29138238ee` |
| 34 | `lemma` | [IsTrivial.trivialOn](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/istrivial-trivialon.md) | 254 | `result-track:cd0a6d031e0e0f2de20932f29b5dd296f6b43855538899b5de19b946bba054e2` |
| 35 | `lemma` | [IsTrivial.isNonempty](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/istrivial-isnonempty.md) | 258 | `result-track:a1dda1204c278bfab81ff0d60ca5997d9c30d11f0355407cbf2216ed35576a4f` |
| 36 | `lemma` | [IsTrivial.not_mem_edgeSet](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/istrivial-not-mem-edgeset.md) | 261 | `result-track:4e83aa3972fe6e0c94625a50028d1411933d5477a0a519e3d4f07c829f9a327c` |
| 37 | `def` | [IsComplete](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/iscomplete.md) | 265 | `declaration-track:cf03731121353733ac1b82a90fb7c5c9a999a2f892a178e34e80c06f4ce9f86c` |
| 38 | `def` | [completeOn](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/completeon.md) | 270 | `declaration-track:141a2eae3e5bf33ddc240f186cc4af89dd3aa68ce37804cf4b93a71c9f900d82` |
| 39 | `lemma` | [mem_completeOn](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/mem-completeon.md) | 275 | `result-track:992b65db10b790a83a39d52884852f618f88e14e6ce2d8245db698ea9b3fccf8` |
| 40 | `lemma` | [IsComplete.mem_iff](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/iscomplete-mem-iff.md) | 277 | `result-track:fa414729bcc10067afaf1241b26c7a3f62d9d2a3fc5628121522e29453067425` |
| 41 | `lemma` | [IsComplete.completeOn](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/iscomplete-completeon.md) | 280 | `result-track:66b776224a360680813b3b41355144bf137fc45b504c3603bbf29376d33b97ed` |
| 42 | `lemma` | [IsComplete.isNonempty](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/iscomplete-isnonempty.md) | 282 | `result-track:821e94e04c132b180f9365fc86f20db81aff085d3fea88431a99d6657e768768` |
| 43 | `lemma` | [IsComplete.not_isTrivial](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/iscomplete-not-istrivial.md) | 285 | `result-track:ca5fa88971fb513f49b79d46825c02cf273826fdbd785e5ac24080baa12b6ea5` |
| 44 | `lemma` | [not_isTrivial_completeOn](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/not-istrivial-completeon.md) | 289 | `result-track:4a59e73d0933bf3c9da61ff0da64a7534354cae5332a6ab6bdba5466d480e154` |
| 45 | `def` | [IsLinear](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/islinear.md) | 293 | `declaration-track:05b37214fe9bf23e78ff2195aa111a56ccbb39581c3c9db527feae7b2df69f82` |
| 46 | `lemma` | [isLinear_def](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/islinear-def.md) | 296 | `result-track:9fd14a8663c2b8540b9ffca2893930d20de30020ae1978ac2e634e41ef4cd094` |
| 47 | `lemma` | [IsLinear.inter_subsingleton](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/islinear-inter-subsingleton.md) | 299 | `result-track:89d4444ed859da3a385699334946f717bbd13188374651516d5f131511476732` |
| 48 | `theorem` | [IsTrivial.isLinear](../../../../Combinatorics/HypergraphBasicNamespacedPublic.lean/declarations/istrivial-islinear.md) | 304 | `result-track:d896f38b5ff6530f7d69d1af5bfb613739e2969cacb586c7d66d660fbc8f1f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4a97755bd2b36347ed3cb9412d6dac81edc0b168ea6b5817c283fa4da008dcc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
