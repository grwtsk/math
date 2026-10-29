# Verification target: Num Bitwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dce207bf78a6425d4d3ebf510a9038a95885057f",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantdada38eade3ce7e78c661751be12661ca854cc9afca6fc0e69dcd3eb74fcbb0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dce207bf78a6425d4d3ebf510a9038a95885057f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantdada38eade3ce7e78c661751be12661ca854cc9afca6fc0e69dcd3eb74fcbb0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantdada38eade3ce7e78c661751be12661ca854cc9afca6fc0e69dcd3eb74fcbb0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Num.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lor.md) | 32 | `declaration-track:4ae2540c62bf2f6b34c41982ce5f56dd7d5043cf0bcabd55d1a7309fc8b474e0` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-18.md) | 42 | `declaration-track:e3cbab8912ad59b6edb4d10d58a7c44769e5a4bbd966defe7035c85095c92b2c` |
| 3 | `lemma` | [lor_eq_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lor-eq-or-source-edition-2.md) | 44 | `result-track:cddc6dcefe8896b00a112d338d48b7f749886c64562c1fb644e990c965f27248` |
| 4 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/land-source-edition-2.md) | 47 | `declaration-track:749e3c0059b21f3beade3d3b101420c0d28494b7fe9761c056e972ba9d91688f` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-15.md) | 57 | `declaration-track:b0b619cb0fd2982027f7ea0380a294c04759324538513c9285e1a4bfdb9cf3b9` |
| 6 | `lemma` | [land_eq_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/land-eq-and-source-edition-2.md) | 59 | `result-track:85816f892f2a054a6956e37739774ed6ca8eaeaf9547fbc8a5ff1ba6f22bb4b8` |
| 7 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/ldiff-source-edition-2.md) | 69 | `declaration-track:64f44e0a910be49e91ce4942b3874eadbe2dda719b81b2a14e49c69c23831909` |
| 8 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lxor.md) | 80 | `declaration-track:02f71418b4a0d2853ff31d535bc81f64c880a7d086ac58aff39725baead25695` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-13.md) | 91 | `declaration-track:a1075e66afd381197e1b9cd5143e61346ea37b89b63b0f9f41ac0d5273b30e3f` |
| 10 | `lemma` | [lxor_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lxor-eq-xor.md) | 93 | `result-track:7825cbf48454da75faab80e328de80a2b98927a0405f06a5963f31030e22ff61` |
| 11 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/testbit-source-edition-2.md) | 97 | `declaration-track:83b74fb3dd924b5e4e3392887de550fbe3ee82b54e480882c0f3716283732ccf` |
| 12 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/onebits.md) | 106 | `declaration-track:2286225abc323734ff99070fa98469cc5c27cc4f0c3292684b7f54e329581c5d` |
| 13 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftl.md) | 112 | `declaration-track:8c76a5e6f097e77d57ba281d5497aa6e78965d71c7a676cafa18a08f777eafb3` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-6.md) | 116 | `declaration-track:425efef864366d5bdedeacb211127a906c69769fce1b9525e681a286e4eb8fa9` |
| 15 | `lemma` | [shiftl_eq_shiftLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftl-eq-shiftleft.md) | 118 | `result-track:06d94cd8b745402aa380a94222363b32d9ca1f6fab3ee7d433e991b17dbf529a` |
| 16 | `theorem` | [shiftl_succ_eq_bit0_shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftl-succ-eq-bit0-shiftl.md) | 121 | `result-track:5b6c7c9263152b68f500c2a3c2ed29280fdda497bbbf79a89f5bfe8e22ea4109` |
| 17 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftr.md) | 126 | `declaration-track:91604e655e840809c75f3e442e7c43800de07209ee37cdcdbd00a97d5c6320c8` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:15aa7266afe58d3ac3384a27ca1bb7f8ae009c4848bf5fa0456ac13d4a918510` |
| 19 | `lemma` | [shiftr_eq_shiftRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftr-eq-shiftright-source-edition-2.md) | 134 | `result-track:a505a97bc2fa64822371ad1600efa63aa6c751f896a9879014992925fcb1b041` |
| 20 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lor-source-edition-2.md) | 141 | `declaration-track:aec0a9b1104c14d8479adb6ebc5d2c29b9da5dfd53c61a411bbcc4d847648332` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-5.md) | 146 | `declaration-track:33ade35182c532ece37b455e1ec1f20306a92867c011c5fe10b40ce7e4868429` |
| 22 | `lemma` | [lor_eq_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lor-eq-or.md) | 148 | `result-track:561cb0073906b49a005d628b21bb2eb1fd6f1861656256e4f5fed3a5229d7750` |
| 23 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/land.md) | 151 | `declaration-track:6e9ee50f2ab607aa82d009c5f5df3e37f691add909c4271fd80fd6ea5a1ed164` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-20.md) | 156 | `declaration-track:e6de286adef9bd242ccf4d417c68eb234a358a5da2c71fe2fdea0adbbcdfc837` |
| 25 | `lemma` | [land_eq_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/land-eq-and.md) | 158 | `result-track:101c24edb15aff0f4599b473292cc9dfecd164a4cdad12be246bfe5e6e109e78` |
| 26 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/ldiff.md) | 168 | `declaration-track:19f497b30c23e905c801d402e505815b3edf0652ba552d6d7a0a28d8c35e88d9` |
| 27 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lxor-source-edition-2.md) | 174 | `declaration-track:3294f0984ed0c99b2e525b8677777e31d89c214c477e74f6c37c4fe28139af47` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-12.md) | 179 | `declaration-track:9bf2b15b8f876bfcf98c214c317482aedf0851b7d2bc86a2bb69bb2bb1dfeae9` |
| 29 | `lemma` | [lxor_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/lxor-eq-xor-source-edition-2.md) | 181 | `result-track:95f5d761e16d589378379c65ff0209e2deb6b061ae43d41fd6ff761a28d2b770` |
| 30 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftl-source-edition-2.md) | 184 | `declaration-track:aa046b93e8e401fb662f507b2e96a4485fb79e6a2ef78619dafcc89bbd94cbf5` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-16.md) | 188 | `declaration-track:b64ca6d2b9fce7b5244ac3219baec09ba48f593cb5b11e0a5b41046840659263` |
| 32 | `lemma` | [shiftl_eq_shiftLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftl-eq-shiftleft-source-edition-2.md) | 190 | `result-track:a1cb9ce493dce338edec2c0be8d604b7768e0a083cd5e4d9529caa368e606666` |
| 33 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftr-source-edition-2.md) | 193 | `declaration-track:b3681837602af5f18bd52901456e9fc7f8ee4ea4d319f2047f2fc1571e58ffdf` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-9.md) | 197 | `declaration-track:8b5ef66d500926e6d55b0cf7ad85d10e34087fb7da5c67aa177a08919e889df8` |
| 35 | `lemma` | [shiftr_eq_shiftRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/shiftr-eq-shiftright.md) | 199 | `result-track:30f30de322c22b1dbb03823af19a8f9d6e15a98adb7d9d151b684593b93bf74e` |
| 36 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/testbit-source-edition-3.md) | 203 | `declaration-track:a655dc21efcaa08cdddda039887386b8cdd5dd3cd445de19142e2d63dc7d5c10` |
| 37 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/onebits-source-edition-2.md) | 208 | `declaration-track:d4e14c5925c8ecd9fb70a1c10bed36a52642e5737dac3ba2620556ffec4281bc` |
| 38 | `inductive` | [NzsNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/nzsnum.md) | 216 | `declaration-track:36d393dac71f381894382a4d9e7353afb194bcfad0e6e15695bc26b7febed90c` |
| 39 | `inductive` | [SNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/snum.md) | 236 | `declaration-track:13a254d009475bc434af7d9c5a88b0d1329027ca5ca98522fc1d030d9e10634c` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-19.md) | 241 | `declaration-track:e603bf80524fdaca06136a189bca72722cb9c0aa8231cd44920278a1717c3ede` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-7.md) | 244 | `declaration-track:43cc983d103c2c676139889d461d1f29b10b08897f61a1042f672fa86affeb79` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-8.md) | 247 | `declaration-track:513a56ab7680bc5e66fbf96dc12f2e318c14f159c6613787c39b405dd781c65f` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-11.md) | 250 | `declaration-track:9117890d93b40b622816396dc7896729d5513e5013f0fd91a395cd5ca1b9d591` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-14.md) | 253 | `declaration-track:a958266da4c073f15c04fc02d4b18161dd110b8dfb8262a7447b90dbd55ea4bc` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-4.md) | 256 | `declaration-track:30916f895791f3552da0d6293f2f1af1f20a789a73448418a177fe7bd9259585` |
| 46 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/sign.md) | 271 | `declaration-track:57965f9c9d2282768fcdba10499d3610b33db8ce1ea3d207d1db730f752be230` |
| 47 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/not.md) | 277 | `declaration-track:063fd308d3a5e03f258d178f3de96465ebf36055ddff022e84a184459b6ff5ca` |
| 48 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bit0.md) | 285 | `declaration-track:1425e5bcc6a5417f43312e38450f6e010b049a8eaf5736835d6046e96b7c03b0` |
| 49 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bit1.md) | 289 | `declaration-track:32169121ab340d82f63b76faa21c11e218882ba34d84bef3f2aa0e91fa349237` |
| 50 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/head-source-edition-2.md) | 293 | `declaration-track:f46fb06d35ae8c7c9d120c0b1e3696086cf487431a3cab4c1e6351a062bb4dbf` |
| 51 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/tail.md) | 299 | `declaration-track:10fc24545a438d73beba93ed6fb7ae8b9f588ab19374cbc146ec5c7287338ef2` |
| 52 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/sign-source-edition-2.md) | 310 | `declaration-track:cb5ad98a584d1ecca49ed797b845e3787fe5b8f325a2e0bf541ef2a4e918f2c7` |
| 53 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/not-source-edition-2.md) | 316 | `declaration-track:71c3a4919c15e4ccc0da94f1599c9a789ce5904279e380771a991fa257797ec2` |
| 54 | `def` | [bit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bit.md) | 326 | `declaration-track:0249b2b531202499c2ade2573d8b2f366884aaefbd9d510ee8853e64e526e70e` |
| 55 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bit0-source-edition-2.md) | 334 | `declaration-track:9d932c6d427cf062226ecccaba2b525a23dfbe130b49f8d7c3fee1f805beed16` |
| 56 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bit1-source-edition-2.md) | 338 | `declaration-track:c5f2d5f6347686a5ba5d756b4bf96ad502d9a8e2251cc36dcb8e5c5ae8da5b88` |
| 57 | `theorem` | [bit_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bit-zero.md) | 341 | `result-track:3e7d54ea8e6a6842b79214692b2b45ecf71b96fe07b830e7dbe7efa3f80aed7b` |
| 58 | `theorem` | [bit_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bit-one.md) | 343 | `result-track:12c779d3eff618e4f8d00b0b5bed98103c892eca0ab59e942721d7938c62bc45` |
| 59 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/drec-source-edition-2.md) | 353 | `declaration-track:123deb1df5788b3710eca9242fce679e9978b680797ce910b8271cab2faf9915` |
| 60 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/head.md) | 365 | `declaration-track:ebd20bacbe5c3683cc88ab77b332bc9eee6f302d0e61f7a43cfaa5148a6c5609` |
| 61 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/tail-source-edition-2.md) | 371 | `declaration-track:98a2b6b135b6a903c7f523215fc02e7f4aa6a1b57f1c7146d9d95d50d1c2e964` |
| 62 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/drec.md) | 376 | `declaration-track:0dab81e299e2f385763847af3af691b5fb47ae3258bf7a10ca1ca22d836bd825` |
| 63 | `def` | [rec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/rec.md) | 381 | `declaration-track:244aa06af14b957ee0701d06b3f48ca5e26324bc24185a68e6befe8706b1ff88` |
| 64 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/testbit.md) | 386 | `declaration-track:4e4858d48c4081f0bcbab5793769a131241216b4fb980d716334c43a94f9b645` |
| 65 | `def` | [succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/succ.md) | 391 | `declaration-track:8126acdf3a3713d54b2fec314ccd9620f44434c03ad64cbb49421e366b25cce6` |
| 66 | `def` | [pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/pred.md) | 395 | `declaration-track:346f8f543b04db12df3cf9bda454ec82b7cb42d288fa49e4703e6461e2eb62c9` |
| 67 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/neg.md) | 399 | `declaration-track:5018c31f70e69b2384a108d014270968ff60ab2bf8303b170923567018f1a4fe` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-10.md) | 402 | `declaration-track:8d52ceea8d4356482b76e2815f16f08a3ba7b537bab88362746af6ff59c16d82` |
| 69 | `def` | [czAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/czadd.md) | 407 | `declaration-track:0b3e359baa680a46524d1615c0895f65fe80aedf63879acc960fdd3c97c0a438` |
| 70 | `def` | [bits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/bits.md) | 418 | `declaration-track:a1d9339f8aa138cf999dc8bbd5fad7c8ccdc2e7bd19376016ed30f7439596c50` |
| 71 | `def` | [cAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/cadd.md) | 424 | `declaration-track:18357fd8f872026e0a4d455c146741acdbfc8bd2f731c65e8f9d709f5992eb02` |
| 72 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/add.md) | 429 | `declaration-track:8717888741471869f786fafe382031bf215bb69df552feeeba1eba93c62ad7fd` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance.md) | 432 | `declaration-track:09f1f6f36c08222d10e8fcb6da31ea2336122df392285ebb4fb902ab473f5d0a` |
| 74 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/sub.md) | 436 | `declaration-track:29d76673e18462eb7312f925b9d2cf96d77d0429e0b34032ecb81af4d6e32128` |
| 75 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-17.md) | 439 | `declaration-track:e1a1ba6cb33c85556c8abb9e7d32d68bbd0cbc1197adf95dc5cfe6429ce1321e` |
| 76 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/mul.md) | 443 | `declaration-track:bd6470a552734412e24472356e70a2d103089bcffee8d62aa40435296e689a5f` |
| 77 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespaced.lean/declarations/instance-source-edition-2.md) | 446 | `declaration-track:0c4d5d6904b59b9e31ffc3e57b9ff1f442168d64f1c405802c93103da60b65dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=176c2798279cbdea57f4de0a733393bb33970d62d095573436fac7d5c665270a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantdada38eade3ce7e78c661751be12661ca854cc9afca6fc0e69dcd3eb74fcbb0f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantdada38eade3ce7e78c661751be12661ca854cc9afca6fc0e69dcd3eb74fcbb0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
