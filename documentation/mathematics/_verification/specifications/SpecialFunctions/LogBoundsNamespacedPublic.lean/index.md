# Verification target: Log Bounds Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2603dacb1918ace6b6675b765e8bd197bd328aff",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LogBounds/Variant6efcc766d3203c115de37af6b147d21b7bc576184edd9be030cb2c90dd283485.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2603dacb1918ace6b6675b765e8bd197bd328aff`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LogBounds/Variant6efcc766d3203c115de37af6b147d21b7bc576184edd9be030cb2c90dd283485.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LogBounds/Variant6efcc766d3203c115de37af6b147d21b7bc576184edd9be030cb2c90dd283485.lean.json)

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
| 1 | `lemma` | [pow_div_one_sub_le_two_mul](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/pow-div-one-sub-le-two-mul.md) | 35 | `result-track:631b5afc0b8f02b54ba7461d2b8cb0becebc2d3808a6e11fe2dd3d1203376db1` |
| 2 | `lemma` | [neg_log_one_sub_eq_tsum](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/neg-log-one-sub-eq-tsum.md) | 50 | `result-track:25d3732b6cfec5b63bda30049866a05eb519e953704f91017dcc697ad456b4df` |
| 3 | `def` | [partialLogSum](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/partiallogsum.md) | 58 | `declaration-track:93e1ae639cc0907bc10aee92c11fc5c3667a804a750e2378cfeacc1e08da93ef` |
| 4 | `lemma` | [partialLogSum_zero](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/partiallogsum-zero.md) | 62 | `result-track:6bd677bb1a87c28487767cb6dc6dd0b932c7fd6730c26b3ace43b0672e9282f5` |
| 5 | `lemma` | [partialLogSum_at_zero](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/partiallogsum-at-zero.md) | 66 | `result-track:32506c087fc62ea353a076b9ac9f5f42288da6c123c1b377892585ebb825663b` |
| 6 | `lemma` | [logTaylor_succ_neg](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/logtaylor-succ-neg.md) | 69 | `result-track:73022df72179ecf9ef1579e4ead94b7f93f3ea91025e5a22fffebf0922b84b6b` |
| 7 | `lemma` | [partialLogSum_succ](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/partiallogsum-succ.md) | 86 | `result-track:bdfdde2ceee7c0983f50d872fa0449d9b08e3f531a364f964122162457225a7e` |
| 8 | `lemma` | [logTaylor_neg_eq_neg_sum](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/logtaylor-neg-eq-neg-sum.md) | 93 | `result-track:44ac0d8b815b921f98979c96dccf494c12ea3e0d542e8c5a03f161079035cb3f` |
| 9 | `lemma` | [partialLogSum_eq_sum](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/partiallogsum-eq-sum.md) | 106 | `result-track:f8b1c0003283b6983b5a5320596e7a0338f36379a14ac2d8f54acc1f0d93ed2b` |
| 10 | `lemma` | [hasDerivAt_partialLogSum](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/hasderivat-partiallogsum.md) | 110 | `result-track:af7cd70e74722f71ca225af0e25be936657cf2c81ebca0f4e1c8762836c72c22` |
| 11 | `lemma` | [differentiable_partialLogSum](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/differentiable-partiallogsum.md) | 135 | `result-track:14891347a83391b7fe2623e00236c7c3f245180bf4fca4ed9775210a1e892bae` |
| 12 | `def` | [logTail](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/logtail.md) | 142 | `declaration-track:23bc38c012e6c23bece23c81d9f8ff06ae632e6d3611de5de4e0a4a41763257f` |
| 13 | `lemma` | [summable_logTail](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/summable-logtail.md) | 145 | `result-track:04ae32cbeb0f63fadf0ddc97bbb2f4cbf769900c9f2240dcedf9fc1f023cd8c9` |
| 14 | `lemma` | [norm_logTail_le](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/norm-logtail-le.md) | 171 | `result-track:17e8e596b8b5bf57b2aebc6cedbccb566cfbe9cb74b1fc97ba185063b409d1ba` |
| 15 | `lemma` | [norm_logTail_le_two_mul_norm_pow](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/norm-logtail-le-two-mul-norm-pow.md) | 214 | `result-track:7a8754bba85e4c6a10224812485144d33afe1048508a228b62e3e76d2c26fbbb` |
| 16 | `lemma` | [norm_partialLogSum_le_nat_mul_max_one_norm_pow](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/norm-partiallogsum-le-nat-mul-max-one-norm-pow.md) | 218 | `result-track:3e69f7725c1789148f580c1bf4b8d82f416a145350239a51d748f26b4017f44e` |
| 17 | `lemma` | [neg_log_one_sub_eq_partialLogSum_add_logTail](../../../../SpecialFunctions/LogBoundsNamespacedPublic.lean/declarations/neg-log-one-sub-eq-partiallogsum-add-logtail.md) | 256 | `result-track:e31967b4762bd983610cf68dea863b33e7156f14f106e2e6e5e9b33788d1c846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f35a924633ecae55e07139bcc6601e4e0aa915171c0414935c426618c69231e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/LogBounds/Variant6efcc766d3203c115de37af6b147d21b7bc576184edd9be030cb2c90dd283485.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/LogBounds/Variant6efcc766d3203c115de37af6b147d21b7bc576184edd9be030cb2c90dd283485.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
