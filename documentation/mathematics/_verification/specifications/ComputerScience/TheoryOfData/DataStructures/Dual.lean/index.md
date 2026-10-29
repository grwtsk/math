# Verification target: Dual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.IndepAxioms` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualIndepMatroid](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dualindepmatroid.md) | 43 | `declaration-track:298a2cfc1d205a3b89b6f103c6f88dbc1a77a6432277e35f76ce26924fc4f357` |
| 2 | `def` | [dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual.md) | 112 | `declaration-track:9a8f245a95da487b6cbff8900de297e18f8fe68974210191186898a8c24373eb` |
| 3 | `theorem` | [dual_indep_iff_exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-indep-iff-exists.md) | 118 | `result-track:5ce848425f4c397060f98ef344a98ed3249913921b9f4c82b61e3fe0e29eef35` |
| 4 | `theorem` | [dual_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-ground.md) | 121 | `result-track:b42137c6172ba04a63218dd733270d73a5e89d43b6d4766a0b888e0eef81006b` |
| 5 | `theorem` | [dual_indep_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-indep-iff-exists-source-edition-2.md) | 123 | `result-track:730b7c3c0003b911802dced9e9cece2b5f28627886907f9203a64c8a40b9d567` |
| 6 | `theorem` | [dual_dep_iff_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-dep-iff-forall.md) | 127 | `result-track:74b207be574648914f0c16d595ca8e0397a497a7deebd3ab9c0234520bc9ee22` |
| 7 | `instance` | [dual_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-finite.md) | 132 | `declaration-track:a72bcd962b87bb15217215f827ad2b272981fc26684e1155a4f76f3ceac4533f` |
| 8 | `instance` | [dual_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-nonempty.md) | 135 | `declaration-track:0055b8abec9c3c81d49b42cecb075c5ca38155803f7a14ab20b0870bd66ed279` |
| 9 | `theorem` | [dual_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-isbase-iff.md) | 138 | `result-track:685d47f23414dd89b50d808e014622af351b2798177c85e692d8f817f56630b6` |
| 10 | `theorem` | [dual_isBase_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-isbase-iff-source-edition-2.md) | 144 | `result-track:7a62dbc15f0f0d8bc24a1dc0d7eb1e25f925f58604f9b53a6a49cec27455280f` |
| 11 | `theorem` | [setOf_dual_isBase_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/setof-dual-isbase-eq.md) | 148 | `result-track:ef98ed134f8eaa24d345f55d03ca29961faad95b285caf1437d89ee20c9a9437` |
| 12 | `theorem` | [dual_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-dual.md) | 155 | `result-track:31fd9cfba8920f7fefedcd3b7ab7f9807d0905aa722005e8f0b2dfa08c4dc91e` |
| 13 | `theorem` | [dual_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-involutive.md) | 159 | `result-track:654cadca7c2261b745d45814969e98c1c070a0f32070d8f3045136713c847893` |
| 14 | `theorem` | [dual_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-injective.md) | 161 | `result-track:a811ee296df0764f9706b5a27a04fe0a4c6bb755bea2ae8e2500f98d3421f564` |
| 15 | `theorem` | [dual_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-inj.md) | 164 | `result-track:85aea8d24f7beb947817600b198be2f070d37baece9d5a4be9a8d7922c4e3e75` |
| 16 | `theorem` | [eq_dual_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/eq-dual-comm.md) | 167 | `result-track:828cdc7dcd1a101851380299e00eff1e4db4db3081ddf595139984fb1a52db10` |
| 17 | `theorem` | [eq_dual_iff_dual_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/eq-dual-iff-dual-eq.md) | 170 | `result-track:446f1c1c3693c7b1e635cfc659f41b5a6b43e127cbae7f8894fe95a842d76bab` |
| 18 | `theorem` | [IsBase.compl_isBase_of_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/isbase-compl-isbase-of-dual.md) | 173 | `result-track:19e2db52f9a036e47aecba75f4e5adfcab8e70c90856293a31b2ab62d29fe900` |
| 19 | `theorem` | [IsBase.compl_isBase_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/isbase-compl-isbase-dual.md) | 176 | `result-track:d0af050795c6d7fb17bf6664b341ef63dc9acf99415f88be6d98d23dd2ce49c9` |
| 20 | `theorem` | [IsBase.compl_inter_isBasis_of_inter_isBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/isbase-compl-inter-isbasis-of-inter-isbasis.md) | 179 | `result-track:0fd15dec45bbc09f343ec2227347b3296fbb74f17a77afd2fb5390510ca1b4ad` |
| 21 | `theorem` | [IsBase.inter_isBasis_iff_compl_inter_isBasis_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/isbase-inter-isbasis-iff-compl-inter-isbasis-dual.md) | 200 | `result-track:0ce5c3133ed8ab0a8ccd09039329e6aae082497bafa6785643a92df5259fc790` |
| 22 | `theorem` | [base_iff_dual_isBase_compl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/base-iff-dual-isbase-compl.md) | 207 | `result-track:a4e7fda81a1b4d31d4e1ccceab39b125b51db26bf42d765d4572f9ee63a223e1` |
| 23 | `theorem` | [ground_not_isBase](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/ground-not-isbase.md) | 211 | `result-track:64530a6368f6c8b99792f152907c7c4bba4754cd1c842a931f10d96feab72840` |
| 24 | `theorem` | [IsBase.ssubset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/isbase-ssubset-ground.md) | 214 | `result-track:9e89ddf81fbcd2c5b5e07fa47e2a93ecebd5ee0098241949a7e025224e785d28` |
| 25 | `theorem` | [Indep.ssubset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/indep-ssubset-ground.md) | 217 | `result-track:a03e896b679d366dbfd5feeae8a6c914f01a40bfc516183ed7355c06d11aa851` |
| 26 | `abbrev` | [Coindep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep.md) | 222 | `declaration-track:cf94f9e81acff4b96e63cf8280343adafdcb8bf73f7609f49c8266f5c2ddb5df` |
| 27 | `theorem` | [coindep_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-def.md) | 224 | `result-track:b9084c4107fd1797a18849fed877fceb9cf2880364b2d3d2c0609ba9237467ea` |
| 28 | `theorem` | [Coindep.indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-indep.md) | 226 | `result-track:12e0e16beaf929e94dcb0cf69e04057bf2aa27936b358222ae719ae13a2db938` |
| 29 | `theorem` | [dual_coindep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/dual-coindep-iff.md) | 229 | `result-track:8afd92ccee29e3ed0403e72854286df81bf8973861cab0147b5c92c13049d02a` |
| 30 | `theorem` | [Indep.coindep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/indep-coindep.md) | 232 | `result-track:3de4c1be21aa599cce5d4aae7da262191caab658501256f666ad49afbaaeaeaa` |
| 31 | `theorem` | [coindep_iff_exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-iff-exists-source-edition-2.md) | 235 | `result-track:a9ff9e58765b13563b5c48b5d46c6ca23af11d3c15d2797e2ecdfea21316872d` |
| 32 | `theorem` | [coindep_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-iff-exists.md) | 240 | `result-track:0ae70351d446ae9d458ee3f9493e070240e3dcbc127c026009397116e04cb9f9` |
| 33 | `theorem` | [coindep_iff_subset_compl_isBase](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-iff-subset-compl-isbase.md) | 244 | `result-track:d1f4928f3da7bab3b45116e05ad0a8045faf5193ccb299759eb5735904f67185` |
| 34 | `theorem` | [Coindep.subset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-subset-ground.md) | 250 | `result-track:b39b9a66159832ec981d3041b0561029336d4aea317bfe1f88283bb60c159d38` |
| 35 | `theorem` | [Coindep.exists_isBase_subset_compl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-exists-isbase-subset-compl.md) | 253 | `result-track:9d878f8de6f57bd6e072c361dbde90ba952a14b92de0966a739ca413f309e3ec` |
| 36 | `theorem` | [Coindep.exists_subset_compl_isBase](../../../../../../ComputerScience/TheoryOfData/DataStructures/Dual.lean/declarations/coindep-exists-subset-compl-isbase.md) | 256 | `result-track:5c6869bc49ee04185b8a8d0658c976b6c3c8cc2961dfa311c29361aeac66c9df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f65c379f83f639badd286537348a35034cf55e7caf34f8810a32844683c08a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
