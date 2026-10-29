# Verification target: GRWTSK.Algebra.UniversalAlgebra.PUnit.Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "241560d80dae9370332a8f8b535b0f5dcf5a5f42",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean/index.md) · [Full source](../../../../../../Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `241560d80dae9370332a8f8b535b0f5dcf5a5f42`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AddGroupWithTop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [canonicallyOrderedAdd](../../../../../../Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean/declarations/canonicallyorderedadd--bbb7ee1d41b90e88fb6d667c.md) | 24 | `declaration-track:bbb7ee1d41b90e88fb6d667cf7800474acb64bfe0ff2745fe72eb3e288637b44` |
| 2 | `instance` | [isOrderedCancelAddMonoid](../../../../../../Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean/declarations/isorderedcanceladdmonoid--9b66ec853cdf1d92a0fcb8a0.md) | 28 | `declaration-track:9b66ec853cdf1d92a0fcb8a0dcf4dda264ebac4b29f20eb11986a8e718115d44` |
| 3 | `instance` | [(anonymous)](../../../../../../Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean/declarations/instance--8f6fdaf02178bc40cc350cb8.md) | 32 | `declaration-track:8f6fdaf02178bc40cc350cb88ea8c44a20a84755d1e30e9208ce6044b47a2716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d2575cfbaaa078eff48744a224d3cdb133ba7d0f0cdae7d8f37867a45ca70c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/PUnit/Variant0888074f97bfc5d2bc502968209acf3216ae9b2d5add0bf899fb0dd880536b55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
