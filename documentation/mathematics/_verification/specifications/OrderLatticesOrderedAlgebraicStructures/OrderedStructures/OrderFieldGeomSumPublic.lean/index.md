# Verification target: Order Field Geom Sum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddf09c546347daee7afbea70a3caee7bdc51282a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeomSum/Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddf09c546347daee7afbea70a3caee7bdc51282a`.

Source path: `GRWTSK/Algebra/GeomSum/Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeomSum/Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [geom₂_sum_of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/declarations/geom-sum-of-gt.md) | 28 | `result-track:8e693fa789e4f4576759f12d9162c232cab53225da24dba8c5c8fcbeffa32268` |
| 2 | `lemma` | [geom₂_sum_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/declarations/geom-sum-of-lt.md) | 32 | `result-track:a6352715fa4b230771d42a8185d44b08eee9ff64f06d36c6b292bda17ff3046b` |
| 3 | `lemma` | [geom_sum_of_one_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/declarations/geom-sum-of-one-lt.md) | 36 | `result-track:80533483e3ab2c70f1cd892c5e4ec9b3f5ceed0f862e8e4796dab1580bb97d0f` |
| 4 | `lemma` | [geom_sum_of_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/declarations/geom-sum-of-lt-one.md) | 40 | `result-track:8e99c5c6d9bb3122279aad9e9f744d8ae6928df06c53488f3cfe9c888fc22020` |
| 5 | `lemma` | [geom_sum_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/declarations/geom-sum-lt.md) | 44 | `result-track:d04aeef1887cdd4b4fe44ecc95798e0d50210ed797f0dc97a8d3bfa5d29f657f` |
| 6 | `lemma` | [geom_sum_Ico_le_of_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderFieldGeomSumPublic.lean/declarations/geom-sum-ico-le-of-lt-one.md) | 55 | `result-track:512a7945fe67661638e980b41e6638390af1692ee57d3aca9fc369e771fb8285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc2f72c76b9d233acad69eae298aa5962e285cded4aad208983a17e929ef65da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GeomSum/Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c.lean","GRWTSK/_verification/specifications/Algebra/GeomSum/Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
