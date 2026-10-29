# Verification target: Preimmersion Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94afbb24fc3328ac89f1558619a4c67663c35721",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variant44d182aa573de6c07614128e484213ff61773771b018e23fc731bebce51b0810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94afbb24fc3328ac89f1558619a4c67663c35721`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variant44d182aa573de6c07614128e484213ff61773771b018e23fc731bebce51b0810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Preimmersion/Variant44d182aa573de6c07614128e484213ff61773771b018e23fc731bebce51b0810.lean.json)

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
| 1 | `class` | [IsPreimmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/ispreimmersion.md) | 33 | `declaration-track:b4154271637f7f0403f34ed3f5b17faa0a8a0a9e5904bfb05ec3b940284857e7` |
| 2 | `lemma` | [isPreimmersion_eq_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/ispreimmersion-eq-inf.md) | 38 | `result-track:edfe104029ef835dcb00f57f217ee1cff57d595e990eb27e6ba49c2fd8073bd8` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:41e87cc3170e57d6c447f12b8f1bdaa2a101f93de760a098dc79327c71e08f14` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance-source-edition-4.md) | 50 | `declaration-track:7ac3a33538e7a285a6ee931d30ce7779372ae546e7602bf22177f870d774a1ed` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance.md) | 54 | `declaration-track:1b0f98f2da0b4ccfc405017f5b3d6f0e5b7990bf92e2f6659c6fdaa863c14523` |
| 6 | `instance` | [comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/comp.md) | 59 | `declaration-track:2d0eeb257140971f0102ec9da8437e248d35b72e847a1485ef19d2d01c4011e9` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance-source-edition-5.md) | 63 | `declaration-track:982c24c5d84589662d6297fc51b66f0f8b24753ad4986649505a522c4315e825` |
| 8 | `theorem` | [of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/of-comp.md) | 66 | `result-track:663c12d4e91e35e039922aa50d8e403bda8d9d691f43058c2b114796116a2af5` |
| 9 | `theorem` | [comp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/comp-iff.md) | 76 | `result-track:ec750ec84aa557fdb048d3baa5c5034ecff9a3ef2b9c58ff733f7eeb3382cf0c` |
| 10 | `lemma` | [SpecMap_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/specmap-iff.md) | 80 | `result-track:e56c67435e4c65b7e81bb4e479e0701a99b92b09b141dcf0b9548796155b5e24` |
| 11 | `lemma` | [mk_SpecMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/mk-specmap.md) | 86 | `result-track:8f325a981b8f2145a6b5fea20293bd678831c121a78d607f5dcb92eeca1b8e14` |
| 12 | `lemma` | [of_isLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/of-islocalization.md) | 91 | `result-track:1a75eca13b16e525bf04482adffa51de8a49184ef2eb2c9f8d9eb9ef3a781726` |
| 13 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance-source-edition-8.md) | 100 | `declaration-track:f5e2f92bea89923018324880ea264ed479b977a839eff1d20d50a659ba9d153d` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance-source-edition-6.md) | 115 | `declaration-track:9d9ae6b69171a997ce00a86f894e4c7a8af18533b79722277f7bd8ad8ebbf308` |
| 15 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance-source-edition-7.md) | 119 | `declaration-track:dcbe02ab9b62509b162cbdd2155825007bc23d47f09f40d70293547f3706d481` |
| 16 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PreimmersionPublic.lean/declarations/instance-source-edition-3.md) | 122 | `declaration-track:6e1dba5a00facedcef315acd6acfb9c9383ae5017f1156d405c2b00f33abc948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6afbb1153b0c5be1e17d4830a32b3abef3b9b282e492cfead4f9d4588e1abf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variant44d182aa573de6c07614128e484213ff61773771b018e23fc731bebce51b0810.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Preimmersion/Variant44d182aa573de6c07614128e484213ff61773771b018e23fc731bebce51b0810.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
