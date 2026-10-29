# Verification target: Idempotent Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39786578e6d8ddce34430d0572ce9ed46cea74be",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Idempotent/Variant62ba00fcf47f266073e046fd57d528badcf95c021d639da1b2b6d1050d293415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IdempotentNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IdempotentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39786578e6d8ddce34430d0572ce9ed46cea74be`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Idempotent/Variant62ba00fcf47f266073e046fd57d528badcf95c021d639da1b2b6d1050d293415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Idempotent/Variant62ba00fcf47f266073e046fd57d528badcf95c021d639da1b2b6d1050d293415.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Idempotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IdempotentNamespaced.lean/declarations/zero.md) | 30 | `result-track:23c2931faa2b64980a9d2f581ab95eda00d3d2cc4fcc831487859f000a37a657` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IdempotentNamespaced.lean/declarations/instance.md) | 32 | `declaration-track:b9088ee976fc58c90228f4aeb6139f4636b7ec06b7ae9f30f107b5f59adba063` |
| 3 | `lemma` | [coe_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IdempotentNamespaced.lean/declarations/coe-zero.md) | 34 | `result-track:d8ea4637f6a04d5f4f2a7a18e1e080f88554966367db41437af090afa4fea1df` |
| 4 | `lemma` | [iff_eq_zero_or_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IdempotentNamespaced.lean/declarations/iff-eq-zero-or-one.md) | 42 | `result-track:1c151e9ccff16eb72b3534c93dfe877937898cb86fd976b28af97eab171886d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cdd0a66cfd7b8c30a6d9dc3f7c1e9ca4bb29ad70f524e2372754bd36fd59512 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Idempotent/Variant62ba00fcf47f266073e046fd57d528badcf95c021d639da1b2b6d1050d293415.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Idempotent/Variant62ba00fcf47f266073e046fd57d528badcf95c021d639da1b2b6d1050d293415.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
