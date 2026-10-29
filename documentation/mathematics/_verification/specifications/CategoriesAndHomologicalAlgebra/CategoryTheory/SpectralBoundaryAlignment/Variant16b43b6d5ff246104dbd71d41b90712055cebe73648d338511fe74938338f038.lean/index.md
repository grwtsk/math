# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralBoundaryAlignment.Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "606ce825e49656d6ffe53686f65773e0618cc041",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `606ce825e49656d6ffe53686f65773e0618cc041`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Research.LFunctionZero` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Research.CriticalLine` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.StrongApproximationBoundary` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.TateIwasawaBoundary` — import line 4; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.HomotopyCoherence` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralBoundaryData](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/declarations/spectralboundarydata--b30ac1f31c7c66a76ea0b42c.md) | 22 | `declaration-track:b30ac1f31c7c66a76ea0b42cc09e111f63bc073f5c470eeaa3e98f0c7d3218d9` |
| 2 | `structure` | [SpectralBoundaryAlignment](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/declarations/spectralboundaryalignment--5f4a77c8fe775dea23966eea.md) | 29 | `declaration-track:5f4a77c8fe775dea23966eeae8ff765c327f3dbaf08220118c611849fec86674` |
| 3 | `structure` | [SpectralBoundaryCriticalLineBridge](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/declarations/spectralboundarycriticallinebridge--f21fabaa034e968a868452e0.md) | 48 | `declaration-track:f21fabaa034e968a868452e0335e6998f49f3af77f256f1b8dfdd220fb00576b` |
| 4 | `theorem` | [spectral_boundary_alignment_holds](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/declarations/spectral-boundary-alignment-holds--5e812eda640bfab14be5054d.md) | 58 | `result-track:5e812eda640bfab14be5054dfcd53b754ab9c4e82fdb3bf96ca788a2b25dc5fc` |
| 5 | `theorem` | [spectral_boundary_alignment_does_not_force_critical_line_alone](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/declarations/spectral-boundary-alignment-does-not-force-critical-line-alone--d7dc630560019b1aae77be26.md) | 65 | `result-track:d7dc630560019b1aae77be269c9eed300829512f065ac802213f8f550c552a90` |
| 6 | `theorem` | [critical_line_from_spectral_boundary_bridge](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/declarations/critical-line-from-spectral-boundary-bridge--c0731044d4c145584311f841.md) | 72 | `result-track:c0731044d4c145584311f841e50854e5f6bf06dd03b1d638c4143b759de5b213` |
| 7 | `theorem` | [critical_line_from_spectral_boundary_alignment](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean/declarations/critical-line-from-spectral-boundary-alignment--652747479d01c8159cd819fd.md) | 81 | `result-track:652747479d01c8159cd819fd1d5d8e326e93e8b6b24816b73cc497005e71bff5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c6f9d3017a7da8a3052177c8e664a5113737830d416f358dc310a19a2b30be3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
