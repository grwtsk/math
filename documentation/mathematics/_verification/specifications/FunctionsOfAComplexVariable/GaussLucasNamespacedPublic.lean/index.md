# Verification target: Gauss Lucas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00d686f09dabb5812a59aee8fc87c51a18eb11cd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/GaussLucasNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/GaussLucasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00d686f09dabb5812a59aee8fc87c51a18eb11cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean.json)

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
| 1 | `def` | [derivRootWeight](../../../../FunctionsOfAComplexVariable/GaussLucasNamespacedPublic.lean/declarations/derivrootweight.md) | 34 | `declaration-track:d29e348dd785e7d1bf5f7f2ff136f983731da8d0b56eab423000a18f0898e0da` |
| 2 | `theorem` | [derivRootWeight_nonneg](../../../../FunctionsOfAComplexVariable/GaussLucasNamespacedPublic.lean/declarations/derivrootweight-nonneg.md) | 38 | `result-track:97de4ef09e6bbd54c747447e78bf991f407f20d011c1c5854af778145fd5df45` |
| 3 | `theorem` | [sum_derivRootWeight_pos](../../../../FunctionsOfAComplexVariable/GaussLucasNamespacedPublic.lean/declarations/sum-derivrootweight-pos.md) | 46 | `result-track:649ba74dfd9415648f4f887151551769cdcaef8f7da5bfc59152b72ff623d2ae` |
| 4 | `theorem` | [eq_centerMass_of_eval_derivative_eq_zero](../../../../FunctionsOfAComplexVariable/GaussLucasNamespacedPublic.lean/declarations/eq-centermass-of-eval-derivative-eq-zero.md) | 68 | `result-track:72adcc3968094419fee9ed51eb9934cba489c218f4180fcea722f9195fe06bfa` |
| 5 | `theorem` | [rootSet_derivative_subset_convexHull_rootSet](../../../../FunctionsOfAComplexVariable/GaussLucasNamespacedPublic.lean/declarations/rootset-derivative-subset-convexhull-rootset.md) | 105 | `result-track:15f898759fd8cfdb23d90ca3e79a84f87a7f147d4b33485391f5f11aabdb7eca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3030bf0c2af93b8ff4b05335f46e1f79c18b02081da85f622ab700ce01e58e07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
