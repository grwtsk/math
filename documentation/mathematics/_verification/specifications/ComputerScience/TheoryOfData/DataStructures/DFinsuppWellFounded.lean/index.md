# Verification target: DFinsupp Well Founded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f8fa51978aa66ccd2262d9a969e9c11cf8e5657",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantf6637f92d44f5b405fad0051f39c04b7662920002f0ab3df40ae0ada5dc95cf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f8fa51978aa66ccd2262d9a969e9c11cf8e5657`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantf6637f92d44f5b405fad0051f39c04b7662920002f0ab3df40ae0ada5dc95cf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantf6637f92d44f5b405fad0051f39c04b7662920002f0ab3df40ae0ada5dc95cf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antisymmetrization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Order` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lex_fibration](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-fibration.md) | 67 | `result-track:1536d638952726b7696a02f0cdbb3cb0fa904e743515f1ec95c34e638e73bf2c` |
| 2 | `theorem` | [Lex.acc_of_single_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-acc-of-single-erase.md) | 100 | `result-track:37bed4c90bf6703647f88542ba9f6d05ecb3d4d0ec9157f470826ff23e091144` |
| 3 | `theorem` | [Lex.acc_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-acc-zero.md) | 109 | `result-track:6ce9171698d10b23e72f46d14d0fc5e83da06d0017e0524099f11428f30528d7` |
| 4 | `theorem` | [Lex.acc_of_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-acc-of-single.md) | 112 | `result-track:95fa50c6a02f67fe4f71a214e851031bdc2d784720ed3f2fc686c782dd78ff3c` |
| 5 | `theorem` | [Lex.acc_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-acc-single.md) | 126 | `result-track:b883c3b170da6f017eb78f9580a03a3b1178f73c1c13c115cd3dcac2b2311630` |
| 6 | `theorem` | [Lex.acc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-acc.md) | 148 | `result-track:c359f5ad4ffde4a2dfced911d630b6a505ceafb64e0cd1f46e743405871b743d` |
| 7 | `theorem` | [Lex.wellFounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-wellfounded.md) | 153 | `result-track:069c0a616d755aaeb4086fb9e46d623da0980aacb9731cec3d6f1fe406d3de4f` |
| 8 | `theorem` | [Lex.wellFounded'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-wellfounded-source-edition-2.md) | 157 | `result-track:dbbf90c3b0daa1a7243e02f7db5b78cddeadc78ec7e76199c793c0361ed2946f` |
| 9 | `instance` | [Lex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/lex-wellfoundedlt.md) | 165 | `declaration-track:e6bc31934ff6ce8ec8446d306735316acab58496fddc68fe5aed9e1a0ed796fd` |
| 10 | `theorem` | [Pi.Lex.wellFounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/pi-lex-wellfounded.md) | 177 | `result-track:13b9e1c85e35d32c5226a911d12687dd7a81dae32bd0fe457625f9c0bb6bedf5` |
| 11 | `instance` | [Pi.Lex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/pi-lex-wellfoundedlt.md) | 186 | `declaration-track:1da39c91eff18c486e7faa6a66f64aaab8a538e868ff41b3699e3c37105cdad5` |
| 12 | `instance` | [Function.Lex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/function-lex-wellfoundedlt.md) | 190 | `declaration-track:f7520a10766bd2746713474a36136ea20cd579f1d620ebc4a32b58e318a841f0` |
| 13 | `theorem` | [DFinsupp.Lex.wellFounded_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/dfinsupp-lex-wellfounded-of-finite.md) | 194 | `result-track:5d6611badc9ae7fc95f77c548ca8c3e5cb9598a2c7824b8b2573dfd63dc124d2` |
| 14 | `instance` | [DFinsupp.Lex.wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/dfinsupp-lex-wellfoundedlt-of-finite.md) | 199 | `declaration-track:777f5336efb6c0a96bee7f20494ee208a90b62fa82d652a2cd89f020ff6040d6` |
| 15 | `theorem` | [DFinsupp.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/dfinsupp-wellfoundedlt.md) | 203 | `result-track:e9b716a67e02bac46b18b98e1de384e8eaf143ae07d6026a941adb2b74a28516` |
| 16 | `instance` | [DFinsupp.wellFoundedLT'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/dfinsupp-wellfoundedlt-source-edition-2.md) | 222 | `declaration-track:fbd56d9259d6f23780e2cf5fc9bbfcf036ae9b05b3229f9a680136cf5dc03633` |
| 17 | `instance` | [Pi.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/pi-wellfoundedlt.md) | 227 | `declaration-track:4d9c9cc661221e0ca310a804ab7aa8012e05ad6dc6d772c5e3a34820a7d6ef92` |
| 18 | `instance` | [Function.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/function-wellfoundedlt.md) | 237 | `declaration-track:c3e90fc6e9376b9f3b1c7b5ba0963d15b2644082e7f99ad0146afa0d94cc151b` |
| 19 | `instance` | [DFinsupp.wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppWellFounded.lean/declarations/dfinsupp-wellfoundedlt-of-finite.md) | 241 | `declaration-track:cfb43c3560221a09d965213259152fd498910fe57650c3891510fe12b20c7123` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3969f50a6eaa13b70f4dd3e212f12f75cfd80957980c9fa5afc317191cccd413 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantf6637f92d44f5b405fad0051f39c04b7662920002f0ab3df40ae0ada5dc95cf8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantf6637f92d44f5b405fad0051f39c04b7662920002f0ab3df40ae0ada5dc95cf8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
