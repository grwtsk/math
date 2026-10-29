# Verification target: Lcm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72a9d77088daa17488ea0de6ad074229f85303e1",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lcm/Variantc4accc5e10306750e0c990d43eebf4b02bf8444bb3a56be6c4aef663bcf5018c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72a9d77088daa17488ea0de6ad074229f85303e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lcm/Variantc4accc5e10306750e0c990d43eebf4b02bf8444bb3a56be6c4aef663bcf5018c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lcm/Variantc4accc5e10306750e0c990d43eebf4b02bf8444bb3a56be6c4aef663bcf5018c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Dvd` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm.md) | 34 | `declaration-track:755fc846e93662772f5935e9e4ea5ee79f1da0cdbdf992769b88dcf71507d99d` |
| 2 | `theorem` | [lcm_eq_mul_div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-mul-div.md) | 36 | `result-track:2ac3b43c8decd7b6502fc21b35b783c29a81036046135c020b100d1c982a0671` |
| 3 | `theorem` | [gcd_mul_lcm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/gcd-mul-lcm.md) | 38 | `result-track:5299742de7c1e9e1a2edad4b1247db496d87079b29e3d86ebccea776d8fc117a` |
| 4 | `theorem` | [lcm_mul_gcd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-gcd.md) | 42 | `result-track:f1340baadc57946a34f557d72f2b49e9e4079371a26f81cee17151395749cfa2` |
| 5 | `theorem` | [lcm_dvd_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-mul.md) | 45 | `result-track:4c79da71967102453933d54a2b86a1c92edee544028633db052cbc475be1793b` |
| 6 | `theorem` | [gcd_dvd_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/gcd-dvd-mul.md) | 47 | `result-track:5844958c04e2d0b55d5b201ce45797a24efdb187b2c9e4e3ba0f57e7837b8d0c` |
| 7 | `theorem` | [lcm_le_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-le-mul.md) | 49 | `result-track:706af3823bbd5e73dac2d0fd8a32587c73509a9604c4d3609910a919b222ebde` |
| 8 | `theorem` | [gcd_le_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/gcd-le-mul.md) | 52 | `result-track:1e329bedeb7c2e3ca1306cb33911b5e82ee9b89ff2a485956d6d8ce3a0805700` |
| 9 | `theorem` | [lcm_comm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-comm.md) | 55 | `result-track:d3eb431ef1616a5698a67380611179a08e0bb644eca7b48e014f0b2105656944` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:989f653de568a7b896c42529cd5ef4c1e1fd36fce81bdb30991d64d7cffa5a31` |
| 11 | `theorem` | [lcm_zero_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-zero-left.md) | 59 | `result-track:e6ff2bd5f3095605a7af33d5fae2a74400e129bbe3e4483b9b12545669fa959a` |
| 12 | `theorem` | [lcm_zero_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-zero-right.md) | 61 | `result-track:a4ee067fb5304cf83c586cbf71bada6f12a4171300c5651b9557cd79bdfcb4a9` |
| 13 | `theorem` | [lcm_one_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-one-left.md) | 63 | `result-track:1687f62cd0762277a47cb9aa4b755ad73671590fd3b3f72f727ceffb868d3b7d` |
| 14 | `theorem` | [lcm_one_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-one-right.md) | 65 | `result-track:387986f4bbadb228bfb760f75fcd610cbcb538db92cc28c4435d8cfceaed8776` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/instance.md) | 66 | `declaration-track:11bba01d232d7fee9e5c2133d7cf126a2582d42b313be4a8a8e44609b77c6a03` |
| 16 | `theorem` | [lcm_self](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-self.md) | 70 | `result-track:77b08690d1d8ee07afd640a805239010ae1e3fa60db8a5ca1a5e4b0bfa5ac5a0` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:212b0d567f89b71ce053bf46a9761601a53edf6cf1a7d75a39adcb6442d92fa2` |
| 18 | `theorem` | [dvd_lcm_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/dvd-lcm-left.md) | 76 | `result-track:8cd6b616079815cb1dd71b919a4c3c791a56b56e5dd2e23bf0cc00c2e9b43cb4` |
| 19 | `theorem` | [dvd_lcm_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/dvd-lcm-right.md) | 79 | `result-track:910d9d07aebfbc78d1018b2f31ff3dfa26138a7ecaa7a0083676d524f60f09eb` |
| 20 | `theorem` | [lcm_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-ne-zero.md) | 81 | `result-track:73deb01e98fe5c0dda855bfdefbf3831f3183655d76d8197ace3f9ab51b01d36` |
| 21 | `theorem` | [lcm_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-pos.md) | 89 | `result-track:eb12642150210420adbae8e0f9cb22b79aff46d3b6510b684b74d240a1f3d055` |
| 22 | `theorem` | [le_lcm_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/le-lcm-left.md) | 92 | `result-track:7e5177dc7a512baee1f0904f57c79e24daf5a646286c49bfd2b4a8b5c20e59e9` |
| 23 | `theorem` | [le_lcm_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/le-lcm-right.md) | 96 | `result-track:ef316e4240f34cd89ff3d30c44bc70a4ab320d312560904658663ab63d8918b6` |
| 24 | `theorem` | [lcm_dvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd.md) | 100 | `result-track:d9b64fe2422232e3721af4d7774e84cda6ad41ba8ca1f74440997c4fb2bbf27d` |
| 25 | `theorem` | [lcm_dvd_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-iff.md) | 108 | `result-track:c8b4c10b1471e018215c34777f46d52a99bb0ba3ecefb21230d6d3eebb596ec4` |
| 26 | `theorem` | [lcm_eq_left_iff_dvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-left-iff-dvd.md) | 112 | `result-track:46b07750bdb7b80a735d0fde786950344bee300396bc46da5a44f57c0733a94c` |
| 27 | `theorem` | [lcm_eq_right_iff_dvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-right-iff-dvd.md) | 117 | `result-track:28ffb4853cff349e0fa51e195f9b45cf30f29292212f69acc9c1ef63fb180f4f` |
| 28 | `theorem` | [lcm_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-assoc.md) | 120 | `result-track:36507559d0b1814bb45586bd523255eb151046fc6602d24099b5fd45d5c51b11` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/instance-source-edition-4.md) | 130 | `declaration-track:c97f8e086caec92213687226f61af52051935f2b578f6bdf3af87b27e632951e` |
| 30 | `theorem` | [lcm_mul_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-left.md) | 132 | `result-track:f230a0c3ceaf0ff15cdd3ea696447e0cda36ed32f436e3a982fa8fa3c90b9376` |
| 31 | `theorem` | [lcm_mul_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-right.md) | 138 | `result-track:36563fa4480d04b7e84e52a89b79cbd86281877b2b28831b628291320496cc34` |
| 32 | `theorem` | [eq_zero_of_lcm_eq_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/eq-zero-of-lcm-eq-zero.md) | 141 | `result-track:e723a4dad98748daf315d3f0fcd89f7965dab92d32816910da6799020fe8eda1` |
| 33 | `theorem` | [lcm_eq_zero_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-zero-iff.md) | 144 | `result-track:703db8ab1aa0ad4155a6d91f3070ea9606ffb942fba79d3f83583a853e27227d` |
| 34 | `theorem` | [lcm_pos_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-pos-iff.md) | 147 | `result-track:e5e3eedd5ec8e275a143ce7bdabfbc97bd1aa5a812afe74cfc8e3b772141c359` |
| 35 | `theorem` | [lcm_eq_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-iff.md) | 150 | `result-track:63fafd8f11005eabfa5a2251e93bcf60be1f91ee3918cb4865e52f7b9d464617` |
| 36 | `theorem` | [lcm_div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-div.md) | 157 | `result-track:849aa27333920777adf5603f19db4a7ac2b6c45456d7577f326d86a3aeb9a6d6` |
| 37 | `theorem` | [lcm_dvd_lcm_of_dvd_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-lcm-of-dvd-left.md) | 167 | `result-track:c2f68e154a38ca7263f75225fd2d3dfda06db443e6c1c39b437966557176cc23` |
| 38 | `theorem` | [lcm_dvd_lcm_of_dvd_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-lcm-of-dvd-right.md) | 170 | `result-track:8d8a89d694a6eec04094c9ffb6adefa7b96e9c549c939079d7694ede427fb1ed` |
| 39 | `theorem` | [lcm_dvd_lcm_mul_left_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-lcm-mul-left-left.md) | 173 | `result-track:1fd7a43b531f0039945a0d6c4ee64325b2877d7196524a72248d15a82525d518` |
| 40 | `theorem` | [lcm_dvd_lcm_mul_right_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-lcm-mul-right-left.md) | 176 | `result-track:45a6f58eaf2ebab4c2dcf22b2fa16f5a72b0d57b0d1599a0d6deeefdf3774aef` |
| 41 | `theorem` | [lcm_dvd_lcm_mul_left_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-lcm-mul-left-right.md) | 179 | `result-track:8b715693e7e64380b3ceaaae170be94c94d0fa10b30ae637e2b78fef3081d0ed` |
| 42 | `theorem` | [lcm_dvd_lcm_mul_right_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-lcm-mul-right-right.md) | 182 | `result-track:3532252bea095be03d0a6162f021e484a39d13b7318f0116389bb354c79b1586` |
| 43 | `theorem` | [lcm_eq_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-left.md) | 185 | `result-track:495bc47d713d0b43b37a5e9df02afcc0ab9e630fb390b15a43e09328898409ab` |
| 44 | `theorem` | [lcm_eq_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-right.md) | 188 | `result-track:11e6c80c65298209eb4dbc9708a6c21a2b97c587dcebbc95c99dd12025545b0a` |
| 45 | `theorem` | [lcm_mul_left_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-left-left.md) | 191 | `result-track:34c48a8f163452f958d88c8981fdd1028e40366cb68fa0ee4774047eb9d53636` |
| 46 | `theorem` | [lcm_mul_left_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-left-right.md) | 194 | `result-track:2b7e84ba5aae09583f0608b0786231d8605a1e05a181af69c166e441d49c09d1` |
| 47 | `theorem` | [lcm_mul_right_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-right-left.md) | 197 | `result-track:71baa5c2f25ff31c3d9958c4d4d36e7d2153681ba25e764716634550dab3327a` |
| 48 | `theorem` | [lcm_mul_right_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-right-right.md) | 200 | `result-track:84d1750c379337e8c055d3054a8d0609f1e82d7148532a647496717da6c7ffdc` |
| 49 | `theorem` | [lcm_lcm_self_right_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-lcm-self-right-left.md) | 203 | `result-track:f47225870bcd0fc9c920a4c214a04d4f288b45758bbe0e3a277978ce9fa62f28` |
| 50 | `theorem` | [lcm_lcm_self_right_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-lcm-self-right-right.md) | 206 | `result-track:9a861929348044cfb10822e9946de7f6f84233392d20afc0c219ea08a376a31b` |
| 51 | `theorem` | [lcm_lcm_self_left_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-lcm-self-left-left.md) | 209 | `result-track:7556ef45125268d0876c18a751a686c79916e520f988d166f7e4f135afcac562` |
| 52 | `theorem` | [lcm_lcm_self_left_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-lcm-self-left-right.md) | 212 | `result-track:2cce3cab6f825291d7b75b5ca9ae9c45e8122b43bc030efc447ba0923404dadb` |
| 53 | `theorem` | [lcm_eq_mul_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-mul-iff.md) | 215 | `result-track:fc430a89983e5a55d11f684f32a1b4ae423709410307f117186b6b3fdfa21577` |
| 54 | `theorem` | [lcm_eq_one_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-eq-one-iff.md) | 218 | `result-track:02fb4634c41caebc276aab567bacd020e0846813e31ca76c1c363a44d0dcc58a` |
| 55 | `theorem` | [lcm_mul_right_dvd_mul_lcm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-right-dvd-mul-lcm.md) | 222 | `result-track:23114b5a291b6a4275607d0c7d21884c63c24f33a2f4e896140025dae0bfb130` |
| 56 | `theorem` | [lcm_mul_left_dvd_mul_lcm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-left-dvd-mul-lcm.md) | 226 | `result-track:16c3b80645346cd302bdda7e0c840c96afc4f10cdd15513a220b375c1d064be7` |
| 57 | `theorem` | [lcm_dvd_mul_self_left_iff_dvd_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-mul-self-left-iff-dvd-mul.md) | 229 | `result-track:d4e774a2764a685049cc7a7379c8bc9b34ca035bbe68f74eda8f2d70ec69da36` |
| 58 | `theorem` | [lcm_dvd_mul_self_right_iff_dvd_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-dvd-mul-self-right-iff-dvd-mul.md) | 232 | `result-track:f3f25ef87b9c71ebed41ba7837d6e7f41ae1111850fd8b40309d16a0d49986fa` |
| 59 | `theorem` | [lcm_mul_right_right_eq_mul_of_lcm_eq_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-right-right-eq-mul-of-lcm-eq-mul.md) | 235 | `result-track:d85eb86691e54679db748f45f55fc3ed053200c6b691c2c01b8555f7c0ed4089` |
| 60 | `theorem` | [lcm_mul_left_right_eq_mul_of_lcm_eq_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-left-right-eq-mul-of-lcm-eq-mul.md) | 241 | `result-track:e95d6d467d358246318ccb825b66dfa6bb739ab3d100b32e47f103ebe46bce0b` |
| 61 | `theorem` | [lcm_mul_right_left_eq_mul_of_lcm_eq_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-right-left-eq-mul-of-lcm-eq-mul.md) | 245 | `result-track:d4d5f02923a102b892919bfd59e3afdd4827991c7f94c170b36ab3f2159343d1` |
| 62 | `theorem` | [lcm_mul_left_left_eq_mul_of_lcm_eq_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/lcm-mul-left-left-eq-mul-of-lcm-eq-mul.md) | 250 | `result-track:674d1c5b7950b0d83c260e854adfac15505597be599cc7880daf2064bf3ceac7` |
| 63 | `theorem` | [pow_lcm_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LcmPublic.lean/declarations/pow-lcm-pow.md) | 254 | `result-track:1eaffc49bf852290dfc738aeea5d453ef635024d617328b80f69e0e4b82077d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c4b447a2d7d721f59dbbd13b646c89fe4a3f838791247e49b444970b361d632 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lcm/Variantc4accc5e10306750e0c990d43eebf4b02bf8444bb3a56be6c4aef663bcf5018c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lcm/Variantc4accc5e10306750e0c990d43eebf4b02bf8444bb3a56be6c4aef663bcf5018c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
