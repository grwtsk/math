# Verification target: Permutation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c17126c26ce0f3d19ea27d8f543eac8efcd8d2d4",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant2bba8c5b990902276c24da2580b3c540e330fd057e4c60d98c993cd94a0c9e86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c17126c26ce0f3d19ea27d8f543eac8efcd8d2d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant2bba8c5b990902276c24da2580b3c540e330fd057e4c60d98c993cd94a0c9e86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant2bba8c5b990902276c24da2580b3c540e330fd057e4c60d98c993cd94a0c9e86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [permutationsAux2_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux2-fst.md) | 71 | `result-track:e375686f5bbabb3d934c4f7f49cf80f19ab9fed33019e32c1b532634bce21e07` |
| 2 | `theorem` | [permutationsAux2_snd_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux2-snd-nil.md) | 77 | `result-track:743980265364f0c4214650c0835e0f26ed0e669cfa2991e00f7d7c8fd053dc00` |
| 3 | `theorem` | [permutationsAux2_snd_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux2-snd-cons.md) | 82 | `result-track:4a065068f36afa99b6797b6106276f056c9bfce03f9cc001eff179f029eb6986` |
| 4 | `theorem` | [permutationsAux2_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux2-append.md) | 89 | `result-track:cc5522cf02057964187203ed9a93849e7ae0cf5ae524ec4f4054d0bc749d919d` |
| 5 | `theorem` | [permutationsAux2_comp_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux2-comp-append.md) | 94 | `result-track:a3174e69bb74791372378f746b5e54b52b533301a76b28afe19811c212719881` |
| 6 | `theorem` | [map_permutationsAux2'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/map-permutationsaux2-source-edition-2.md) | 100 | `result-track:ecaf47a0f008c4a3e53d84072a989f8d101c16d68e04dfce08cf4419266ac342` |
| 7 | `theorem` | [map_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/map-permutationsaux2.md) | 114 | `result-track:8a36c40d671332fc42b0577402952c8c7a541d91391b84317f353d3020a44add` |
| 8 | `theorem` | [permutationsAux2_snd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux2-snd-eq.md) | 130 | `result-track:f48f7eb8ac78f13a87f01933fae535cd8ae75826ecc9e923456bba6d268f21d0` |
| 9 | `theorem` | [map_map_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/map-map-permutationsaux2.md) | 135 | `result-track:9b287ea41d912680506f18fbb6ad1f885a9285b7a9b877d1344eca346c0d1c82` |
| 10 | `theorem` | [map_map_permutations'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/map-map-permutations-aux.md) | 140 | `result-track:1b2c1a81a3f42c7ae9e3e2333004f82400e47090e4199603d8b931a12fe29239` |
| 11 | `theorem` | [permutations'Aux_eq_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutations-aux-eq-permutationsaux2.md) | 146 | `result-track:4b47e23bffe1ffd483c6d1ffede995a85aaede62e1c179a761a1f745a9946fe7` |
| 12 | `theorem` | [mem_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/mem-permutationsaux2-source-edition-2.md) | 154 | `result-track:289f3d9b8f0125ea3754aa76608f84b108d84e0466808f554a506d147eec9867` |
| 13 | `theorem` | [mem_permutationsAux2'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/mem-permutationsaux2.md) | 172 | `result-track:03cc427aced629da3b40cf07346d107851231cb370442a76238e678c746d9a57` |
| 14 | `theorem` | [length_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/length-permutationsaux2.md) | 177 | `result-track:91d6824b6ee44937f4b30c1b3c7fd5d309b30429c907f7f11ed7600fec0190f2` |
| 15 | `theorem` | [foldr_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/foldr-permutationsaux2.md) | 181 | `result-track:1539ce907b7cb0bad8604f594e2db5c89b5a7865f0b61ada2c68a1d1dce4516e` |
| 16 | `theorem` | [mem_foldr_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/mem-foldr-permutationsaux2.md) | 188 | `result-track:5ba2d09468c9cde9259870437f598c94ea9a77a4f83449fbfe389384a0b9764c` |
| 17 | `theorem` | [length_foldr_permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/length-foldr-permutationsaux2.md) | 201 | `result-track:93079ef7516c131896616615894b0727fb2e552655e604701b090e1c8dcd321a` |
| 18 | `theorem` | [length_foldr_permutationsAux2'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/length-foldr-permutationsaux2-source-edition-2.md) | 206 | `result-track:ad1d827b7501ae3a01bee736e9ebd3ab6178f9f1b3b945a83973b076c1f3b4b8` |
| 19 | `theorem` | [permutationsAux_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux-nil.md) | 218 | `result-track:efe7a119923d3f59bf41c6cf2545dcd316b2718afdcb8d4c7902d5057dfe5460` |
| 20 | `theorem` | [permutationsAux_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux-cons.md) | 222 | `result-track:9577157bd9711106d24a19cef9d3b351aadd036e7c6791a6bcc88b3cc1932b59` |
| 21 | `theorem` | [permutations_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutations-nil.md) | 229 | `result-track:360900c0d5f87eab284c8d85366b1adb42cbf389a429eef7c7badc19b9fa513a` |
| 22 | `theorem` | [map_permutationsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/map-permutationsaux.md) | 232 | `result-track:d3b13f60827da3412bf2cb8917eeef20a8c950a967d2b7e79f6f155bfe1b26d0` |
| 23 | `theorem` | [map_permutations](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/map-permutations.md) | 240 | `result-track:647d6838c6e7a0e2d94806da0dd0b906c91b565de1efac2e185bbd19fb3429ae` |
| 24 | `theorem` | [map_permutations'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/map-permutations-source-edition-2.md) | 244 | `result-track:c0232d4d27c012c8e08f8bf36c3ae052694ee3df23398e66d567d2f2c05c8412` |
| 25 | `theorem` | [permutationsAux_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutationsaux-append.md) | 250 | `result-track:62c14bf59c58c34d108c038eaaddaad25b5b545c4bf8d85b2e5993a99ae25960` |
| 26 | `theorem` | [permutations_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutations-append.md) | 262 | `result-track:856db79469127311813ee9a8b50f422adc124d1da6402f05e1103eaa511cb832` |
| 27 | `theorem` | [perm_of_mem_permutationsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-of-mem-permutationsaux.md) | 266 | `result-track:1fec92e9bad29d37f9e3a1310362b65af0c64ec47ffd7b438e779825858b76d2` |
| 28 | `theorem` | [perm_of_mem_permutations](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-of-mem-permutations.md) | 281 | `result-track:8750e5e9be6fb6513b4d012c9d0b04b09efd032ab15d34325d1e2dec542ffb8f` |
| 29 | `theorem` | [length_permutationsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/length-permutationsaux.md) | 285 | `result-track:fe877380f6d399d7da22a9f8de16b553cbf8935e0254f374dda7bea3ea316173` |
| 30 | `theorem` | [length_permutations](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/length-permutations.md) | 296 | `result-track:408501ae1abe354a02486d1a43cab2f6cd97d372fd2fd727633800ca9bcbebcd` |
| 31 | `theorem` | [mem_permutations_of_perm_lemma](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/mem-permutations-of-perm-lemma.md) | 299 | `result-track:24ea3eff091d6d3b352d9d730f15961af058bee7e0caa63d154a3b73102a8d2b` |
| 32 | `theorem` | [mem_permutationsAux_of_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/mem-permutationsaux-of-perm.md) | 303 | `result-track:4faef626bf0be232173029ebeb0df83a1ff8536c427be5de6426193167421726` |
| 33 | `theorem` | [mem_permutations](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/mem-permutations-source-edition-2.md) | 323 | `result-track:a62e894d50e70e28a6b4c53adc2f8137841725cd1a3c2efdac4f33803a944ca1` |
| 34 | `theorem` | [perm_pair](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-pair.md) | 328 | `result-track:0b5829b6c707b7a948e37daa4238edecf2dc1f0b84b83f8cf9f786f39afd09c4` |
| 35 | `theorem` | [pair_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/pair-perm.md) | 334 | `result-track:e85e654aa03749c6a4ad9a231d1c155bacd875b8c440c9cc77d870344a551991` |
| 36 | `theorem` | [perm_permutations'Aux_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-permutations-aux-comm.md) | 337 | `result-track:270331da3c0ca1ee175d7e2ec5583bc91b58a38fb92f44aaf6f87daa2df264e0` |
| 37 | `theorem` | [Perm.permutations'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-permutations-source-edition-2.md) | 361 | `result-track:c458d8f44d36fc2fdc0072c95e72d5b0870cd3e224d38cb65e721f2b9a07c458` |
| 38 | `theorem` | [permutations_perm_permutations'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutations-perm-permutations.md) | 373 | `result-track:5977a48a2092536b0a46242496528e3b0563ba6c6fe6da7cb220a572b2cc3e5c` |
| 39 | `theorem` | [mem_permutations'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/mem-permutations.md) | 392 | `result-track:04ec45515c2e7646e6478337dd7ae9c536bfb0a8e17e2b7e7f665ce9bc5c7368` |
| 40 | `theorem` | [Perm.permutations](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-permutations.md) | 395 | `result-track:6bcc57570c60217545f540d7b41f5975bb3b7a93fdf311df15af7dc187b3b4a7` |
| 41 | `theorem` | [perm_permutations_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-permutations-iff.md) | 400 | `result-track:53fafb3b1ceb141349c004a26b85ecdc19ef6304a9628c093e193d607c36a597` |
| 42 | `theorem` | [perm_permutations'_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/perm-permutations-iff-source-edition-2.md) | 405 | `result-track:7833d03a3f8345e2a80a5bfec1631df5f67f7c86553b4545b032ce997063e1c5` |
| 43 | `theorem` | [getElem_permutations'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/getelem-permutations-aux.md) | 409 | `result-track:5459a9f53fa7436a9c1c1c07c5f36587c47032f10037f294faf4a2118e14c417` |
| 44 | `theorem` | [get_permutations'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/get-permutations-aux.md) | 421 | `result-track:fe234f7d12b7a2e2306889a36386e0e9ce94e13b316c63281658db8cda0ec806` |
| 45 | `theorem` | [DecEq_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/deceq-eq.md) | 427 | `result-track:b793a645cbd281d4180adef8bb65d1a57b3de6ccd02c82894f5903795e12153b` |
| 46 | `theorem` | [count_permutations'Aux_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/count-permutations-aux-self.md) | 434 | `result-track:70609a0d15385c850d8442b2a632e585d577c0d492a94d4e3683369da1c445f7` |
| 47 | `theorem` | [length_permutations'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/length-permutations-aux.md) | 448 | `result-track:0ef14abd62d26f04264e74b6c1f3b43220b3171ec2f4bf3f3df4108b9d0af188` |
| 48 | `theorem` | [injective_permutations'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/injective-permutations-aux.md) | 454 | `result-track:6d4804287c196e33be5da69582662eb390bfaa651e07400ed0a3690a3c657be4` |
| 49 | `theorem` | [nodup_permutations'Aux_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/nodup-permutations-aux-of-notmem.md) | 463 | `result-track:590be9bac11ccf10b50fad8bd71c8d828781461bcb10d51f89a4098e0166b5f0` |
| 50 | `theorem` | [nodup_permutations'Aux_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/nodup-permutations-aux-iff.md) | 475 | `result-track:fc0b0e7385b65c15aef96ea7b901036e0f4e8d37e87d1085d3f0786ab767699f` |
| 51 | `theorem` | [nodup_permutations](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/nodup-permutations.md) | 488 | `result-track:78425aac111825e0f8979adab8d01707f382f6961afa4416dca63082340ef051` |
| 52 | `lemma` | [permutations_take_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/permutations-take-two.md) | 526 | `result-track:d54f7773032c0f4b520698b14be1dc80ed1a59d8baf9065003bb44bb7865dba8` |
| 53 | `theorem` | [nodup_permutations_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermutationNamespacedPublic.lean/declarations/nodup-permutations-iff.md) | 531 | `result-track:d60afb69f5ed4070c548a5e5ae7a7dfe4504547ced846f52abee5a27ab7b7bf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=907b52ff3648d991c70434a50d32fa1da79d2c9b601d06b7d13adb361eea1e64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant2bba8c5b990902276c24da2580b3c540e330fd057e4c60d98c993cd94a0c9e86.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant2bba8c5b990902276c24da2580b3c540e330fd057e4c60d98c993cd94a0c9e86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
