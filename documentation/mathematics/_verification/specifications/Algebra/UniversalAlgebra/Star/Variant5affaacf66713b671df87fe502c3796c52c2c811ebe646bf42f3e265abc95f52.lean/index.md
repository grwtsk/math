# Verification target: GRWTSK.Algebra.UniversalAlgebra.Star.Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed6080615314601537ee956eb3e6e537f54c70b1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean/index.md) · [Full source](../../../../../../Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed6080615314601537ee956eb3e6e537f54c70b1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean/declarations/example--6c3706bf6b672df656408f6e.md) | 28 | `declaration-track:6c3706bf6b672df656408f6e9a2e7350ce8bc8ad4306ac026d401f409d2da1a6` |
| 2 | `lemma` | [mul_le_mul_of_nonneg_left](../../../../../../Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean/declarations/mul-le-mul-of-nonneg-left--30ee4777b6b5cc3e2b45c8a1.md) | 36 | `result-track:30ee4777b6b5cc3e2b45c8a10402e42eed456e5ed765d14348f8baf2d7da67b6` |
| 3 | `instance` | [toIsOrderedRing](../../../../../../Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean/declarations/toisorderedring--2d5f69b68ba58425f29c2710.md) | 50 | `declaration-track:2d5f69b68ba58425f29c271016cf3a4a6d45333fd854a45848100ea233a53c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90595a8bc9d7b9f3e556e0c0f1a0e686d3708fd78c33a59b23da67686ca04812 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Star/Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
