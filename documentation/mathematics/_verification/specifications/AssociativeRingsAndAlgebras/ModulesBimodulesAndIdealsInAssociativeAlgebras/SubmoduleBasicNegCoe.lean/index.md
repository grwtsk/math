# Verification target: Submodule Basic Neg Coe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6898c548580504800719bdbc199828d76c0f3ea0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6898c548580504800719bdbc199828d76c0f3ea0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toAddSubmonoid_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/toaddsubmonoid-strictmono.md) | 37 | `result-track:2b86dcc6ff092b7ff590aed0180a868402b048bd67f4b62105fe63292ed3b51f` |
| 2 | `theorem` | [toAddSubmonoid_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/toaddsubmonoid-le.md) | 40 | `result-track:c2962aa49eea5df9fb3d7a68518cdaf14d67bb5b314332e1023623ec067a690b` |
| 3 | `theorem` | [toAddSubmonoid_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/toaddsubmonoid-mono.md) | 44 | `result-track:ee178db22afc75f9ba694a39b57ba5e205136c65060530b62ed80b79c7658576` |
| 4 | `theorem` | [toSubMulAction_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/tosubmulaction-strictmono.md) | 48 | `result-track:70c083c22585b3655d9942e8ee884cd7fc92fec425f641f7e5713202f88f62ec` |
| 5 | `theorem` | [toSubMulAction_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/tosubmulaction-mono.md) | 52 | `result-track:a9d4891a3b026c3526b87e2f1abc69336a2ae0a677bd9ab789a24c6c4bbb0738` |
| 6 | `theorem` | [sum_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/sum-mem.md) | 70 | `result-track:96e69a54581fc17f61ebfb2c4202fcbb59fc98abfc119a47fc63935b97634011` |
| 7 | `theorem` | [sum_smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/sum-smul-mem.md) | 73 | `result-track:8d905f3289f29b97b05e91c50fea6ca0144f99ddd17e91c4ddf4befc97030955` |
| 8 | `instance` | [isCentralScalar](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/iscentralscalar.md) | 77 | `declaration-track:8aac2ef52c56f07866702ac0c8e73d3731521ebac5f3251ddedb795568c5e6c0` |
| 9 | `instance` | [noZeroSMulDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/nozerosmuldivisors.md) | 81 | `declaration-track:3fa8f6ed6176dacc838bdf12f705a2d9522e1796ba8466866689162822081894` |
| 10 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:ad43de20aa4dba45a983d6ed5286a1964dbd55ba4d21f355fb8c68b60fac0aaa` |
| 11 | `instance` | [vaddCommClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/vaddcommclass.md) | 102 | `declaration-track:473df12e2ace4be3748f98bb102c42a0adc8218991e610d1a20e863a419e29db` |
| 12 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/instance.md) | 105 | `declaration-track:5860a81a3149174bf45a126b4014a1a43e840c11f94084c3f358ba29a5392c74` |
| 13 | `theorem` | [vadd_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/vadd-def.md) | 110 | `result-track:486824dcea9de98f5b629d234593bcc4ed61466aebe263885d27ae05424bcf62` |
| 14 | `theorem` | [toAddSubgroup_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/toaddsubgroup-strictmono.md) | 126 | `result-track:65c3d42a04c79ca4358ecf9af1989ab925a4df4dfdaad523a65de2f43a1167cb` |
| 15 | `theorem` | [toAddSubgroup_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/toaddsubgroup-le.md) | 129 | `result-track:53e4fdb9135853731dd8813fc5ca92ef82b419aa2d69697b159cb960a04796b1` |
| 16 | `theorem` | [toAddSubgroup_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/toaddsubgroup-mono.md) | 133 | `result-track:55561a83e0f39f8ec2aa2f55357dada46995af0442b7ea35ea05d5def16e9c9a` |
| 17 | `theorem` | [neg_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/neg-coe.md) | 140 | `result-track:994ad2ebd32915e578a1c2e5d6d728bf8b7d73e2a4e182fb3e5eeb38c3a4fa55` |
| 18 | `theorem` | [notMem_of_ortho](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/notmem-of-ortho.md) | 150 | `result-track:1998de5ee91e9ee5fd963df3fd3813b51b0ea7ac17afe9f4cfc61227774fb692` |
| 19 | `theorem` | [ne_zero_of_ortho](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/ne-zero-of-ortho.md) | 157 | `result-track:e19a3eba03b3f55e84c1bd91cf3513c14685075bed44556119edb377822fd79b` |
| 20 | `theorem` | [smul_mem_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/smul-mem-iff.md) | 171 | `result-track:fce28336755a13021c5794acee949f4b17c81cdbfd198c77cd59016725a6e070` |
| 21 | `abbrev` | [Subspace](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicNegCoe.lean/declarations/subspace.md) | 177 | `declaration-track:5f2d5e71d1b936620ccb16b58f51c5ad516f7b3e1dbe655279cb3241992635ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50b39bdc1c6e63f13fdd401db4bb60b888e055e64f5d6ce72e4538621c05c89e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
