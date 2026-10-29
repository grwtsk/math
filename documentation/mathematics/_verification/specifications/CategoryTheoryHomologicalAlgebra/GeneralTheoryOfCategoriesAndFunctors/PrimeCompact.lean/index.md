# Verification target: Prime Compact

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55d3840ec3adce9b770100b3b6ed8c3086cebd8d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrimeCompact/Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55d3840ec3adce9b770100b3b6ed8c3086cebd8d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrimeCompact/Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PrimeCompact/Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Torsion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeCompact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/primecompact.md) | 7 | `declaration-track:8b31224af92866effa9a56b8ad96a8d19d7ae6d8b6a220be5034149c81b7c43e` |
| 2 | `structure` | [PrimeCompactStage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/primecompactstage.md) | 12 | `declaration-track:b7d29fce3396e09073fcc4845263a23df5d3c025489958fac45d5cf0b8e28f0c` |
| 3 | `structure` | [PNTNormalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/pntnormalizer.md) | 17 | `declaration-track:7c34689bac0bce0a161d12a2bfa54a43f7302862346eef430d75e2886a3064d0` |
| 4 | `def` | [PNTNormalizer.residue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/pntnormalizer-residue.md) | 22 | `declaration-track:6a88e2374d4f50bda1ebd71482415be246394e02871c4e5cb58128383608f094` |
| 5 | `def` | [PrimeCompactStage.resolvedByNormalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/primecompactstage-resolvedbynormalizer.md) | 25 | `declaration-track:212e33dc89a84c10a8aafa96936534bbb639cd1739b897183f50b224a14cdb25` |
| 6 | `structure` | [PrimeCompactAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/primecompactadjunction.md) | 29 | `declaration-track:793545f08c8affbb56f688a94b9abfc804ad038af7628a1fab29a89802e457d3` |
| 7 | `def` | [PrimeCompactAdjunction.admitted](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/primecompactadjunction-admitted.md) | 38 | `declaration-track:bdb34caf7a1bcf38971cc3e82f957a7a5c7f306c509bb12144c03dd77a4789bd` |
| 8 | `theorem` | [pnt_normalizer_residue_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/pnt-normalizer-residue-zero.md) | 41 | `result-track:0b8fb4f25e965cab891f16cb883de98ce26da80ca1048166419e53186fc5b2c4` |
| 9 | `theorem` | [prime_adjunction_admitted_preserves_old_restrictions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrimeCompact.lean/declarations/prime-adjunction-admitted-preserves-old-restrictions.md) | 48 | `result-track:b4ccb68b8a5387f95dbb2158bbb62e08470b5cd1c61f98be686421d8aa55c450` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88ca074f8c6cc69a76684f06198f2c19cacea649f301f4cb8b20b67547134414 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrimeCompact/Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PrimeCompact/Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
