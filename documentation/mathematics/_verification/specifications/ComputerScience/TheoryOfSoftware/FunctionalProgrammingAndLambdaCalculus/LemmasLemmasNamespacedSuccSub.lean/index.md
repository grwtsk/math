# Verification target: Lemmas Lemmas Namespaced Succ Sub

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e683dd2f778065695e870d61e32db854679ce7bf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8e77debf7f8dd857a5780547e98543f1fce5bb0153a0084643d935c616a16d71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e683dd2f778065695e870d61e32db854679ce7bf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8e77debf7f8dd857a5780547e98543f1fce5bb0153a0084643d935c616a16d71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8e77debf7f8dd857a5780547e98543f1fce5bb0153a0084643d935c616a16d71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Logic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [succ_sub](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/succ-sub.md) | 18 | `result-track:518016e5f5157ce272cc85c69ec92e5a0f4fd8abea2fdc0ad7b29cf1ad263a02` |
| 2 | `theorem` | [sub_le_sub_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/sub-le-sub-right.md) | 22 | `result-track:ae688c8fcd82d2d1cb9ec0f6b680c6892b30a0d189bcdd0dc5484f677c01a5d5` |
| 3 | `theorem` | [sub_lt_left_of_lt_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/sub-lt-left-of-lt-add.md) | 26 | `result-track:224f2c8420f20df4f5c43f355c5725769851e6b9671e4d5c0edfed630f3699ff` |
| 4 | `theorem` | [sub_lt_right_of_lt_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/sub-lt-right-of-lt-add.md) | 30 | `result-track:e077bd323d8c1f67991403365968e37610215882524fde822ebf88bcbd95a5d0` |
| 5 | `theorem` | [pos_of_ne_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/pos-of-ne-zero.md) | 33 | `result-track:df87f86600b8b6f1b2f38ada457226e597b5a856d4d97955ad5af0ce47d0e713` |
| 6 | `theorem` | [min_eq_min](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/min-eq-min.md) | 35 | `result-track:240e4751c9fd2a4958c7777d537b962c7e746bc8e084f1736536009b98cc82c9` |
| 7 | `theorem` | [max_eq_max](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/max-eq-max.md) | 37 | `result-track:6eda4cfa0ac920d4837547960d64fdea911c40af66a95f6811039ad5c325da53` |
| 8 | `theorem` | [min_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/min-comm.md) | 39 | `result-track:2729acc5f8d66ebdb4b9365e578b00eaf27d839f3fb43d4332caa34685f68cea` |
| 9 | `theorem` | [min_le_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/min-le-right.md) | 44 | `result-track:51850d0e10f395b4f99fe146968c8f7baa2c05786f09b21a208bd38a5718ccb4` |
| 10 | `theorem` | [min_le_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/min-le-left.md) | 46 | `result-track:dfdc47f2f2742ed45ecfdc13f95b5ac6f31d00db200d90b8585ffceaab4fa2ac` |
| 11 | `theorem` | [min_eq_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/min-eq-left.md) | 48 | `result-track:4cdb25d5ba6493898ce05e9cda4e00f5547640b7f706fdaddf23f867605dab24` |
| 12 | `theorem` | [min_eq_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/min-eq-right.md) | 50 | `result-track:815a7e7c938e81d43dafac5750680069f83aea25990bfa3e14d01f243d2708c3` |
| 13 | `theorem` | [max_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/max-comm.md) | 53 | `result-track:7198b021ef66d36a4c8df2f2a5c06996489ac59fe1f4fd66a841e122743f8788` |
| 14 | `theorem` | [le_max_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/le-max-left.md) | 59 | `result-track:3e424f5a9ff41deb92a19753142c3e2e8cd9c79eb4bb90061bd1ed262ddc1ecf` |
| 15 | `theorem` | [le_max_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/le-max-right.md) | 61 | `result-track:5b8b93fa1820aafd1c8ef5e5bdc8932c2ffe700bff57a2b360b790bd97b69eca` |
| 16 | `theorem` | [pow_two_pos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/pow-two-pos.md) | 63 | `result-track:b852b03e559609b03a88b43c8c2ff2d98713c4163bccba262d8bde48c7c3a68c` |
| 17 | `theorem` | [not_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/not-le.md) | 65 | `result-track:6576f0ace4f636b4c10960f8cbf8c7efdc4f117066a865352e8aa7f0c03cbbbb` |
| 18 | `theorem` | [not_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/not-lt.md) | 68 | `result-track:92ca45814260c072f9e76187a178d5b1b8ef071bee04f032c855e1f877e00353` |
| 19 | `theorem` | [le_min_of_le_of_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/le-min-of-le-of-le.md) | 71 | `result-track:df988698143f072a177898467709e96f193a1069b922f53a37498fb1840a3090` |
| 20 | `theorem` | [le_min](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/le-min.md) | 76 | `result-track:ff16b4b52ddaa6717bbdcef7f8a1092baa225b89912759474d4a05303d45896c` |
| 21 | `theorem` | [lt_min](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedSuccSub.lean/declarations/lt-min.md) | 80 | `result-track:7e32a9142fd9b400861e2712b9d05bb709b538570a944e378e09524ad238ee1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8f6d4d180457822e6f1a17420446201380447a80ab8e4ccf16518ab0d44ad34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8e77debf7f8dd857a5780547e98543f1fce5bb0153a0084643d935c616a16d71.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8e77debf7f8dd857a5780547e98543f1fce5bb0153a0084643d935c616a16d71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
