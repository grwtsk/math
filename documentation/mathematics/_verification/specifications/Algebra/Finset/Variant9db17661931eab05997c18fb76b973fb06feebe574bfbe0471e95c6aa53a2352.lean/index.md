# Verification target: GRWTSK.Algebra.Finset.Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e2cf1090e2a83c980e086795a665d85171e5e9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean/index.md) · [Full source](../../../../../Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e2cf1090e2a83c980e086795a665d85171e5e9`.

Source path: `GRWTSK/Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pointwise.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distribNeg](../../../../../Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean/declarations/distribneg--9c72746486834091aa1f6298.md) | 37 | `declaration-track:9c72746486834091aa1f629814c74ff700bdc45393725527f4fcb210a718beab` |
| 2 | `lemma` | [mul_add_subset](../../../../../Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean/declarations/mul-add-subset--9912471ab92675ca00fdff04.md) | 59 | `result-track:9912471ab92675ca00fdff0495c73b390326cd4331ee1c672392e6ce8676fac5` |
| 3 | `lemma` | [add_mul_subset](../../../../../Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean/declarations/add-mul-subset--5c0c0e548233e86a88c05899.md) | 62 | `result-track:5c0c0e548233e86a88c058993cca31b83b5f9269934e9f03bc88235d39148822` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e3e981510edfc581bd212f46ab63841676d25ac1124183c34f4aa263872165c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean","GRWTSK/_verification/specifications/Algebra/Finset/Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
