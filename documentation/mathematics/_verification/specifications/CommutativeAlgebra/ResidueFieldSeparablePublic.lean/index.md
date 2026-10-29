# Verification target: Residue Field Separable Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fc087f2f265f2ec661870f58923145c916c96db",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fc087f2f265f2ec661870f58923145c916c96db`.

Source path: `GRWTSK/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean.json)

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
| 1 | `class` | [HasSeparableResidueFieldsAt](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/declarations/hasseparableresiduefieldsat.md) | 57 | `declaration-track:a79beb31a3842c1b1583d5519bd8603c05d66d58d3eaf89c2faa67431162ac2a` |
| 2 | `instance` | [HasSeparableResidueFieldsAt.isSeparable](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/declarations/hasseparableresiduefieldsat-isseparable.md) | 65 | `declaration-track:5489ba88cee23362c366571fdd71720ea9d3ffa48d2ded2d861e2f237403464f` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/declarations/instance.md) | 75 | `declaration-track:0d69d83b74a4f09f368137428ea03c205930338e20dcf5f49516ece75d068cdc` |
| 4 | `instance` | [HasSeparableResidueFieldsAt.isSeparable_quotient](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/declarations/hasseparableresiduefieldsat-isseparable-quotient.md) | 91 | `declaration-track:9bd5018dc20d4805de0d8e6f705f6e946fe4b563e7152ec85a9b01d56fe559b5` |
| 5 | `theorem` | [HasSeparableResidueFieldsAt.tower_bot](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/declarations/hasseparableresiduefieldsat-tower-bot.md) | 107 | `result-track:11bc2db976b4ad06ee93f1500598750f18989656cba8f3ca73ac4b4be962d7e3` |
| 6 | `theorem` | [HasSeparableResidueFieldsAt.tower_top](../../../../CommutativeAlgebra/ResidueFieldSeparablePublic.lean/declarations/hasseparableresiduefieldsat-tower-top.md) | 121 | `result-track:6a99e4f3387ef88073eddc21dc10e761224c13ea591ef84200bd5a53b03320fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ef2b9cc2a37fc87ed0eda95802fdd2b4111e32a16e8fd7b449ba21f870a1292 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean","GRWTSK/_verification/specifications/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
