# Verification target: Finiteness Finsupp Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8612c795098e73760be678c9fb31e99cdb25959a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8612c795098e73760be678c9fb31e99cdb25959a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean.json)

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
| 1 | `def` | [finsuppLinearMap](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/finsupplinearmap.md) | 41 | `declaration-track:c382d1c331a15fba33675add2efc7433808c29cd53506856a1d6e9c138006525` |
| 2 | `theorem` | [finsuppLinearMap_injective](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/finsupplinearmap-injective.md) | 50 | `result-track:c461ad1fcb98262322a17f038cb46ca52e183917a3cf2459ed2d39676f62e8c0` |
| 3 | `theorem` | [finsuppLinearMap_bijective_of_moduleFinite](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/finsupplinearmap-bijective-of-modulefinite.md) | 54 | `result-track:00687e9db0c857201069ded382191243a20bedb2794f7c55ad2bd91d7c3c0828` |
| 4 | `theorem` | [finsuppLinearMap_bijective_of_finite](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/finsupplinearmap-bijective-of-finite.md) | 62 | `result-track:b7bf3b3c91e29ea443dc5403cb195cab81eb804d2608fab62606f0a117a381e8` |
| 5 | `theorem` | [fg_of_fg_map_of_fg_inf_ker](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/fg-of-fg-map-of-fg-inf-ker.md) | 78 | `result-track:9d0cf8f63d041be875a525e97a3d30c4116ff4714ffa6764ad0b1ec98d9191f0` |
| 6 | `theorem` | [fg_ker_comp](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/fg-ker-comp.md) | 152 | `result-track:350f34c947d602fce67f33494d638d6f17ec4077693bf421bd22a5d79c9e6ca2` |
| 7 | `lemma` | [Finiteness Finsupp Namespaced Public](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/of-exact.md) | 165 | `result-track:be616c6772982b457de49121eec2a56c4aa2687056985188fe22c1a4aab58713` |
| 8 | `theorem` | [Finiteness Finsupp Namespaced Public](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/of-submodule-quotient.md) | 174 | `result-track:b09c910e2fbdb570136dc9e707fb56ee79b422d7707f147dc9d13e949d4199b0` |
| 9 | `instance` | [Module.Finite.finsupp](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/module-finite-finsupp.md) | 184 | `declaration-track:6782f83b62742e3e5ece2753350fa3ca96bdc9213e6f28a86e35b98a7da610ad` |
| 10 | `instance` | [moduleFinite](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/modulefinite-source-edition-2.md) | 193 | `declaration-track:fbaccee61b06ce47cfff65fb9641dd5c5721c9d46162e1088b16aad6555b2e80` |
| 11 | `instance` | [moduleFinite](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/modulefinite.md) | 200 | `declaration-track:232d19b1e69317a208793effd36063cf477383d79f46ce238d7fc7d5deb6edb7` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/instance.md) | 207 | `declaration-track:e6ed55038ee4dfc4b2a8303cf9ed022a8470cbcc7d38607ad8480e5c5754ad3a` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FinitenessFinsuppNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 210 | `declaration-track:f73759b05bc09b1b73aa9f8f2f8bb4264d7db29902d85ba3b43616012f2b4198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30305932a2cf56bdb28cdf02014cef9a0a2b21cb9e6ccb964b1147ee0ef29257 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
