# Verification target: Permutation Network

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca223f934ac03e04fd116cb18f9baedfbc3886cd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PermutationNetwork/Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca223f934ac03e04fd116cb18f9baedfbc3886cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PermutationNetwork/Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PermutationNetwork/Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Round` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotate3Indices](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/rotate3indices.md) | 27 | `declaration-track:90fe21b76d46cd5e64ae98edf4e754ea8423467025045f7671cc36423200a2da` |
| 2 | `def` | [rotate3](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/rotate3.md) | 31 | `declaration-track:c06049bc9b89d1a9de7779da197d354e7b43385f8e3cdb610a9216dc30e78f27` |
| 3 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-2.md) | 34 | `declaration-track:43c5365127f6f8772764d929fa02ce9112e9fa3f115305aa82c3430a3e9d2e7c` |
| 4 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-8.md) | 35 | `declaration-track:7e2dd8e3cff0e1f1d7c86607a3855586102ebf696d3ad51c000e71325e0592ea` |
| 5 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-10.md) | 36 | `declaration-track:96e91a1fc92b1c711c3a5bd947dc8cfe36b79dadc62262a4d86152bfd5ff98cd` |
| 6 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-16.md) | 38 | `declaration-track:eed6083dd4d88838a23e7904309e7f106c85c7058d447117ee6464a57997602d` |
| 7 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-15.md) | 41 | `declaration-track:d01c8597167df16be9f6ccb3a099bf66d07b520765d719c027d879175d7ce2f7` |
| 8 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-3.md) | 44 | `declaration-track:62b91c9f3842e905c821abbf7d18fad614b1b3a552584379a9301ab1445829a9` |
| 9 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-12.md) | 47 | `declaration-track:a569b2481f9c952618b7ae3323ba0f3a5d3c3469a8f818cc365c5640484f4b69` |
| 10 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-11.md) | 50 | `declaration-track:983f77e58fbe03b0ca895940c5a9a3c3c108507c70e72ce0d60a5941b5d8000a` |
| 11 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-6.md) | 57 | `declaration-track:71bcd1cd18c7310e5669b9c03347eb92f6aa67b9939a41988655121c843b125f` |
| 12 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-7.md) | 60 | `declaration-track:7ade2ab7526094d3a179958e1fc905c3fec6e57acbd810a6de15380f311fbe1e` |
| 13 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-5.md) | 67 | `declaration-track:6c1dc11ce6111699f2ba4826d15ab60ecf0042917d1e61bd992fa6de5ca273d4` |
| 14 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example.md) | 70 | `declaration-track:3aa55116bc09b4fe380512d2d3ddabe077be5d26d0c8bb0ddde46ba805b4600b` |
| 15 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-13.md) | 74 | `declaration-track:b3b6a235c59918f6147fcc0992dfbc64d7f134077dbec1aff9b1a86370f2b22f` |
| 16 | `def` | [boolZeroOperator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/boolzerooperator.md) | 86 | `declaration-track:199e81f49c9256b794b3ef55cead40c9151b548ec6753285e08fddfbe23cb0e2` |
| 17 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-14.md) | 89 | `declaration-track:b67b458a0992a211e7c022ecb0913835917c3e2e7524fd7fd46eb9123a75a704` |
| 18 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-9.md) | 93 | `declaration-track:8f297aa8c16c933e9377b34595dce19b731114d937821f46440c2d796cd738fd` |
| 19 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PermutationNetwork.lean/declarations/example-source-edition-4.md) | 99 | `declaration-track:659759d225c900d6d8902a3f78c0a09776d128b8f28857427aba3842a11180f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a206ae7a52488aec292b4005881d1d372fb04ad70953d68adfb2e77dcdc15d92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PermutationNetwork/Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PermutationNetwork/Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
