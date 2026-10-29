# Verification target: Graded Module Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bcc7226f18fe22f5bf7554ddf931e8a0c763f06",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bcc7226f18fe22f5bf7554ddf931e8a0c763f06`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean.json)

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
| 1 | `class` | [GdistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/gdistribmulaction.md) | 39 | `declaration-track:680ae2d39959340146fb053b02a884e225c4b270d0c7d6d3fee1d09d8d233d03` |
| 2 | `class` | [Gmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/gmodule-source-edition-2.md) | 45 | `declaration-track:91a2c31fdeaff8761353f4a6057e231d59d3aeda433b5a30be2219e5c8d08c42` |
| 3 | `instance` | [GSemiring.toGmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/gsemiring-togmodule.md) | 51 | `declaration-track:c9f62d4c0531c87c07d4ee37e551dd1a25e4bc1b5f0db7126dd437f5209ce7a4` |
| 4 | `def` | [gsmulHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/gsmulhom.md) | 63 | `declaration-track:b782f66cd067e493777caf8d4c061162a882bdb52b479f99213e7705875b31e4` |
| 5 | `def` | [smulAddMonoidHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/smuladdmonoidhom.md) | 75 | `declaration-track:2c0e459bdd1cb86944b5ae4a95fcc62bd77509a308f9bd38c2e5f3faf6d3caec` |
| 6 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/instance.md) | 85 | `declaration-track:2680b921d2c5abf1010649971469e71a23a7d1a63638e574e7378158332ce1bc` |
| 7 | `theorem` | [smul_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/smul-def.md) | 90 | `result-track:e43355a8c1127624ef497a3f63a6e9810f2d4c975c6b174323c58e96d6d67af0` |
| 8 | `theorem` | [smulAddMonoidHom_apply_of_of](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/smuladdmonoidhom-apply-of-of.md) | 95 | `result-track:54e6c2bf08bbdeb7b87be4d1ea37dbde15197ef2e4ff983bf4730b5a797245dd` |
| 9 | `theorem` | [of_smul_of](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/of-smul-of.md) | 100 | `result-track:e01ab0ef824f071673505749582ea534d0ac236317061a462f678d15a06f9aff` |
| 10 | `theorem` | [one_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/one-smul.md) | 107 | `result-track:8a8806d9875fdb19de61a8cd9c4c13c1cb2cbb897220a887d11ba204d806bc2f` |
| 11 | `theorem` | [mul_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/mul-smul.md) | 118 | `result-track:7208569154ebf4affe86ef5f4ec50c73bd2ba2367ddc59ab6e136ddf07279001` |
| 12 | `instance` | [module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/module.md) | 139 | `declaration-track:8798bbbc1e0ff21b9b34d1168d63e208a7e5385c1b5abdaece9f5b2b5fe8428b` |
| 13 | `instance` | [gmulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/gmulaction.md) | 165 | `declaration-track:1edbbeba4b39c08d4f6392c3b0a8e7adace2f9b86671f8dbc6f9b35b6798a2ef` |
| 14 | `instance` | [gdistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/gdistribmulaction-source-edition-2.md) | 172 | `declaration-track:776657b651424218559354b6b680ab19d7f54486121882c91910e59ac271a5ab` |
| 15 | `instance` | [gmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/gmodule.md) | 184 | `declaration-track:7c631cd24f31574a058fb6cb76706089834ea43a727fed4b56e236045352141b` |
| 16 | `def` | [isModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/ismodule.md) | 202 | `declaration-track:7c72acad06aa6ed374cae4b7cc64c95dccfe08f97632fc1046591ad805c13645` |
| 17 | `def` | [linearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModulePublic.lean/declarations/linearequiv.md) | 209 | `declaration-track:fbe93e9f6e867762d7ab3c39af27f2cf82d53747839c7ae175442d9f3e39bfbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2f52783e451003429fe18e1854f028b54fc86c0db28fc939932b27cc783b86f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
