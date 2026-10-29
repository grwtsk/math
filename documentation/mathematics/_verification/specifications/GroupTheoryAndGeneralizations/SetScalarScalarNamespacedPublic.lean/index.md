# Verification target: Set Scalar Scalar Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38cfeacc866d25cca6cea447fe13913a6b36b55c",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38cfeacc866d25cca6cea447fe13913a6b36b55c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean.json)

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
| 1 | `def` | [smulSet](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smulset.md) | 79 | `declaration-track:d8e78101043a5da0e59e00aa7f0ad52d7c888917f17af11c68168130b99fd222` |
| 2 | `def` | [smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul.md) | 86 | `declaration-track:dc5c6d6de99a28bb0d2fd0c4a3dedf9dfe7625451ca0c6ac3f8242a5016c7348` |
| 3 | `lemma` | [image2_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/image2-smul.md) | 97 | `result-track:12815921bce1f69665ba4ac0c3068f8146ea20ea2fa11107c1ef2d55e88aca0e` |
| 4 | `lemma` | [image_smul_prod](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/image-smul-prod.md) | 100 | `result-track:df4153b5a433cb2c968ac1a66ad05b8c1268b4378ec93df9e79dd71d08e1b404` |
| 5 | `lemma` | [mem_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/mem-smul.md) | 102 | `result-track:bef0239d6e8b0d922c7243e2b9a239802835ecfbb3f91b5fc0ac0353c2d712f8` |
| 6 | `lemma` | [smul_mem_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-mem-smul.md) | 104 | `result-track:ae6ab0c8d202f68b882f9c5a1323155edcab5686d95368872c50bba1e6b0428f` |
| 7 | `lemma` | [empty_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/empty-smul.md) | 106 | `result-track:1db27b23e9bd68e3ec0ee931cf7e83ec3e59f244896f38577f81b97a018246fc` |
| 8 | `lemma` | [smul_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-empty.md) | 107 | `result-track:a367bdc22de61ff4085640f66d05ce8c8f02c006a525da2d7014753966ee5a4b` |
| 9 | `lemma` | [smul_eq_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-eq-empty.md) | 109 | `result-track:49fbd2cec0a6888a11fd1ccce1e86246107da09ce2e429912160d348efac720a` |
| 10 | `lemma` | [smul_nonempty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-nonempty.md) | 112 | `result-track:469340ce84b288d7741613bad6a2ca84e4eecb7aa562b96f649e3f1b09676a8e` |
| 11 | `lemma` | [Nonempty.smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/nonempty-smul.md) | 114 | `result-track:ab3767bdb2330bd7da42c8113f3459c4739e2f3e667751bc629dd1c69547e13c` |
| 12 | `lemma` | [Nonempty.of_smul_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/nonempty-of-smul-left.md) | 115 | `result-track:8f71fd88c2d62a835daeb144e2b398aaaf79db258f32d097f49b832f6f1bf069` |
| 13 | `lemma` | [Nonempty.of_smul_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/nonempty-of-smul-right.md) | 116 | `result-track:39348b663923bc3e75f909ed2311b1906e3eb9571d6038d7cc25a96825a53652` |
| 14 | `lemma` | [smul_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-singleton.md) | 119 | `result-track:4392c7ffd94361414d902b741c5cf4a1a0a52945339ad3bd14269504cceef91f` |
| 15 | `lemma` | [singleton_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/singleton-smul.md) | 122 | `result-track:527390ef61c77d10cc521d12216b63736d99e71ef3fe5ea13a73ea0d9bf5cf47` |
| 16 | `lemma` | [singleton_smul_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/singleton-smul-singleton.md) | 125 | `result-track:eed83dd75812ef51654f7b03d9266652a90a9f996cea594fe3b7c074af2a4c34` |
| 17 | `lemma` | [smul_subset_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-subset-smul.md) | 128 | `result-track:0ee96669e231fb01893162d50c76f6e1c1d03f9dadc22ea66998c65714c72be3` |
| 18 | `lemma` | [smul_subset_smul_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-subset-smul-left.md) | 131 | `result-track:aec2535ccea66b1035ea229e6b6aa2baa1877718a680f8ea73111164a7dbc92e` |
| 19 | `lemma` | [smul_subset_smul_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-subset-smul-right.md) | 134 | `result-track:62a0df3763bf967ed1a0b9f4dba7778cc772449b466515a609922242e60abcb7` |
| 20 | `lemma` | [smul_subset_iff](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-subset-iff.md) | 136 | `result-track:13e88a2ac8bed7a30a30ffd8d79f9d415e5c9473af52ad3a8bef5b8100df6dd6` |
| 21 | `lemma` | [union_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/union-smul.md) | 138 | `result-track:da7c4e02dc0f70e7fd2d7241f029137156f61fcf224cb644b9189d78c72ea85a` |
| 22 | `lemma` | [smul_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-union.md) | 139 | `result-track:5e6e75a4432b80c8ea3089ab0966d09b26085496d73a3904f3c81d92499d5b1b` |
| 23 | `lemma` | [inter_smul_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/inter-smul-subset.md) | 142 | `result-track:ce08e17460235437d667a4d2c68b85861bcadd45f04d00f680ed56cb939c5332` |
| 24 | `lemma` | [smul_inter_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-inter-subset.md) | 145 | `result-track:acb33ecc9047a7576b253b4785f62990682f7e83390e1e165457b411ca21ed9c` |
| 25 | `lemma` | [inter_smul_union_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/inter-smul-union-subset-union.md) | 148 | `result-track:e2cd466a13a270190662a493ff298d23dc94c945e70b5613624e9cd1c95285b7` |
| 26 | `lemma` | [union_smul_inter_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/union-smul-inter-subset-union.md) | 152 | `result-track:7ee3ff130028855e30c0b2cbf29c786cec59bcb076047cdfda6ea4e1f03b14da` |
| 27 | `lemma` | [smul_set_subset_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-subset-smul.md) | 156 | `result-track:108058ec2934617095b0ee7d4469b5c5ef749b0228464120e300e9f4355a5a9d` |
| 28 | `lemma` | [image_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/image-smul.md) | 163 | `result-track:5b61d76a4d5cd5a461ff69cdcd14379e2cc66f2182a11c71602cafc40504cac6` |
| 29 | `lemma` | [mem_smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/mem-smul-set.md) | 167 | `result-track:e58c28a3f1dcab616ddcb11736eb684a7f2102bdb96fec1e3b60ff3a0ab54066` |
| 30 | `lemma` | [smul_mem_smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-mem-smul-set.md) | 169 | `result-track:779e9d2825bda2c523e7b4ff7b8e80c30a626a435339fdbf59d88ed018ba3b06` |
| 31 | `lemma` | [smul_set_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-empty.md) | 171 | `result-track:83a5260a1b23ab17cce2a9790d64e28abdae88e28cddc5e42a35005014793fa0` |
| 32 | `lemma` | [smul_set_eq_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-eq-empty.md) | 172 | `result-track:f13a8ed053dfda662816e0637e4d46d35bc740cb326ac1558940b402a95adb96` |
| 33 | `lemma` | [smul_set_nonempty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-nonempty.md) | 175 | `result-track:f46ba19cee72d8ed329182b71cf9056bb5bfa84e4fe323d75f1883c0cabb67a6` |
| 34 | `lemma` | [smul_set_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-singleton.md) | 178 | `result-track:4dcd39ee614548acba3e691f7b6d55209ccac53bc5bc6d55933875dfc3e73f4f` |
| 35 | `lemma` | [smul_set_mono](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-mono.md) | 180 | `result-track:2c5399ee6d6db31d18129f069d655fc0be27fc19d18563dfb5990ed6725966d9` |
| 36 | `lemma` | [smul_set_subset_iff](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-subset-iff.md) | 183 | `result-track:d1aad6b40ddb8c5ab0896a4fe1453f7efb5ebf191c922503e90c7dcb46121a23` |
| 37 | `lemma` | [smul_set_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-union.md) | 187 | `result-track:49bc476bee8509d9f141aa799be62f2a881a525b813fddc01f63cd1087c2d421` |
| 38 | `lemma` | [smul_set_insert](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-insert.md) | 191 | `result-track:248ddf5779dd9589d36a9b9b5385b9fb5ecbc2fd769d98270b7d4b59453d1ae6` |
| 39 | `lemma` | [smul_set_inter_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-inter-subset.md) | 195 | `result-track:f0e7f33f03254cbe7a01f49dd8d24bbab652d00c3be7539a403332a2f263e94a` |
| 40 | `lemma` | [Nonempty.smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/nonempty-smul-set.md) | 198 | `result-track:a1727484c2cc4ced8d1449123e8a114a0facf0f1c151edea4b5ffe6edf9c4df6` |
| 41 | `theorem` | [smul_set_pi_of_surjective](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-pi-of-surjective.md) | 207 | `result-track:d4f4e9a481681443a33dc49dc3db6f262081880cac9e28b281871b8c9bade1e9` |
| 42 | `theorem` | [smul_set_univ_pi](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-univ-pi.md) | 212 | `result-track:cfd6c14847c119393dead2be3591d76e4e860ab8133dda9506053b848f9a1092` |
| 43 | `lemma` | [range_smul_range](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/range-smul-range.md) | 220 | `result-track:5103d477c1e6cd3622f1c6cca8763e21b40d92220279d158bf6874cc3427e719` |
| 44 | `lemma` | [smul_set_range](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/smul-set-range.md) | 225 | `result-track:4673b03c93fbc902b54dc737492ce78c25427579fb1bd73f564301016e528e9b` |
| 45 | `lemma` | [range_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/range-smul.md) | 229 | `result-track:3e185df5468a6322a77e4dc7059fae547c1dff93d0f33982ea31f8801681af7b` |
| 46 | `instance` | [sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv.md) | 239 | `declaration-track:35b60b77d8f04429428a26338f0f7176ea639a2faa97ff816073b3bc9b98da01` |
| 47 | `lemma` | [image2_sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/image2-sdiv.md) | 242 | `result-track:4e8c524cb61e3e0f6e0bde5371ae446d4aaa3de69dd359cc0868f79f8d97a220` |
| 48 | `lemma` | [image_sdiv_prod](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/image-sdiv-prod.md) | 245 | `result-track:6a4ada938aeff5aeeed94bfbcb711553b239ea9c4a2c36bfb5c41bc9cb5ea2a6` |
| 49 | `lemma` | [mem_sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/mem-sdiv.md) | 248 | `result-track:318b79e3e3e27c4a662e9608f23cd1a968f9a18d3d34766a65c1c22263c3a346` |
| 50 | `lemma` | [sdiv_mem_sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-mem-sdiv.md) | 251 | `result-track:34fe246394c28480b728d326742f9e35f932ceb830ae4ba6fd610b292247a073` |
| 51 | `lemma` | [empty_sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/empty-sdiv.md) | 254 | `result-track:ca7c8ba8ae97b886e7531a832d7dcfebe7cccf375751edb721283591ed84570b` |
| 52 | `lemma` | [sdiv_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-empty.md) | 257 | `result-track:ae2fd9af995c6b050e89a98ce4c81f29ecb39bce56524c7bd7d7a3b8a8fcfc0b` |
| 53 | `lemma` | [sdiv_eq_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-eq-empty.md) | 260 | `result-track:71a66a52122389ef6a5f7dde46eed250542ec6236040fc13252bdc3f2c861328` |
| 54 | `lemma` | [sdiv_nonempty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-nonempty.md) | 263 | `result-track:3b10228b95cd56535fd9977217f3c910c02ae5f725702963ead1859eb7f47f69` |
| 55 | `lemma` | [Nonempty.sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/nonempty-sdiv.md) | 266 | `result-track:2a4cb4616c57f73cefb9f0aa162d0424a021351845d7a1ace2adbe578e4b5af4` |
| 56 | `lemma` | [Nonempty.of_sdiv_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/nonempty-of-sdiv-left.md) | 269 | `result-track:7b54c0eab5625ea548889f2b627b522e87660cd7094246bfab0b9e0bd2d721c4` |
| 57 | `lemma` | [Nonempty.of_sdiv_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/nonempty-of-sdiv-right.md) | 272 | `result-track:82314ab492ebf7cf756a83d8bdf437d776e34c64bb4c5cd18d5d63cdeb580f78` |
| 58 | `lemma` | [sdiv_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-singleton.md) | 275 | `result-track:6422721f2176994c85bcb93c77b78f560791c1873e87a99567dc12b515be5598` |
| 59 | `lemma` | [singleton_sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/singleton-sdiv.md) | 278 | `result-track:4145dab161c9748ec717019989219ed75c7b0227536255a363c1f4d67a7483b1` |
| 60 | `lemma` | [singleton_sdiv_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/singleton-sdiv-singleton.md) | 281 | `result-track:f6b745c7647d0ef4eb6754bb927c4e5d36fc43f2997fdf2cb44f9988df57458e` |
| 61 | `lemma` | [sdiv_subset_sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-subset-sdiv.md) | 284 | `result-track:9af1cea368166b35087722695c0d78f694657f4c6678463ff5038172db86f2ed` |
| 62 | `lemma` | [sdiv_subset_sdiv_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-subset-sdiv-left.md) | 287 | `result-track:b2a250f41c1502d7f311f9804c1746bdca5a536a24588d01ff79aef2c01073e1` |
| 63 | `lemma` | [sdiv_subset_sdiv_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-subset-sdiv-right.md) | 290 | `result-track:cc0fc4b20511d211e82dcd53788f9b35a5aab5cc9fe7e76fdd8414b35e3e213d` |
| 64 | `lemma` | [sdiv_subset_iff](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-subset-iff.md) | 293 | `result-track:c757bfd5790f47de38f40811430ac46c91db94964550c076abd6197fbb6138ef` |
| 65 | `lemma` | [sdiv_self_mono](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-self-mono.md) | 296 | `result-track:a5efc15774802434a7ede54d5a32b23b93c569b450cf7f03c784eb722fbf27d2` |
| 66 | `lemma` | [union_sdiv](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/union-sdiv.md) | 299 | `result-track:7438ffaec57ee944541b9768ff1310c323d71425154dcdfd8a78042c087d4d53` |
| 67 | `lemma` | [sdiv_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-union.md) | 302 | `result-track:4052dc60ad1aefd63cc4dc4cbff058c03ccbdedae90a58b744781888d39fb0cb` |
| 68 | `lemma` | [inter_sdiv_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/inter-sdiv-subset.md) | 305 | `result-track:c22fe53b85cf3083d113ee68a9caf54eb7a252f58d8c2ef2c8fed7203bc64dc5` |
| 69 | `lemma` | [sdiv_inter_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/sdiv-inter-subset.md) | 308 | `result-track:e1a08cc81b7782693ea98c4bbd5d9b9e3745f3c59485cb9218d5b5a7b45359d1` |
| 70 | `lemma` | [inter_sdiv_union_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/inter-sdiv-union-subset-union.md) | 311 | `result-track:844b5f04ae8c406cc077070ed1f00861b5343ff1ce9c27e3d28b1b053594d5c8` |
| 71 | `lemma` | [union_sdiv_inter_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/union-sdiv-inter-subset-union.md) | 315 | `result-track:577e766b11396af2caa379efbd4ce87cd905b550b5b1216d02f8d922fe6dbc20` |
| 72 | `lemma` | [image_smul_comm](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/image-smul-comm.md) | 323 | `result-track:9ca8b526e6cc0b2bf4aeb630d60f64ada5fec6d95fc6d6888f409508c32d4092` |
| 73 | `lemma` | [op_smul_set_smul_eq_smul_smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespacedPublic.lean/declarations/op-smul-set-smul-eq-smul-smul-set.md) | 331 | `result-track:0b44bae3321aa692f9774e4c14bbd329ca371d9f6f633c81131d59f6ba00fd37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abf0f4fa796217ab909095c0923e2e7bacd4a366e9fd26fe3bd4b006673cb2ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
