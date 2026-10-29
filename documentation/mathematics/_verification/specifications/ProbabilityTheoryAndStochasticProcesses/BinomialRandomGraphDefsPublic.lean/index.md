# Verification target: Binomial Random Graph Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96732967a25ac0797fe8104aee5468a5a7804b03",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96732967a25ac0797fe8104aee5468a5a7804b03`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomialRandom](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/binomialrandom.md) | 46 | `declaration-track:8ee959bbde3184754a20e03a78a4aa5dc439e04da324b3869e58639bbd8025e8` |
| 2 | `lemma` | [binomialRandom_eq_map](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/binomialrandom-eq-map.md) | 55 | `result-track:002c0123dd859aa1100a2776c7ff06fda515e225511fb9305c1ca851a0b923dc` |
| 3 | `lemma` | [binomialRandom_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/binomialrandom-apply.md) | 62 | `result-track:503140079c20c6a45af42e0284b3d231d309b1265dd2e47f0b69e2e55b5753a1` |
| 4 | `lemma` | [binomialRandom_apply](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/binomialrandom-apply-source-edition-2.md) | 67 | `result-track:600af90d918c180c5bb0584853f1c6115e6419e4b8a5676ef28d015516a1a10b` |
| 5 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/instance.md) | 72 | `declaration-track:6aa65cdaac63965ae1a331af7ef28e7ebdebe01ee8f33dc999779cdbe71d50e9` |
| 6 | `lemma` | [binomialRandom_zero](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/binomialrandom-zero.md) | 79 | `result-track:5935ab08f82d1d8b776149392f07a9b667663204cf2f4c8f65c709d467979ab3` |
| 7 | `lemma` | [binomialRandom_one](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/binomialrandom-one.md) | 82 | `result-track:c91b7a9615d5ebd2b4bd4c432f6f0ab8014d19c58b15ab30bf96aded87a4ff9d` |
| 8 | `lemma` | [binomialRandom_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialRandomGraphDefsPublic.lean/declarations/binomialrandom-singleton.md) | 87 | `result-track:1c95d459709f00490343a7e41d824b5085b6943e6f6eb7b39ef80372cf72d6df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1fee361b517d30700a42fc035e5caa562f0beb46e4e134504b87220c9d919b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
