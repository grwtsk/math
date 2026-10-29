# Verification target: Assembly Public Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd7b42f2d1d39dece045a97ccfc99c57acb54ea6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicEdition3.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd7b42f2d1d39dece045a97ccfc99c57acb54ea6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicEdition3.lean/declarations/primitivecharacterhalfplusepsilonfamily.md) | 26 | `declaration-track:3f2b1fe1e40cb42df804d336f4fc94b661cb5144e14b49ba9822afb32096de8b` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicEdition3.lean/declarations/uniformhybriddirichlethalfplusepsilon.md) | 36 | `declaration-track:34c7db06abc5f31245481d9f262eb63f0b910bdb3f4eb1bb1d9f8536e6806af6` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicEdition3.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh.md) | 50 | `result-track:9ffadd0fac32d3909b9af026b3f98cbfe8865b6d84b85ea0fa7eb88a2ca7a61d` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicEdition3.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily.md) | 76 | `result-track:077c308f9472fabef397234d8a7523f4ee6b3681e6584aa6a173f32c73a26718` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicEdition3.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily.md) | 96 | `result-track:f8cbfabb09d7fcc4f75392256ac823c8224ed4933bafa529225705e73e5c42f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04f0a04d4cf9b5e9cf75bd9c197bd24c761a94f186331952f3d9a0755a648f1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
