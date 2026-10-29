# Verification target: DFinsupp Lex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ca213b0c88e52f1fd30ae7219ecf359e84892f6",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant6ffd4f6712c14f47cf9c3c5e07a9cf286f400147e46a613f955172b1fe6795db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ca213b0c88e52f1fd30ae7219ecf359e84892f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant6ffd4f6712c14f47cf9c3c5e07a9cf286f400147e46a613f955172b1fe6795db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant6ffd4f6712c14f47cf9c3c5e07a9cf286f400147e46a613f955172b1fe6795db.lean.json)

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
| 1 | `def` | [Lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex.md) | 36 | `declaration-track:074269ef0274e1a7964df65bf3472c8861d90e58726cb79263e1ef6d63dc4474` |
| 2 | `theorem` | [_root_.Pi.lex_eq_dfinsupp_lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/root-pi-lex-eq-dfinsupp-lex.md) | 39 | `result-track:97b20fd2a06a4207690cb7ba1e5c77b61e2911a99a0dccb02666e9b7b15d24cd` |
| 3 | `theorem` | [lex_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-def.md) | 43 | `result-track:48bb3239b2b534329226930d7d655e8a57c0ae7ae6154978bf32bda1ffc4a069` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/instance.md) | 47 | `declaration-track:17407ad349283327c66eb71f61f9081f9177909dda974efcbc8d83b8f78a711d` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:a74e66c2683ea18e7e14986d29caae0c8e20e4e7a884e184ec52d9675e7064a2` |
| 6 | `theorem` | [Lex.lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-lt-iff.md) | 54 | `result-track:fafc27d8ced843741995f364185f36d1b7d48ce94ba2eb22fe29728085140611` |
| 7 | `theorem` | [Colex.lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-lt-iff.md) | 59 | `result-track:df894430f9bcf759288f085e8d9bd9ce359d654e3eff564bcf4dbe78b7559642` |
| 8 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-lt-of-lt-of-preorder.md) | 63 | `result-track:13df9c9d9f35f29659a4971c48fdd48b00e32082f3a153d67218b5223e8aeb04` |
| 9 | `theorem` | [lex_lt_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-lt-of-lt.md) | 72 | `result-track:3bcfceda4bf31c0240ec8d3a18a0c5380e9db08f08f93a6c9547c83c6eae590e` |
| 10 | `theorem` | [lex_iff_of_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-iff-of-unique.md) | 77 | `result-track:8c10c7057d1733c11f1889c7543c6a108d352dc0ada2ff5e0adb9b9daf4aa9ca` |
| 11 | `theorem` | [Lex.lt_iff_of_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-lt-iff-of-unique.md) | 82 | `result-track:99cbed61e99c21ff8b83c53d46ede7405dd2acb843136f24b50bc00a55d098dd` |
| 12 | `theorem` | [colex_lt_iff_of_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-lt-iff-of-unique.md) | 87 | `result-track:4efb8d84a36cd4f0e8c9715675346e6188bf66d6ed5a85adbdc2bd4305e9170f` |
| 13 | `instance` | [Lex.isStrictOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-isstrictorder.md) | 93 | `declaration-track:82fe557ac20a9c51cde1dc25e92f88bfed04ec5f016ddf3d19cd99a1075fcd4a` |
| 14 | `instance` | [Colex.isStrictOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-isstrictorder.md) | 99 | `declaration-track:26be03b7eae7513a7890f0cf7b151d878a7cddb03db5c54db13b7b2835405fb7` |
| 15 | `instance` | [Lex.partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-partialorder.md) | 105 | `declaration-track:442e621b9154a4683f5e133401ae3a1501957bf118a3c8e3148f229daf7fa7e0` |
| 16 | `instance` | [Colex.partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-partialorder.md) | 113 | `declaration-track:70e5f7e04c2b25852ca30c7189c349b107b09a6a9e700984cc97d0144995f09f` |
| 17 | `theorem` | [Lex.le_iff_of_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-le-iff-of-unique.md) | 120 | `result-track:8b855de48380ff97a99f156ae358939a9c0c1c1348b0ce0290d024d7f15ca91d` |
| 18 | `theorem` | [Colex.le_iff_of_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-le-iff-of-unique.md) | 125 | `result-track:56dd57b7914ea337be4ddc801bf86d5d22e87e4b53d724f2a2e1a02eccaf5896` |
| 19 | `def` | [lt_trichotomy_rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lt-trichotomy-rec.md) | 136 | `declaration-track:0177550e0c2dbfbc3a5a5d5e8618f48bdc5900b96565475a4b6910635d7c2ff3` |
| 20 | `instance` | [Lex.total_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-total-le.md) | 148 | `declaration-track:a4252a8ce11bed53303131ac06d39ef779df5d8a7f92d7a76048f8bf6e6c2c4e` |
| 21 | `instance` | [Colex.total_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-total-le.md) | 152 | `declaration-track:3b34932f052b420c2ea0054b5aad3dd9b13f5dd8a4586a173f4064e89a5ad08e` |
| 22 | `instance` | [Lex.decidableLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-decidablele.md) | 158 | `declaration-track:2014ee1245cd7e2456b6c0d6153746727979a9717ddae4664c1135189d75a080` |
| 23 | `instance` | [Colex.decidableLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-decidablele.md) | 165 | `declaration-track:6f0dc0be29b3d37356e9cfd892464fd0bb7bccac1aec75e146920b2bbb8bb91c` |
| 24 | `instance` | [Lex.decidableLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-decidablelt.md) | 171 | `declaration-track:88d9dd93fce3073f8a795ac93f769984f403ec8720a650777b9b823accf0241c` |
| 25 | `instance` | [Colex.decidableLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-decidablelt.md) | 176 | `declaration-track:7a8c09c072ba246415e997ba48600c2e640d6832ee1ca301a688457629909765` |
| 26 | `instance` | [Lex.linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-linearorder.md) | 180 | `declaration-track:96188630e8b92498f6a8b99f1fcdac069450b15cbe894b934ae0896bcc3b5936` |
| 27 | `instance` | [Colex.linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-linearorder.md) | 186 | `declaration-track:3cf0e34e8d4629711e59a6de8170532e05020e28aa7a7b6312d6625741733740` |
| 28 | `theorem` | [toLex_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/tolex-monotone.md) | 195 | `result-track:8ab5e46414accac0586134b0f82e571d1861a98f3531a9322fe2662a50fa44ac` |
| 29 | `theorem` | [toColex_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/tocolex-monotone.md) | 204 | `result-track:cb7c07d87b0b4ef5db91b0c73ad110ad44fe015aed58e14c6b7a3f4c29662a5a` |
| 30 | `instance` | [Lex.addLeftStrictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-addleftstrictmono.md) | 223 | `declaration-track:3b9cefd9ed64b4dc0642373ea31b8d7ab05d94c4f43cd041d756d20258c06c41` |
| 31 | `instance` | [Colex.addLeftStrictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-addleftstrictmono.md) | 227 | `declaration-track:b426c0fc4ff5f8f0890e64a3e971be249a46dd163fb44341ed65c8a383ea448c` |
| 32 | `instance` | [Lex.addLeftMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-addleftmono.md) | 230 | `declaration-track:28a23fa764e56a3a4f4afcedd7f0d2fbe8fff0c7e4987f583c8b6992a3cdbde6` |
| 33 | `instance` | [Colex.addLeftMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-addleftmono.md) | 234 | `declaration-track:904b0abc5d196d419385b02ff771232ac264fb9d9fedc9b5301a2e32ed0055c0` |
| 34 | `instance` | [Lex.addRightStrictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-addrightstrictmono.md) | 244 | `declaration-track:11d77e94b5242f73b649e0cf8221da6493fcbd19e63160c86ce6cc74f08aaab3` |
| 35 | `instance` | [Colex.addRightStrictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-addrightstrictmono.md) | 249 | `declaration-track:4ab7c2ab257fd6ec8218727f7ed2216d82fcb1d6d7519ca2db78368248a83deb` |
| 36 | `instance` | [Lex.addRightMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-addrightmono.md) | 252 | `declaration-track:cfa582f4e32e29b4de892ca6c07a64ac751eb939c8698701b9f19e179a557f7a` |
| 37 | `instance` | [Colex.addRightMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-addrightmono.md) | 256 | `declaration-track:ed60ce222027fb367d31ddf09f73bf6e5d540995642d0621cad48a0453452ff4` |
| 38 | `instance` | [Lex.orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-orderbot.md) | 267 | `declaration-track:203f749928f4ff4087c75da3f8f9cc20538942b82631f30256393bbc4976c2c0` |
| 39 | `instance` | [Lex.isBotZeroClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-isbotzeroclass.md) | 273 | `declaration-track:83cdc935961a62295996681392e669825e3f16529b1ffff7766f46f25a29d606` |
| 40 | `instance` | [Colex.orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-orderbot.md) | 278 | `declaration-track:91ca6ba0bb44f9d0d6cce51059529d63cc517a0cdfdc5f44fec3b246e4a91c2b` |
| 41 | `instance` | [Colex.isBotZeroClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-isbotzeroclass.md) | 284 | `declaration-track:b38e966fc4c4c404f0ff0e0abf51d49c4e1bc0ead40ac854fb717a31b62ed6be` |
| 42 | `instance` | [Lex.isOrderedCancelAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-isorderedcanceladdmonoid.md) | 289 | `declaration-track:199c482921a2ead5dbcbcc320834f9221d99aa8ad5e30b45e6cdaf7415aac02b` |
| 43 | `instance` | [Colex.isOrderedCancelAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-isorderedcanceladdmonoid.md) | 296 | `declaration-track:b61f098d529124ccdd51eca6979a2cce8598f9053e437285e74f4c61958df661` |
| 44 | `instance` | [Lex.isOrderedAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/lex-isorderedaddmonoid.md) | 301 | `declaration-track:e35ab01cd7d55bae8d2f71305057e9711b45167f29870d6d7e5590d77f29982e` |
| 45 | `instance` | [Colex.isOrderedAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppLexPublic.lean/declarations/colex-isorderedaddmonoid.md) | 307 | `declaration-track:2a26fc82fee53d45680cf71e63ea7f58e665d8120fcae0982a64ab6343746c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15e99739b5c3b786dc58f2e93eb59b2e20438f4910970228f008ddf53744e859 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant6ffd4f6712c14f47cf9c3c5e07a9cf286f400147e46a613f955172b1fe6795db.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant6ffd4f6712c14f47cf9c3c5e07a9cf286f400147e46a613f955172b1fe6795db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
