# Verification target: DFA

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed34913e94826d2991a74c19790ef5d8e2ac17e2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed34913e94826d2991a74c19790ef5d8e2ac17e2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Language` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Small` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/dfa.md) | 53 | `declaration-track:e05533628e876952ab8daa336cb2cf9f2687c6ca9a4f8188b13fa8e982740994` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/instance.md) | 65 | `declaration-track:99102a1f0df0bf6493f3a322f70c8d98b5259a113b97bbf05705d2deba439b93` |
| 3 | `def` | [evalFrom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom.md) | 69 | `declaration-track:9926cc651123c4975eae326cf6ef69b8aff561d394df2813081e354ff49bfed2` |
| 4 | `theorem` | [evalFrom_nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-nil.md) | 73 | `result-track:0069d4012e5171f9c9587fa508db3ae18e1c976f248ba43843487bc158e5daed` |
| 5 | `theorem` | [evalFrom_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-singleton.md) | 77 | `result-track:aff75fc3730958b37d19693aca77dff9cec14fd2dfa63003a01a7ce4008d2d95` |
| 6 | `theorem` | [evalFrom_append_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-append-singleton.md) | 81 | `result-track:ed8f4ac252894a81017a0353bec176b00ed413cf9010d690f85c586bc17eb608` |
| 7 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/eval.md) | 86 | `declaration-track:c02ed9ce8120da57e68178395e549b83b269d98f54d35b4fdb73283cb39bce33` |
| 8 | `theorem` | [eval_nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/eval-nil.md) | 90 | `result-track:eec7c74423bb9bb17f2fdbfe058e60c15fd34067d8bc6d88eca717989e589a74` |
| 9 | `theorem` | [eval_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/eval-singleton.md) | 94 | `result-track:0910ea3d59871fb86c6f0b3b456c0e13849ea14413537caffe5ef1dd07707f44` |
| 10 | `theorem` | [eval_append_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/eval-append-singleton.md) | 98 | `result-track:803456fda992bd8087a825b897d66d48d33a4ff325d7355c186ce416743bc056` |
| 11 | `theorem` | [evalFrom_of_append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-of-append.md) | 101 | `result-track:fbdedd4c06e01fbfe928b8b3943afe9c03e67bb29a2d94fd9caaae34b31868ef` |
| 12 | `def` | [acceptsFrom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/acceptsfrom.md) | 108 | `declaration-track:67f01f78196a867635f6594eceed01d4d46514cdf89cb7fde03061089c450110` |
| 13 | `theorem` | [mem_acceptsFrom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/mem-acceptsfrom.md) | 110 | `result-track:33225dcdc1d67aac42fa58a376ffae52fb7da38df62dc540c7a1b60642cc16db` |
| 14 | `def` | [accepts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/accepts.md) | 114 | `declaration-track:647a506723afe2de82ff1815c85948026e60adf709f755cca311585ac173011f` |
| 15 | `theorem` | [mem_accepts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/mem-accepts.md) | 116 | `result-track:4be162cb6840fbeafe597e2bbf9c1ea43dee29b3bdd1d9ef3d3e588a722522b3` |
| 16 | `theorem` | [evalFrom_split](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-split.md) | 118 | `result-track:3311eb0faadc25a33f7f2f5057bc08bbff5d14c054f25398078083bfa02acefe` |
| 17 | `theorem` | [evalFrom_of_pow](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-of-pow.md) | 153 | `result-track:6e96bcaffcaa2660500aebb25069129d93d694b6bf7e7dfede651f432d9b563b` |
| 18 | `theorem` | [pumping_lemma](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/pumping-lemma.md) | 166 | `result-track:7ed9a3bbb7f54ff5d784dcb4bb290738a03648f5c6e874dcc1f5bed20744046b` |
| 19 | `def` | [comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/comap.md) | 192 | `declaration-track:ccb2d8c8242e74a33e45d067917a6ed1bc8d977a9069a28839e3cc91860ec47c` |
| 20 | `theorem` | [comap_id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/comap-id.md) | 198 | `result-track:3314ef87d5a3ec15fa7d2143c51c910a507c61a787b5fad8170903204cec12c1` |
| 21 | `theorem` | [evalFrom_comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-comap.md) | 201 | `result-track:e4aaed5e63caf66659adc7e1b46a92def5871dab74bf89df4b74b7fd98d87abc` |
| 22 | `theorem` | [eval_comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/eval-comap.md) | 208 | `result-track:51e78a8ca984308419e79f62fa01b6bdfdd07bb630ad71265fb9592ad5e4b291` |
| 23 | `theorem` | [accepts_comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/accepts-comap.md) | 212 | `result-track:8bec46a369932da027fbc71d83ed01ec1f07f5385725187dd87b654f5ef7b6c9` |
| 24 | `def` | [reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/reindex.md) | 221 | `declaration-track:2a58c475c236d2ec34693ab1bfda682e3c8a81dafde9cf14917754549808ca6c` |
| 25 | `theorem` | [reindex_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/reindex-refl.md) | 236 | `result-track:dc8b17c3242aba288ccdb76ab822f51ffdaf6f8a5fcf4379189c442341372585` |
| 26 | `theorem` | [symm_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/symm-reindex.md) | 239 | `result-track:5064edf419953de4eab4dc03a56f4abca66b45d3d85ff0f2192935fe86a2bb5d` |
| 27 | `theorem` | [evalFrom_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/evalfrom-reindex.md) | 242 | `result-track:3faf93859a2d6d67870aafa49b725d1f6c66bc0ec1d331378c5bf4cd6d626cad` |
| 28 | `theorem` | [eval_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/eval-reindex.md) | 249 | `result-track:de9972e6f9b397ae9a72777fd085e7b283e7f87b632716d9874504d06474b2ba` |
| 29 | `theorem` | [accepts_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/accepts-reindex.md) | 253 | `result-track:cd9489aa34427f15181ae2395e858938acc19f3af3ec66e58f366984033f3ed0` |
| 30 | `theorem` | [comap_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/comap-reindex.md) | 257 | `result-track:c640b1a92a1ecf2e49845a792b5c50a9899e347328059118fbf7d41b2382e877` |
| 31 | `def` | [Language.IsRegular](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/language-isregular.md) | 266 | `declaration-track:7536aa65230a3166cd9d16453c8b43c1bc7bf49f56d63c2495bd8bb5c3d38aa4` |
| 32 | `lemma` | [Language.isRegular_iff.helper.](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/language-isregular-iff-helper.md) | 270 | `result-track:6e75bd912c57ce748d3d54524c136471b77d6b2860fc96cc7dbd8f1e035d3013` |
| 33 | `theorem` | [Language.isRegular_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFA.lean/declarations/language-isregular-iff.md) | 283 | `result-track:64d207551092d272bbe9207825b86eb7d7f925ef5ea73494ea91b9173a18ddb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e85817bda0ab6d0f69715f2734dc0f71ad8bd5fa773f8b75a72ad544ef550d1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
