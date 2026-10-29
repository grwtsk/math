# Verification target: Action Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b592d7a14b28c0d0122bed5427e74f81df909c8",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantcf23e38e4f3f53dd3127814589b4e34d90234ea5e149ff17a910467c7d935b7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b592d7a14b28c0d0122bed5427e74f81df909c8`.

Source path: `GRWTSK/Algebra/Defs/Variantcf23e38e4f3f53dd3127814589b4e34d90234ea5e149ff17a910467c7d935b7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantcf23e38e4f3f53dd3127814589b4e34d90234ea5e149ff17a910467c7d935b7c.lean.json)

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
| 1 | `class` | [SMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smulzeroclass.md) | 58 | `declaration-track:96ba116a12d2be3b3e588704d740b9e2e05d378cd749d6d08f12d89f0d6fb3d7` |
| 2 | `theorem` | [smul_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-zero.md) | 67 | `result-track:6365f69e6095dfbc991f3a9996e78298dac18c26ad92242ea57ecfd92693bbe1` |
| 3 | `lemma` | [smul_ite_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-ite-zero.md) | 70 | `result-track:57351716ce614e11460aeee82795aee48ffde13eb646d2d7e8a9f4654882b9fb` |
| 4 | `lemma` | [smul_eq_zero_of_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-eq-zero-of-right.md) | 73 | `result-track:914f9885800a6b87b4345ed6cc9b25a817c1ab7f00b54408749317d56173864a` |
| 5 | `lemma` | [right_ne_zero_of_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/right-ne-zero-of-smul.md) | 74 | `result-track:ea37266948669d987d87971de8b987e895079f1cfdca4d0a7f51744f3e8e0179` |
| 6 | `abbrev` | [Function.Injective.smulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-injective-smulzeroclass.md) | 78 | `declaration-track:99f9c69cc339a220039d237cb9f9638e0919aa655cfdb4a658099ddf7857c30b` |
| 7 | `abbrev` | [ZeroHom.smulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/zerohom-smulzeroclass.md) | 85 | `declaration-track:06b32b997afeecd2271d85157f2c6646040ce22f1f35c8aa512d642e5751697f` |
| 8 | `abbrev` | [Function.Surjective.smulZeroClassLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-surjective-smulzeroclassleft.md) | 94 | `declaration-track:e433fa1f809ac0ab75106854cf6d6421ea9ebf2767e721296256667e1ac84e0e` |
| 9 | `abbrev` | [SMulZeroClass.compFun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smulzeroclass-compfun.md) | 104 | `declaration-track:5d81b04734fc16d60cbf19c93a14876d373701afb43bd4fa4be8b4ba122175be` |
| 10 | `def` | [SMulZeroClass.toZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smulzeroclass-tozerohom.md) | 111 | `declaration-track:ffcaad02d4664f401bdf2b7b89ec6950916b52f2d7b109f6c0a2f9596724c7a8` |
| 11 | `class` | [SMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smulwithzero.md) | 124 | `declaration-track:aa01eb9884168688d616c9cd41ed5a626862920eee3e210918b568d7ba743b7d` |
| 12 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 129 | `declaration-track:6470ce0951951112af8e856cd2b0794c1de7e29d3fd487021880bc67af93b57d` |
| 13 | `instance` | [MulZeroClass.toOppositeSMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/mulzeroclass-tooppositesmulwithzero.md) | 135 | `declaration-track:6d536a69add55f74e3db96089364a94ccb1d9a68b0b73669b1c10f6aadf7f670` |
| 14 | `theorem` | [zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/zero-smul.md) | 142 | `result-track:90b6586d6a5bbc85247f015b41aca9f1969b632652b6b2aab065ce6592094026` |
| 15 | `lemma` | [smul_eq_zero_of_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-eq-zero-of-left.md) | 147 | `result-track:77c336ac030a7879bb5101981cb71d99e631178934de7dc40813de3293126c84` |
| 16 | `lemma` | [left_ne_zero_of_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/left-ne-zero-of-smul.md) | 148 | `result-track:bfa7164f580b1e2ad196d0f155e50a89a2bf5f7fce982ed9dacdc5c140c789a1` |
| 17 | `abbrev` | [Function.Injective.smulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-injective-smulwithzero.md) | 154 | `declaration-track:fd786e3f3eb83084dbe188faa22fd8aa7e6e10060132dc7b586c235f456d93a3` |
| 18 | `abbrev` | [Function.Surjective.smulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-surjective-smulwithzero.md) | 161 | `declaration-track:6ead95eb0fa2fa3b99aac9ad6b44de3194058a70ccb3c3efe795fefff0d150e5` |
| 19 | `def` | [SMulWithZero.compHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smulwithzero-comphom.md) | 172 | `declaration-track:d3964dbe36b5244033b04ebfb114e601e93b316cfc379a4b61e89487ed720bfc` |
| 20 | `instance` | [AddMonoid.natSMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/addmonoid-natsmulwithzero.md) | 179 | `declaration-track:c6115d06e571add3b6ff15fac59ca425ac3c90c965ac48c6c48845a608bc2980` |
| 21 | `instance` | [AddGroup.intSMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/addgroup-intsmulwithzero.md) | 183 | `declaration-track:1207f6bd6cca54d250c5c9916f474411d1b35debda7691aaa724ab156c2d35e4` |
| 22 | `class` | [MulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/mulactionwithzero.md) | 193 | `declaration-track:064e20042ae25a4ea7713dc4a54226d25a1af7228e817d8ec93f40b982e8dee2` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/instance.md) | 201 | `declaration-track:10d3d9265770dbee28ed04bc4350095f2dbda6e9e29973ab01bfbcca960225b1` |
| 24 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 207 | `declaration-track:c987af5f643e24e2d085f37b502dd9562f8e19e86a1988d50c427fb6f9d255ad` |
| 25 | `instance` | [MonoidWithZero.toOppositeMulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/monoidwithzero-tooppositemulactionwithzero.md) | 212 | `declaration-track:424a94d8d2530d935ef8c46f1b08bdcca5d9dabccdeed6fbf898a4a83f4b449c` |
| 26 | `lemma` | [MulActionWithZero.subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/mulactionwithzero-subsingleton.md) | 215 | `result-track:2cf4be49713b3926938eb6b47a61a0508553eb1e166d96580e1536d5df414b98` |
| 27 | `lemma` | [MulActionWithZero.nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/mulactionwithzero-nontrivial.md) | 220 | `result-track:63caf68ae565022074349af6ce2d6226cc949718869c42e6fa5a2ab656a375cb` |
| 28 | `lemma` | [ite_zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/ite-zero-smul.md) | 227 | `result-track:d74cda57f0a712719aa321455a0a37e5a87915a656017553da0135d7fa47fcc8` |
| 29 | `lemma` | [boole_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/boole-smul.md) | 230 | `result-track:8ed8d5496387b5051a6890b8ecd6f4c8ff4e9bf4ecf33dafd769a356d96dff0c` |
| 30 | `lemma` | [Pi.single_apply_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/pi-single-apply-smul.md) | 232 | `result-track:5112f4dc32c323aec2433456da6482d46683b26b02a319f59ce8e18936cbd304` |
| 31 | `abbrev` | [Function.Injective.mulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-injective-mulactionwithzero.md) | 238 | `declaration-track:89544964e961f96afebcf4d80834cbfa2808f1974d19c6fa5c6bf48820643d5c` |
| 32 | `abbrev` | [Function.Surjective.mulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-surjective-mulactionwithzero.md) | 244 | `declaration-track:d543b1c02d26ef0dfe02fbc92fb1490d2a5ea4087ef685c3bbc529ae6bdc2e84` |
| 33 | `def` | [MulActionWithZero.compHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/mulactionwithzero-comphom.md) | 252 | `declaration-track:d5d5042c3dd4814b5925263d83c0f8d2686fc84483f10d238bee593ea4c30a3d` |
| 34 | `lemma` | [smul_inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-inv-source-edition-2.md) | 263 | `result-track:a09247470c7675b003d67530e6bf9683ef5001f633ab1c7448e4c7bca811daad` |
| 35 | `class` | [DistribSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/distribsmul.md) | 278 | `declaration-track:6309479a1ebb8e2513b06263b69be93e7d3a60fcbe15d6105192433953d894bb` |
| 36 | `theorem` | [smul_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-add.md) | 286 | `result-track:02e1cb91502dcaf3ee1990ead36be3b092a97476970141eb0f889aaca53eb1ca` |
| 37 | `abbrev` | [Function.Injective.distribSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-injective-distribsmul.md) | 292 | `declaration-track:c8478f5c0f18f22d166fc36f7708f36236fadf501ebcab3c3ed9a9ada6a59af5` |
| 38 | `abbrev` | [Function.Surjective.distribSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-surjective-distribsmul.md) | 300 | `declaration-track:03070e078e3739c1aa791d77f0d057f977f4608405aa9d87018ed87f110b69cf` |
| 39 | `abbrev` | [Function.Surjective.distribSMulLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-surjective-distribsmulleft.md) | 312 | `declaration-track:53d71e1cec13ca1f7ef75e5885718ff48df68665c8199a1a2fbe489f080726fd` |
| 40 | `abbrev` | [DistribSMul.compFun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/distribsmul-compfun.md) | 322 | `declaration-track:1cefca6790b80e778c8dd1f256224fab2cd9595fb80ed024b50b86d8b4c75427` |
| 41 | `def` | [DistribSMul.toAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/distribsmul-toaddmonoidhom.md) | 328 | `declaration-track:ecd0ca04ce349010d2210024d9bb8e699712ac0e1d1523d03044978dc64a0100` |
| 42 | `instance` | [AddMonoid.nat_smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/addmonoid-nat-smulcommclass-source-edition-2.md) | 331 | `declaration-track:e2ab0e183daa28be9f41dc5452abd9ef90cc1a114ef4ee40def9e89cb3f2f706` |
| 43 | `instance` | [AddMonoid.nat_smulCommClass'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/addmonoid-nat-smulcommclass.md) | 336 | `declaration-track:0de565178e622e1c21007ab46bc4cd8195d04cd2396b473775d226269f5fa904` |
| 44 | `class` | [DistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/distribmulaction.md) | 354 | `declaration-track:c75ece99ea0d656ccd79a16aefe837a13d21f61d2c464c37ca1ebbb82da4fed7` |
| 45 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 365 | `declaration-track:438e68c117efe3130c2b591c6650694a923318521388c751f7f6bebf273c86a8` |
| 46 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/example.md) | 370 | `declaration-track:60eaf720dc55e4c02685b4470e8022282c3f24b96ff401b4489a7fa077515c89` |
| 47 | `abbrev` | [Function.Injective.distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-injective-distribmulaction.md) | 378 | `declaration-track:f508381abd2ce38ba931b0d9e2a78c1fd7dff6521bfe33c2e16a0ff42f091fbf` |
| 48 | `abbrev` | [Function.Surjective.distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/function-surjective-distribmulaction.md) | 385 | `declaration-track:540b470d2ed9ff70e864c46252e15ab445e4f254df7a8a41cb71487b873d6314` |
| 49 | `def` | [DistribMulAction.toAddMonoidEnd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/distribmulaction-toaddmonoidend.md) | 395 | `declaration-track:9446fa8c705661db2ac8ae1a38e21f4814e5b9865c20c953fbcb69cc84aceec3` |
| 50 | `instance` | [AddGroup.int_smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/addgroup-int-smulcommclass.md) | 407 | `declaration-track:382d313fbdb49ef94f1ac159089cbda8cb1beea91887a2107b58ecdb91cd867e` |
| 51 | `instance` | [AddGroup.int_smulCommClass'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/addgroup-int-smulcommclass-source-edition-2.md) | 411 | `declaration-track:6fe324828565f100386e2e8dd3079e415d1766bd75e631a65ec27b7c83689f23` |
| 52 | `theorem` | [smul_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-neg.md) | 415 | `result-track:5b609d32e5e2134184de32221fdc410969ca4d40fd8aa223a6e7aab4c1df58e3` |
| 53 | `theorem` | [smul_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-sub.md) | 418 | `result-track:446879c4feeed0ce423c3fdaa0c9d0fe59d2c8b609d8a54469ca78f7400f8b50` |
| 54 | `lemma` | [smul_eq_zero_iff_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-eq-zero-iff-eq.md) | 426 | `result-track:df7cd86d24f5ddc0d55878e6af96ad9d7ae2bfe514d7e8dc774156cdfb7c79d5` |
| 55 | `lemma` | [smul_ne_zero_iff_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-ne-zero-iff-ne.md) | 429 | `result-track:214aaa6a503a1548e3d1cb6f15e96b1bffbc5008b19c0c9157a413dde3f558e7` |
| 56 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 437 | `declaration-track:1b4a248166660a088a56fd1f89ae6d9c7fe6b8c88a7842d215a1f73978c72403` |
| 57 | `theorem` | [smul_inv₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-inv.md) | 443 | `result-track:276444b1ba0a749322699dac41017f5d9d7cbcfdba3f18e30486c59b22aefc43` |
| 58 | `theorem` | [smul_div₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionDefsNamespacedPublic.lean/declarations/smul-div.md) | 449 | `result-track:c8cf4a2147df90bfe8bc88034c2685b86afbea5b29e23655f71066a2b8a70ec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d56995af32b23132637ed1063ca2249327cfaaf58223e46b3214d80c30cd87e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variantcf23e38e4f3f53dd3127814589b4e34d90234ea5e149ff17a910467c7d935b7c.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variantcf23e38e4f3f53dd3127814589b4e34d90234ea5e149ff17a910467c7d935b7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
