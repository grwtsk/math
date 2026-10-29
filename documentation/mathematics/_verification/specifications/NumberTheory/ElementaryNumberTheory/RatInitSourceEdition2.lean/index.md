# Verification target: Rat Init Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac6014d1e04fe7e570b331576e78d2306e8a677",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac6014d1e04fe7e570b331576e78d2306e8a677`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Classes.RatCast` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NNRat](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/nnrat.md) | 22 | `declaration-track:0458677a093fdef4eee0d6d15f7007fa49078e68606d13ff6a0030a697c354a7` |
| 2 | `class` | [NNRatCast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/nnratcast.md) | 37 | `declaration-track:a58ae8176c84a21752f9ae2f46441133bf019380f1e859ca530b7de5722e97c0` |
| 3 | `instance` | [NNRat.instNNRatCast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/nnrat-instnnratcast.md) | 43 | `declaration-track:f77da9fa4561a73bccd01419b83be551efb0e3cc64beb9e2aaa482570fd2d253` |
| 4 | `def` | [NNRat.cast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/nnrat-cast.md) | 50 | `declaration-track:445043dce93b1ff5e48f99bb1a355baf8f06c5e12191e5d7e658364cf03d3e1b` |
| 5 | `instance` | [NNRatCast.toCoeTail](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/nnratcast-tocoetail.md) | 53 | `declaration-track:de60315fe7c5bf69f04549fa3f66e5602687d0178be5914ec1dd8e97ee9f4c1d` |
| 6 | `instance` | [NNRatCast.toCoeHTCT](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/nnratcast-tocoehtct.md) | 56 | `declaration-track:cfb5625b434d9ff1a46cab85e0ea4d8209a50c834e5d79876fb906d8c48a70e8` |
| 7 | `instance` | [Rat.instNNRatCast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/rat-instnnratcast.md) | 58 | `declaration-track:22b7190f60621dd3abb5ed8c34617fb16965f2d7a393a545d99639c58a32be88` |
| 8 | `def` | [num](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/num.md) | 65 | `declaration-track:fc0b1b96c8bf06a1261ae1c5f22e1f7ac821dff738d2e6f37845d09ce2e707b4` |
| 9 | `def` | [den](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/den.md) | 68 | `declaration-track:ae330801ccfdbe9f0f217a80d2f8fc8479a3ce2385787118fc0714d7de5d5bda` |
| 10 | `lemma` | [num_mk](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/num-mk.md) | 70 | `result-track:29c04ba80671133bcd48607ab6a24f247a2033027eafd6164ec4c9c3a479e8d6` |
| 11 | `lemma` | [den_mk](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/den-mk.md) | 71 | `result-track:e80196bde23f55fd288c1276757d7c61cc462b3789f4535a335a2f8a2ec9e534` |
| 12 | `lemma` | [cast_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/cast-id.md) | 73 | `result-track:4c46abefb835a1f0630d6006acdef7b92d744247b113ac4ef764af7b0f06ed40` |
| 13 | `lemma` | [cast_eq_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/cast-eq-id.md) | 74 | `result-track:455fb01078cabecd661ccc25ab785a55db017d19d809b48c04155a5625062630` |
| 14 | `lemma` | [cast_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/cast-id-source-edition-2.md) | 80 | `result-track:c8aadf2a14c3422789feeede62b9db5733793756e0cb89e36546218a9e0de365` |
| 15 | `lemma` | [cast_eq_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitSourceEdition2.lean/declarations/cast-eq-id-source-edition-2.md) | 81 | `result-track:d57ccfb6a81ec7ff0fc0841c65c6f04ff4ef9f4112d957a6162b6195c6efd265` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b63f4ddd0a0a0b5d60a58f458ddc797a5a2092ce110da3ba59b6e3942196ef5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
