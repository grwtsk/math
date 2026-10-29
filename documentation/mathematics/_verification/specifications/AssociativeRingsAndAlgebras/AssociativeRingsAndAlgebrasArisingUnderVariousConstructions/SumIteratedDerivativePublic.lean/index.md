# Verification target: Sum Iterated Derivative Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b10926ef147184105b435a55d4444f343c388ab8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b10926ef147184105b435a55d4444f343c388ab8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumIDeriv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv.md) | 62 | `declaration-track:21b839741a655316ec6756389383ae32952b7b7fbac36cd03163a854e753452b` |
| 2 | `theorem` | [sumIDeriv_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-apply.md) | 65 | `result-track:9a202c63572e106eafee99dfc1daf2e798964709fb6ed5438230dd42a818a982` |
| 3 | `theorem` | [sumIDeriv_apply_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-apply-of-lt.md) | 70 | `result-track:73647b44d073aaed7f7f79c47aa600ae7b2d1b4095fe0257fa59ad3beec45352` |
| 4 | `theorem` | [sumIDeriv_apply_of_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-apply-of-le.md) | 75 | `result-track:bf2d5612ed40bc54856de4a8141289f3606781e09a6bb766d376cb4d7b4d302b` |
| 5 | `theorem` | [sumIDeriv_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-c.md) | 81 | `result-track:f29869c4a241df4b1ec27eb758e570dc2e7e2ef7556bba8835f9d2da4e2e6aa0` |
| 6 | `theorem` | [sumIDeriv_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-x.md) | 85 | `result-track:9301812fc4d0ecb7f2492faca2387e6e4466148c34a38ca2e0aad96088103b07` |
| 7 | `theorem` | [sumIDeriv_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-map.md) | 90 | `result-track:e8e49a68627cc2102a26ff6dfd23d8d00f6d6bcf83097019087ac052bce08901` |
| 8 | `theorem` | [sumIDeriv_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-derivative.md) | 97 | `result-track:67fe675f802ee922b3ea39c051f9e5cbf7c783d576d88e071e30e6ddb7d92ba1` |
| 9 | `theorem` | [sumIDeriv_eq_self_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/sumideriv-eq-self-add.md) | 102 | `result-track:36b54983a7f5f48b9b6a94a54a7673aa42cf5722cca39a6dae1b533689b86d74` |
| 10 | `theorem` | [exists_iterate_derivative_eq_factorial_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/exists-iterate-derivative-eq-factorial-smul.md) | 108 | `result-track:5dd39c1f02c3189baae40dc2034346528ffece6996b40cacfe04d2f9adc9bd63` |
| 11 | `theorem` | [aeval_iterate_derivative_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/aeval-iterate-derivative-of-lt.md) | 123 | `result-track:b688bd790deac69d7656de06f3edb48d5d80d6c330611078fbc4697dafb340cc` |
| 12 | `theorem` | [aeval_iterate_derivative_self](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/aeval-iterate-derivative-self.md) | 135 | `result-track:4701ba24b6e87464370602a15b19d5a2088dfce366c7b0d86caccbcb948bb8a6` |
| 13 | `theorem` | [aeval_iterate_derivative_of_ge](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/aeval-iterate-derivative-of-ge.md) | 156 | `result-track:5ed8e7f7cac99c5569ac0f52a6053dfcf4e3cf7cea76589dd97409bc967a72e2` |
| 14 | `theorem` | [aeval_sumIDeriv_eq_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/aeval-sumideriv-eq-eval.md) | 165 | `result-track:54007c441b462461a14c0de6eba4b0d7f497da8831bae6765e3a9952369f0c82` |
| 15 | `theorem` | [aeval_sumIDeriv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/aeval-sumideriv.md) | 169 | `result-track:f6842c32ddb72641914c37f189606224ab40b4957b8567d4457f8e16983c1e67` |
| 16 | `theorem` | [aeval_sumIDeriv_of_pos](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/aeval-sumideriv-of-pos.md) | 196 | `result-track:e9226c675e3c065a926cfd6a982db6020ebc64eec412bafdd7217ba2596fa338` |
| 17 | `theorem` | [eval_sumIDeriv_of_pos](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/SumIteratedDerivativePublic.lean/declarations/eval-sumideriv-of-pos.md) | 257 | `result-track:31e68ee598a49d3d2f681e107a89d626fcf46293d273d3defacb5a24ed997b80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c98f1b3f0f1acfbabaae46fbecd2de5ac64c3b858bc95b2d33445861c779dda7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
