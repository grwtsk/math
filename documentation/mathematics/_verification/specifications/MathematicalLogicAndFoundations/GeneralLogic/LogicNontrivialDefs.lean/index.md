# Verification target: Logic Nontrivial Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e65db2f3989f1daa5c8cd7a59c66590c038a857c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6a2b5e42979485114880a21269734d2964df28b4cfee3f94acca72e64491bad2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e65db2f3989f1daa5c8cd7a59c66590c038a857c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6a2b5e42979485114880a21269734d2964df28b4cfee3f94acca72e64491bad2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6a2b5e42979485114880a21269734d2964df28b4cfee3f94acca72e64491bad2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/nontrivial.md) | 25 | `declaration-track:067d3103a1fa50f4ca0d1be9f57e1ba1609dea2891564cdd3241313cf0e655af` |
| 2 | `theorem` | [nontrivial_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/nontrivial-iff.md) | 29 | `result-track:820890dab6552c3a4188b9d1b5d0e9ffcdd59c128c748debc834bab265acf90f` |
| 3 | `theorem` | [exists_pair_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/exists-pair-ne.md) | 32 | `result-track:f82900d97da22c4dd7d8c700caf66e30b9b04886dc9d130c641d380ab5f0bf70` |
| 4 | `theorem` | [Decidable.exists_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/decidable-exists-ne.md) | 36 | `result-track:ceeacab2056b58bd9f4e169ad1f9667d51d47e2c90e2796c84cd429653dbe7ec` |
| 5 | `theorem` | [exists_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/exists-ne.md) | 44 | `result-track:471512bce3308b1dca0f1964356ed801f4726753fda1a3c4c5ec13351b35f7f8` |
| 6 | `theorem` | [nontrivial_of_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/nontrivial-of-ne.md) | 47 | `result-track:dba6c596e4ffb14bbac81ee97a64d9c74dd18811fee081b28145736dac24fd62` |
| 7 | `theorem` | [nontrivial_iff_exists_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/nontrivial-iff-exists-ne.md) | 50 | `result-track:4e20d142e9e4c91cab24e85d3f58678a696139005456861c9f4447d4681c6cf0` |
| 8 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/instance-source-edition-3.md) | 53 | `declaration-track:fbf7bc42d64cf54da02ed28a3abb8c1d630742469ed95f77a5125b9958137e87` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/instance.md) | 61 | `declaration-track:782e706ecae7fd70ecb73dfb49ea2bf9a0f174363da074cf600655dab32d8217` |
| 10 | `theorem` | [subsingleton_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/subsingleton-iff.md) | 65 | `result-track:67f792be0d062adbc0cbe2a1c487c2c2fab878d1f8f0f869b612ec6754998080` |
| 11 | `theorem` | [not_nontrivial_iff_subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/not-nontrivial-iff-subsingleton.md) | 70 | `result-track:ae55afc6bb84bb635eec4d6f17cf3ea7f052bc7865baebcef53367b6fbfafb52` |
| 12 | `theorem` | [not_nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/not-nontrivial.md) | 73 | `result-track:c5be1627dc3416bd6a680919780057ce50925433a4a0cc46ab988fb5b399215f` |
| 13 | `theorem` | [not_subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/not-subsingleton.md) | 76 | `result-track:af51d19d644cfcded10dda2e9cb9f1e615a14ee1484834fefccd75e36e10567d` |
| 14 | `lemma` | [not_subsingleton_iff_nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/not-subsingleton-iff-nontrivial.md) | 79 | `result-track:4de7db45df7c8a7b6507e820321b3ede657bb70f7bd872ed7d8c5b3f2c6419b1` |
| 15 | `theorem` | [subsingleton_or_nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/subsingleton-or-nontrivial.md) | 83 | `result-track:61eac7d57831848b07668b121a47069e35ace524a5e1c867b18bfafc85c79222` |
| 16 | `theorem` | [false_of_nontrivial_of_subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/false-of-nontrivial-of-subsingleton.md) | 87 | `result-track:ef31c6fe2ed972f6af7f0fbe32df83aa5bf45519e2ab47ee846cf8301c13dc1f` |
| 17 | `theorem` | [Function.Surjective.nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/function-surjective-nontrivial.md) | 91 | `result-track:ad82ce7522633334f5d0e10f8ee715dd70185d1c32e6357362d26f6ee9e806ff` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialDefs.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:a4233c83c988d3b08cdc4cdb401eef41720292ef3b0ba2eabe34d0c3a5b6ea08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68bf4019a696e87601a55ad34702007cf07177ac9710a628a28a0b0666b35e78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6a2b5e42979485114880a21269734d2964df28b4cfee3f94acca72e64491bad2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6a2b5e42979485114880a21269734d2964df28b4cfee3f94acca72e64491bad2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
