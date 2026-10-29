# Verification target: Power Series Evaluation Evaluation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e4a47c6184849fd3a43cb0d4dc9a92e3c1fb61c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant153b4c4204923f5cc6de9f9ad3e27e22454a7a5b3e92c8047edb9ce8475c86d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e4a47c6184849fd3a43cb0d4dc9a92e3c1fb61c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant153b4c4204923f5cc6de9f9ad3e27e22454a7a5b3e92c8047edb9ce8475c86d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Evaluation/Variant153b4c4204923f5cc6de9f9ad3e27e22454a7a5b3e92c8047edb9ce8475c86d2.lean.json)

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
| 1 | `abbrev` | [HasEval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-source-edition-2.md) | 61 | `declaration-track:9f7065d4abb1dd6b98ab1db1ef1a09a66d8cc320c4ab2fbfbcf0bc3a4a09c73a` |
| 2 | `theorem` | [hasEval_def](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-def.md) | 63 | `result-track:2b7bff2ba0c4b0ab15de9ee82e54779f6d9ed775e6afca9ddf0dc1ea512c6ee3` |
| 3 | `theorem` | [hasEval_iff](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-iff.md) | 65 | `result-track:8c3e7720ec6009fec6d1d294d7e2ef14349c5875ae7ebc5e25b1f57bcb397947` |
| 4 | `theorem` | [hasEval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval.md) | 69 | `result-track:58f66d00c06bfc76fc13ff27b57c548ab449a56fb0465118405eab4cb697dc91` |
| 5 | `theorem` | [HasEval.mono](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-mono.md) | 72 | `result-track:5468c1794f92b0089bc1f22ac06bc2cffbde4a780fa6f7b9176ab7eb1f0748fe` |
| 6 | `theorem` | [HasEval.zero](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-zero.md) | 78 | `result-track:195ca8a0cafcf329091677222e877ffea99929544616e1684a85008f33e51e1c` |
| 7 | `theorem` | [HasEval.add](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-add.md) | 81 | `result-track:dffd488a552c9f538dcb55b1f59befff92e7b5a34dd9880becb1e70edb30f670` |
| 8 | `theorem` | [HasEval.mul_left](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-mul-left.md) | 86 | `result-track:9ee463b032635afccb67279c8f6f3ed7518b5a8f28ced7a43346a632630b6b69` |
| 9 | `theorem` | [HasEval.mul_right](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-mul-right.md) | 91 | `result-track:f6037e6c1d4052bcd63e89dee3f57f86a6b14235b05068f4dc3416ee903d5783` |
| 10 | `theorem` | [HasEval.map](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-map.md) | 97 | `result-track:ee5f7bc099bb7688fe5d867292975b9658983829c56ccaa0b3f5586b250e6f27` |
| 11 | `theorem` | [HasEval.X](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-x.md) | 102 | `result-track:e2f2b4054f8a8c214902d599c672c8f72c0d37bf1d508e1e30e4fa6253db8433` |
| 12 | `def` | [hasEvalIdeal](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/hasevalideal.md) | 112 | `declaration-track:9631a9770710a35db7cb82f370d26fd22c08a6d9a8d50e866a68fe43ffaa2c19` |
| 13 | `theorem` | [mem_hasEvalIdeal_iff](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/mem-hasevalideal-iff.md) | 118 | `result-track:c96533bcd90c25d6b5ce672a8c84f145adbb433342ea13cc757fd25e94639198` |
| 14 | `def` | [eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/eval.md) | 132 | `declaration-track:489c7e3eef3115d5099f376e3de381c22fe5f6cd43ab81f647947fb3f51835cd` |
| 15 | `theorem` | [eval₂_coe](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-coe.md) | 136 | `result-track:b772fd67f7e12baa99151dbb173d902e90950a477c84fa1939dff3821c97a4bf` |
| 16 | `theorem` | [eval₂_C](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-c.md) | 142 | `result-track:f66d9c3ae479fd431aff4daa2574f86718fc3bd6bbb8f8470d2abf47d52bdf0b` |
| 17 | `theorem` | [eval₂_X](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-x.md) | 147 | `result-track:135df40de813cc52a790fb76b73a74e22a80600f721b4e79294575644403d876` |
| 18 | `def` | [eval₂Hom](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-hom.md) | 158 | `declaration-track:92b7b3667099b6e8c7a567b7b3c5159881ba9eeb1f472c9c3d1f0190e623900d` |
| 19 | `theorem` | [coe_eval₂Hom](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/coe-eval-hom.md) | 162 | `result-track:84519810ee8449cca8bfccfa61b7a5b3ad3953caf12be71e5a1341167341aa6f` |
| 20 | `theorem` | [uniformContinuous_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/uniformcontinuous-eval.md) | 169 | `result-track:4e3dfcd5e8ab695166f2bd183567c6a4718d1627810b43b4933b765da8c580d3` |
| 21 | `theorem` | [continuous_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/continuous-eval.md) | 173 | `result-track:57c1d8dd89a18b3174afc264959d17af5773d0c6ebf05c3c1f885e34fdced250` |
| 22 | `theorem` | [hasSum_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/hassum-eval.md) | 177 | `result-track:67831be0707f06bfe7803f01ec3b942f5cc06836f5942752e9094669eb2a365d` |
| 23 | `theorem` | [eval₂_eq_tsum](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-eq-tsum.md) | 186 | `result-track:7b9173b407f3634f9acba80ce160c2988ba88fb47587a6924364831d7ce3f6a7` |
| 24 | `theorem` | [eval₂_unique](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-unique.md) | 191 | `result-track:be9d0de81e7d408f23f8050d897b5e0e673603562efc96738b9efa9c257e2b77` |
| 25 | `theorem` | [comp_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/comp-eval.md) | 198 | `result-track:a79ca44efc378b310b002f1f627e62892c31f8454bac4db0fd2a2569a8623a95` |
| 26 | `def` | [aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval.md) | 211 | `declaration-track:75bc1a5813ceda15a4a52aa079ed8df30740613fc67d42d2e2cc3e014ce0783e` |
| 27 | `theorem` | [coe_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/coe-aeval.md) | 215 | `result-track:aa9b101330814a5daa0406c49e89ea62bc9abefe0204b5ea1b0aa6a4b1ac15ec` |
| 28 | `theorem` | [continuous_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/continuous-aeval.md) | 219 | `result-track:ff38f8d3be99bb3c4065ec7bcdfc7aef0f3a941b281913f937194ca16eacfa50` |
| 29 | `theorem` | [aeval_coe](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval-coe.md) | 224 | `result-track:fd00022bbeae8ec0f15be39bcf3c386668c4b8b05e22d3e41dd1ddaec4d92b07` |
| 30 | `theorem` | [aeval_unique](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval-unique.md) | 228 | `result-track:d694ab05280e7b3f9157777f88fbe2423efbdde903ec2c84b2e1532e0c09f4ac` |
| 31 | `theorem` | [hasSum_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/hassum-aeval.md) | 232 | `result-track:bf3385a07f5c8d8da2ed77321d8b34633dd180c10707ec66b6049e8f8e94ed91` |
| 32 | `theorem` | [aeval_eq_sum](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval-eq-sum.md) | 237 | `result-track:ff10fcde9461a350fba20081829b7cdb3c2bff825479a71b577e8735757d76cf` |
| 33 | `theorem` | [comp_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/declarations/comp-aeval.md) | 241 | `result-track:66ae5698eea79bd7fe2b17a2618415cf77efad732ba82c381b710f75cf322db3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fccdfc9a15380bfd98b489685a0c297d33a4d66df2c95674117c8d412621b1dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant153b4c4204923f5cc6de9f9ad3e27e22454a7a5b3e92c8047edb9ce8475c86d2.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Evaluation/Variant153b4c4204923f5cc6de9f9ad3e27e22454a7a5b3e92c8047edb9ce8475c86d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
