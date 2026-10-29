# Verification target: Semiconj Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5efceeece2a09e837e3a8170d02d8639b0e41423",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant11ba99239f51f159b96002967982bbbe77dcfff5c98ed75ac133bbe494f7931f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5efceeece2a09e837e3a8170d02d8639b0e41423`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant11ba99239f51f159b96002967982bbbe77dcfff5c98ed75ac133bbe494f7931f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant11ba99239f51f159b96002967982bbbe77dcfff5c98ed75ac133bbe494f7931f.lean.json)

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
| 1 | `def` | [SemiconjBy](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/semiconjby.md) | 47 | `declaration-track:6286df7c6564b478377e85da172485936c9165dd632b922fe30c60357bfbf16b` |
| 2 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/eq.md) | 54 | `result-track:6a4882a9bfc86a0724d3629475688c81c2a57f34e642e347a26cd5abacf8d8a5` |
| 3 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/mul-right.md) | 65 | `result-track:76cd914195750cb1a26230714b9b67a6ad8bccc21559b6d13ef31202fdf9bbc0` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/mul-left.md) | 75 | `result-track:facaba9fcf707c74549fd18fff9637f5578ad2b0c69ea4f3b1363216918b9611` |
| 5 | `theorem` | [isTrans](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/istrans.md) | 83 | `result-track:4e991c21bf769cb19494a58da0363b05d8e63eea40f11698bf4f5ccbe098e40a` |
| 6 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/one-right.md) | 94 | `result-track:8ae15f126f842630d991c7e0c19be403399ee92a692895d1979cecb31d312d44` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/one-left.md) | 98 | `result-track:9853eb42fa859cee754c1a39510fac9969e676452f963e0a942a372c5a384212` |
| 8 | `theorem` | [refl](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/refl.md) | 105 | `result-track:6e7abbf1e39f514cd048fb36d81bf99be80680c6b0355ac950435a64e7cd6711` |
| 9 | `theorem` | [pow_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/pow-right.md) | 117 | `result-track:98d99ffb49da4d19c314527db88f983a69eea836b96370b1474bc1c93845e02b` |
| 10 | `theorem` | [conj_mk](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/conj-mk.md) | 134 | `result-track:3560ff952e8997c86f267b9d391e362a05113a8291c70c87f819b2c22a077ed0` |
| 11 | `theorem` | [conj_iff](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/conj-iff.md) | 138 | `result-track:e01587129bcad423d77f4984f60788fef61e3fd04c6b3391679b543947494a19` |
| 12 | `theorem` | [semiconjBy_iff_eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespacedPublic.lean/declarations/semiconjby-iff-eq.md) | 150 | `result-track:5124b648f858bebaa8ec42808e284e4ff8171374ffb06449f8e05a93633bedf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c0894382470ea9e0bef88b768a5de242641576188de7e97f45627d90a0dbab1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant11ba99239f51f159b96002967982bbbe77dcfff5c98ed75ac133bbe494f7931f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant11ba99239f51f159b96002967982bbbe77dcfff5c98ed75ac133bbe494f7931f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
