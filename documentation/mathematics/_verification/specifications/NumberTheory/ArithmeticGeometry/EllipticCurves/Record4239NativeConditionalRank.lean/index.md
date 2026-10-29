# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeConditionalRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "057e28ea57fdfad83ea3be81e02dabcba1146932",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean/index.md) · [Full source](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `057e28ea57fdfad83ea3be81e02dabcba1146932`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeTwoTorsion`](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239SquareClassBridge`](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239IntegralOrderReduction`](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/index.md) — import line 14; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NativeDescentEvidence](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean/declarations/nativedescentevidence--efce56ac13da3df76b4dd363.md) | 65 | `declaration-track:efce56ac13da3df76b4dd36336ed4a4aa313c71f75a9e6605f5fa28ef35f02cd` |
| 2 | `theorem` | [NativeDescentEvidence.characterValues](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean/declarations/nativedescentevidence-charactervalues--6f6d6afadb5e27ac6ded90d2.md) | 76 | `result-track:6f6d6afadb5e27ac6ded90d23965dc0dd62be3cfdfcac5593b323094f6d784bf` |
| 3 | `theorem` | [nativePoints_linearIndependent_of_descent](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean/declarations/nativepoints-linearindependent-of-descent--6724b26c7fb0136418645fa7.md) | 88 | `result-track:6724b26c7fb0136418645fa7567c25a7d33ce03d5d244a2592a410794a0c147a` |
| 4 | `theorem` | [nativeCurve_finrank_ge_32_of_descent](../../../../../../NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean/declarations/nativecurve-finrank-ge-32-of-descent--4ced002c1c488c265a584c89.md) | 103 | `result-track:4ced002c1c488c265a584c89fae2c787f405da389ccccd5b890df04a887e97cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a3e57547dc0a7fa7a39131f338c8642afac6fbde093341c3f35080302023a86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean","GRWTSK/_verification/specifications/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
