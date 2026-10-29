# Verification target: Ring Pointwise Set Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c39b54e6f0c6c80800ff000ca946c5c353c41c15",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Set/Variant7e3b692ffc344e2a6173671959790051f32b252b76a6df3143e346ae8b65cf4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingPointwiseSetPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingPointwiseSetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c39b54e6f0c6c80800ff000ca946c5c353c41c15`.

Source path: `GRWTSK/Algebra/Set/Variant7e3b692ffc344e2a6173671959790051f32b252b76a6df3143e346ae8b65cf4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Set/Variant7e3b692ffc344e2a6173671959790051f32b252b76a6df3143e346ae8b65cf4e.lean.json)

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
| 1 | `def` | [hasDistribNeg](../../../../AssociativeRingsAndAlgebras/RingPointwiseSetPublic.lean/declarations/hasdistribneg.md) | 34 | `declaration-track:962d490cf2d66ee5c85af0039276ce02a7d3d3b7d17c36954dc5cc472cac7dd5` |
| 2 | `lemma` | [mul_add_subset](../../../../AssociativeRingsAndAlgebras/RingPointwiseSetPublic.lean/declarations/mul-add-subset.md) | 49 | `result-track:32dd89b1d43a59ef236215ed1760420142720c94ac1f0849139446ecf1823142` |
| 3 | `lemma` | [add_mul_subset](../../../../AssociativeRingsAndAlgebras/RingPointwiseSetPublic.lean/declarations/add-mul-subset.md) | 50 | `result-track:82c023dd11c44c27738597a1db1b56b45300d801f37f4b8c2a0d2db2c5449f17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=429c22ace11d4d7da6c08ad360933b77353c676f6f6facde28b1eb5fd2a5f8d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Set/Variant7e3b692ffc344e2a6173671959790051f32b252b76a6df3143e346ae8b65cf4e.lean","GRWTSK/_verification/specifications/Algebra/Set/Variant7e3b692ffc344e2a6173671959790051f32b252b76a6df3143e346ae8b65cf4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
