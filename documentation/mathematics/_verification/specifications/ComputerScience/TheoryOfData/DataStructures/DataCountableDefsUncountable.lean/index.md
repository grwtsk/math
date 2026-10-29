# Verification target: Data Countable Defs Uncountable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51f3824abdeb003582dc83a81339ae0fc7f7ea2c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9ed38652ab7dbb2c6211c105419b65a6bd3ad6f9d84f902185ff30beb7c045d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51f3824abdeb003582dc83a81339ae0fc7f7ea2c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9ed38652ab7dbb2c6211c105419b65a6bd3ad6f9d84f902185ff30beb7c045d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9ed38652ab7dbb2c6211c105419b65a6bd3ad6f9d84f902185ff30beb7c045d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Countable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/countable.md) | 36 | `declaration-track:54f82a87dc95a583db5a5f46dea9328620bcc57da6d797a05426bf675bdf50ab` |
| 2 | `lemma` | [Countable.exists_injective_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/countable-exists-injective-nat.md) | 40 | `result-track:1a3c6c60ff338f22f9da7b10411255aa4619674abd8b86f761a0b11eb5af912e` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-6.md) | 43 | `declaration-track:74fa58eacf3145ff11fcaa14c996f6479be22c75cf8688a87d2a94a236c9028e` |
| 4 | `theorem` | [Function.Injective.countable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/function-injective-countable.md) | 48 | `result-track:4aa2cd9fbcc907fc6835c715dd5cf657d2fc1a41d8039b5c3eb4181e2fd52a3e` |
| 5 | `theorem` | [Function.Surjective.countable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/function-surjective-countable.md) | 53 | `result-track:3caa86dc5d188b0073d8339826145dcf4741e196a7dc21934d3228e9ed2a9a0e` |
| 6 | `theorem` | [exists_surjective_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/exists-surjective-nat.md) | 57 | `result-track:e9f6989a38145929dd215be614fbe5ae598e7a7e30634faec61647bcff003be8` |
| 7 | `theorem` | [countable_iff_exists_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/countable-iff-exists-surjective.md) | 61 | `result-track:4c8678aa7fb3c3e0afb3f164491e9599834bade5eaa3214cfc17a5e609b556ba` |
| 8 | `theorem` | [Countable.of_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/countable-of-equiv.md) | 64 | `result-track:7d372ca0e1ee9d148e833376aad1ac46d3353b856f5bdb3632ee0e2c0b085639` |
| 9 | `theorem` | [Equiv.countable_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/equiv-countable-iff.md) | 67 | `result-track:641bdd97e82e1e40207e07fb34bf79eb16caa31e02380b3f3e22098c980cd642` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance.md) | 70 | `declaration-track:192357e1cf1ba25ec8b7ae3a7e0af4353a045981afac634d7b956ee0da983682` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-9.md) | 78 | `declaration-track:9cb0c0b01cb4e89f4bc69ae5399f50df8eac309f34e675e93f6dd9e79c02ec47` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-8.md) | 81 | `declaration-track:94e836c04ed3adf9ea5f3cb97249a2bfd5d3e5b78e0c56c4ac9174f440419e0f` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-12.md) | 84 | `declaration-track:ae446f71ce2b96e0d57c7c6188ccb098a2a1db9b7aad1ecf2ab2e9bcbf89f35e` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-7.md) | 88 | `declaration-track:77097017210243b430f2cace1e034474f937bd2efb5671f9e93d7bbe6198be88` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:22acec2a60c5427dfdb853cb7241aa37ed0e78fcd7c046d244edea1ea6ea7019` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-14.md) | 95 | `declaration-track:b31be5def0a85e2863c6c8207f67ef7241dc81185d11fdb5f9bb049d35eeeadb` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-10.md) | 98 | `declaration-track:a6135864bdb2391a982f7d9785372f6d2521264a26cefbfa2e5683163141a9d2` |
| 18 | `instance` | [Bool.countable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/bool-countable.md) | 101 | `declaration-track:575d3e9f7e7864568d1986cc950fba158f0c7efc932848cbc9d84adf35ce7ca2` |
| 19 | `instance` | [Prop.countable'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/prop-countable.md) | 104 | `declaration-track:028faba1ff99117018e26682ed33c60f3b190569ac7fa08aed3956d35402ea22` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-2.md) | 107 | `declaration-track:1aab3ba98189dd7041f3a7ece48295f6924a1bde5e3e877705f60d8f17db3987` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-4.md) | 111 | `declaration-track:2423386d011a6b7d4756222dbe8ea03325a69a2971066ccd83a81809044e05ea` |
| 22 | `class` | [Uncountable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/uncountable.md) | 120 | `declaration-track:7c55287586b91c27a61084c7f0cb213d4b521fc91da5b218ca61ef2f9780cf6b` |
| 23 | `lemma` | [not_uncountable_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/not-uncountable-iff.md) | 124 | `result-track:c0ab636438df4a9fc5d30a5211c347c83e09369e1529b112f37eb9113dee61d7` |
| 24 | `lemma` | [not_countable_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/not-countable-iff.md) | 127 | `result-track:e9dbddf8843076e478579fac29cf7be798c5a8aa324852dc14120795e5a3420e` |
| 25 | `lemma` | [not_uncountable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/not-uncountable.md) | 130 | `result-track:9d847394ebefa7ae9841bc59b61c580550db0680b7fcf15972f7fe00c8cc0ad9` |
| 26 | `lemma` | [not_countable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/not-countable.md) | 133 | `result-track:f22ca37ecbdd0c38035852a25aeb175813fd6427d9e2b5acce5281a0a537f488` |
| 27 | `theorem` | [Function.Injective.uncountable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/function-injective-uncountable.md) | 135 | `result-track:2a945b20efb958906e637c2b0527d666be68905bab9e1eea6023549a31135adb` |
| 28 | `theorem` | [Function.Surjective.uncountable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/function-surjective-uncountable.md) | 139 | `result-track:3514d02f9e3b411b54b1e18c4fff04804b72d0f97c858906901a17b5090babf1` |
| 29 | `lemma` | [not_injective_uncountable_countable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/not-injective-uncountable-countable.md) | 142 | `result-track:4c8621c46c491b24df6232e19b6a9152b885aefb752fd49048c492214200bb30` |
| 30 | `lemma` | [not_surjective_countable_uncountable](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/not-surjective-countable-uncountable.md) | 145 | `result-track:5f05bd4c0cbadfcd070599041c8d4869865501dc3ba3b4129cc97556b05e0487` |
| 31 | `theorem` | [uncountable_iff_forall_not_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/uncountable-iff-forall-not-surjective.md) | 149 | `result-track:d4ab6622aea9a0ddac56f015d19058ef34c972d2bfd1c85fdeeed06cf8fa996f` |
| 32 | `theorem` | [Uncountable.of_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/uncountable-of-equiv.md) | 153 | `result-track:cfe347ea66059215e97c1c72716e7f9e8baad4c643852891db62b72ec14777dd` |
| 33 | `theorem` | [Equiv.uncountable_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/equiv-uncountable-iff.md) | 156 | `result-track:481904047d1339461cbb95809021815767342059ba6cfa66c361af4853ac0171` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-11.md) | 159 | `declaration-track:ab32717f4f98f16414a7df69339ac9808b84ee81b92e6488614e57ce07ae8557` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-13.md) | 162 | `declaration-track:af68e4ea66a1636572fd876cedc93b54c15ddc6ed7df4c1b909e7093dd897b27` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCountableDefsUncountable.lean/declarations/instance-source-edition-5.md) | 165 | `declaration-track:37c0ec6e17bdc62a7c291c0163758eb95ad4072c962581480484e123264baaa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f70c86820b74a5ad63d662b62e359a477f37ea761ef4249ec3e04a76438cf32a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9ed38652ab7dbb2c6211c105419b65a6bd3ad6f9d84f902185ff30beb7c045d1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9ed38652ab7dbb2c6211c105419b65a6bd3ad6f9d84f902185ff30beb7c045d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
