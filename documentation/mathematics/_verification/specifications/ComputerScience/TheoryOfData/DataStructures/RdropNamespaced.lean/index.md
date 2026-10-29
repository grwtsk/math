# Verification target: Rdrop Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b58fabe96d7c071f6e7456b29c0c60232fc2ffb",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b58fabe96d7c071f6e7456b29c0c60232fc2ffb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdrop.md) | 49 | `declaration-track:29f1860645d9fe5d49250288eb4a185538d76a4ab439705d0cafffbd4efb0a1f` |
| 2 | `theorem` | [rdrop_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdrop-nil.md) | 54 | `result-track:96c989641dd6bf3dfa81a53d7218f9756bd0e5af5576ef32f7e881ae138084f3` |
| 3 | `theorem` | [rdrop_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdrop-zero.md) | 58 | `result-track:66a934408729bd75b79079f75f7fafa8e3d5f0974242bccbdbf07fdf7c982b23` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdrop-eq-reverse-drop-reverse.md) | 61 | `result-track:3ec162c435ccbf73357d562e63c06faef0b0c4dea9bd4da34d32f6cb40fc5d89` |
| 5 | `theorem` | [rdrop_concat_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdrop-concat-succ.md) | 71 | `result-track:bf76cf5f6595b8f73c111ecebf4b5f5b9147f8b3072a9d942a22c460efc1ff4d` |
| 6 | `def` | [rtake](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtake.md) | 76 | `declaration-track:82c4ff558fdda60183dece5816579c928c05429207dc608e945a18a3a4e45e3c` |
| 7 | `theorem` | [rtake_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtake-nil.md) | 81 | `result-track:6371b3c48334dbe1e5a2ac4a1ad83fe983d6e3ea6a750ef96001a0d437a890c4` |
| 8 | `theorem` | [rtake_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtake-zero.md) | 85 | `result-track:3f3be32bc679f1659a1ac160569805931f02fa1e2094d7b56b35effe7369db75` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtake-eq-reverse-take-reverse.md) | 88 | `result-track:1fdb7aab171c257f534ace09bf1a298c252310d41c6769df707b43d3d91d8a40` |
| 10 | `theorem` | [rtake_concat_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtake-concat-succ.md) | 98 | `result-track:172fc0ff128ad87ad203e934cdfa485938e1d82a02c1a756c4df68149eb00199` |
| 11 | `def` | [rdropWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile.md) | 104 | `declaration-track:0cd55938de48c5904c91172d0ee0eb018f7fc4f33e1ed4776e8a9f1098a48642` |
| 12 | `theorem` | [rdropWhile_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-nil.md) | 109 | `result-track:e159e6270850cd4a441c171583074e60e527ea7cbd014e8cb8e629a0daf37b0e` |
| 13 | `theorem` | [rdropWhile_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-concat.md) | 112 | `result-track:a72a8ae9441351c19f36e8e8e0deb80a575ebdc7cb88ce435e24dc40d0166675` |
| 14 | `theorem` | [rdropWhile_concat_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-concat-pos.md) | 119 | `result-track:eb8d2dfb5a9097878ca50f66f22344025269101d7e51ef110f68a0605f845c07` |
| 15 | `theorem` | [rdropWhile_concat_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-concat-neg.md) | 124 | `result-track:3ebd8da15431982eabfb3189eaa9765e504c2161cfb2923607a841fbc1c170d8` |
| 16 | `theorem` | [rdropWhile_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-singleton.md) | 128 | `result-track:ed921ea6256d93e5d516ae7060d05b50c463fc9522b615631bfcc16c7d3b58d6` |
| 17 | `theorem` | [rdropWhile_last_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-last-not.md) | 132 | `result-track:f6d8af116460a81caad8f09722cd3212661b4c9e39b13d8a2d85b45e0509102f` |
| 18 | `theorem` | [rdropWhile_prefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-prefix.md) | 138 | `result-track:b20b946ab29c2a6db48d7180635f2bd89a57a0ff600be2943a6977122091629f` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-eq-nil-iff.md) | 146 | `result-track:1de2aaf9b04655e8008f787826dcae2b25fbc38c19fe2343532ec887ae40c8c5` |
| 20 | `theorem` | [dropWhile_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/dropwhile-eq-self-iff.md) | 151 | `result-track:b8872ab54a913651133885b33faaf5279a8ad741244e861c0e90e61deb55643b` |
| 21 | `theorem` | [rdropWhile_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-eq-self-iff.md) | 173 | `result-track:64efae7fad43d03e2eb914fd4d5b431b899ff0a323c6fbdabce3adec2fcb70b2` |
| 22 | `theorem` | [dropWhile_idempotent](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/dropwhile-idempotent.md) | 186 | `result-track:0c00da9db9ec0258e331e089924c1adb8fa56d0ead07ef047a3cb103c8d1bae5` |
| 23 | `theorem` | [rdropWhile_idempotent](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rdropwhile-idempotent.md) | 191 | `result-track:222e8dca0b65df14a76df547e3fa45e35432029ca9a8591f8422548b18307f66` |
| 24 | `def` | [rtakeWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile.md) | 197 | `declaration-track:5a2b24625b2766863ee7177728087af902e50fa040492fc7fd4e254d797c85bd` |
| 25 | `theorem` | [rtakeWhile_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-nil.md) | 202 | `result-track:4ec7e3aa83e671886d566ec5c921ea02ddde8f193ad72ee8e9096ba6f8890400` |
| 26 | `theorem` | [rtakeWhile_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-concat.md) | 205 | `result-track:578d799c88e6a5cffb860f126d68844212404a0abecc9dd5526f5081183804e7` |
| 27 | `theorem` | [rtakeWhile_concat_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-concat-pos.md) | 212 | `result-track:de9abd9cafd4b08d725a08c02b893f8d544b3379e11b0d7bedb53ff4a65c9dd4` |
| 28 | `theorem` | [rtakeWhile_concat_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-concat-neg.md) | 217 | `result-track:2496eb4cd67d635261da05e71691ceade788f21556b7dc5137083e67aebfd5f4` |
| 29 | `theorem` | [rtakeWhile_suffix](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-suffix.md) | 221 | `result-track:c3fae8ec5f7ea5f14052eec0f1d43d7e67ca2c0a4aff99556b6bb439ff45b470` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-eq-self-iff.md) | 229 | `result-track:f69f043f738ae7120792fd8afac3b925d7608272f979222dc25d7058773f34c7` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-eq-nil-iff.md) | 235 | `result-track:20d3d32e3bd6dc48a8e78d2deef9ffcdd064b85167feb2bf7226d71549c5ac3c` |
| 32 | `theorem` | [mem_rtakeWhile_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/mem-rtakewhile-imp.md) | 246 | `result-track:8bb529185e63a475e29c60b2ccf020ef72c357e19420527211c55644d70e22a3` |
| 33 | `theorem` | [rtakeWhile_idempotent](../../../../../../ComputerScience/TheoryOfData/DataStructures/RdropNamespaced.lean/declarations/rtakewhile-idempotent.md) | 253 | `result-track:0879ec94a22b290c3ddcae832661d6e8da6fd8fe1a815c5a392095b525d50823` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db2d03162fbb47aa64b6fc5decec90bffe059b4937510eaeccb7a405356ef331 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
