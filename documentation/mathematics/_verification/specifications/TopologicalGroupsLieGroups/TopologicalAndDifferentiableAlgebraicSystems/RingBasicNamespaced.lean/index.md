# Verification target: Ring Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b381e3e7d7e0ce805971183c733e534f797f5311",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b381e3e7d7e0ce805971183c733e534f797f5311`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.GroupTopology` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsTopologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/istopologicalsemiring.md) | 53 | `declaration-track:9e66c217dd472d7c0e5abd06221e7696f15f3300af1bb41e1e472fa2e27433eb` |
| 2 | `class` | [IsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/istopologicalring.md) | 65 | `declaration-track:1d6ecc2fab9c0df4b28ee4c7d5990c6a5dbbae477eb95846ff1839c7a2c501b1` |
| 3 | `theorem` | [IsTopologicalSemiring.continuousNeg_of_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/istopologicalsemiring-continuousneg-of-mul.md) | 75 | `result-track:32c860d296dcf084200bb95f6722afac9971e342bbc9c4c6cad3fbf69ccca519` |
| 4 | `theorem` | [IsTopologicalSemiring.toIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/istopologicalsemiring-toistopologicalring.md) | 83 | `result-track:b30a1c665a487de62a6f990e2d14f50a52aa7909cad794a19088d8e5ee060de4` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 91 | `declaration-track:98f8a2f5983a60b5b639327ab0b792ce453d1ef317d385f8064c785c5ef6ea97` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 94 | `declaration-track:c27afcac30aa9cec36d3447c9221df7d88396d20899c8dee55123ff4e58124b0` |
| 7 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-18.md) | 97 | `declaration-track:e65b926d845ec212846aaf9e62102858a50573d475f3312c4bdc83aae31cba6d` |
| 8 | `instance` | [instIsTopologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instistopologicalsemiring.md) | 106 | `declaration-track:0bc91982351a360633bc097b6b3a820250debf52980cb04ab42b4702845f5b1b` |
| 9 | `def` | [topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/topologicalclosure.md) | 111 | `declaration-track:837be7f2d3f0cdef747009ae0ec064a8963420f2fe6ec9a001956728ea9d4d2f` |
| 10 | `theorem` | [topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/topologicalclosure-coe.md) | 116 | `result-track:6db4c7c8d36824a196296667257f8633d9f8a8dcfd97a895d33ad5d5df5fb4f3` |
| 11 | `theorem` | [le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/le-topologicalclosure.md) | 120 | `result-track:19349f04dd245ac4406aebdb1b07148e66496d7f72ff9f7c68fa241a0b53a1e5` |
| 12 | `theorem` | [isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/isclosed-topologicalclosure-source-edition-2.md) | 123 | `result-track:ed3750b6c5feb010147cea6d827a2c3475a56f327ca5eb9faf7ffc85c2541b72` |
| 13 | `theorem` | [topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/topologicalclosure-minimal-source-edition-2.md) | 126 | `result-track:fd3b57470e70f1fe30dcb0307f3edadc995b0ece7ad3f14ccd098fc271622e88` |
| 14 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/nonunitalcommsemiringtopologicalclosure.md) | 134 | `declaration-track:c6bec4795556b05b1135a01a9d47091a1fd200dc336712660898e8be88686ba8` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 143 | `declaration-track:70bf86977dc2c8b51c3dc80653d5f277837085bbd18aa129a3de225be73913b9` |
| 16 | `instance` | [topologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/topologicalsemiring.md) | 147 | `declaration-track:855e7ae94f7b6c1694c6566d4fa4bd750af33107120acb138c114f4476bd5662` |
| 17 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/continuoussmul.md) | 150 | `declaration-track:28a4fd8b33911f7c9066762e3be178918df7aa1567a7d1a86ff85eb3809d73ed` |
| 18 | `def` | [Subsemiring.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subsemiring-topologicalclosure.md) | 158 | `declaration-track:a64f4f983e0d79cdb873e46677c199f81785abf9cb429f4fd09497b0a5dd49f5` |
| 19 | `theorem` | [Subsemiring.topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subsemiring-topologicalclosure-coe.md) | 163 | `result-track:e9ddc33662fbe47767958da694e2e955ff0de08fc1b825688c1d1d425d3c9f33` |
| 20 | `theorem` | [Subsemiring.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subsemiring-le-topologicalclosure.md) | 167 | `result-track:0a5bb59a3a84895dc5c083b5372e6fe2207f684cd5e9ecc643fff28598aa8149` |
| 21 | `theorem` | [Subsemiring.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subsemiring-isclosed-topologicalclosure.md) | 170 | `result-track:2cdfd83e7acaf97cc381f41761f888a7a840687adc7e45adc6865b16ee4b2e8c` |
| 22 | `theorem` | [Subsemiring.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subsemiring-topologicalclosure-minimal.md) | 173 | `result-track:1219fe91a40d9e0689a31a8797ac295f80298a7e69fecc2c3b55875701a482c1` |
| 23 | `abbrev` | [Subsemiring.commSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subsemiring-commsemiringtopologicalclosure.md) | 181 | `declaration-track:e7d875a35b8f9281d6a847ce5d91b22cc390649f29cb789606ee4314d65802f1` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 193 | `declaration-track:3ec3909d8473ddb3adfed081b267a29e215627d5da931b03910e6cd12553ac9b` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 198 | `declaration-track:bd58b9b57d625bb02b6a49e92d45ce50c8c62340ce2ee31fa521a64e00d37c05` |
| 26 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 205 | `declaration-track:b47cd17d8a6329d718d67dbd0989c18cd2438be54c0674c970cb41dbd105265c` |
| 27 | `instance` | [Pi.instIsTopologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/pi-instistopologicalsemiring.md) | 210 | `declaration-track:82f9464767fb43dec7982b47629edf7bd3f817a361d3b47054ac72b387cca757` |
| 28 | `instance` | [Pi.instIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/pi-instistopologicalring.md) | 214 | `declaration-track:b148d9d8d9ab56207e8b6a3efbe83f0c530401fb0d5a5b62c3ee9ca66d8f9c6a` |
| 29 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 222 | `declaration-track:51cc0d2a156a1593347b5199f7c54c196f7553ce5f31e2454578cb6e46b7f4bb` |
| 30 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 226 | `declaration-track:b95e896ed9be4ab2e1e6ffddde368601b15874e7e9a32e3c5ab1432d492e546d` |
| 31 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 229 | `declaration-track:3b1488241fe9511d668ef2b71e39b96ae313cbdd657b2b7c27f6df6cd475d57d` |
| 32 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 232 | `declaration-track:d6ffb83d9975096173e8dec330d3c97c540ba795c84f9353f414d14d4a90af05` |
| 33 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 241 | `declaration-track:83e57c0742b26b3c965871aedfefd4ed09abce54e0aabbcb1da75924161d1424` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance.md) | 245 | `declaration-track:02f34ef78d3f9fe1646e235c3f9843779f4557bbd424782f0bb5bfcfe58ad905` |
| 35 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 248 | `declaration-track:718571db31abe586c6605ad982c7e5f54fad1828133c19f64a7443ada90e164c` |
| 36 | `theorem` | [IsTopologicalRing.of_addGroup_of_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/istopologicalring-of-addgroup-of-nhds-zero.md) | 257 | `result-track:802a0aa3ad6c7bf497d8d86ca0656981c3cfc67ef203fa21264cda8a02ff0aa0` |
| 37 | `theorem` | [IsTopologicalRing.of_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/istopologicalring-of-nhds-zero.md) | 265 | `result-track:0c21aa3da665a62baaf845fe1417ffee2ea020fd77071d4026fd36a4b534e66b` |
| 38 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 283 | `declaration-track:9ad5768d3b6aa679a42de27dbda1303916ca8fb152aa6f4ab4f762cbae3d81b9` |
| 39 | `theorem` | [mulLeft_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/mulleft-continuous.md) | 286 | `result-track:e8edb6792c452559f1bc3446c36cfa98f777aa756b4c9d7f37d1b88b74a586f4` |
| 40 | `theorem` | [mulRight_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/mulright-continuous.md) | 290 | `result-track:385644e31e7a00381531d6f6893b7ce0ee2dc04d9dfcbce9b98d4a946b7f56e8` |
| 41 | `instance` | [instIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instistopologicalring.md) | 299 | `declaration-track:ad5cf6a47660d65b2449b7342f88e3efae6cf338329eb1de10dc6d31833711d0` |
| 42 | `def` | [topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/topologicalclosure-source-edition-2.md) | 304 | `declaration-track:b6a2074e38984a5a5796871d85bfc7b9f31554a34c86428ceeea5319e6593a88` |
| 43 | `theorem` | [le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/le-topologicalclosure-source-edition-2.md) | 308 | `result-track:da4424ac121c48b775991d8dd75e987a28b1b4c9166dc6726b073a2a387284e6` |
| 44 | `theorem` | [isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/isclosed-topologicalclosure.md) | 311 | `result-track:5ad41200ac7e02412e35e5349253d17ef69ffa69d82bc372b58bd87f81d3ad72` |
| 45 | `theorem` | [topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/topologicalclosure-minimal.md) | 314 | `result-track:f9a8fcb5b2ebbe78b107a1b51dfd48c55ba99120982449caa6026822e611b335` |
| 46 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/nonunitalcommringtopologicalclosure.md) | 322 | `declaration-track:5cca35ae3fa8a6a6a2ce84744cfb2066cfec7687e0f6605826aead741ffb58a2` |
| 47 | `instance` | [Subring.instIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subring-instistopologicalring.md) | 330 | `declaration-track:83c18ed912ee707864cc4c94bad402aafe68de52b070e390a4254100bd0576b6` |
| 48 | `instance` | [Subring.continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subring-continuoussmul.md) | 333 | `declaration-track:26d9876a4a41f709336e8cf2709e774eec9342929ce0f6d7fe4069f963f3d666` |
| 49 | `def` | [Subring.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subring-topologicalclosure.md) | 339 | `declaration-track:845a3c77d88b68ec26e5bb819db47a2e147dff821cb454bfec15513b37b78081` |
| 50 | `theorem` | [Subring.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subring-le-topologicalclosure.md) | 343 | `result-track:256e9d7c4c93126046ae98842a7673fa57d570699e1ecb9e412ae82f7ea518b9` |
| 51 | `theorem` | [Subring.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subring-isclosed-topologicalclosure.md) | 346 | `result-track:4ce961089884440054480cac7088e1e308896850dee48b1ef0ae61561c70d647` |
| 52 | `theorem` | [Subring.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subring-topologicalclosure-minimal.md) | 349 | `result-track:af826ce6905761cf5a1c7c2585dcd58b6397ebc30a58da1f4a1eed5f2486cd27` |
| 53 | `abbrev` | [Subring.commRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/subring-commringtopologicalclosure.md) | 356 | `declaration-track:b18bf14e234daee1e9d246acc77d85d6157cf3155fe928de008f2bc739802ad9` |
| 54 | `structure` | [RingTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/ringtopology.md) | 377 | `declaration-track:b1e8758bf390ebf19f4778c8d421edea56398d43d950bdec781e207fc5e41e6d` |
| 55 | `instance` | [inhabited](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/inhabited.md) | 384 | `declaration-track:a515583443cc02229ea4fd9b008ee7b68b86087cbb4db717c7f95e2df2d28593` |
| 56 | `theorem` | [toTopologicalSpace_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/totopologicalspace-injective.md) | 390 | `result-track:3556a5c8632147030c593f23d320f1c0b5ba5fb62fa2e83bc4db4f3dab159fa8` |
| 57 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/ext.md) | 395 | `result-track:692b8a08933d4a0838244b818cfe1ff550514815a7305968663d6f005624a9cb` |
| 58 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 400 | `declaration-track:ba6bbb4e221ececce4303517808dc42fea91f24ad194d22fce16f3db706e6a24` |
| 59 | `def` | [def_sInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/def-sinf.md) | 403 | `declaration-track:466617dd4adb231c2920896870f73f63b8f9f2b1f1dfc6a0af61b881e6a619a6` |
| 60 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 420 | `declaration-track:c663bf1e79fedf9e70f03e141517e20f8464163898e2bdfb021bae0a5a82a905` |
| 61 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 425 | `declaration-track:759231462d460eae622158b144c32cf48701f314e9702f417b33a08cefd87b99` |
| 62 | `def` | [coinduced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/coinduced.md) | 430 | `declaration-track:a827594aa224686a5adf7305799076fe414bbe70855959e978602bf339a6a577` |
| 63 | `theorem` | [coinduced_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/coinduced-continuous.md) | 433 | `result-track:87b4a41898709da3495bd43082a3f4359f1301d5bbe0135a6111ed19a9e29659` |
| 64 | `def` | [toAddGroupTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/toaddgrouptopology.md) | 438 | `declaration-track:af75d23928d0493f1b318962ca8d7d6990379ecf96d843a7e38adf17bb62eb7a` |
| 65 | `def` | [toAddGroupTopology.orderEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/toaddgrouptopology-orderembedding.md) | 444 | `declaration-track:b34aaba21ea7dce8e5eaceeaf8edf0191d9bf5c5a6582b1960434c1b2c2fba2b` |
| 66 | `def` | [AbsoluteValue.comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespaced.lean/declarations/absolutevalue-comp.md) | 453 | `declaration-track:b9e4235fdc3e978ac7204514e6d67e2c7749572de1fff2596e8a7d874877fd93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=114900f9ac1ebd4c77a49646b0f1ac6c7a0dce2d7c16bb016dacf485c2808cdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
