# Verification target: Basic Basic Namespaced Public Bitwise Rec Lemma

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "320ea10ee7f835d1e64f59f3ef48a152cb4eb914",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb40aa7df7d4bed3b1d2ffcf51b8e5492447632b087a6f0e87a243c2bc3a37344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `320ea10ee7f835d1e64f59f3ef48a152cb4eb914`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb40aa7df7d4bed3b1d2ffcf51b8e5492447632b087a6f0e87a243c2bc3a37344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb40aa7df7d4bed3b1d2ffcf51b8e5492447632b087a6f0e87a243c2bc3a37344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Div.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bitwise_rec_lemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/bitwise-rec-lemma.md) | 26 | `result-track:a1a7507b48cc2f795545d4a09db3fc134260218f33fd34a15631e40f51956e56` |
| 2 | `def` | [bitwise](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/bitwise.md) | 35 | `declaration-track:33d8de29fe89babe244df90b758d3ca18a966d4fcd2960e7b55635df8470115b` |
| 3 | `def` | [land](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/land.md) | 58 | `declaration-track:6a0a18b3e33c4b3bd7f4acabb1e7006d13ca63efcc3938b4d1418f9373b37d5a` |
| 4 | `def` | [lor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/lor.md) | 66 | `declaration-track:03ef697fedf0831e653b8f63be0867749097e938a12c4477568db3080e0c554f` |
| 5 | `def` | [xor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/xor.md) | 74 | `declaration-track:aba58d94804e2ea73065d1500bd69a341921de531b5623f02a7a69a7f83f3b2d` |
| 6 | `def` | [shiftLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftleft.md) | 87 | `declaration-track:7178be733aaa8b84e3f216b6ad9b6ecd59db344611d020a120d4d9695dc08eb0` |
| 7 | `def` | [shiftRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright.md) | 103 | `declaration-track:d7b7636fede112c7c2beddf9ec5a21c95013510150142c7c703de1d7b0fc0161` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/instance-source-edition-2.md) | 107 | `declaration-track:33c2bd4ddb86d630fb0c3f93a4e2d9ea00356f6f04a3f01d65c1d61ad0495a9c` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:63aff4748ba4aa31f3881b714ff0cda8fa4bd343b3404d491f41706e456ccf50` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:baa28a457fe606955f95d9638b454e9617419a49a7a147276ab4a06566fb27d4` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/instance-source-edition-5.md) | 110 | `declaration-track:eb3df617ae825f6d64fda20488d170c9d4d3beaa7cbd9b027e01b87da45eb8c6` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/instance.md) | 111 | `declaration-track:10f876ed86cccd32018d4a28fdf9a5d1cadc176c36825157173361f0409c2522` |
| 13 | `theorem` | [land_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/land-eq.md) | 113 | `result-track:f4355de2c007e68c182dcaf61e19287d7378fa67e68efcedb2b529a1b5315eb9` |
| 14 | `theorem` | [lor_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/lor-eq.md) | 114 | `result-track:2e22bd96db6da8446dcc7dad18f178047f4dec8346002952b34afc8276e46180` |
| 15 | `theorem` | [xor_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/xor-eq.md) | 115 | `result-track:25f84da4f76e3c1943ed9b23507030deb83d94f5a922a7e76de3a6d12ed36059` |
| 16 | `theorem` | [shiftLeft_eq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftleft-eq-source-edition-2.md) | 116 | `result-track:bc371bdb5b1d254d67aee2c6c6f72b4134a2ef499dae90f07439c0e3bf6873a1` |
| 17 | `theorem` | [shiftRight_eq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright-eq.md) | 117 | `result-track:308074a5efb821e78fe9f8947bbb93db917f6e1a16f5b9973f09285df5d2ccf9` |
| 18 | `theorem` | [shiftLeft_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftleft-eq.md) | 119 | `result-track:47717d0496c32ae407fbf0a6bd6f742cb6b700b8f10c89e992a780929f154681` |
| 19 | `theorem` | [shiftRight_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright-zero.md) | 125 | `result-track:03adadc643ef5a3aba35d483af275cb4b1f261bc5314d98f1432bf476ffe7936` |
| 20 | `theorem` | [shiftRight_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright-succ.md) | 127 | `result-track:f22d3a8a4da7c971e5a2e1513fe6b5a1000ba8ad25a07b3650ada34bcc79bcaf` |
| 21 | `theorem` | [shiftRight_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright-add.md) | 129 | `result-track:5bb72f27e76d8785a83e5487d30555be348fae818f13a23b38b67f9714e1e8c2` |
| 22 | `theorem` | [shiftRight_eq_div_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright-eq-div-pow.md) | 133 | `result-track:b09c64a5025989af1392965f7ffc1a78456c1e6f4ef976f7156f07defaa27e04` |
| 23 | `theorem` | [shiftRight_eq_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright-eq-zero.md) | 139 | `result-track:948da00cd0071ed9459fbc83a7e31136a47017e3937b0399ccbe74cd74d21b38` |
| 24 | `theorem` | [shiftRight_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/shiftright-le.md) | 142 | `result-track:f6eaa503b2c30be69eddd6bc96a879f8947d229e84a1765ebb4a482399c40a0a` |
| 25 | `def` | [testBit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/testbit.md) | 155 | `declaration-track:66886124a23efc682577048e093728e556b88b53b1c0c53ff0854e5d03350b1d` |
| 26 | `def` | [hasNotBit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/hasnotbit.md) | 164 | `declaration-track:5dfe069acc5b985a851ef8b32375e768be28cd67a3295653c4fae44279142c6b` |
| 27 | `theorem` | [hasNotBit_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicBitwiseRecLemma.lean/declarations/hasnotbit-eq.md) | 168 | `result-track:5572680609fdbdd01d17eb7d98cca8a9ffad8bd88088b8ff629e06f207eae6af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa0e48f62827da11088e40e64b6d126ec63608b5fd4bf78dd1a924b306d137c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb40aa7df7d4bed3b1d2ffcf51b8e5492447632b087a6f0e87a243c2bc3a37344.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb40aa7df7d4bed3b1d2ffcf51b8e5492447632b087a6f0e87a243c2bc3a37344.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
