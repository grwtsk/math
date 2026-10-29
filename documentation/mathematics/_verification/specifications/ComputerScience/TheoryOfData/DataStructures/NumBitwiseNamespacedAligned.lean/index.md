# Verification target: Num Bitwise Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8160000efe4a097fb0ee93dbd8346f95afdbc191",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant9dac513edfce9aa065ff1308bee13401f0070ad2c10d2b142c0b5f27bbb453ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8160000efe4a097fb0ee93dbd8346f95afdbc191`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant9dac513edfce9aa065ff1308bee13401f0070ad2c10d2b142c0b5f27bbb453ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant9dac513edfce9aa065ff1308bee13401f0070ad2c10d2b142c0b5f27bbb453ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Num.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/lor-source-edition-2.md) | 34 | `declaration-track:fcd20edbe086f9ad9170d13f35b6408001989e17aea0e0d420f743dc2c091346` |
| 2 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/land-source-edition-2.md) | 46 | `declaration-track:c770b0c18f88119be5e4c75e00b518090b27e5376db65129e32a93268b1e8456` |
| 3 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/ldiff-source-edition-2.md) | 65 | `declaration-track:dd79ffc58b3511168bb870b49ecbdde4090c70ece8d70f718ec80e0d4b2adf08` |
| 4 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/lxor.md) | 77 | `declaration-track:1303b82757ec7f20e7f17a65bddc6d7e413a30e6ca246ee0724283aa24097002` |
| 5 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/testbit-source-edition-3.md) | 91 | `declaration-track:f941fa7103ad43996f9b892df8ec5637f67c029c697011216478d011df0c7f73` |
| 6 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/onebits-source-edition-2.md) | 101 | `declaration-track:b9ab32b65858b538e07fb4d1b8c7cfaf41c006704b5e2230c7afd2821e5a15a4` |
| 7 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/shiftl-source-edition-2.md) | 108 | `declaration-track:c4e098a395425df76d8c5f00d88ae1abee4dc9fb5ad65b27b029dd1578df9190` |
| 8 | `theorem` | [shiftl_succ_eq_bit0_shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/shiftl-succ-eq-bit0-shiftl.md) | 115 | `result-track:5f06bd9b8213e1861865cdf646d5ce352dd922e31bd820430e33b24c46dee604` |
| 9 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/shiftr.md) | 120 | `declaration-track:058f5ae772c5e5bdf0f763d4d0bbf1ceabefa6a0db77ac70ce5a59c4a5bef477` |
| 10 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/lor.md) | 132 | `declaration-track:9d82e4048285862076a5bfb601a458478375b8ad889a666bf4d4a5fbf419125d` |
| 11 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/land.md) | 139 | `declaration-track:40d2657015c2c20af022b0a15bd615a1c697a3bf1f0e4a829eaaa90bf7a43e75` |
| 12 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/ldiff.md) | 153 | `declaration-track:4bf6ee8dfa6662586c943861d81cef8b79b20f2451174dc98836a0da06bd1c85` |
| 13 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/lxor-source-edition-2.md) | 160 | `declaration-track:dcfe752241ffbc101822d1c79e31ef78a16accb679316a2e5267d498083f598d` |
| 14 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/shiftl.md) | 167 | `declaration-track:35b68d1d73f5873bde94be7aebf939f3663952ab289e2c78c4099cdb9c906d2f` |
| 15 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/shiftr-source-edition-2.md) | 173 | `declaration-track:2b1735f57b90be3f984723ca53d67fb1e890c3d3eee7af493a41bcc56f52ef33` |
| 16 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/testbit-source-edition-2.md) | 180 | `declaration-track:e293b4bd90c3c478741fa7196d6e2e4bb029da4f1450b8b1010329c5f3c93321` |
| 17 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/onebits.md) | 186 | `declaration-track:45e73eabb75aec0dec05854f8875ed2b3522086e6fb2ad50e940d1612b1ed7f9` |
| 18 | `inductive` | [NzsNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/nzsnum.md) | 195 | `declaration-track:f016ba0a2fbbce4929755560fb85f7bc1c6b7f4306dfd4b3da1c5f9e7d17fefc` |
| 19 | `inductive` | [SNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/snum.md) | 216 | `declaration-track:05315243c0dbe85318fa7934e9e7dde7f2c4da2c45cb41cc43fd8fccc8f9943f` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-7.md) | 222 | `declaration-track:952236f194fa405b08438a7fd1ea6393b64c297bb7927d19d30bf149f8fc2ba4` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-8.md) | 225 | `declaration-track:9defe093a7957fbf6441195c461865e5454a32872a957e54448fac0bbe1eda9f` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance.md) | 228 | `declaration-track:0ca6181ecbfecb7620f4378bff9282b806bee6a9c1196d40918dfc82893db4c6` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-9.md) | 231 | `declaration-track:c2d1eeb58d35d43ceea4e5fdf6aea9e166503b1d518bd5640f1bacfbb6946495` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-10.md) | 234 | `declaration-track:c9b8c8710e4f002e8c14fac2c191e690473607eebb5278d9c43b4813a6dd4d60` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 237 | `declaration-track:3da7ec68d6fabfbb6ed152279c4a71d2501c234a3f55c0a7d344662f5eab326a` |
| 26 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/sign-source-edition-2.md) | 253 | `declaration-track:74ea7728b28d3e9a9a985de2576b47e200ab8ab058b1d3486e9a6d773a5394ce` |
| 27 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/not.md) | 260 | `declaration-track:7a7154b16f21da6e0cf4b68c6c6954a0b1fa5ada8da9a9378f325e394aa4fed0` |
| 28 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bit0-source-edition-2.md) | 270 | `declaration-track:7b44859b62ab790ee0fd61b309e9be818c2994fbf966c32469b5efa6d5846f19` |
| 29 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bit1-source-edition-2.md) | 275 | `declaration-track:7a7053506e9359603048417e45ae7e2a31b91066fed30312345b04574d9c65b9` |
| 30 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/head-source-edition-2.md) | 280 | `declaration-track:b789a8852646014765f8d997d808abc75ecfb02c73a6bda176a1cd4d722172b2` |
| 31 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/tail-source-edition-2.md) | 287 | `declaration-track:da840c1758bfc33bce17fbbef0a63188dc00487dd6cc759898e2631e2d0d0acd` |
| 32 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/sign.md) | 299 | `declaration-track:471b577a0cbf3063b565b0830e805c809731fb31d9ab2472fd22f48712991159` |
| 33 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/not-source-edition-2.md) | 306 | `declaration-track:97ed58461a9c2e8ed8cc8a57beb6fb0286629ab5b30ebad79f1f844235064d08` |
| 34 | `def` | [bit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bit.md) | 318 | `declaration-track:44ca0892dbd2206cd547cc4a8b883ec254c2801cec157540fae602dcc3ed57a3` |
| 35 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bit0.md) | 328 | `declaration-track:673429996343cdf2bec355852d130d07402860ed94f48fd69766cca5e1ac6583` |
| 36 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bit1.md) | 333 | `declaration-track:0d62044aa1346637cf19f7731826cdcd99094a9e1ee0ea5fc2bfcd4fdd6b8e86` |
| 37 | `theorem` | [bit_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bit-zero.md) | 337 | `result-track:5e06155ec96653516b4701442148aa46d0e3dfef2ce0350e1a17676475839425` |
| 38 | `theorem` | [bit_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bit-one.md) | 340 | `result-track:8a4c40857c0257186b9823352ac816d0ca0144c15292c25158ff0a14defd6e55` |
| 39 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/drec.md) | 351 | `declaration-track:225ee87cec1950df8042b29255aac3103473a24c0e2a37ee65b3aba96b549ec7` |
| 40 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/head.md) | 364 | `declaration-track:11618c9d12bccd497d7e119aa6a64e79e424f3dc5657d0915f83c6eba1d886f2` |
| 41 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/tail.md) | 371 | `declaration-track:2f40dd3f5f079210f549284f768cabbcbd6a8b7c85718eab84b1c9ab2b9c0408` |
| 42 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/drec-source-edition-2.md) | 377 | `declaration-track:493ae0e21fcf4a04eac4dc364580c3930319affff52e0ce89baeca0b68bbe564` |
| 43 | `def` | [rec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/rec.md) | 383 | `declaration-track:8c3d2529564704d48a11e05d6be82f24246716a6814375df53e3f8260c811462` |
| 44 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/testbit.md) | 389 | `declaration-track:5d140b56de40f3742c1ce497754fd1b133579c50034cd88da33b2b988d45ce89` |
| 45 | `def` | [succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/succ.md) | 395 | `declaration-track:0981fdd128a9b9371c85145955510c0aa25f83fb80780a6f7ef94473536eb9e2` |
| 46 | `def` | [pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/pred.md) | 400 | `declaration-track:bfc091526c9006b25cddccbf2d949f0afbe1a4c39898d09280a3de63f8bb892b` |
| 47 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/neg.md) | 405 | `declaration-track:2c9ebad2d8108dcb2e3165399b52362da207a9d20d21138f7c110c7ec9205c71` |
| 48 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-5.md) | 409 | `declaration-track:7035cfbadb8aff39dc36d982c3f4d6ebae30d5e85e1503e0dd94fff654afc5ec` |
| 49 | `def` | [czAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/czadd.md) | 414 | `declaration-track:730e3c792191cba1a15b6a0e479f5d78f672e6731a8ed8f0135f93fefd61f560` |
| 50 | `def` | [bits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/bits.md) | 426 | `declaration-track:ec489d3d8b301b0ebba2ae0c77fc44d786f0fb319fceb9995b2e4ea12b1b5aba` |
| 51 | `def` | [cAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/cadd.md) | 433 | `declaration-track:03c9160a56000154a6224643a95441eb4e6df34715f9a12358aa97cfd9777413` |
| 52 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/add.md) | 439 | `declaration-track:1ef7285ee023462c1f7d66600ff48cc37fb16130555871887ab959c984e2cef3` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-6.md) | 443 | `declaration-track:8981fa4dea323473e7f94aa2bbe9d7d9b176318697725a4401630acd31cee710` |
| 54 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/sub.md) | 447 | `declaration-track:fb6a67550480f0e0861e0734bfb9251b7e879a0649e6b5a86b28d703b9ad3b82` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 451 | `declaration-track:24e8e509c29bc084545fbcd1f15080b23f9bb40f524d0149b1fb2fdd907ea763` |
| 56 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/mul.md) | 455 | `declaration-track:5278ee13ec81afd88b1d816075cfca233c6f2b31594c07897151c964d8de699d` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwiseNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 459 | `declaration-track:2a0a28aecde4c8386f858e19e9504657089f76a917c81462a92435dfaa63eb30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a635d349ff01d39d8bbacf143c74bf0eb143684bf140081e9e330cf28e54f823 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant9dac513edfce9aa065ff1308bee13401f0070ad2c10d2b142c0b5f27bbb453ed.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant9dac513edfce9aa065ff1308bee13401f0070ad2c10d2b142c0b5f27bbb453ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
