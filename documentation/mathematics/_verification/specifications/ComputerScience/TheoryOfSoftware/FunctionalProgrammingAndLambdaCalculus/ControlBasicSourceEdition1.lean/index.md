# Verification target: Control Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a803a19797bfa095005fc33fb5cc45d2b309ca33",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta409c26ce27fcd5f0454b900142551f6499e93d7fd072eefc86e34f0b09baf4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a803a19797bfa095005fc33fb5cc45d2b309ca33`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta409c26ce27fcd5f0454b900142551f6499e93d7fd072eefc86e34f0b09baf4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta409c26ce27fcd5f0454b900142551f6499e93d7fd072eefc86e34f0b09baf4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Combinators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Core` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zipWithM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/zipwithm.md) | 30 | `declaration-track:2a3ae030ff91239a7f553c63166dd1e59248f9d92b0b8751b2d658e19da12600` |
| 2 | `def` | [zipWithM'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/zipwithm-source-edition-2.md) | 35 | `declaration-track:915356f877454693f8659b45516afc46b61219a89c071d3c9ed3852a45c01415` |
| 3 | `theorem` | [pure_id'_seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/pure-id-seq.md) | 43 | `result-track:98f7218115625a4d8470e34b1a5b41d06f439b396fbd0a77dd8d7085567b01ee` |
| 4 | `theorem` | [seq_map_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/seq-map-assoc.md) | 47 | `result-track:371b2edec038de07ff879cd3dc8a61e3c331dc6017843079edfa1ba1aa0387ba` |
| 5 | `theorem` | [map_seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/map-seq.md) | 55 | `result-track:e46869de208a9e7ca4391555dd270fa317b140331eb8174d5f518fae98859683` |
| 6 | `theorem` | [seq_bind_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/seq-bind-eq.md) | 65 | `result-track:b09fc3e57f85fbb6daf48b26ae147a0489599a20e06197eaa77484757ee638bf` |
| 7 | `theorem` | [fish_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/fish-pure.md) | 73 | `result-track:4dc2bd6e7269256b89e10c88c677c43cbc6c6a33eacfa64862034ebdcec4f1c3` |
| 8 | `theorem` | [fish_pipe](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/fish-pipe.md) | 77 | `result-track:21f1a406771aea29b3e1ab07ea3daf19929fb713fba5895711b8153fb84ae6a6` |
| 9 | `theorem` | [fish_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/fish-assoc.md) | 82 | `result-track:7f5ca0039ebe355c61c616c4fc134e23fa4ab1a1197c006829bee12a5c402653` |
| 10 | `def` | [List.mapAccumRM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/list-mapaccumrm.md) | 91 | `declaration-track:2a9a1f4b281a46f38daa518ccc03d98af412847813b6f5b3925c80e1a21285f5` |
| 11 | `def` | [List.mapAccumLM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/list-mapaccumlm.md) | 100 | `declaration-track:dc629e13b24faa0f7c1b8150c5a9e152a7acfa2b6b79ec386cf0211c36af354c` |
| 12 | `theorem` | [joinM_map_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/joinm-map-map.md) | 113 | `result-track:0869c5693cf45663d4b75010704c75b0cbb3f575e4ab7a0328e928fc4e8ce301` |
| 13 | `theorem` | [joinM_map_joinM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/joinm-map-joinm.md) | 117 | `result-track:b6d931d53f22ffe1d7ece9cf6798dd6fc8f145bb22b275ba1ddae7ce24258398` |
| 14 | `theorem` | [joinM_map_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/joinm-map-pure.md) | 121 | `result-track:00963dd5ec896d2c82fe20c3130effcc386e4bfc78092a85a141acc1806534b8` |
| 15 | `theorem` | [joinM_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/joinm-pure.md) | 125 | `result-track:a8982b6241f32819d4f0daf7775fd36a7f022799884c06294c948d551f1b2c97` |
| 16 | `def` | [succeeds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/succeeds.md) | 136 | `declaration-track:aeb923492db5c1785089e50504755d4f62445ea8cf5dce9f6af0d539eeab66ec` |
| 17 | `def` | [tryM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/trym.md) | 140 | `declaration-track:be42783bbe3cbe33379736b0790184f0be4697037b1eb4a651d5ad6aa889d4ab` |
| 18 | `def` | [try?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/try.md) | 144 | `declaration-track:d53611967d6860070fdeeb91c891505916d9fcc2a69e31ff930fdee62e4293fd` |
| 19 | `theorem` | [guard_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/guard-true.md) | 148 | `result-track:665f2daee51c4c670d8660be8ae0aeb733a999cc05871271d41e462409d296cb` |
| 20 | `theorem` | [guard_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/guard-false.md) | 151 | `result-track:8828c3dfecf4fcc3ebf0f7c66b4b0dc2134bf613e738ef45ff539de7349f79f5` |
| 21 | `def` | [bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/bind.md) | 161 | `declaration-track:e1cbdc9679240683ff506adc88734c44dc06587a21ac3e45f56c49513d06752d` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/instance-source-edition-3.md) | 166 | `declaration-track:f2e354b4931182a04cd56d747c741b2dc2cd1880e091225ea0b206e04f7c9695` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/instance.md) | 170 | `declaration-track:af7c1903b3cb2d5c728f3b1e20865d4054a80fea6c9cd9aca596ef2cc4a94c6b` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/instance-source-edition-2.md) | 173 | `declaration-track:ed6f1535a26374f77eee63a97ffb3613aba5d82780ffeb819e4461d8d4a91ba1` |
| 25 | `class` | [CommApplicative](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/commapplicative.md) | 200 | `declaration-track:640f11192f2d743b2856fd5795411887e37e40cce8019834f5beef9f78a9ad69` |
| 26 | `theorem` | [CommApplicative.commutative_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition1.lean/declarations/commapplicative-commutative-map.md) | 208 | `result-track:fa948fc72b24eeb1935fa4aa6231cfc6883fc04e8f4d27489910590cb167bd9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f63f05219565dcdebf74529326720674bbc5674ce371c4d15755802e852195ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta409c26ce27fcd5f0454b900142551f6499e93d7fd072eefc86e34f0b09baf4b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta409c26ce27fcd5f0454b900142551f6499e93d7fd072eefc86e34f0b09baf4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
