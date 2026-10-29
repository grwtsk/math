# Verification target: Module Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3861ecc4439f01ff867ac9136f899bbec977d2ec",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3861ecc4439f01ff867ac9136f899bbec977d2ec`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569.lean.json)

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
| 1 | `instance` | [instModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/instmodule-source-edition-3.md) | 32 | `declaration-track:bbe6c0b36f93d2d581c5b46697c3b8f12e024fbb59e59206e9204da1e35d35e3` |
| 2 | `instance` | [instModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/instmodule.md) | 44 | `declaration-track:11f016fbfe8cf16c6b80679fdc825dcbef15e6c2bc9fb2c84e6f1342ce70b6fe` |
| 3 | `instance` | [instDomMulActModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/instdommulactmodule.md) | 50 | `declaration-track:2646b0e840144b12d0f7d8ad3c580fc8d44adf674a8a32056b10ffdc84c60c4b` |
| 4 | `instance` | [instDistribSMul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/instdistribsmul.md) | 74 | `declaration-track:7207f4ee8bc71c505f67caa5823430d09a80e3591d647b2b0b3b65aa5bd097cd` |
| 5 | `instance` | [instDistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/instdistribmulaction.md) | 79 | `declaration-track:71b2172ccafafc9a46f63d592e0754746f0fd8d54eb9174788ea058dc0714da1` |
| 6 | `theorem` | [coe_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/coe-smul-source-edition-2.md) | 82 | `result-track:b49b5517f52acd4c5ee71c3ed44dcef2b73fa8bb8abe50a866b14e90b0898aaf` |
| 7 | `theorem` | [smul_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/smul-apply.md) | 84 | `result-track:51543aa32bd9931dc6d58c9070efd188bb0353ac752f892dcd3ff3d3cff417e0` |
| 8 | `instance` | [smulCommClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/smulcommclass.md) | 87 | `declaration-track:8667f888002ad058ad9c8604a2a70358ec89b547a8b5cf557208b9a79215517b` |
| 9 | `instance` | [isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/isscalartower.md) | 90 | `declaration-track:782f2644f06294128c590d6c64144aac5ad3049d3d92c0aa7ea8b747226a104e` |
| 10 | `instance` | [isCentralScalar](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/iscentralscalar.md) | 93 | `declaration-track:6c8af5c95abd276ddc110f41c5d9354d2aa00485d6acec4216b56abb102a7f09` |
| 11 | `instance` | [instModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/instmodule-source-edition-2.md) | 99 | `declaration-track:1ff2735fa2c4628104b11cd46073525fe35720e6cc6fba84e9d50f7107cd3bd6` |
| 12 | `instance` | [applyModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/applymodule.md) | 105 | `declaration-track:c0fafcff45683dbdd9c8ca35ab718a21e02f8af369fcb37b3eca78dae5c5621a` |
| 13 | `def` | [smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/smul.md) | 117 | `declaration-track:3c8c034e65b5ddf3a67e84cc4330c8923d2df88f116fb7fe621fab8685e27ae2` |
| 14 | `theorem` | [coe_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomPublic.lean/declarations/coe-smul.md) | 120 | `result-track:082deebf649c95a25613f056dd4edbe9a4beb6e16d33612c1fca566cfce3726b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c3cc5d9fa20082275f96cbe350480c817cbf3968d6d0be913100e4f4187141c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Hom/Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Hom/Variante6d3d08b70858fab88f59893fd60496f467f904086e733e4b36723bd405ef569.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
