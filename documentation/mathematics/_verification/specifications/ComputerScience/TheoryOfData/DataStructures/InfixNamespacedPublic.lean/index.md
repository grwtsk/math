# Verification target: Infix Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e882f9f33e5ba9ca9826670306b460fd8873e6e",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant93ac72fdae4e39c056f6a2db745bf327ee96ccdd14939873b4a331ebbffc9e51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e882f9f33e5ba9ca9826670306b460fd8873e6e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant93ac72fdae4e39c056f6a2db745bf327ee96ccdd14939873b4a331ebbffc9e51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant93ac72fdae4e39c056f6a2db745bf327ee96ccdd14939873b4a331ebbffc9e51.lean.json)

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
| 1 | `lemma` | [IsPrefix.take](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isprefix-take.md) | 54 | `result-track:eaab9e18dc9a536f1742059d07bca990b16e00c30cdc524e213cab7c1ead4d01` |
| 2 | `lemma` | [IsPrefix.drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isprefix-drop.md) | 57 | `result-track:61ec038b3934ac4b9ae1ab1bbba6f2f8956688d09caa2cb4b7ab1035051f4863` |
| 3 | `lemma` | [isPrefix_append_of_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isprefix-append-of-length.md) | 62 | `result-track:10bb39d7b22456504573dfa8bd361f4cd6e4d2e4fca8454d2d54d387a1039349` |
| 4 | `lemma` | [take_isPrefix_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/take-isprefix-take.md) | 66 | `result-track:82e6b681de44083c3d9a4385660c6572506e235072b9fda3ad7adc139b3a45ac` |
| 5 | `theorem` | [IsPrefix.flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isprefix-flatten.md) | 70 | `result-track:e6caa586e511ebf78c705428643964d6f19fae3a3cfd880323e10e2339a7dc8a` |
| 6 | `theorem` | [IsPrefix.flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isprefix-flatmap.md) | 76 | `result-track:b931c8bd00af31bdb23a650bf5ff1963b60ab5601152fb3cf1a905b171df8096` |
| 7 | `theorem` | [IsSuffix.flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/issuffix-flatten.md) | 81 | `result-track:d2cf0e9b1e4bd50e1d2fedb56c71fed74a1b1124d9ac38b3793f291eb5568195` |
| 8 | `theorem` | [IsSuffix.flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/issuffix-flatmap.md) | 87 | `result-track:95e33074f7748c8e5b2583e04fc1011aa03387663c007bfaefba31d7b529fd3f` |
| 9 | `theorem` | [IsInfix.flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isinfix-flatten.md) | 92 | `result-track:36520be126f858aa32777bc6372200f4e88fb9ae98a27af511e2e9b5ac5c0730` |
| 10 | `theorem` | [IsInfix.flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isinfix-flatmap.md) | 98 | `result-track:dad12c3da403c51246521d3227b4eaf1384ba0329c0077376271b1f0596ff2c6` |
| 11 | `lemma` | [dropSlice_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/dropslice-sublist.md) | 102 | `result-track:0c70c72b7df6c7bb6236bd205de4a1dc0c129a8c2cc10f41d37dd96d9c483c20` |
| 12 | `lemma` | [dropSlice_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/dropslice-subset.md) | 108 | `result-track:16f919d52f80a4a29e31dbae41aab4b58b96635571b14c21ac320948eace77f4` |
| 13 | `lemma` | [mem_of_mem_dropSlice](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/mem-of-mem-dropslice.md) | 111 | `result-track:c7538adf0a5d3736f2d6b1584f0fd8282c466ff8ac80e329d5a518f38246f3f4` |
| 14 | `theorem` | [tail_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/tail-subset.md) | 114 | `result-track:04814f0660db9b16ee75bf3c7c35adf1ed519b289f916085025a35b0a1df5475` |
| 15 | `theorem` | [mem_of_mem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/mem-of-mem-droplast.md) | 117 | `result-track:d07821b3352f21261c3dae14c3df76c6d01eeb104a3cdff46769e9cc6c33603c` |
| 16 | `theorem` | [concat_get_prefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/concat-get-prefix.md) | 123 | `result-track:56a925bd2a2a3df674d24248233da47d449369ef665476dd04d3ec3201353175` |
| 17 | `theorem` | [prefix_append_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/prefix-append-drop.md) | 130 | `result-track:604fa1e8b8c6574dee067a35d2277fd4d3155413cff93323db7100db549d33e8` |
| 18 | `instance` | [decidableInfix](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/decidableinfix.md) | 141 | `declaration-track:984a6de552bd3ca844df2c81758c9c319df58656aa851bd78b4208fe4489d597` |
| 19 | `theorem` | [IsPrefix.reduceOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isprefix-reduceoption.md) | 149 | `result-track:ce4c3df269205758bff6ab3cbaa5a1e7983917b2ff464f60c8ba27c48da4081d` |
| 20 | `theorem` | [singleton_infix_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/singleton-infix-iff.md) | 153 | `result-track:b00bca06b404076d02a0c68236ef293f7a0cf9c84b247d37912fe7914098dae9` |
| 21 | `theorem` | [singleton_infix_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/singleton-infix-singleton-iff.md) | 160 | `result-track:af0174b8d027b959596371fef4f2ba9fd3472b166c7e8d84b05c6a97217b75dd` |
| 22 | `theorem` | [infix_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/infix-singleton-iff.md) | 166 | `result-track:3e9aaafe042e905b8bb1a6b3d4a5fbacfcfac7c9d0dfefef31308637f576a45b` |
| 23 | `lemma` | [infix_antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/infix-antisymm.md) | 176 | `result-track:a8c5cd4cf1ce4c0388234ba10b6eca644ff8f6413c191d89f8177cd901ce40fe` |
| 24 | `theorem` | [IsPrefix.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isprefix-nodup.md) | 180 | `result-track:a2ff090e4ef779f37dec38f758d6a4a27a520e1cf58247950fae0113ecc17092` |
| 25 | `theorem` | [IsInfix.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/isinfix-nodup.md) | 184 | `result-track:3339b672784f52cd7c25ddaf62fec33e42043fbfcc7a935f4dc191eb1f10d8ee` |
| 26 | `theorem` | [IsSuffix.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/issuffix-nodup.md) | 188 | `result-track:47a042396d5241231a726a83b97521f266bc4a00bce028eb2f77a4a8788d97ad` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 192 | `declaration-track:c498176e888d8e93a37ed8bfb2b12b68e43b20f4fe71a2b3d306819958eb6db1` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:7cc833e75df7bcfc1af3b1d0ff87dc2c7e5babe153a0d13ff9a9c23165da8a19` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/instance.md) | 202 | `declaration-track:72aec5e5d71cd79eb0a7a419f225f149b05f94a558f182740988f565a8bdf555` |
| 30 | `theorem` | [mem_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/mem-inits.md) | 212 | `result-track:e81fbcec6243226e1216bd29b21c05886cf30e175efe90e3fc0915e5412f8a8f` |
| 31 | `theorem` | [mem_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/mem-tails.md) | 232 | `result-track:ed0b2c3990f5d0aa08173ae974290d6f61ee25294b392740a375dc64eda04979` |
| 32 | `theorem` | [inits_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/inits-cons.md) | 249 | `result-track:6310c01129278d6d1309d2374d8272a594a5ac4fb485ec0e5d25e7b7e4755f6d` |
| 33 | `theorem` | [tails_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/tails-cons.md) | 252 | `result-track:c5e034d08ede4e0befe6ae2cc00b048989307c40607d9b00172c7c67adf263ac` |
| 34 | `theorem` | [inits_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/inits-append.md) | 255 | `result-track:c8eb8610c0c789ae0accb603452d9df20256d3041132f7db8c8d47b8a5e310b6` |
| 35 | `theorem` | [tails_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/tails-append.md) | 261 | `result-track:96751e9d0504e7df825fcd39548551f42c0f211d8fc39543f1f44238b0a3f87c` |
| 36 | `theorem` | [inits_eq_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/inits-eq-tails.md) | 268 | `result-track:8258bf78375c10f6fe3f4e15d124e9272db3a7d953a0c56745b26939c7c826da` |
| 37 | `theorem` | [tails_eq_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/tails-eq-inits.md) | 272 | `result-track:a0b83b6c194486f57e3d7a0d7eb9faa9ee4bce01995f22f07e18b9c32bad0d20` |
| 38 | `theorem` | [inits_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/inits-reverse.md) | 276 | `result-track:e5125409ba1feecc0523246eb91936cefb75ade96b4f6c1f14b2b393dfa6261f` |
| 39 | `theorem` | [tails_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/tails-reverse.md) | 280 | `result-track:3a4ead104430f4d02f39f5519122c78ee48e080d4652ffd5e69def643e716d2b` |
| 40 | `theorem` | [map_reverse_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/map-reverse-inits.md) | 284 | `result-track:f3bd644755151da3c067be75ce2e4b00579ed1eb6ddbd18d04b93e3318fb130a` |
| 41 | `theorem` | [map_reverse_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/map-reverse-tails.md) | 288 | `result-track:1656c5b1525a33a6ab161aff26f362475b5612d1531624979b2f74572d7816f9` |
| 42 | `theorem` | [length_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/length-tails.md) | 293 | `result-track:bda0ebb3a4e86f649ae792e3328ddd953fc39ecb04316c9994dee759e1bee993` |
| 43 | `theorem` | [length_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/length-inits.md) | 299 | `result-track:853caa623cf84295fc884194997f899a43f16d2ed4bf244ad4cf2a568c82ded4` |
| 44 | `theorem` | [getElem_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/getelem-tails.md) | 302 | `result-track:6c18becf3aecf6a7904b2797c50162b0732fead860f9374065632865f8409946` |
| 45 | `theorem` | [get_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/get-tails.md) | 311 | `result-track:a3b2ddcf4a85b5c8fc2526b9ab00a332dcc45a2eaf33ed5f27ebe3ffeec15fcc` |
| 46 | `theorem` | [getElem_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/getelem-inits.md) | 315 | `result-track:8a73258c0c6e72780249ed444f41491eda313180c27d3bcbcd25baf435373b54` |
| 47 | `theorem` | [get_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/get-inits.md) | 324 | `result-track:9342fccb690ef0cf8d73de9d8dff093d4660d0351e68cbeb95b164dec890511e` |
| 48 | `lemma` | [map_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/map-inits.md) | 327 | `result-track:3be667d2feb2fcce58b2b13b453d4a84802ea2121477465d4af0da676dc7ce36` |
| 49 | `lemma` | [map_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/map-tails.md) | 330 | `result-track:eb0874ae9d7024705fd5888997b4cb3a0a544a96c8a4fef30a33eebf905158eb` |
| 50 | `lemma` | [take_inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/take-inits.md) | 333 | `result-track:00442bfc294edf8d949a9dd87792571a30199d26608c9225903bab67128461f4` |
| 51 | `theorem` | [insert_eq_ite](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/insert-eq-ite.md) | 345 | `result-track:556c0d6cdc9b8fd3413fba8718cad43440981042d7bddbec07e380bceb7fd34f` |
| 52 | `theorem` | [suffix_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/suffix-insert.md) | 350 | `result-track:865e3ac08f682319204a4624f8a432509920ae56ee40168e3669a3092e80248d` |
| 53 | `theorem` | [infix_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/infix-insert.md) | 355 | `result-track:e29171b44475b3235d86c8bdebfad5b4a932e4a1252760255a19767667da75de` |
| 54 | `theorem` | [sublist_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/sublist-insert.md) | 358 | `result-track:e189c27b8d1593bf2913dfb395d0ecebb75423f5525d0be2c1d22b27175c6392` |
| 55 | `theorem` | [subset_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/declarations/subset-insert.md) | 361 | `result-track:ad52ad77a7110cac7dd6ba689f087197ba3a1071481e62a4f7fa7d1837d9eea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6bc706ff22a550c193b6d4ec53099d0ac7c1bf18ef59c63d123b8ff831a68fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant93ac72fdae4e39c056f6a2db745bf327ee96ccdd14939873b4a331ebbffc9e51.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant93ac72fdae4e39c056f6a2db745bf327ee96ccdd14939873b4a331ebbffc9e51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
