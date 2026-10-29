# Verification target: Grassmannian Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e37872dda061df4cf00c39ea94c3dbc366d49a5c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/GrassmannianPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/GrassmannianPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e37872dda061df4cf00c39ea94c3dbc366d49a5c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean.json)

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
| 1 | `structure` | [Grassmannian](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/grassmannian.md) | 68 | `declaration-track:801a56db8d852254ea6f208739e4d3a3d36d5bffbb69ea2d8d9634971aef19c5` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/instance.md) | 81 | `declaration-track:75306bf0dbb4ae9e25ee66d9f49f0be5cb3282505a10079f81582b90e8ae4de5` |
| 3 | `lemma` | [ext](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/ext.md) | 84 | `result-track:9afdb4189e08fc197087f075cea2458259cde49eb8e251051737b93d67acf951` |
| 4 | `def` | [baseChangeMkQ](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/basechangemkq.md) | 102 | `declaration-track:e952465a6b72bcd4d752e60f08ad7e566496f632067703d2837a63fff01ece25` |
| 5 | `theorem` | [baseChangeMkQ_surjective](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/basechangemkq-surjective.md) | 107 | `result-track:0e835b746488d29f3afb83e2e4d6e978487a3994cc99eff72df1c0c4c3bbba8d` |
| 6 | `def` | [baseChangeMkQEquiv](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/basechangemkqequiv.md) | 113 | `declaration-track:c56847ffc1fff2399ec3c8e04f45860732de04412cbaaaa361e1d6d813430452` |
| 7 | `def` | [map](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/map.md) | 123 | `declaration-track:f51b8895d428cc3d8fa06a352ff95d34d0563c0ad353bd5bab23867eae94c7d5` |
| 8 | `theorem` | [map_toSubmodule](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/map-tosubmodule.md) | 139 | `result-track:442b98393fa6d8294465d3b77bca74b672803dc83118fcb1cee6d056d05c6f53` |
| 9 | `theorem` | [map_id](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/map-id.md) | 146 | `result-track:ef79e93b14cf93df95315ba4fe46d69effa8a3ce6391d230662fee510c0e1fd4` |
| 10 | `theorem` | [map_comp](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/map-comp.md) | 154 | `result-track:5a85bf00a797ebcf93d0bc7a3d6c6f0f0db788b643144d3d5790fb39b2b95a84` |
| 11 | `def` | [functor](../../../../CommutativeAlgebra/GrassmannianPublic.lean/declarations/functor.md) | 187 | `declaration-track:a66545c356742e354fd23cceb6ca20a44b356b16d1e9113cbade2f6022611f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=298462e49fee6adae4ad610c2b547079572c17ab4072ed564143e3a16ac3d2ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
