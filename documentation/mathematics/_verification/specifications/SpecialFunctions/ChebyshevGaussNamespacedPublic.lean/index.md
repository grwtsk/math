# Verification target: Chebyshev Gauss Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f869b880aa9d5c6e2858410bad54b3e07bc8ad22",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f869b880aa9d5c6e2858410bad54b3e07bc8ad22`.

Source path: `GRWTSK/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Polynomial` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exp_sub_one_ne_zero](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/exp-sub-one-ne-zero.md) | 47 | `result-track:9de404ec7e0420dee27a1915571e8689543cbb6144283771c5b2a86e8152e8ca` |
| 2 | `theorem` | [sum_exp](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/sum-exp.md) | 56 | `result-track:6ff256f59ab63b2b6f07dfead831d6fe302c406bcd385abcfebe5da7eb002ed1` |
| 3 | `def` | [sumZeroes](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/sumzeroes.md) | 76 | `declaration-track:8ec271045e00f358ffafac31bb139a938f18fa8b99a2926bd0f20908b5de1b1d` |
| 4 | `theorem` | [sumZeroes_sum](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/sumzeroes-sum.md) | 80 | `result-track:6b1b5233e9801e47e14b8ccf1612549a0534c09544a766f9941d30d6e2ebdbb3` |
| 5 | `theorem` | [sumZeroes_smul](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/sumzeroes-smul.md) | 86 | `result-track:2ec9f1925ae0ce6793054045009f8472adae3e2ba4605cf8992392cadb1570fa` |
| 6 | `theorem` | [sumZeroes_T_zero](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/sumzeroes-t-zero.md) | 90 | `result-track:ba1885369c5ca5a183b17a3d9305805493419d42f5cff89c2b8ca963beb50b3a` |
| 7 | `theorem` | [sumZeroes_T_of_not_dvd](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/sumzeroes-t-of-not-dvd.md) | 93 | `result-track:575277df941c7bda1016f9197e6f9cd86ccabf55c8e7ae6e63606d9bda48f8aa` |
| 8 | `theorem` | [integral_eq_sumZeroes](../../../../SpecialFunctions/ChebyshevGaussNamespacedPublic.lean/declarations/integral-eq-sumzeroes.md) | 117 | `result-track:30aa15e2ec76d5c63c1562d273ba8b43524e95cdee1f5afc0e207f34503308d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=771c48333bfbc06ae24cb545e80372c80d01788654069de6d18b848e22cb75e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean","GRWTSK/_verification/specifications/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
