# Verification target: Ring Submonoid Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a68b1d45afc1813530c4c97ecc7bb218d6403815",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingSubmonoidBasicNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingSubmonoidBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a68b1d45afc1813530c4c97ecc7bb218d6403815`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_right_mem_add_closure](../../../../AssociativeRingsAndAlgebras/RingSubmonoidBasicNamespaced.lean/declarations/mul-right-mem-add-closure.md) | 28 | `result-track:639dea2aae743eda966f2c32134dad3ac856db8ab74942bbdbf15b25da047b06` |
| 2 | `lemma` | [mul_mem_add_closure](../../../../AssociativeRingsAndAlgebras/RingSubmonoidBasicNamespaced.lean/declarations/mul-mem-add-closure.md) | 37 | `result-track:37405b337a473d068871ca4b300af459af63797f0087431f7077b9cba86e48a2` |
| 3 | `lemma` | [mul_left_mem_add_closure](../../../../AssociativeRingsAndAlgebras/RingSubmonoidBasicNamespaced.lean/declarations/mul-left-mem-add-closure.md) | 46 | `result-track:7a86b7b050ba33f07b2565c4557f7ca03f9a85fb98f9b0534425e86bd68207bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5486d81071f005bc9f7e00310c12610b0298721202d8ebdc5d3e8ae2f2956d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantbbc7a39f67dfc180c3a73b43ec2801a85ce606ae3b2cea3dc02ec628bac0d944.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
