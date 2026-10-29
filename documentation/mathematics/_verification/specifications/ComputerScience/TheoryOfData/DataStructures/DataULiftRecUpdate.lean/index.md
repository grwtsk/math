# Verification target: Data ULift Rec Update

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91d3fd0af7b89324adecd2244566ada2f74f6c68",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91d3fd0af7b89324adecd2244566ada2f74f6c68`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-8.md) | 25 | `declaration-track:d5abf29f845d7c3bd059becdc4a71b30b23491b597bd4c62947f06e7b2d39773` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-9.md) | 28 | `declaration-track:f1ee8499c19339a634351423a58456bbdc0379ca8a35f8d8871d22b8914421a8` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance.md) | 31 | `declaration-track:6c0cd05e04ed9744951d0c3b7697e981295147a8347d2fc8e2bea6a0f2806eb0` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-7.md) | 34 | `declaration-track:c9c75ab50f4e28183bd32e1914837b9b161d7faa9f978d1a9740c8469dd115a3` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-6.md) | 37 | `declaration-track:9d77ef078501e4e981efe114604bef1a33dc6b66cc1443b669086c69136a9d4d` |
| 6 | `theorem` | [up_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-injective.md) | 40 | `result-track:0cd9ad1e71686fca14cd61f361d657ded3866bddd3301fba8be224f9ce5e7358` |
| 7 | `theorem` | [up_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-surjective-source-edition-2.md) | 43 | `result-track:7b2891dd3c444bcde3477b6255ac3a064c866b62522104e573b774de4ff5d7fd` |
| 8 | `theorem` | [up_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-bijective.md) | 46 | `result-track:1f6c63ffa27ca55bb61638d0c93a4a6fdfb563f2ba015bf3eb581219faecead9` |
| 9 | `theorem` | [up_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-inj-source-edition-2.md) | 49 | `result-track:ca2bfcd13692bdb2db366b75c0f56bce05645b544a58794bf91f90bc1dbe1b80` |
| 10 | `theorem` | [down_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/down-surjective-source-edition-2.md) | 51 | `result-track:6a1a5c6d7ca015f4674a322f67373a6a3d0eb24cde79d21d63e7af17377983fb` |
| 11 | `theorem` | [down_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/down-bijective.md) | 54 | `result-track:07707ee17ef7bd394556db5f7c4a089e80c6e98eb532c0cdb1572b66f348e9ee` |
| 12 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/forall.md) | 58 | `result-track:14e004eb56a938190972bbc9329ddb6cf1e9087f676a8b6f540d6c7b657d2565` |
| 13 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/exists.md) | 62 | `result-track:1868bede86ccf35fdd96ad412dc564f32017c8a7f344a0c40502c718c141bcc7` |
| 14 | `lemma` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/map-injective.md) | 65 | `result-track:de89389f584df966e6fa607e789102a79b5146428a68511528844e5e445cba1c` |
| 15 | `lemma` | [map_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/map-surjective-source-edition-2.md) | 68 | `result-track:466db199b85c945afe6dd0877f94f2ca0e5fe262aa57deb8cabec4dda03e9a21` |
| 16 | `lemma` | [map_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/map-bijective-source-edition-2.md) | 71 | `result-track:ace6c126a0fcf99b5348eda3ced31e765a42f3492b27f2da6ff09355325cfec9` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-10.md) | 80 | `declaration-track:f87a6b9efa7cbd5a67c8c62eb0f3d063983b91c757e054a2f39711a3942bdee5` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:7506c77b446b63b2588c3eb2ce0dc48a78d200cbb86ca9b143684797e6df41fc` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-5.md) | 86 | `declaration-track:83b379a4456eb981412d313ba863becc3ba0e088a9b32ec0229860e4b5630f31` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-4.md) | 89 | `declaration-track:7e535008a1b0762878c7992204a5a826f50a496a9b4df69881bf99fa3c2f3ab6` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/instance-source-edition-3.md) | 92 | `declaration-track:7dc02fb2aa8c8c293925dda0f7ab3f5ab810a71134ea891eebe2103176df4a6f` |
| 22 | `theorem` | [up_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-injective-source-edition-2.md) | 95 | `result-track:356355fb7a533cdd9249b34c2c164905f2577f49b3f9a6c3f6b9d605ac217ec9` |
| 23 | `theorem` | [up_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-surjective.md) | 98 | `result-track:625f14412da3aa92542e17b2873a731ebd774c46dba78f0dc50f086ea900ad7e` |
| 24 | `theorem` | [up_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-bijective-source-edition-2.md) | 101 | `result-track:3f233df91d46976fd52400f2a196c7af782adf0b74cd8a8840e7437769cad3b4` |
| 25 | `theorem` | [up_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/up-inj.md) | 104 | `result-track:6e30b17915a7fe74a527bac41acc057bce1c298ac0da064a6d9b75bfd78aece3` |
| 26 | `theorem` | [down_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/down-surjective.md) | 106 | `result-track:382c55591b41b44917bb1a8f0279bf18d126f98e9fb2eec3b64cc6d825e21936` |
| 27 | `theorem` | [down_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/down-bijective-source-edition-2.md) | 109 | `result-track:aa5bf120e23f51dc8b06adefc504f116da61d48c413fedd21039168b59a74f3a` |
| 28 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/forall-source-edition-2.md) | 113 | `result-track:e03f8be3baf8517c67796df5fb057daa496c363a00d3afdfbe9cf387fa487441` |
| 29 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/exists-source-edition-2.md) | 117 | `result-track:3bba0c9f418a732b6ccec84f0c446c414926e02944fc1eccf2c6121c38c9055e` |
| 30 | `lemma` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/map-injective-source-edition-2.md) | 120 | `result-track:f6c13b2097383305f2758dbeaa705f2459f74559cdecd5ee2fbc7c319b0e9340` |
| 31 | `lemma` | [map_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/map-surjective.md) | 123 | `result-track:3c20acc4cb507854d2d3abf3e394d2c288eaea54ebf191692e675f01bcd0450d` |
| 32 | `lemma` | [map_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/map-bijective.md) | 127 | `result-track:087d4cb217ea66d70d33faeafa0644a7d26d1dd946c2698d8de736bb0484fb28` |
| 33 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/ext.md) | 131 | `result-track:747f2b1789cb384ef1e01dba7d20be63c3542d9c17218ddfe9a13cef487948d8` |
| 34 | `lemma` | [rec_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftRecUpdate.lean/declarations/rec-update.md) | 135 | `result-track:4c09182fa3e76ae83ded8f9b2b246f4f42c4c4d97bbf4dd7d03424a9e3a29105` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9aa4d8bdaa1e2b01451d9aceb3182cc00975139568b0c592ddd61ae61f39447 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant8f9cc682d8e59ca99ee3194e4558be11c7cbe12a26c6fcd6d189017a9d8af55b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
