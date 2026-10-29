# Verification target: NFANamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa8c80ce31387ead641d9c2750f6e971243ce41",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa8c80ce31387ead641d9c2750f6e971243ce41`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.DFA` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/nfa.md) | 38 | `declaration-track:110ae2851dda120776cae8bf8f9107af8eb80c2d9fc2eb9c5c4258e3abe354a4` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/instance.md) | 50 | `declaration-track:4fb64ac8a54fd386543768ff8c3b276195cd3648e71cbc50ee75dbd1d33f3b17` |
| 3 | `def` | [stepSet](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/stepset.md) | 55 | `declaration-track:4d6a4b8888a10984b9142195a6498669e4d678ba6b63f012d4b62edae9f9fd9b` |
| 4 | `theorem` | [mem_stepSet](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/mem-stepset.md) | 58 | `result-track:d1a7f35d27ad6e0e4997c76e704c9613dfea967295f719d787be1aa0a0eb358a` |
| 5 | `theorem` | [stepSet_empty](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/stepset-empty.md) | 63 | `result-track:caa93997438a0a66beb246099a3b28761ff972560b1e5f23184d7d868a6158ec` |
| 6 | `def` | [evalFrom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/evalfrom.md) | 68 | `declaration-track:b209ad62dd99e6e983a829ec7f69185f4bbb121d9c700a7c8c4c5fc1313beb65` |
| 7 | `theorem` | [evalFrom_nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/evalfrom-nil.md) | 73 | `result-track:92d03cc4d2d29506b880695cc7161e578ba5ed444f27451ba9e0746b833f6663` |
| 8 | `theorem` | [evalFrom_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/evalfrom-singleton.md) | 78 | `result-track:eac44c949ee046179cc41b54a82705000b2cf2c1c4a527488af7209033b8f0af` |
| 9 | `theorem` | [evalFrom_append_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/evalfrom-append-singleton.md) | 83 | `result-track:63fbfe9306d0451eceb3ad496565eed1e71c161d08dd8a8a85e15b79f2ecc797` |
| 10 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/eval.md) | 90 | `declaration-track:960a253970b925955e44d6e5efa18f44904927c072845992330dfb466d655b3b` |
| 11 | `theorem` | [eval_nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/eval-nil.md) | 95 | `result-track:5c851fd6bf869a36b9bd3be7bba7ddf50e0069b18915f53350250adf0ff1e3f0` |
| 12 | `theorem` | [eval_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/eval-singleton.md) | 100 | `result-track:d96c5828791aa10cc897b1d6f4b6bfd6092f1d1c3694bfe780b9ea04c613ef83` |
| 13 | `theorem` | [eval_append_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/eval-append-singleton.md) | 105 | `result-track:4e4f8b1ef6a6ef5388977c7584ca08194cdcb09b35553160440ebc761ed1e7ca` |
| 14 | `def` | [accepts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/accepts.md) | 110 | `declaration-track:6bb021be3e0d90350e6e3b8edc2126963239c09cddb2d8d12de7d56567b5ec81` |
| 15 | `theorem` | [mem_accepts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/mem-accepts.md) | 112 | `result-track:350b8d3ef6c885c53d77ad26dfbcada2e4be5a6998251f0cba05e1c9141eb98d` |
| 16 | `def` | [toDFA](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/todfa.md) | 118 | `declaration-track:e843d8445683b8ec6c8971c1d8fd3269e56845d48c21792b006ed00eecaa081c` |
| 17 | `theorem` | [toDFA_correct](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/todfa-correct.md) | 124 | `result-track:ac38bb2fb6070d15c317f4fb3b2ecb1e98159b37ce6edd2aa2e4867ce8e3081a` |
| 18 | `theorem` | [pumping_lemma](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/pumping-lemma.md) | 129 | `result-track:9b7dbe89921c345c4eb97470bdd5fcfc0180b2efb3a4d1be80f75af5f436faaf` |
| 19 | `def` | [toNFA](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/tonfa.md) | 143 | `declaration-track:229dc9b8a75569aa776cae9e1f9046f7bd7a5d6bb2e69dc55810d7be8b522013` |
| 20 | `theorem` | [toNFA_evalFrom_match](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/tonfa-evalfrom-match.md) | 149 | `result-track:000850e95e7d6544263cc9afb0a884ac1bdb8746946aa527d27f8c92d70e4620` |
| 21 | `theorem` | [toNFA_correct](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/tonfa-correct.md) | 159 | `result-track:a5bd1c2384e85a5c9759690a739abfd493610618f5f99504c439f84e8369894e` |
| 22 | `def` | [reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/reverse.md) | 175 | `declaration-track:82b4aaf1ca58ac0388297eff91865d1a276b9480ba16329937e85beede17e499` |
| 23 | `theorem` | [reverse_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/reverse-reverse.md) | 182 | `result-track:2f54afdd7ecb104680b8d48c500676814608a8fc00e57352f61cf9c015185618` |
| 24 | `theorem` | [disjoint_stepSet_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/disjoint-stepset-reverse.md) | 185 | `result-track:c1d93f0592d29c7d92e600fc377cfe999ecd6eaf08f3a15a22979b1d35d28a40` |
| 25 | `theorem` | [disjoint_evalFrom_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/disjoint-evalfrom-reverse.md) | 191 | `result-track:5afbd94b5d012c61125442a9863678d1e8fe169b5f1cdf5f028def75527c7452` |
| 26 | `theorem` | [disjoint_evalFrom_reverse_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/disjoint-evalfrom-reverse-iff.md) | 203 | `result-track:73d4b02efaf8dee92d052741ed0125b4abc692d7f18cb7b6751c1efa5c450399` |
| 27 | `theorem` | [mem_accepts_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/mem-accepts-reverse.md) | 208 | `result-track:e56aa7195f2ed7b774eb27098c4b79456de3d8c61e7f109509083893037c9bd0` |
| 28 | `theorem` | [IsRegular.reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/isregular-reverse.md) | 215 | `result-track:f56a51345fda7e059a9c8f3e0fb3eeb39c4d39cfcdbbe29662dcb5dd9392b8d7` |
| 29 | `theorem` | [IsRegular.of_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/isregular-of-reverse.md) | 219 | `result-track:8be623ec6487ac42edd755679445a5b57c8e93f174bab0862189765ee0d6cf9c` |
| 30 | `theorem` | [isRegular_reverse_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/declarations/isregular-reverse-iff.md) | 224 | `result-track:e839e32c9df2eddcdfec7b0613688ee71bb6f00e853c6457ac1370f6d8ccf269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ff05e5d4a293631e040be03196edf83d44d1804387271310d1c6b89dfea2b61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
