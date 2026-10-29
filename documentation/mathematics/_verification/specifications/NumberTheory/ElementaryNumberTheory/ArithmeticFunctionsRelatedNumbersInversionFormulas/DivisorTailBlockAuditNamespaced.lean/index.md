# Verification target: Divisor Tail Block Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac46ebe9edb95d44e9280e65f219f5baa1a0dff1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlockAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlockAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac46ebe9edb95d44e9280e65f219f5baa1a0dff1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divisor_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlockAuditNamespaced.lean/declarations/divisor-sum.md) | 19 | `result-track:5d9f2840f63a121b5a1e4b135b19051cadf7718dabd09e84ec90eb09e92f0a2b` |
| 2 | `theorem` | [before_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlockAuditNamespaced.lean/declarations/before-cutoff.md) | 26 | `result-track:900f878691a2a9b6937d9a45fe595b2f37a4011fef16567fae312513c369b6ab` |
| 3 | `theorem` | [first_dyadic_block](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlockAuditNamespaced.lean/declarations/first-dyadic-block.md) | 36 | `result-track:56592a91bee99ef1a9245867bc7cc90335fe509abcbd130b1ce1064dcd78a3fd` |
| 4 | `theorem` | [corrected_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlockAuditNamespaced.lean/declarations/corrected-endpoint.md) | 63 | `result-track:3b3f87644a8268e510f16d35f518dbffaacd5e8c724900f9d10130b5f2d25894` |
| 5 | `theorem` | [corrected_first_block_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlockAuditNamespaced.lean/declarations/corrected-first-block-prefix.md) | 70 | `result-track:240f13fdde94fe828769430076b5f267d26f833b14c03d72393549fd65a202fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e3436d4ce33769c7dd7c968451d7cdba74ffb134a492a40d82e9dc98029f930 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
