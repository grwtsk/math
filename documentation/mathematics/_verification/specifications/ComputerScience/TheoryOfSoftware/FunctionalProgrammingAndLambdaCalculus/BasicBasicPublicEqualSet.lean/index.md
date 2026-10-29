# Verification target: Basic Basic Public Equal Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "553e88f7fa823f626accbc9e21111c6feb9d8de7",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `553e88f7fa823f626accbc9e21111c6feb9d8de7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.UInt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equalSet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/equalset.md) | 27 | `declaration-track:81503a2a848afc23f06959ec10a3a32ebb4553ba21082c4e674ac0763783720d` |
| 2 | `def` | [rangeMinWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangeminwith.md) | 36 | `declaration-track:767d958ec3e6b9063c226303cff778db67e85c56e22b3db97ef9062efffb2f17` |
| 3 | `def` | [minWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/minwith.md) | 42 | `declaration-track:8bcc9af28fa2212f89f38b203fc09e57caeab24dc7e4ccaba0353b722c507ad5` |
| 4 | `def` | [rangeMinD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangemind.md) | 50 | `declaration-track:8f558c2ec114b7b2d4a64a9ed365c216ba18191dd0b5fd9e72bbd02ee2d8bbbb` |
| 5 | `def` | [minD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/mind.md) | 58 | `declaration-track:36100f11c63e986ac643ed57f79f03aead052e4ece50d257f23fe770ae37b862` |
| 6 | `def` | [rangeMin?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangemin.md) | 66 | `declaration-track:69133c040d320b48d21db2cc626ab0b46d3cbc3a4d7a731d539742ca23b73170` |
| 7 | `def` | [rangeMinI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangemini.md) | 79 | `declaration-track:116f1787b7007f106703c2ca17997f0941b7931361e284579eb0f54abf84affe` |
| 8 | `def` | [minI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/mini.md) | 84 | `declaration-track:8fa41267c181977e3cba73428aa19a71f51c4d67adf9ba8389dbd1496b9aee2d` |
| 9 | `def` | [rangeMaxWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangemaxwith.md) | 92 | `declaration-track:6924a2e0a20e0a3056a0b2e9096bd316fefd3be02f6ea7ed1f1d8684b46192b1` |
| 10 | `def` | [maxWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/maxwith.md) | 97 | `declaration-track:57934dcca1a4d4103b7be0f02f8f331ea3f3005c0bc3d140dd838a6eb38868cf` |
| 11 | `def` | [rangeMaxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangemaxd.md) | 105 | `declaration-track:3a65f6677568802b7f27330a7e631df7f0d33700895d94f0bbdf71300312c808` |
| 12 | `def` | [maxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/maxd.md) | 110 | `declaration-track:032dc08b14d51622f656e942072ed78e4fd94b517977a386c02481870d1d464f` |
| 13 | `def` | [rangeMax?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangemax.md) | 118 | `declaration-track:e84e6382b04104078c7459bf94d1ff0646040c88bc8f71e4f7050d69fcba5b4b` |
| 14 | `def` | [rangeMaxI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/rangemaxi.md) | 128 | `declaration-track:8e59d943566cdbc66314ee48d82ec38b1147081981d17b37ebac19b44ebc3afc` |
| 15 | `def` | [maxI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/maxi.md) | 133 | `declaration-track:216c3a52e2ea00245d93e7ad9d192ac674ae06fef25970f498c1333a730df64b` |
| 16 | `abbrev` | [SizeFitsUSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/sizefitsusize.md) | 142 | `declaration-track:1b8418953a7fcf7216fa53ffced02291e919ec148c3d7188f063f2d9a6dfd820` |
| 17 | `def` | [unsafe_sizeFitsUSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/unsafe-sizefitsusize.md) | 150 | `declaration-track:2705a6a9a65f22fd332c81e1b088aaa1bb82f2d7eae1ef84fa6ecceb583dbc25` |
| 18 | `def` | [scanlMFast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanlmfast.md) | 154 | `declaration-track:26057fa53375cdfd4a50b9aa1e00bf559c9a343b93d441ac14461ab24bd0c4ec` |
| 19 | `def` | [scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanlm-source-edition-2.md) | 205 | `declaration-track:efde77d3a6c5dcecb2cc5bd007e7e7857ef3e1f2b4e58880b22a00750fb384b9` |
| 20 | `theorem` | [scanlM_loop_eq_scanlMFast_loop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanlm-loop-eq-scanlmfast-loop.md) | 217 | `result-track:9aa7df129efe37bdc209b589e9582f76722d5aeebca30c9db2f0576aee34f0d0` |
| 21 | `theorem` | [scanlM_eq_scanlMFast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanlm-eq-scanlmfast.md) | 246 | `result-track:32d7d93e71c3f5e83b9c3094bf64b005456939590e7bf819c79f05f53984f010` |
| 22 | `def` | [scanrMFast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanrmfast.md) | 256 | `declaration-track:edfebdfd6db44bf0119608c10ec5330d734312d467e9ebb32006b9656e57a383` |
| 23 | `def` | [scanrMUnsafe](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanrmunsafe.md) | 298 | `declaration-track:904579e7021b961b83b4667b7b61cb34180125181c62b53793f00fa76d4eaf37` |
| 24 | `def` | [scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanrm-source-edition-2.md) | 331 | `declaration-track:bd5ae7e3a94ab0ae6224e1a659807effa4fb112f60e6f6cb76707548e1e5a3f3` |
| 25 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanl-source-edition-2.md) | 356 | `declaration-track:af4697eb4ba7d72f2c0df4baa021b781879ef1d30acba697bbc284bc69d0521b` |
| 26 | `def` | [scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanr-source-edition-2.md) | 366 | `declaration-track:5ad0ffd413952d9c6ae5cb1819c3131c0e33429a2ebb41485fdec9f3da4a5600` |
| 27 | `def` | [scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanlm.md) | 377 | `declaration-track:5d4d6fdd80d8f003744017e4ec7018c48ccdc5a948d1dc207e05369968d501e1` |
| 28 | `def` | [scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanrm.md) | 384 | `declaration-track:19a9f6cab7efdecc83ce147ce5a8389e1a0b53f44cad59a9bfec98a7f360d6e1` |
| 29 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanl.md) | 391 | `declaration-track:5bc50966a5b740fb5f748cc9ebbd49da47f83891ad2c77020ced704db1817aeb` |
| 30 | `def` | [scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/scanr.md) | 398 | `declaration-track:3b9fbf0d23461013c77a3cb749e0500f06afb60d2d888f0c04649c4f4f6b1dc8` |
| 31 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/isempty.md) | 405 | `declaration-track:3bfa3ddef72a2285b16f2ae69d378ff8c850eaa9ab6265451b5b78c41041630e` |
| 32 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/contains.md) | 412 | `declaration-track:466b65de88cd62c7a00ba1e3ccd2b68e982ae14c87dee4b58ee9b6c1a2417b07` |
| 33 | `def` | [popHead?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicEqualSet.lean/declarations/pophead.md) | 419 | `declaration-track:38450b96c6e1741b42c8467b02fb3885b3057ea55509819bfa6b0fd460e1f09e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d15ce42facc2c33849901ac369b4046f814400ea0e0139b8a422c3a38e55f77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
