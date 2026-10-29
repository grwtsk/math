# Verification target: Fiber Partition Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7739b3230724fa7975331b46618773f1809f83de",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc3cdbf4d68584689a507d6400fad4fed334b4fd744b66ef9f7fabf69d1cfb818.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FiberPartitionNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/FiberPartitionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7739b3230724fa7975331b46618773f1809f83de`.

Source path: `GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc3cdbf4d68584689a507d6400fad4fed334b4fd744b66ef9f7fabf69d1cfb818.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiberPartition/Variantc3cdbf4d68584689a507d6400fad4fed334b4fd744b66ef9f7fabf69d1cfb818.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocallyConstant.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.FiberPartition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigmaIsoHom](../../../../GeneralTopology/FiberPartitionNamespaced.lean/declarations/sigmaisohom.md) | 39 | `declaration-track:5894a05edd72095cbfba7eef4f38bf5eaa93d1778b380f68226e526ac11ad63e` |
| 2 | `lemma` | [sigmaIsoHom_inj](../../../../GeneralTopology/FiberPartitionNamespaced.lean/declarations/sigmaisohom-inj.md) | 42 | `result-track:ad958a0d4eaf1b1521c5591fef4912e684d402193c05ac55b5a103522c232041` |
| 3 | `lemma` | [sigmaIsoHom_surj](../../../../GeneralTopology/FiberPartitionNamespaced.lean/declarations/sigmaisohom-surj.md) | 49 | `result-track:db4cb9fbeeeed4e23062fc22fea72a67af73265c4f99aeb956616e4e3224edec` |
| 4 | `def` | [sigmaIncl](../../../../GeneralTopology/FiberPartitionNamespaced.lean/declarations/sigmaincl.md) | 53 | `declaration-track:f8ba97679f3d173e42dda7454e6ff2f79fddd94c6c99c7e5161279c16948d977` |
| 5 | `def` | [sigmaInclIncl](../../../../GeneralTopology/FiberPartitionNamespaced.lean/declarations/sigmainclincl.md) | 57 | `declaration-track:b3e671b39c5a60d67a525fedd6dfdfd953ece7a5a30f517d98ebe33f21b76db3` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberPartitionNamespaced.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:810dbf26b5338c160f10e35ea15f2ebe1c7d10246955557983d139de5cbc4fea` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberPartitionNamespaced.lean/declarations/instance.md) | 73 | `declaration-track:2fb622b0e05843246b563d2c7b60385abe57931ebf397624d20ab338f2cd8326` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=120d22c23ad3a3b513ef29c657de2d1cb1eda77df4064503215776e9dfe74151 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc3cdbf4d68584689a507d6400fad4fed334b4fd744b66ef9f7fabf69d1cfb818.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FiberPartition/Variantc3cdbf4d68584689a507d6400fad4fed334b4fd744b66ef9f7fabf69d1cfb818.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
