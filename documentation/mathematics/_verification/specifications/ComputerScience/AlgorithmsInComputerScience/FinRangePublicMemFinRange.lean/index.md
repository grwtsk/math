# Verification target: Fin Range Public Mem Fin Range

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e88ddc6baffe8cdb429ad8bcd5617ee0e6d41bf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant23534ca339ebcbbeaf9c15a8cd726fa1f7cdf4233e164500d12c31798432b541.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e88ddc6baffe8cdb429ad8bcd5617ee0e6d41bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant23534ca339ebcbbeaf9c15a8cd726fa1f7cdf4233e164500d12c31798432b541.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant23534ca339ebcbbeaf9c15a8cd726fa1f7cdf4233e164500d12c31798432b541.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Monadic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/finrange.md) | 28 | `declaration-track:21ff19ab18abcd75551f0f5ae5591040db57a1265cdf6e690d528d0b2e19aad0` |
| 2 | `theorem` | [length_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/length-finrange.md) | 30 | `result-track:3b4bc8cf256385fa4978c1359c432683b5299ffa32608105bb30de60a1754f0a` |
| 3 | `theorem` | [getElem_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/getelem-finrange.md) | 33 | `result-track:5892b43aed5552d2c52539337abed5ae8f26440d1844f4645f57b730a67045da` |
| 4 | `theorem` | [finRange_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/finrange-zero.md) | 37 | `result-track:064eadf11240b6fde100f37c9d0aaaa0c8adc5981c2c60b601a73dcbb2c70302` |
| 5 | `theorem` | [finRange_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/finrange-succ.md) | 39 | `result-track:74a0a201dded901cf15b298c1a24b03e96e877f3e95e84e1060adc24181c1e66` |
| 6 | `theorem` | [finRange_succ_last](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/finrange-succ-last.md) | 42 | `result-track:2598bac247a1b92589780750ed251d66c0a4a72749a81ec85a77cff0d0adaa1b` |
| 7 | `theorem` | [finRange_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/finrange-reverse.md) | 54 | `result-track:c63c9b98dc8871e650c6b406a367c0721ee3a18d35e7db9686d61aaa0273bc17` |
| 8 | `theorem` | [mem_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/mem-finrange.md) | 66 | `result-track:4440f142feaa501326a67eab3bb75979665bee482b499641f159632e16cfa9f4` |
| 9 | `theorem` | [foldlM_eq_foldlM_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/foldlm-eq-foldlm-finrange.md) | 73 | `result-track:2496eed895c346459fcbf6741c61718751ea6972eaef9780571b26174a72a7a1` |
| 10 | `theorem` | [foldrM_eq_foldrM_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/foldrm-eq-foldrm-finrange.md) | 83 | `result-track:7c245a62da59b1f4196c67da8887d7cf0f0fc314c696696106fe149d121d716f` |
| 11 | `theorem` | [foldl_eq_finRange_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/foldl-eq-finrange-foldl.md) | 90 | `result-track:4890df27c64b5fe1858727da23691cfa97fbdf1760303e731722ae0486ee482d` |
| 12 | `theorem` | [foldr_eq_finRange_foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/foldr-eq-finrange-foldr.md) | 97 | `result-track:5aec28d562aa76327725a75ceceb756e6a56d6fe69c3739e3be707681e783013` |
| 13 | `theorem` | [ofFnM_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangePublicMemFinRange.lean/declarations/offnm-succ.md) | 108 | `result-track:10d39c27a8642433095795f5de29765b935fc43fe81bbe326461868334dde116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=338148698ac7ec34d7e1d585f5fff8454cc3ab02ba24b2e4648e161acc4caf2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant23534ca339ebcbbeaf9c15a8cd726fa1f7cdf4233e164500d12c31798432b541.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant23534ca339ebcbbeaf9c15a8cd726fa1f7cdf4233e164500d12c31798432b541.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
